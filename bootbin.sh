#!/bin/sh

export WORK=$(pwd)
mkdir -p ${WORK}/bootbin; cd ${WORK}/bootbin
cp ${WORK}/fsbl/fsbl/executable.elf fsbl.elf
cp ${WORK}/pmc/pmu/executable.elf pmufw.elf
cp ${WORK}/arm-trusted-firmware/build/zynqmp/release/bl31/bl31.elf .
cp ${WORK}/u-boot-xlnx/u-boot.elf .
bootgen -image ${WORK}/boot.bif -arch zynqmp -w -o i BOOT.bin
 
