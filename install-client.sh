#! /bin/bash

# Prerequisites
/usr/bin/apt-get install linux-tools-generic -y
/sbin/modprobe vhci-hcd
/bin/echo 'vhci-hcd' >> /etc/modules

# Copy the systemd unit file
/bin/cp ./usbip-client.service /etc/systemd/system/

# Reload systemd
/bin/systemctl daemon-reload

# Enable unit files
/bin/systemctl enable usbip-client.service

# Start service
/bin/systemctl start usbip-client.service