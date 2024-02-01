#!/bin/bash

# Confirming the existence of the directory, it might help if your distro doesn't have that directory yet.

echo "Making Directory..."

sudo mkdir /lib/firmware/mediatek

# Moving installation files and then moving config files.

echo "Moving Files..."

sudo mv $PWD/mt7662u.bin /lib/firmware/mediatek
sudo mv $PWD/mt7662u_rom_patch.bin /lib/firmware/mediatek
sudo mv $PWD/mt76_usb.conf /etc/modprobe.d/

echo "Rebooting..."

# Removing other files.

sudo rm $PWD/LICENSE
sudo rm $PWD/Description.md

sudo reboot
