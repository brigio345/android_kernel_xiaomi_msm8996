cd ../working_clang
abootimg --create newboot.img -f bootimg.cfg -k ~/Android_kernel/out_clang/arch/arm64/boot/Image.gz-dtb -r initrd.img -c "bootsize=15781888"
