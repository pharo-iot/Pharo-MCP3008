accessing
index: deviceIndex
	devices ifNil: [ devices := Dictionary new ].
	^ devices at: deviceIndex ifAbsentPut: (self new setDeviceIndex: deviceIndex)