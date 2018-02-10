kernel_dir=Android_kernel/android_kernel_xiaomi_msm8996
export ARCH=arm64
export SUBARCH=arm64
export LOCALVERSION=""
export KBUILD_BUILD_USER="brigio345"
export CLANG_TRIPLE="aarch64-linux-gnu-"
export CROSS_COMPILE="${HOME}/Android_kernel/google/bin/aarch64-linux-android-"
export CLANG_TCHAIN="${HOME}/Android_kernel/clang/clang-4579689/bin/clang"
export LD_LIBRARY_PATH="${TOOL_CHAIN_PATH}/../lib"
export PATH=$PATH:${TOOL_CHAIN_PATH}
export objdir="${kernel_dir}/out_clang"
export builddir="${kernel_dir}/build_clang"

make -C $(pwd) O=$(pwd)/../out_clang capricorn_defconfig
make CC="${CLANG_TCHAIN}" O=$objdir
