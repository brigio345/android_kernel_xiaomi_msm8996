cd ../working_linaro
abootimg --create newboot.img -f bootimg.cfg -k ~/Android_kernel/out_linaro/arch/arm64/boot/Image.gz-dtb -r initrd.img -c "bootsize=15781888"
