export ARCH=arm64
export CROSS_COMPILE=~/Android_kernel/gcc-linaro-5.5.0-2017.10-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-

mkdir -p ../out_linaro

make -C $(pwd) O=$(pwd)/../out_linaro capricorn_defconfig
make -C $(pwd) O=$(pwd)/../out_linaro
