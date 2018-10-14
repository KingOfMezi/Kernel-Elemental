#!/bin/bash

LOCAL_DIR=`pwd`
export PATH=$PATH:$LOCAL_DIR/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin

mkdir -p out

make ARCH=arm64 O=out CROSS_COMPILE=aarch64-linux-android- merge_hi6250_defconfig 2>> ~/error
make ARCH=arm64 O=out CROSS_COMPILE=aarch64-linux-android- -j2 2>> ~/error
