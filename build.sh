#!/bin/bash
export CONFIG_FILE="capricorn_defconfig"
export ARCH=arm64
export SUBARCH=arm64
export LOCALVERSION="-BG345"
export KBUILD_BUILD_USER="brigio345"
export CLANG_TRIPLE="aarch64-linux-gnu-"
export CROSS_COMPILE="../gcc-linaro-7.2.1-2017.11-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-"
export CLANG_TCHAIN="../linux-x86/clang-4579689/bin/clang"
export objdir="../out"

make O=$objdir $CONFIG_FILE -j8

make CC="${CLANG_TCHAIN}" O=$objdir -j8 Image.gz-dtb | tee ../build_$(date +"%d%m%y").log
