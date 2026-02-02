#!/bin/bash

declare packages=(
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/aarch64/musl-1.2.5-r21.apk'
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/aarch64/musl-dev-1.2.5-r21.apk'
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/aarch64/linux-headers-6.18.8-r0.apk'
)

declare triplet='aarch64-unknown-linux-musl'

declare ld='ld-musl-aarch64.so.1'

declare sysroot='https://dl-cdn.alpinelinux.org/alpine/edge/releases/aarch64/alpine-minirootfs-3.23.0-aarch64.tar.gz'

declare os='alpine'
