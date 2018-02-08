export ARCH=arm64
export CROSS_COMPILE=~/Android_kernel/google/bin/aarch64-linux-android-

mkdir -p ../out

make -C $(pwd) O=$(pwd)/../out capricorn_defconfig
make -C $(pwd) O=$(pwd)/../out
