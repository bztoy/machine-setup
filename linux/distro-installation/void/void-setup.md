# Void Linux

void use runit as system management tool and xbps as the package manager

notes: void linux contain only free software in its main repo (void-repo)


## Void system service manager
create a symbolic link from /etc/sv to /var/sv to use any particular service
/var/sv -> /etc/sv

```sh
# DHCP
ln -sf /etc/sv/dhcpd /var/sv
# DBUS
ln -sf /etc/sv/dbus /var/sv

```

## Installation
UEFI boot disk partitions

/boot/efi [FAT32] 600MB or 1G
/ (root) [ext4]
swap (linux swap) -- if needed

```sh
sudo void-installer
```

### install the hard way

2 main packages to be downloaded
base-system
linux-mainline

## setup locales
/etc/default/libc-locales

add th lang here

## reconfig locales
xbps-reconfigure -f glibc-locales

## setup hostname
echo "hostname" > /etc/hostname

## setup hostfile
cat <<EOF > /etc/hosts
127.0.0.1 localhost
::1 localhost
127.0.1.1 <hostname>.localdomain <hostname>
EOF

## change password
passwd

## add user
useradd <username>
passwd <username>

## add user to wheel group
usermod -aG wheel <username>

# in order to allow a user to be able to execute all command with root's permission
# do the following steps in visudo
## to change login shell , chsh
chsh -s /bin/bash root
EDITOR=vim visudo

goto %wheel ALL=(ALL:ALL) ALL, uncomment this line and copy to a new line with disered name
%wheel ALL=(ALL:ALL) ALL
toy ALL=(ALL:ALL) ALL

## update the package
sudo xbps-install -S

non-free
sudo xbps-install void-repo-nonfree
sudo xbps-install -S
sudo xbps-install void-repo-multilib
sudo xbps-install -S

## Create fstab
EFI_UUID=$(blkid -s UUID -o value /dev/vda1)

## bootloader
sudo xbps-install grub-x86-64-efi

## default grub
/etc/default/grub
/etc/default/grub.d/xxx.cfg

GRUB_CMDLINE_LINUX_DEFAULT="loglevel=4 rd.auto=1 rd.luks.allow-discards"

grub-install --target=x86_64-efi --efi-directory=/efi --boolloader-id="void"

dd bs=515 count=4 if=/dev/urandom of=/boot/keyfile.bin

chmod 000 /boot/keyfile.bin
chmod -R g-rwx,o-rwx /boot

####

sudo mkfs.ext4 /dev/sdxn (e.g. /dev/sda1)

mkfs.exfat

## format the EFI partition
mkfs.fat -F32 -n EFI /dev/<xxxn>

-L = label

only the block device/partition that has MOUNTPOINT is usable


## XBPS package mananger

#### tip
set alias in .bashrc or .bash_profile as following
```bashrc
alias xi = 'sudo xbps-install'
alias xr = 'sudo xbps-remove'
alias xq = 'xbps-query'
```

## bash completion
sudo xbps-install -S bash-completion

## get prompt in the GUI
```sh
sudo xbps-install -S gksu
```


xbps-install(1)
xbps-query

sudo xbps-install -S (update the package) this is recommended
sudo xbps-install -Su => update the repository

# to be able to install none-free software
sudo xbps-install void-repo-nonfree

y is yes, confirmed

sudo xbps-install -Sy gvim

-n = dry run
-r => specific root

# xbps-query
```sh
```
xbps-query -Rs <pkg>
s means remote repo

xbps-query -Rs \*  " all

xbps-query -Rs void-repo
```sh
```



# remove a package and its dependencies
```sh
```
```sh
sudo xbps-remove -R <package name>
sudo xbps-remove -O
```

xbps-src

## linux packages


# add FAT support
sudo apt install exfat-utils exfat-fuse

sudo mkfs.exfat -n "lable" /dev/sda1

where to mount

/mnt
- permanent

/media
- temporary (e.g. a backup hdd, usb, ...)

## ncdu


sudo ncdu -x /

## fstab (/etc/fstab)

## console font
```
sudo xbps-install -S terminus-font
```
set font in /etc/rc.conf
FONT="ter-118n"
