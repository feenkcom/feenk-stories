Class {
	#name : #BaselineOfFeenkEmbracingVariabilityVAMOS2024,
	#superclass : #BaselineOf,
	#category : #BaselineOfFeenkEmbracingVariabilityVAMOS2024
}

{ #category : #baselines }
BaselineOfFeenkEmbracingVariabilityVAMOS2024 >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'FeenkEmbracingVariabilityVAMOS2024'
		]
]
