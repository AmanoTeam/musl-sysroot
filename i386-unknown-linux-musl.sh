#!/bin/bash

declare packages=(
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/x86/musl-1.2.5-r21.apk'
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/x86/musl-dev-1.2.5-r21.apk'
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/x86/linux-headers-6.18.8-r0.apk'
)

declare triplet='i386-unknown-linux-musl'

declare ld='ld-musl-i386.so.1'

declare sysroot='https://dl-cdn.alpinelinux.org/alpine/edge/releases/x86/alpine-minirootfs-3.23.0-x86.tar.gz'

declare os='alpine'
