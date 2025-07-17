#!/bin/bash

declare packages=(
	'https://repo-default.voidlinux.org/current/musl/musl1.1-1.1.24_8.armv6l-musl.xbps'
	'https://repo-default.voidlinux.org/current/musl/musl1.1-devel-1.1.24_8.armv6l-musl.xbps'
	'https://repo-default.voidlinux.org/current/musl/kernel-libc-headers-6.14_1.armv6l-musl.xbps'
	'https://repo-default.voidlinux.org/current/musl/libexecinfo-devel-1.1_3.armv6l-musl.xbps'
)

declare triplet='arm-unknown-linux-musleabihf'

declare ld='ld-musl-armhf.so.1'

declare sysroot='https://repo-default.voidlinux.org/live/current/void-armv6l-musl-ROOTFS-20250202.tar.xz'

declare os='void'
