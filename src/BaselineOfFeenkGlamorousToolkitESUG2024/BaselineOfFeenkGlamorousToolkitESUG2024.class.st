Class {
	#name : #BaselineOfFeenkGlamorousToolkitESUG2024,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkGlamorousToolkitESUG2024
}

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> importMovieCollectionInGemStone [
	| dataFile |
	
	dataFile := FileLocator gtResource 
		/ 'feenkcom' 
		/ 'gtoolkit-demos' 
		/ 'data' 
		/ 'imdb' 
		/ 'Movies.csv'.
		
	GtRmMovieCollectionGemstoneImporter new
		importFromCsvFile: dataFile
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> installPandasInPython [
	PBApplication isRunning ifFalse: [ self error ].
	
	PBApplication uniqueInstance installModule: 'pandas'.
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> loadDependenciesForGtPresentation [
	self loadRustLspModel.
	self loadMapper.
	self loadGt4LLM.
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> loadDependenciesForMoldableDebugging [
	self loadNeoCsv.
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
BaselineOfFeenkGlamorousToolkitESUG2024 class >> loadNeoCsv [
	Metacello new
		repository: 'github://svenvc/NeoCSV/repository';
		baseline: 'NeoCSV';
		load.
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
BaselineOfFeenkGlamorousToolkitESUG2024 class >> setupCloneGtoolkitBoxer [
	| rootDirectory |
	rootDirectory := 'gtoolkit-boxer' asFileReference.
	rootDirectory ensureDeleteAll.
	IceRepositoryCreator
		fromUrl: 'git@github.com:feenkcom/gtoolkit-boxer.git'
		to: rootDirectory.
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> setupCopyMoviesPythonFile [
	| sourecFile |
	sourecFile := FileLocator gtResource 
		/ 'feenkcom' 
		/ 'gt4python' 
		/ 'data' 
		/ 'python' 
		/ 'movie.py'.
		
	sourecFile copyTo: PBPlatform current workingDirectory / sourecFile basename.
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> setupDebuggerOpenFullScreen [
	| targetMethod newSourceCode |
	targetMethod := GtMoldableDebugger >> #open:titled:.

	newSourceCode := targetMethod sourceCode
		copyReplaceAll: 'aSpace extent: 1200 @ 600.'
		with: 'aSpace extent: 1680@940.'.
	
	targetMethod methodClass 
		compile: newSourceCode 
		classified: targetMethod category
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
BaselineOfFeenkGlamorousToolkitESUG2024 class >> setupPythonMode [
	| pbApplication |
	
	pbApplication := PBApplication new.
	pbApplication start.
	
	PBApplication uniqueInstance: pbApplication
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 class >> setupRemoveMatrixContextExtension [
	| targetMethod newSourceCode |
	targetMethod := BlMatrix>>#gtMatrixFor:.

	newSourceCode := targetMethod sourceCode
		copyReplaceAll: '<gtContextView>'
		with: '"<gtContextView>"'.
	
	targetMethod methodClass 
		compile: newSourceCode 
		classified: targetMethod category
]

{ #category : #accessing }
BaselineOfFeenkGlamorousToolkitESUG2024 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FeenkGlamorousToolkitESUG2024' ]
]
