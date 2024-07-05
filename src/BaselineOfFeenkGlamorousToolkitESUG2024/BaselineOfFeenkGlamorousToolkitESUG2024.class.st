Class {
	#name : #BaselineOfFeenkGlamorousToolkitESUG2024,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkGlamorousToolkitESUG2024
}

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> loadDependencies [
	self loadRustLspModel.
	self loadMapper.
	self loadGt4LLM.
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> loadGt4LLM [
	Metacello new
		repository: 'github://feenkcom/gt4llm:main/src';
		baseline: 'Gt4Llm';
		load.
	
	#BaselineOfGt4Llm asClass loadAllLepiterDatabases
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
BaselineOfFeenkGlamorousToolkitESUG2024 class >> setupAssertionError [
	| newSourceCode |
	
	newSourceCode := (GtRemotePhlowDeclarativeTestInspectable>>#gtTreeWithStyledTextFor:) sourceCode 
		copyReplaceAll: 'Tree - with styled text' 
		with: 'Tree with styled text'.
	GtRemotePhlowDeclarativeTestInspectable 
		compile: newSourceCode
		classified: 'inspecting'
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> setupGemStoneSession [
	| connector |
	connector := GtGemStoneSessionRegistry default propertiesFile addNewConnector.
	connector 
		registry: GtGemStoneSessionRegistry default;
		libraryPath: (FileLocator imageDirectory 
			/ 'remote-gemstone') asFileReference.
	connector username: 'SystemUser'.
	
	GtGemStoneSessionRegistry default 
		newSessionWithConnector:  connector
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> setupPythonDebugMode [
	| pbApplication |
	
	pbApplication := PBApplication new.
	pbApplication settings serverDebugMode: true.
	pbApplication start.
	
	PBApplication uniqueInstance: pbApplication
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FeenkGlamorousToolkitESUG2024' ]
]
