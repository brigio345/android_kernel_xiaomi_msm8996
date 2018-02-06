cd ../los15
abootimg --create newboot.img -f bootimg.cfg -k ~/Android_kernel/out/arch/arm64/boot/Image.gz-dtb -r initrd.img -c "bootsize=15392768"
