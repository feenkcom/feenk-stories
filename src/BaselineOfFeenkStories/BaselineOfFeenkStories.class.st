Class {
	#name : #BaselineOfFeenkStories,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkStories
}

{ #category : #loading }
BaselineOfFeenkStories class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'feenk-stories' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfFeenkStories >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'FeenkStories'
		]
]
