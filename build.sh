#!/bin/bash

set -eu

declare -r workdir="${PWD}"

declare -r sysroot_directory='/tmp'

declare -ra targets=(
	'mipsel-unknown-linux-musl'
	'mips-unknown-linux-musl'
	'powerpc-unknown-linux-musl'
	'mips64-unknown-linux-musl'
	'armv7l-unknown-linux-musleabihf'
	'powerpc64le-unknown-linux-musl'
	'x86_64-unknown-linux-musl'
	'aarch64-unknown-linux-musl'
	'arm-unknown-linux-musleabihf'
	'riscv64-unknown-linux-musl'
	's390x-unknown-linux-musl'
	'i386-unknown-linux-musl'
	'loongarch64-unknown-linux-musl'
)

for target in "${targets[@]}"; do
	source "${workdir}/${target}.sh"
	
	declare tmp="$(mktemp --directory)"
	
	cd "${tmp}"
	
	if [ "${os}" == 'void' ] || [ "${os}" == 'sabotage' ]; then
		declare sysroot_filename="./sysroot.tar.xz"
	else
		declare sysroot_filename="./sysroot.tar.gz"
	fi
	
	[ -f "${sysroot_filename}" ] && unlink "${sysroot_filename}"
	
	curl \
		--url "${sysroot}" \
		--retry '30' \
		--retry-all-errors \
		--retry-delay '0' \
		--retry-max-time '0' \
		--location \
		--verbose \
		--continue-at '-' \
		--output "${sysroot_filename}"
	
	tar --ignore-failed-read --extract --file="${sysroot_filename}" || true
	
	if [ "${os}" == 'void' ]; then
		declare package_filename="./package.tar.xst"
	else
		declare package_filename="./package.tar.gz"
	fi
	
	for package in "${packages[@]}"; do
		curl \
			--url "${package}" \
			--retry '30' \
			--retry-all-errors \
			--retry-delay '0' \
			--retry-max-time '0' \
			--location \
			--verbose \
			--continue-at '-' \
			--output "${package_filename}"
		
		tar --extract --file="${package_filename}"
		
		unlink "${package_filename}"
	done
	
	[ -d "${sysroot_directory}/${triplet}" ] || mkdir --parent "${sysroot_directory}/${triplet}"
	
	if [ "${os}" == 'sabotage' ]; then
		cp --recursive './opt/musl/include' "${sysroot_directory}/${triplet}"
		cp --recursive './opt/musl/lib' "${sysroot_directory}/${triplet}"
	else
		cp --recursive './usr/include' "${sysroot_directory}/${triplet}"
		cp --recursive './usr/lib' "${sysroot_directory}/${triplet}"
	fi
	
	if [ "${os}" != 'sabotage' ] && [ -d './lib' ]; then
		cp --remove-destination --recursive './lib/'* "${sysroot_directory}/${triplet}/lib"
	fi
	
	rm --recursive --force "${tmp}"
	
	pushd "${sysroot_directory}/${triplet}/lib"
	
	if [ "${os}" == 'alpine' ]; then
		find . -xtype l | xargs ls -l | grep '/lib/' | awk '{print "unlink "$9" && ln -s $(basename "$11") $(basename "$9")"}' | bash
		
		unlink './libc.so'
		mv "${ld}" './libc.so'
		
		patchelf --set-soname 'libc.so' './libc.so'
	fi
	
	if [ -L "${ld}" ]; then
		unlink "${ld}"
	fi
	
	ln --symbolic './libc.so' "${ld}"
	
	while read filename; do
		if [[ "${filename}" =~ ^lib(pthread|resolv|rt|c|m|util|xnet)\.(so|a)$ || "${filename}" =~ ^.*\.o$ || "${filename}" =~ ^ld\-.*\.so.*$ ]]; then
			continue
		fi
		
		rm --recursive "${filename}"
	done <<< "$(ls)"
	
	declare tarball_filename="${sysroot_directory}/${triplet}.tar.xz"
	
	tar --directory='/tmp' --create --file=- "${triplet}" | xz --threads='0' --compress -9 > "${tarball_filename}"
	sha256sum "${tarball_filename}" | sed 's|/tmp/||' > "${tarball_filename}.sha256"
done
