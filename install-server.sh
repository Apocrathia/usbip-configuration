#! /bin/bash

# Copy the systemd unit file
/bin/cp ./zigbee-server.service /etc/systemd/system/
/bin/cp ./zwave-server.service /etc/systemd/system/

# Reload systemd
/bin/systemctl daemon-reload

# Enable unit files
/bin/systemctl enable zigbee-server.service
/bin/systemctl enable zwave-server.service

# Start service
/bin/systemctl start zigbee-server.service
/bin/systemctl start zwave-server.service