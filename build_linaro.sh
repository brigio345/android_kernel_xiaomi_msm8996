#!/bin/bash
export CONFIG_FILE="capricorn_defconfig"
export ARCH=arm64
export LOCALVERSION="-BG345"
export KBUILD_BUILD_USER="brigio345"
export CROSS_COMPILE="../gcc-linaro-7.2.1-2017.11-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-"
export objdir="../out_linaro"

make O=$objdir $CONFIG_FILE -j8
make -C $(pwd) O=$objdir -j8 Image.gz-dtb | tee ../build-linaro_$(date +"%d%m%y").log
