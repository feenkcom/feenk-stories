Class {
	#name : #BaselineOfFeenkGlamorousToolkitESUG2024,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkGlamorousToolkitESUG2024
}

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> loadDependencies [
	self loadRustLspModel.
	self loadMapper
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> loadMapper [
	Metacello new
		baseline: 'GToolkitMapperWithoutGT';
		repository: 'github://feenkcom/gtoolkit-mapper:master/src';
		load
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> loadRustLspModel [
	GtLSPRustModel downloadExecutable.
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FeenkGlamorousToolkitESUG2024' ]
]
