export ARCH=arm64
export CROSS_COMPILE=~/Android_kernel/gcc-linaro-7.2.1-2017.11-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
export KBUILD_BUILD_USER="brigio345"
export LOCALVERSION=""

mkdir -p ../out_linaro

make -C $(pwd) O=$(pwd)/../out_linaro capricorn_defconfig -j8
make -C $(pwd) O=$(pwd)/../out_linaro -j8 Image.gz-dtb
