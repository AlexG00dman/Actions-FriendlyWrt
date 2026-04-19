#!/bin/bash    

echo "disable SDK, IB и Toolchain..."
sed -i 's/CONFIG_IB=y/CONFIG_IB=n/g' .config
sed -i 's/CONFIG_SDK=y/CONFIG_SDK=n/g' .config
sed -i 's/CONFIG_MAKE_TOOLCHAIN=y/CONFIG_MAKE_TOOLCHAIN=n/g' .config
       
# add amnezia pack
echo "CONFIG_PACKAGE_kmod-amneziawg=m" >> .config

make defconfig
