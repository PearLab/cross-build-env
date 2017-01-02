#!/bin/sh

# wget https://downloads.openwrt.org/snapshots/trunk/x86/64/OpenWrt-SDK-x86-64_gcc-5.3.0_musl-1.1.15.Linux-x86_64.tar.bz2 -O sdk_package.zip
# unzip sdk_package.zip -d ./

#export CHROOT=$(pwd)/sdk_package
#export TOOLCHAIN_PATH=$CHROOT/toolchain
#export PATH=$TOOLCHAIN_PATH/bin:$TOOLCHAIN_PATH/arm-xiaomi-linux-uclibcgnueabi/bin:$PATH
#export CPATH=$CHROOT/include:$CPATH
#export C_INCLUDE_PATH=$CHROOT/include:$TOOLCHAIN_PATH/arm-xiaomi-linux-uclibcgnueabi/sysroot/usr/include:$C_INCLUDE_PATH
#export CPLUS_INCLUDE_PATH=$CHROOT/include:$TOOLCHAIN_PATH/arm-xiaomi-linux-uclibcgnueabi/include/c++/4.8.2/arm-xiaomi-linux-uclibcgnueabi:$CPLUS_INCLUDE_PATH
#export LD_LIBRARY_PATH=$CHROOT/lib:$TOOLCHAIN_PATH/usr/lib:$LD_LIBRARY_PATH
#export AR=$TOOLCHAIN_PATH/bin/arm-xiaomi-linux-uclibcgnueabi-ar
#export AS=$TOOLCHAIN_PATH/bin/arm-xiaomi-linux-uclibcgnueabi-as
#export LD=$TOOLCHAIN_PATH/bin/arm-xiaomi-linux-uclibcgnueabi-ld
#export NM=$TOOLCHAIN_PATH/bin/arm-xiaomi-linux-uclibcgnueabi-nm
#export CC=$TOOLCHAIN_PATH/bin/arm-xiaomi-linux-uclibcgnueabi-gcc
#export CPP=$TOOLCHAIN_PATH/bin/arm-xiaomi-linux-uclibcgnueabi-cpp
#export GCC=$TOOLCHAIN_PATH/bin/arm-xiaomi-linux-uclibcgnueabi-gcc
#export CXX=$TOOLCHAIN_PATH/bin/arm-xiaomi-linux-uclibcgnueabi-g++
#export RANLIB=$TOOLCHAIN_PATH/bin/arm-xiaomi-linux-uclibcgnueabi-ranlib

TOOLCHAIN_PROFILE=/etc/profile.d/openwrt.sh
sudo rm -rf $TOOLCHAIN_PROFILE
sudo touch $TOOLCHAIN_PROFILE
sudo echo '#!/bin/sh' >> $TOOLCHAIN_PROFILE
sudo echo "export CHROOT=$(pwd)/OpenWrt-SDK-x86-64_gcc-5.3.0_musl-1.1.15.Linux-x86_64" >> $TOOLCHAIN_PROFILE
sudo echo 'export STAGING_DIR=$CHROOT/staging_dir' >> $TOOLCHAIN_PROFILE
sudo echo 'export TOOLCHAIN_PATH=$CHROOT/staging_dir/toolchain-x86_64_gcc-5.3.0_musl-1.1.15' >> $TOOLCHAIN_PROFILE
sudo echo 'export PATH=$TOOLCHAIN_PATH/bin:$PATH' >> $TOOLCHAIN_PROFILE
sudo echo 'export CPATH=$CHROOT/include:$CPATH' >> $TOOLCHAIN_PROFILE
sudo echo 'export C_INCLUDE_PATH=$TOOLCHAIN_PATH/include:$TOOLCHAIN_PATH/usr/include:$C_INCLUDE_PATH' >> $TOOLCHAIN_PROFILE
sudo echo 'export CPLUS_INCLUDE_PATH=$TOOLCHAIN_PATH/include:$TOOLCHAIN_PATH/usr/include:$CPLUS_INCLUDE_PATH' >> $TOOLCHAIN_PROFILE
sudo echo 'export LD_LIBRARY_PATH=$TOOLCHAIN_PATH/lib:$TOOLCHAIN_PATH/usr/lib:$LD_LIBRARY_PATH' >> $TOOLCHAIN_PROFILE
sudo echo 'export AR=$TOOLCHAIN_PATH/bin/x86_64-openwrt-linux-musl-ar' >> $TOOLCHAIN_PROFILE
sudo echo 'export AS=$TOOLCHAIN_PATH/bin/x86_64-openwrt-linux-musl-as' >> $TOOLCHAIN_PROFILE
sudo echo 'export LD=$TOOLCHAIN_PATH/bin/x86_64-openwrt-linux-musl-ld' >> $TOOLCHAIN_PROFILE
sudo echo 'export NM=$TOOLCHAIN_PATH/bin/x86_64-openwrt-linux-musl-nm' >> $TOOLCHAIN_PROFILE
sudo echo 'export CC=$TOOLCHAIN_PATH/bin/x86_64-openwrt-linux-musl-gcc' >> $TOOLCHAIN_PROFILE
sudo echo 'export CPP=$TOOLCHAIN_PATH/bin/x86_64-openwrt-linux-musl-cpp' >> $TOOLCHAIN_PROFILE
sudo echo 'export GCC=$TOOLCHAIN_PATH/bin/x86_64-openwrt-linux-musl-gcc' >> $TOOLCHAIN_PROFILE
sudo echo 'export CXX=$TOOLCHAIN_PATH/bin/x86_64-openwrt-linux-musl-g++' >> $TOOLCHAIN_PROFILE
sudo echo 'export RANLIB=$TOOLCHAIN_PATH/bin/x86_64-openwrt-linux-musl-ranlib' >> $TOOLCHAIN_PROFILE

sudo source /etc/profile

sudo apt-get autoremove
sudo apt-get install build-essential
sudo apt-get install checkinstall
sudo apt-get install automake
sudo apt-get install autoconf
sudo apt-get install libtool
sudo apt-get install pkg-config
sudo apt-get install intltool 
sudo apt-get install byacc


