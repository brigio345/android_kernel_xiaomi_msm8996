cd ../AnyKernel2
kernel_name="BG345_KERNEL-$(date +"%d%m%y").zip"
cp ../out/arch/arm64/boot/Image.gz-dtb Image.gz-dtb
zip -r9 $kernel_name * -x README $kernel_name
mv $kernel_name ../$kernel_name
rm Image.gz-dtb
