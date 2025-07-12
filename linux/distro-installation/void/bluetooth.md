# Bluetooth setup

check rfkill

```sh
rfkill
rfkill unblock bluetooth

```

Install the bluez package and enable the bluetoothd and dbus services.

Then, add your user to the bluetooth group and restart the dbus service, or simply reboot the system.

```sh
xbps-install -S dbus bluez
ln -s /etc/sv/dbus /var/service
ln -s /etc/sv/bluetoothd /var/service

```

### Reference

[Bluetooth](https://docs.voidlinux.org/config/bluetooth.html)  
[Newbie question: enable bluetooth services](https://www.reddit.com/r/voidlinux/comments/qla890/newbie_question_enable_bluetooth_services/)
