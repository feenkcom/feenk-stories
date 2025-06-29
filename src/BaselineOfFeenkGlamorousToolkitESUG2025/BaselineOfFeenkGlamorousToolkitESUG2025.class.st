Class {
	#name : #BaselineOfFeenkGlamorousToolkitESUG2025,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkGlamorousToolkitESUG2025
}

{ #category : #configuring }
BaselineOfFeenkGlamorousToolkitESUG2025 class >> enableLlmIntegration [
	GtLlmFeatures beExperimental
]

{ #category : #loading }
BaselineOfFeenkGlamorousToolkitESUG2025 class >> loadLepiterKnowledgeBase [
	| currentProperties |
	currentProperties := LeDatabasesRegistry defaultLogicalDatabase properties.
	currentProperties
		addRegisteredDirectory: FileLocator imageDirectory/ 'pharo-local'/'iceberg'/'feenkcom'/'feenk-stories'/'lepiter-esug2025'.
	LeDatabasesRegistry default defaultLogicalDatabase reload.
]

{ #category : #baselines }
BaselineOfFeenkGlamorousToolkitESUG2025 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FeenkGlamorousToolkitESUG2025' ]
]
