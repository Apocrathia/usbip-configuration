#! /bin/bash

# Prerequisites
/usr/bin/apt-get install usbip
/sbin/modprobe usbip_host
/bin/echo 'usbip_host' >> /etc/modules

# Copy the systemd unit file
/bin/cp ./usbip-server.service /etc/systemd/system/

# Reload systemd
/bin/systemctl daemon-reload

# Enable unit files
/bin/systemctl enable usbip-server.service

# Start service
/bin/systemctl start usbip-server.service