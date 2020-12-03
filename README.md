# Build-ZCU106-Linux

## Pre-requirements

Download TRD of ZCU106 (rdf0428) for Vivado 2019.1 from https://www.xilinx.com/products/boards-and-kits/zcu106.html. It is assumed that the archive has been extacted under `$HOME/Downloads/`.
That is, `$HOME/Downloads/rdf0428-zcu106-vcu-trd-2019-1_v2/pl/prebuilt/vcu_trd/vcu_trd_wrapper.hdf` should exist.
If you want to use the other hdf, change HDF value in `all.sh`

Install related binaries as the following.

```
sudo apt install -y pkg-config libyaml-dev
```

Set your Vivado path in `all.sh`.

## Build Linux and related files

```
sh all.sh
```

You can get required files in `image/`

