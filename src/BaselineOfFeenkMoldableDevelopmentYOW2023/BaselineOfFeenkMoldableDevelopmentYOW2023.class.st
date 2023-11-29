Class {
	#name : #BaselineOfFeenkMoldableDevelopmentYOW2023,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkMoldableDevelopmentYOW2023
}

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentYOW2023 class >> loadAtProtoSources [
	| atprotoDirectory |
	atprotoDirectory := 'atproto' asFileReference.
	atprotoDirectory ensureDeleteAll.
	atprotoDirectory ensureDeleteAll.
	^ IceRepositoryCreator
		fromUrl: 'git@github.com:bluesky-social/atproto.git'
		to: atprotoDirectory.
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentYOW2023 class >> loadDependencies [
	self loadGt4AtProto.
	self loadAtProtoSources.
	self loadZooniverseSources.
	self loadWhitehallSources.
	self loadLepiterServer.
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentYOW2023 class >> loadGt4AtProto [
	Metacello new
		repository: 'github://feenkcom/gt4atproto:main/src';
		baseline: 'Gt4AtProto';
		load.
	#BaselineOfGt4AtProto asClass loadLepiter
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentYOW2023 class >> loadLepiterServer [
	Metacello new
		repository: 'github://feenkcom/lepiter-server:main/src';
		baseline: 'LepiterServer';
		load.
	#BaselineOfLepiterServer asClass loadLepiter
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentYOW2023 class >> loadWhitehallSources [
	| rootDirectory |
	rootDirectory := 'whitehall' asFileReference.
	rootDirectory ensureDeleteAll.
	IceRepositoryCreator
		fromUrl: 'git@github.com:alphagov/whitehall.git'
		to: rootDirectory.
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentYOW2023 class >> loadZooniverseSources [
	| rootDirectory |
	rootDirectory := 'zooniverse' asFileReference.
	rootDirectory ensureDeleteAll.
	^ IceRepositoryCreator
		fromUrl: 'git@github.com:zooniverse/mobile.git'
		to: rootDirectory
]

{ #category : #accessing }
BaselineOfFeenkMoldableDevelopmentYOW2023 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FeenkMoldableDevelopmentYOW2023' ]
]
