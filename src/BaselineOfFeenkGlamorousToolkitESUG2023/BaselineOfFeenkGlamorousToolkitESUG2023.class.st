Class {
	#name : #BaselineOfFeenkGlamorousToolkitESUG2023,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkGlamorousToolkitESUG2023
}

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2023 class >> loadDependencies [
	self loadGt4AtProto.
	self loadZooniverseSources.
	self loadGt4Twitter.
	self loadRustLspModel
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
BaselineOfFeenkGlamorousToolkitESUG2023 class >> loadRustLspModel [
	GtLSPRustModel downloadExecutable.
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
