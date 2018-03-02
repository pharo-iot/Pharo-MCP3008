# Pharo-MCP3008
Small library for the MCP3008 microchip ADC https://cdn-shop.adafruit.com/datasheets/MCP3008.pdf

Values are physically read and converted by the mcp320x driver. Values are stored in files and updated depending on the configured refresh rate. The values can be read in /sys/bus/iio/devices/iio

The library is just a helper to access the different channels of the MCP3008, by reading the corresponding file contents in /sys/bus/iio/devices/iio. The recovered values are strings, but are not converted to numbers by the library.

# Quick start
This code has been implemented and tested following http://www.jumpnowtek.com/rpi/Using-mcp3008-ADCs-with-Raspberry-Pis.html
The mpc320x driver is shipped with the last versions of Raspbian. 

The setup uses a DTS that can be found here https://github.com/raspberrypi/linux/blob/rpi-4.4.y/arch/arm/boot/dts/overlays/mcp3008-overlay.dts and must be copied in boot/dts/overlays/

The Pharo-MCP3008 can be loaded and used after the setup is complete.

# Usage


