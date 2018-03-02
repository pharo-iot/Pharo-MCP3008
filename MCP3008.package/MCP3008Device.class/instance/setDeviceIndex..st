read/write
setDeviceIndex: index
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