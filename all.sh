#!/bin/sh

export VIVADO=/tools/Xilinx/Vivado/2019.1/settings64.sh
export HDF=~/Downloads/rdf0428-zcu106-vcu-trd-2019-1_v2/pl/prebuilt/vcu_trd/vcu_trd_wrapper.hdf 

source ${VIVADO}

echo "Download sources"
sh download.sh
echo "Build fsbl"
sh fsbl.sh
echo "Build dtc(host utility)"
sh dtc.sh
echo "Build PMU"
sh pmu.sh
echo "Build ARM trusted firmware"
sh atf.sh
echo "Build U-boot"
sh u-boot.sh
echo "Build Linux kernel"
sh kernel.sh
echo "Build BOOT.bin"
sh bootbin.sh
echo "Build boot.scr"
sh bootscript.sh
echo "Copy required files into image/"
sh image.sh
