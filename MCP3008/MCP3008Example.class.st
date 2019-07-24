"
MCP3008Example deviceReadExample
"
Class {
	#name : #MCP3008Example,
	#superclass : #Object,
	#instVars : [
		'device'
	],
	#category : #MCP3008
}

{ #category : #example }
MCP3008Example class >> deviceReadExample [
	<script>
	MCP3008Example new do50ReadsOnDevice0Chan0
]

{ #category : #accessing }
MCP3008Example >> do50ReadsOnDevice0Chan0 [
	[ 50
		timesRepeat: [ 0.1 second wait.
			Transcript show: (device read: 2) ] ] fork
]

{ #category : #accessing }
MCP3008Example >> initialize [
	device := MCP3008Device index: 0.
]
