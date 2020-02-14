# usbip-configuration
Systemd service definition files for passing Zigbee & Z-Wave devices to Home Assistant

The majority of this configuration is from [this post](https://community.home-assistant.io/t/rpi-as-z-wave-zigbee-over-ip-server-for-hass/23006) over on the Home Assistant forums which details a fantastic way of getting these devices to show up as native devices by leveraging the [usbip](https://github.com/torvalds/linux/tree/master/drivers/usb/usbip) kernel module. 

This repository consists of 2 primary files. 1 for each system. 2 for each system.

- usbip-client.service
- usbip-server.service

Initially, I thought I would need a unit file for each device, but I've been able to consolidate everything into a single unit file. However, I have had considerable issues with the Aeotec Z-Stick Gen5 on the Raspberry Pi 4 ([which has been confirmed by multiple other people](https://github.com/raspberrypi/linux/issues/3027)) due to Aeotec not following USB standards properly and the device subsequently not being recognized by the USB controller. I'm currently trying to work out a solution; whether to use an external USB hub, or a Raspberry Pi 3 (which doesn't have any issues withe the Z-Stick).

For more information on my implementation of this, please refer to my [Home Assistant configuration repository](https://github.com/apocrathia/home-assistant-config).

## Additional Resources

- https://github.com/solarkennedy/wiki.xkyle.com/wiki/USB-over-IP-On-Ubuntu
- https://blog.toonormal.com/2016/09/25/notes-usbip/
- https://github.com/raspberrypi/linux/issues/3027
- https://www.raspberrypi.org/forums/viewtopic.php?f=28&t=245031
- https://gist.github.com/shbatm/1526174a9d285c342eb05c9efa35c02d