# Podman

## Arch linux WSL

following [this instructions ](https://wiki.archlinux.org/title/Podman) then

```sh
# reinstall shadow
sudo pacman -S shadow

```

to fix WARN[0000] "/" is not a shared mount, this could cause issues or missing mounts with rootless containers

```sh
# it seems that the arch WSL mount the / as private
# check the status with below command
sudo findmnt -o PROPAGATION /

# then
sudo mount --make-rshared /
podman system migrate

```
