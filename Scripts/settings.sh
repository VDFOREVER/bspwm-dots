#!/bin/bash

#setup zram
sudo sh -c 'cat << EOF >> /etc/systemd/zram-generator.conf 
[zram0]
zram-size = ram / 2
compression-algorithm = zstd
swap-priority = 100
fs-type = swap
EOF'

systemctl daemon-reload
systemctl start systemd-zram-setup@zram0.service
sudo systemctl enable --now earlyoom