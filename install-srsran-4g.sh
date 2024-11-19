#!/bin/sh -e

echo "Installing from packages"

export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get install -y software-properties-common vim nmap tcpdump iputils-ping iproute2


# Following https://docs.srsran.com/projects/4g/en/latest/general/source/1_installation.html
add-apt-repository ppa:softwareradiosystems/srsran
apt-get update
apt-get install --no-install-recommends -y uhd-host srsran
uhd_images_downloader
ldconfig

