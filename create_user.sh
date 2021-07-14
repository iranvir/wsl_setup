#!/bin/sh
useradd -m -s /bin/bash ranvir
passwd -d ranvir
echo "[user]" >> /etc/wsl.conf
echo "default=ranvir" >> /etc/wsl.conf
echo "echo \"ranvir ALL=(ALL) NOPASSWD:ALL\" >> /etc/sudoers" | sudo bash
