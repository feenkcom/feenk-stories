Class {
	#name : #BaselineOfFeenkMoldableDevelopmentCraftConf2024,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkMoldableDevelopmentCraftConf2024
}

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentCraftConf2024 class >> loadAtProtoSources [
	| atprotoDirectory |
	atprotoDirectory := 'atproto' asFileReference.
	atprotoDirectory ensureDeleteAll.
	atprotoDirectory ensureDeleteAll.
	^ IceRepositoryCreator
		fromUrl: 'git@github.com:bluesky-social/atproto.git'
		to: atprotoDirectory.
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentCraftConf2024 class >> loadDependencies [
	self loadWhitehallSources
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentCraftConf2024 class >> loadF1Demo [
	Metacello new
		baseline: 'DemoP3F1';
		repository: 'github://feenkcom/gt4p3';
		load.
	#BaselineOfGToolkit4P3 asClass loadLepiter
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentCraftConf2024 class >> loadGt4AtProto [
	Metacello new
		repository: 'github://feenkcom/gt4atproto:main/src';
		baseline: 'Gt4AtProto';
		load.
	#BaselineOfGt4AtProto asClass loadLepiter
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentCraftConf2024 class >> loadWhitehallSources [
	| rootDirectory |
	rootDirectory := 'whitehall' asFileReference.
	rootDirectory ensureDeleteAll.
	IceRepositoryCreator
		fromUrl: 'git@github.com:alphagov/whitehall.git'
		to: rootDirectory.
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentCraftConf2024 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FeenkMoldableDevelopmentCraftConf2024' ]
]
