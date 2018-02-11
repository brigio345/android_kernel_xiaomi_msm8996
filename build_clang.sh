#!/bin/bash
kernel_dir=$PWD
export CONFIG_FILE="capricorn_defconfig"
export ARCH=arm64
export SUBARCH=arm64
export LOCALVERSION="" # Leave it clean
export KBUILD_BUILD_USER="brigio345"
export KBUILD_BUILD_HOST="giovanni@k550vx"
export CLANG_TRIPLE="aarch64-linux-gnu-"
export CROSS_COMPILE="${HOME}/Android_kernel/gcc-linaro-7.2.1-2017.11-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-"
export CLANG_TCHAIN="${HOME}/Android_kernel/clang/clang-4579689/bin/clang"
export objdir="${HOME}/Android_kernel/out_clang"

make ARCH="arm64" O=$objdir $CONFIG_FILE -j8

make CC="${CLANG_TCHAIN}" O=$objdir -j8 Image.gz-dtb

cd ${kernel_dir}
