# Arch Linux - Post Installation

## Arch way
(PKGBUILD)[https://wiki.archlinux.org/title/PKGBUILD]
A PKGBUILD is a Bash script containing the build information required by Arch Linux packages.

makepkg

### install sudo
```sh
pacman -S sudo vi

```
vi for visudo
then add w permission to /etc/sudoers and enable %wheel group

### create a new user
```sh
useradd -m -G wheel <user>
```
###

### zhs setup
```sh

# change default shell to zsh
chsh -s /bin/zsh

```

### install basic packages
man-db
man-pages
git
base-devel
curl
wget
tree
less
which
net-tools
inetutils
ripgrep
fd

### install programming tools
clang

```sh
sudo pacman -S man-db man-pages
sudo pacman -S git curl wget tree base-devel
sudo pacman -S less which net-tools inetutils
sudo pacman -S clang
sudo pacman -S ripgrep fd

```

TBD - create install shell scripts to install packages

### ufw setup
```sh
sudo ufw status verbose
sudo ufw limit ssh
sudo ufw default deny
sudo ufw enable
sudo systemctl enable ufw
sudo systemctl start ufw

```

## References
[Arch Install through SSH](https://gitlab.com/artibus1/mench.git)

