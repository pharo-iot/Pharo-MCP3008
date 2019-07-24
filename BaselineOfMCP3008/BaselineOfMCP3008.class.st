Class {
	#name : #BaselineOfMCP3008,
	#superclass : #BaselineOf,
	#category : #BaselineOfMCP3008
}

{ #category : #baselines }
BaselineOfMCP3008 >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'Pharo-MCP3008' ]
]
