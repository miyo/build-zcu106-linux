#!/bin/sh

export WORK=$(pwd)
export CROSS_COMPILE=aarch64-linux-gnu-
cd ${WORK}/linux-xlnx
make ARCH=arm64 xilinx_zynqmp_defconfig
#make ARCH=arm64 menuconfig
make ARCH=arm64 -j40
make ARCH=arm64
cd ${WORK}

