#!/bin/bash

declare packages=(
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/armhf/musl-1.2.5-r21.apk'
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/armhf/musl-dev-1.2.5-r21.apk'
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/armhf/linux-headers-6.18.8-r0.apk'
)

declare triplet='armv6-unknown-linux-musleabihf'

declare ld='ld-musl-armhf.so.1'

declare sysroot='https://dl-cdn.alpinelinux.org/alpine/edge/releases/armhf/alpine-minirootfs-3.23.0-armhf.tar.gz'

declare os='alpine'
