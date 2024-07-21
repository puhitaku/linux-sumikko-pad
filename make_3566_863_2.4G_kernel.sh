#main dts path
# arch/arm64/boot/dts/rockchip/rk3566-rk817-incartech-863-2.4G-tablet-mipi.dts
make ARCH=arm64 rockchip_defconfig android-11.config rk356x.config
make ARCH=arm64  BOOT_IMG=../rockdev/Image-$TARGET_PRODUCT/boot.img rk3566-rk817-incartech-863-2.4G-tablet-mipi.img -j24
