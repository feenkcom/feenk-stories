Class {
	#name : #BaselineOfFeenkGlamorousToolktiUKSTUG2024,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkGlamorousToolktiUKSTUG2024
}

{ #category : #accessing }
BaselineOfFeenkGlamorousToolktiUKSTUG2024 class >> loadAtProtoSources [
	| atprotoDirectory |
	atprotoDirectory := 'atproto' asFileReference.
	atprotoDirectory ensureDeleteAll.
	atprotoDirectory ensureDeleteAll.
	^ IceRepositoryCreator
		fromUrl: 'git@github.com:bluesky-social/atproto.git'
		to: atprotoDirectory.
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolktiUKSTUG2024 class >> loadDependencies [
	self loadGt4AtProto.
	self loadAtProtoSources.
	self loadF1Demo
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolktiUKSTUG2024 class >> loadF1Demo [
	Metacello new
		baseline: 'DemoP3F1';
		repository: 'github://feenkcom/gt4p3';
		load.
	#BaselineOfGToolkit4P3 asClass loadLepiter
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolktiUKSTUG2024 class >> loadGt4AtProto [
	Metacello new
		repository: 'github://feenkcom/gt4atproto:main/src';
		baseline: 'Gt4AtProto';
		load.
	#BaselineOfGt4AtProto asClass loadLepiter
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolktiUKSTUG2024 class >> loadLepiterServer [
	Metacello new
		repository: 'github://feenkcom/lepiter-server:main/src';
		baseline: 'LepiterServer';
		load.
	#BaselineOfLepiterServer asClass loadLepiter
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolktiUKSTUG2024 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FeenkGlamorousToolkitUKSTUG2024' ]
]
