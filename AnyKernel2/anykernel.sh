# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() {
kernel.string=Kernel-Elemental By KingOfMezi @ xda-developers
do.devicecheck=0
do.modules=0
do.cleanup=1
do.cleanuponabort=1
device.name1=
device.name2=
} # end properties

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;

# shell variables
block=/dev/block/bootdevice/by-name/ramdisk;
is_slot_device=auto;
ramdisk_compression=auto;


## AnyKernel ramdisk install

dump_boot;

write_boot;

## end install

# shell variables
block=/dev/block/bootdevice/by-name/kernel;
ramdisk_compression=auto;

# reset for kernel patching
reset_ak;
mv /tmp/anykernel/kernel-Image.gz /tmp/anykernel/Image.gz;

## AnyKernel kernel install

split_boot;

flash_boot;

## end install
