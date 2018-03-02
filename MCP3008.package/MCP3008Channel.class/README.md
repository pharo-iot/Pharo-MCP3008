I am a channel of an MCP3008 device.
I am  read a system file contents which contains a sensor analogic value. This value is physically read and set by the linux mcp320x driver.

physicalPath contains the name of the file to read.
chanIndex contains my index in the array of channels owned by a device.

As an example:
/sys/bus/iio/devices/iio:deviceX/in_voltageY_raw 
where X is my device index  
and Y is my channel index (chanIndex inst var)

see MCP3008Device>>setDeviceIndex: index  to see how channels are created 
Implemented following http://www.jumpnowtek.com/rpi/Using-mcp3008-ADCs-with-Raspberry-Pis.html

