#!/bin/bash

declare packages=(
	'https://dl-3.alpinelinux.org/alpine/edge/main/x86/musl-1.2.5-r14.apk'
	'https://dl-3.alpinelinux.org/alpine/edge/main/x86/musl-dev-1.2.5-r14.apk'
	'https://dl-3.alpinelinux.org/alpine/edge/main/x86/linux-headers-6.15.7-r0.apk'
)

declare triplet='i386-unknown-linux-musl'

declare ld='ld-musl-i386.so.1'

declare sysroot='https://dl-cdn.alpinelinux.org/alpine/edge/releases/x86/alpine-minirootfs-3.22.0-x86.tar.gz'

declare os='alpine'
