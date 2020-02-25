#!/bin/bash

sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y git cmake build-essential curl libcurl4-openssl-dev libssl-dev uuid-dev curl

cd ~
git clone https://github.com/awaregroup/Intelligent-Edge-in-a-Day.git
cd ~/Intelligent-Edge-in-a-Day
git clone https://github.com/Azure/azure-iot-sdk-c --recursive -b public-preview

mac=$(ifconfig eth0 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}')

cd ~/ && \
sudo raspi-config nonint do_expand_rootfs
sudo raspi-config nonint do_memory_split 16
sudo raspi-config nonint do_spi 0
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_wifi_country US
sudo raspi-config nonint do_change_locale en_US.UTF-8
sudo raspi-config nonint do_configure_keyboard us
sudo raspi-config nonint do_hostname rp4-$mac
sudo reboot now