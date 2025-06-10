# Arch Linux Installation

## Important note
- for EFI installation, all legacy option about BIOS must be disabled in the BIOS/UEFI setting

## configuration in the ISO installation 

[Optional] setup font
Console fonts are located in /usr/share/kbd/consolefonts/

```sh
setfont ter-132b
```
Change .vimrc for better visibility

```vim
set nu
colorscheme evening || desert
```

change pacman configs in /etc/pacman.conf, enable below options

CheckSpace
VerbosePkgLists
ParallelDownloads = 5

## basic configuration

Date/Time

```sh
timedatectl set-ntp true
```

[Optional] Manaul setup the mirror list for pacman

```sh
curl -o /etc/pacman.d/mirrorlist https://archlinux.org/mirrorlist/all/
vim /etc/pacman.d/mirrorlist
```
once the download is done, enable the Server URL in /etc/pacman.d/mirrorlist

## Disk partition preparation via fdisk/cfdisk 
### My preference disk setup are
/dev/nvme0n1p1  /boot/efi or /efi (in the future)
/dev/nvme0n1p2  /SWAP
/dev/nvme0n1p3  /

maybe consider to setup the shared /home partition

### [Optional] encrypt a drive (should be installed only 1 distro)
do setup disk encryption, a parsephase must be entered during fdisk process

Info: Files in /dev/mapper/ are block devices managed by the linux device mapper framework or 
more specifically for your case, the dm-crypt kernel subsystem.

let's sy there are 2 partitions
- /dev/sda1 : boot partition (~1G)
- /dev/sda2 : root (/)

encrypt
/dev/mapper/<me> "any name"


```sh
cryptsetup open /dev/sdNx <me>
mkfs.ext4 /dev/mapper/me

mount /dev/mapper/me /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
```

[Optional] verify the boot mode

```sh
cat /sys/firmware/efi/fw_platform_size
```

## Connect to the internet
note: make sure that the Wi-Fi device is not blocked with rfkill

```sh
rfkill 

rfkill unblock wlan
```

Wi-Fi using iwctl
```sh
nmcli
device list
station name scan
station name get-networks
station name connect SSID
```


## Install core packages

```sh
pacstrap -K /mnt base base-devel linux linux-firmware vim git openssh
```

Generate the fstab

```sh
genfstab -U /mnt >> /mnt/etc/fstab
```
chroot
```sh
arch-chroot /mnt
# with specific shell
arch-chroot /mnt /bin/bash
```
Re-do all basic config such as .vimrc or .bashrc

TBD - standard date/time, locale setup (follow the installation guide)





```sh
blkid | tee -a uuid
```

```sh
```




```sh
```

```sh
```

```sh
```

```sh
grub-install --target=x86_64-efi /dev/sda1 --efi-directory=/boot/efi --bootloader-id=arch_grub --recheck --debug

grup-mkconfog -o /boot/grub/grub.cfg

vim /etc/default/grub
```
GRUB_CMDLINE_LINUX="cryptdev=UUID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx:crypt<me> <me>=/dev/mapper/me"

```sh
exit
umount -R /mnt
shutdown now
```



## References
[Arch Install through SSH](https://www.youtube.com/watch?v=Nol19BNL2O8)
