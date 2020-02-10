# usbip-configuration
Systemd service definition files for passing Zigbee &amp; Z-Wave devices to Home Assistant

The majority of this configuration is from [this post](https://community.home-assistant.io/t/rpi-as-z-wave-zigbee-over-ip-server-for-hass/23006) over on the Home Assistant forums which details a fantastic way of getting these devices to show up as native devices by leveraging the [usbip](https://github.com/torvalds/linux/tree/master/drivers/usb/usbip) kernel module.

This repository consists of 4 primary files. 2 for each device. 2 for each system.

- zigbee-client.service
- zigbee-server.service
- zwave-client.service
- zwave-server.service

For more information on my implementation of this, please refer to my [Home Assistant configuration repository](https://github.com/apocrathia/home-assistant-config).
