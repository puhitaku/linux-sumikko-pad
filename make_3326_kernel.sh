source ../build/envsetup.sh >/dev/null

TARGET_PRODUCT=`get_build_var TARGET_PRODUCT`
TARGET_BOARD_PLATFORM=`get_build_var TARGET_BOARD_PLATFORM`
PACK_TOOL_DIR=RKTools/linux/Linux_Pack_Firmware
IMAGE_PATH=rockdev/Image-$TARGET_PRODUCT
KERNEL_DTS=`get_build_var PRODUCT_KERNEL_DTS`

echo "===================== start make kernel ======================="
echo "TARGET_PRODUCT:$TARGET_PRODUCT ; KERNEL_DTS:$KERNEL_DTS"
make ARCH=arm64 rockchip_defconfig android-11.config 
make ARCH=arm64 BOOT_IMG=../rockdev/Image-$TARGET_PRODUCT/boot.img rk3326-863-lp3-v10-rkisp1.img -j48
cp -rf arch/arm64/boot/Image $OUT/kernel
cd ../u-boot/ && ./scripts/pack_resource.sh ../kernel/resource.img && cp resource.img ../kernel/resource.img
