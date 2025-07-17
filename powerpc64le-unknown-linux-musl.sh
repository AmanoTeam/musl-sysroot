#!/bin/bash

declare packages=(
	'https://dl-3.alpinelinux.org/alpine/edge/main/ppc64le/musl-1.2.5-r14.apk'
	'https://dl-3.alpinelinux.org/alpine/edge/main/ppc64le/musl-dev-1.2.5-r14.apk'
	'https://dl-3.alpinelinux.org/alpine/edge/main/ppc64le/linux-headers-6.15.7-r0.apk'
)

declare triplet='powerpc64le-unknown-linux-musl'

declare ld='ld-musl-powerpc64le.so.1'

declare sysroot='https://dl-cdn.alpinelinux.org/alpine/edge/releases/ppc64le/alpine-minirootfs-3.22.0-ppc64le.tar.gz'

declare os='alpine'
