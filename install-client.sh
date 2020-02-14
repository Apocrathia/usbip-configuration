#! /bin/bash

/usr/bin/apt-get install linux-tools-generic -y
/sbin/modprobe vhci-hcd
/bin/echo 'vhci-hcd' >> /etc/modules

# Copy the systemd unit file
/bin/cp ./zigbee-client.service /etc/systemd/system/
/bin/cp ./zwave-client.service /etc/systemd/system/

# Reload systemd
/bin/systemctl daemon-reload

# Enable unit files
/bin/systemctl enable zigbee-client.service
/bin/systemctl enable zwave-client.service

# Start service
/bin/systemctl start zigbee-client.service
/bin/systemctl start zwave-client.service