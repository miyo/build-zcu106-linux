#!/bin/sh

export WORK=$(pwd)
export CROSS_COMPILE=aarch64-linux-gnu-
export ARCH=aarch64
cd ${WORK}/u-boot-xlnx
make distclean
make xilinx_zynqmp_virt_defconfig
export DEVICE_TREE="zynqmp-zcu106-revA"
make -j8
cd ${WORK}

