# Arch Linux - Post Installation

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

