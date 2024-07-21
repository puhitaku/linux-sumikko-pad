linux-sumikko-pad
=================

This repository contains the Linux Kernel's source code for the Sumikko Pad 8-inch by Agatsuma Co., Ltd., presumably exported from Rockchip's Android BSP. Go to the [Releases page](https://github.com/puhitaku/linux-sumikko-pad/releases) for the original contents, which include intermediate outputs and binaries stored in the original disc I got from the manufacturer.

The source code in the Git history got some clean-ups, such as calling `make mrproper` and manually removing the following files.

```
/boot.img
/kernel.img
/resource.img
/zboot.img
/out/*
/arch/arm64/boot/Image*
```


## Device

- Model No.: 4971404320093
- Model Name: Sumikko Pad 8-inch (ja: すみっコぐらし Wi-Fiでつながる! みんなとつながる! すみっコパッド 8インチ)
