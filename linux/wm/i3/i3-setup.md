# i3 Window Manager Setup Guide

### installation
```sh
sudo xbps-install -S xorg xterm i3 dbus
# ibar dependencies
sudo xbps-install -S dmenu i3status dex xss-lock nm-applet
sudo xbps-install -S network-manager-applet 
sudo xbps-install -S lightdm lightdm-gtk3-greeter

```
### enable servies
```sh
sudo ln -s /etc/sv/dbus /var/service/dbus
sudo sv up dbus
sudo ln -s /etc/sv/NetworkManager /var/service
sudo sv up NetworkManager
sudo ln -s /etc/sv/lightdm /var/service/lightdm


```
#### in case of using lightdm 
lightdm's config can be found in /etc/lightdm/lightdm.conf
greeter-session=lightdm-gtk3-greeter

lightdm-gtk3-greeter's config can be found in /etc/lightdm/lightdm-gtk3-greeter.conf

### terminal
```sh
sudo xbps-install -S alacritty alacritty-terminfo rofi
```

### i3 config
.config/i3/config

Refresh i3 Setup
mod+shift+r

### picom X11 compositor

polibar

copy the default config file from /etc/polybar/config.ini to ~/.config/polybar/config.ini
create a launch shell script (copy from wiki)

customize the config
[bar/toph]

set font here
font-0

feh: set a background color

[bar/toph]
monitor = ${env:MONITOR:}
width = 100%
height = 28pt
radius = 0

font-0 = MesloLGS Nerd Font Mono:size=14;6

### Reference
(Want a PERFECT Linux Setup? Watch This Now)[https://www.youtube.com/watch?v=wXZgUudR41I]
(Noob question. Installing i3? - Void linux)[https://www.reddit.com/r/voidlinux/comments/c84117/noob_question_installing_i3/]
