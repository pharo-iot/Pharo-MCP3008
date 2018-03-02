accessing
do50ReadsOnDevice0Chan0
	[ 50
		timesRepeat: [ 0.1 second wait.
			Transcript show: (device read: 2) ] ] fork