Class {
	#name : #BaselineOfFeenkGlamorousToolkitESUG2023,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkGlamorousToolkitESUG2023
}

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2023 class >> loadDependencies [
	Metacello new
		repository: 'github://feenkcom/gt4atproto:main/src';
		baseline: 'Gt4AtProto';
		load.
	#BaselineOfGt4AtProto asClass loadLepiter
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2023 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FeenkGlamorousToolkitESUG2003' ]
]
