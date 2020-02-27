#!/bin/bash

sudo apt-get update && \
sudo apt-get install -y git cmake build-essential curl libcurl4-openssl-dev libssl-dev uuid-dev curl && \
# Clone Repo
cd ~
# git clone https://github.com/awaregroup/Intelligent-Edge-in-a-Day.git && \
cd ~/Intelligent-Edge-in-a-Day && \
git clone https://github.com/Azure/azure-iot-sdk-c --recursive -b public-preview && \
# Install IoT Edge
cd /tmp && \
curl https://packages.microsoft.com/config/debian/stretch/multiarch/prod.list > ./microsoft-prod.list && \
sudo cp ./microsoft-prod.list /etc/apt/sources.list.d/ && \
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
sudo cp ./microsoft.gpg /etc/apt/trusted.gpg.d/ && \
sudo apt-get update && \
sudo apt-get install -y libssl1.0.2 && \
sudo apt-get install -y moby-engine && \
sudo apt-get install -y moby-cli && \
sudo apt-get -y install iotedge && \
sudo usermod -aG docker $USER && \
# Setup Raspbian
cd ~/ && \
sudo raspi-config nonint do_expand_rootfs
sudo raspi-config nonint do_memory_split 16
sudo raspi-config nonint do_spi 0
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_wifi_country US
sudo raspi-config nonint do_change_locale en_US.UTF-8
sudo raspi-config nonint do_configure_keyboard us
mac=$(/sbin/ifconfig eth0 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}')
sudo raspi-config nonint do_hostname rp4-$mac
sudo reboot now