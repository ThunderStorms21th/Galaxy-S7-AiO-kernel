#!/bin/bash
#
# Thanks to djb77 
#
# Thanks to MoRoGoku for Cleaning Script
#
# ThundeRStorms cleaning script v1.6

echo ""
echo "Cleaning script for ThunderStorms kernel"
echo ""
echo "Start cleaning..." 
echo ""

# Clean Build Data
make clean
make ARCH=arm64 distclean

rm -f ./Edge_build.log
rm -f ./Flat_build.log



# Remove Release files
rm -f $PWD/builds/*.zip
rm -rf $PWD/builds/temp
rm -rf $PWD/builds/temp2
rm -f $PWD/arch/arm64/configs/tmp_defconfig


# Removed Created dtb Folder
rm -rf $PWD/arch/arm64/boot/dtb


# Recreate Ramdisk Placeholders
echo "" > builds/ramdisk/ramdisk/acct/.placeholder
echo "" > builds/ramdisk/ramdisk/cache/.placeholder
echo "" > builds/ramdisk/ramdisk/config/.placeholder
echo "" > builds/ramdisk/ramdisk/data/.placeholder
echo "" > builds/ramdisk/ramdisk/dev/.placeholder
echo "" > builds/ramdisk/ramdisk/lib/modules/.placeholder
echo "" > builds/ramdisk/ramdisk/mnt/.placeholder
echo "" > builds/ramdisk/ramdisk/proc/.placeholder
echo "" > builds/ramdisk/ramdisk/storage/.placeholder
echo "" > builds/ramdisk/ramdisk/sys/.placeholder
echo "" > builds/ramdisk/ramdisk/system/.placeholder


