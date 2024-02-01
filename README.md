## A script for installing mt7612u drivers, to be used as out-of-kernel

Most distros doesn't have it pre-installed, this is supposed to make things faster.
This is merely a script as an attempt for installing on server-side headless, which states that this uses some repositories, which are for possible [bug-fixes](https://github.com/morrownr/7612u) and for [installing the drivers.](https://github.com/morrownr/USB-WiFi/blob/main/home/How_to_Install_Firmware_for_Mediatek_based_USB_WiFi_adapters.md) ( This script is merely a bridge ).

### Installing:

```
sudo ./Install-mt7612u.sh
```

### Uninstalling:

```
sudo ./Uninstall-mt7612u.sh
```

## Fix for 7612u with built-in an LED (Optional)

This issue is optional and you can just skip this... [( Tutorial )](https://github.com/morrownr/7612u)

```
sudo chmod +x /etc/rc.local

sudo nano /etc/rc.local
```

add before `exit 0`:

```
# Make LED BLINK
cd /sys/kernel/debug/ieee80211/phy0/mt76
echo 0x770 > regidx
echo 0x840000 > regval
```

Save the file: Ctrl + x, y, Enter

```
sudo reboot
```

[Credits](https://github.com/morrownr)
