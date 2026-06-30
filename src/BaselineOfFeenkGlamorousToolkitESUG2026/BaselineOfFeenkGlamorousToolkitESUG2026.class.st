Class {
	#name : 'BaselineOfFeenkGlamorousToolkitESUG2026',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfFeenkGlamorousToolkitESUG2026',
	#package : 'BaselineOfFeenkGlamorousToolkitESUG2026'
}

{ #category : 'loading' }
BaselineOfFeenkGlamorousToolkitESUG2026 class >> loadLepiterKnowledgeBase [
	| currentProperties |
	currentProperties := LeDatabasesRegistry defaultLogicalDatabase properties.
	currentProperties
		addRegisteredDirectory: FileLocator imageDirectory/ 'pharo-local'/'iceberg'/'feenkcom'/'feenk-stories'/'lepiter-esug2026'.
	LeDatabasesRegistry default defaultLogicalDatabase reload.
]

{ #category : 'baselines' }
BaselineOfFeenkGlamorousToolkitESUG2026 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FeenkGlamorousToolkitESUG2026' ]
]
