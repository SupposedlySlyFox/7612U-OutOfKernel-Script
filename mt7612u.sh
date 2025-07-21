main()
{
    echo "
    Which one of these options do you wish to execute?

    1 - Installation of the driver mt7612u.
    2 - Removal of the driver mt7612u.
    3 - Exit.

    "
    read -p "Your input: " REPLY
    case "$REPLY" in
        1)
            echo "Option "1. Installation of the driver mt7612u" selected"
            install
            ;;
        2)
            echo "Option "2. Removal of the driver mt7612u" selected"
            uninstall
            ;;
        *)
            if ["$REPLY" == 3]; then
                echo "Exiting."
                exit 1
            else
                echo "Invalid option. Exiting."
                exit 1
            fi
            ;;
    esac
}

install()
{
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
}

uninstall()
{
    echo "Removing Files..."

    sudo rm /lib/firmware/mediatek/mt7662u.bin
    sudo rm /lib/firmware/mediatek/mt7662u_rom_patch.bin
    sudo rm /etc/modprobe.d/mt76_usb.conf

    echo "Rebooting..."

    sudo reboot    
}
