#!/bin/bash

echo "Removing Files..."

sudo rm /lib/firmware/mediatek/mt7662u.bin
sudo rm /lib/firmware/mediatek/mt7662u_rom_patch.bin
sudo rm /etc/modprobe.d/mt76_usb.conf

echo "Rebooting..."

sudo reboot
