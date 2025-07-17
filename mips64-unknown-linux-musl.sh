#!/bin/bash

declare packages=(
	'https://dl-3.alpinelinux.org/alpine/v3.14/main/mips64/musl-1.2.2-r3.apk'
	'https://dl-3.alpinelinux.org/alpine/v3.14/main/mips64/musl-dev-1.2.2-r3.apk'
	'https://dl-3.alpinelinux.org/alpine/v3.14/main/mips64/linux-headers-5.10.41-r0.apk'
)

declare triplet='mips64-unknown-linux-musl'

declare ld='ld-musl-mips64-sf.so.1'

declare sysroot='https://dl-cdn.alpinelinux.org/alpine/v3.14/releases/mips64/alpine-minirootfs-3.14.2-mips64.tar.gz'

declare os='alpine'
