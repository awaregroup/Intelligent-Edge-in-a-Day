#!/bin/bash

sudo apt-get update
cd ~/Intelligent-Edge-in-a-Day
git clone https://github.com/Azure/azure-iot-sdk-c --recursive -b public-preview


sudo raspi-config nonint do_expand_rootfs
sudo raspi-config nonint do_memory_split 16
sudo raspi-config nonint do_spi 0
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_wifi_country US
sudo raspi-config nonint do_change_locale en_US.UTF-8
sudo raspi-config nonint do_configure_keyboard us
sudo raspi-config nonint do_hostname iia-fy20-photo-booth-rp3
sudo reboot now