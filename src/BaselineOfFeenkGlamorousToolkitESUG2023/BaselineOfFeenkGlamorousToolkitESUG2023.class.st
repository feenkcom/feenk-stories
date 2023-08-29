Class {
	#name : #BaselineOfFeenkGlamorousToolkitESUG2023,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkGlamorousToolkitESUG2023
}

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2023 class >> loadDependencies [
	self loadGt4AtProto.
	self loadZooniverseSources.
	self loadWhitehallSources.
	self loadGt4Twitter.
	self loadRustLspModel.
	self loadMapper
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2023 class >> loadGt4AtProto [
	Metacello new
		repository: 'github://feenkcom/gt4atproto:main/src';
		baseline: 'Gt4AtProto';
		load.
	#BaselineOfGt4AtProto asClass loadLepiter
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2023 class >> loadGt4Twitter [
	Metacello new
		repository: 'github://feenkcom/gt4twitter:main';
		baseline: #GToolkit4Twitter;
		load.
	#BaselineOfGToolkit4Twitter asClass loadLepiter
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2023 class >> loadMapper [
	Metacello new
		baseline: 'GToolkitMapperWithoutGT';
		repository: 'github://feenkcom/gtoolkit-mapper:master/src';
		load
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2023 class >> loadRustLspModel [
	GtLSPRustModel downloadExecutable.
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2023 class >> loadWhitehallSources [
	| rootDirectory |
	rootDirectory := 'whitehall' asFileReference.
	rootDirectory ensureDeleteAll.
	IceRepositoryCreator
		fromUrl: 'git@github.com:alphagov/whitehall.git'
		to: rootDirectory.
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2023 class >> loadZooniverseSources [
	| rootDirectory |
	rootDirectory := 'zooniverse' asFileReference.
	rootDirectory ensureDeleteAll.
	IceRepositoryCreator
		fromUrl: 'git@github.com:zooniverse/mobile.git'
		to: rootDirectory
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2023 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FeenkGlamorousToolkitESUG2003' ]
]
