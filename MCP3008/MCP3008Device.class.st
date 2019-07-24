"
I model an MCP3008 analogic digital converter device https://cdn-shop.adafruit.com/datasheets/MCP3008.pdf. 
Class side methods provide access to instances of each device, one for each index.

I own 8 channels indexed from 0 to 7. Each one of them can read an analog input.

Channels are instances of MCP3008Channel and know how to perform a low-level read.

I have the responsibility to configure my channels with the proper address where they will read analog inputs.
"
Class {
	#name : #MCP3008Device,
	#superclass : #Object,
	#instVars : [
		'device',
		'channels'
	],
	#classInstVars : [
		'devices'
	],
	#category : #MCP3008
}

{ #category : #accessing }
MCP3008Device class >> index: deviceIndex [
	devices ifNil: [ devices := Dictionary new ].
	^ devices at: deviceIndex ifAbsentPut: (self new setDeviceIndex: deviceIndex)
]

{ #category : #'read/write' }
MCP3008Device >> read: channelIndex [
	^ (channels at: channelIndex + 1) read
]

{ #category : #'read/write' }
MCP3008Device >> setDeviceIndex: index [
	| address |
	address := '/sys/bus/iio/devices/iio:device' , index asString , '/in_voltage'.
	channels := Array new: 8.
	(0 to: 7)
		do: [ :i | 
			| chan chanAddress |
			chan := MCP3008Channel new.
			chan chanIndex: i.
			chanAddress := address , i asString , '_raw'.
			chan physicalPath: chanAddress.
			channels at: i + 1 put:chan ].
	^ self
]
