#!/bin/bash

declare packages=(
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/musl-1.2.5-r21.apk'
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/musl-dev-1.2.5-r21.apk'
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/linux-headers-6.18.8-r0.apk'
)

declare triplet='x86_64-unknown-linux-musl'

declare ld='ld-musl-x86_64.so.1'

declare sysroot='https://dl-cdn.alpinelinux.org/alpine/edge/releases/x86_64/alpine-minirootfs-3.23.0-x86_64.tar.gz'

declare os='alpine'
