#!/bin/sh -e

echo "Installing from source"

export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get install -y build-essential git mdm vim nmap tcpdump iputils-ping iproute2 netcat

apt-get install --no-install-recommends -y cmake libfftw3-dev libmbedtls-dev libboost-program-options-dev libconfig++-dev libsctp-dev libuhd-dev uhd-host

apt-get install --no-install-recommends -y libpcsclite-dev pcscd pcsc-tools

mkdir -p /opt
cd /opt
git clone https://github.com/srsRAN/srsRAN
cd srsRAN
mkdir build
cd build
cmake ..
make -j$(ncpus)
make install
srsran_install_configs.sh user
uhd_images_downloader
ldconfig

