Class {
	#name : #BaselineOfFeenkMoldableDevelopmentGOTO2024,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkMoldableDevelopmentGOTO2024
}

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentGOTO2024 class >> loadAtProtoSources [
	| atprotoDirectory |
	atprotoDirectory := 'atproto' asFileReference.
	atprotoDirectory ensureDeleteAll.
	atprotoDirectory ensureDeleteAll.
	^ IceRepositoryCreator
		fromUrl: 'git@github.com:bluesky-social/atproto.git'
		to: atprotoDirectory.
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentGOTO2024 class >> loadDependencies [
	self loadWhitehallSources
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentGOTO2024 class >> loadF1Demo [
	Metacello new
		baseline: 'DemoP3F1';
		repository: 'github://feenkcom/gt4p3';
		load.
	#BaselineOfGToolkit4P3 asClass loadLepiter
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentGOTO2024 class >> loadGt4AtProto [
	Metacello new
		repository: 'github://feenkcom/gt4atproto:main/src';
		baseline: 'Gt4AtProto';
		load.
	#BaselineOfGt4AtProto asClass loadLepiter
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentGOTO2024 class >> loadWhitehallSources [
	| rootDirectory |
	rootDirectory := 'whitehall' asFileReference.
	rootDirectory ensureDeleteAll.
	IceRepositoryCreator
		fromUrl: 'git@github.com:alphagov/whitehall.git'
		to: rootDirectory.
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentGOTO2024 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FeenkMoldableDevelopmentGOTO2024Show' ]
]
