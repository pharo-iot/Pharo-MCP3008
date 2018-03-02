# Pharo-MCP3008
Small library for the MCP3008 microchip ADC https://cdn-shop.adafruit.com/datasheets/MCP3008.pdf

Values are physically read and converted by the mcp320x driver. Values are stored in files and updated depending on the configured refresh rate. The values can be read in /sys/bus/iio/devices/iio

The library is just a helper to access the different channels of the MCP3008, by reading the corresponding file contents in /sys/bus/iio/devices/iio. The recovered values are strings and are converted to floats by the library. 


# Quick start

# Usage


