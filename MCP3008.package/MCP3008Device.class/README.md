I model an MCP3008 analogic digital converter device https://cdn-shop.adafruit.com/datasheets/MCP3008.pdf. 
Class side methods provide access to instances of each device, one for each index.

I own 8 channels indexed from 0 to 7. Each one of them can read an analog input.

Channels are instances of MCP3008Channel and know how to perform a low-level read.

I have the responsibility to configure my channels with the proper address where they will read analog inputs.