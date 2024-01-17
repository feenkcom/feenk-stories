"
I am just a dummy wrapper around an example group that has just a single view to show a test (example) running and nothing else.
I also hide the default views to offer a very plain view.
"
Class {
	#name : #SimpleTestRunner,
	#superclass : #Object,
	#instVars : [
		'exampleClass'
	],
	#category : #'FeenkEmbracingVariabilityVAMOS2024-Demo'
}

{ #category : #'instance creation' }
SimpleTestRunner class >> for: aClass [
	^ self new
		exampleClass: aClass;
		yourself
]

{ #category : #'instance creation' }
SimpleTestRunner >> exampleClass: aClass [
	exampleClass := aClass
]

{ #category : #accessing }
SimpleTestRunner >> exampleGroup [
	^ GtExampleGroup withAll: exampleClass gtExamplesAllContained
]

{ #category : #view }
SimpleTestRunner >> gtExamplesFor: aView [
	<gtView>
	^ aView forward
		title: 'Test runner';
		priority: 10;
		object: self exampleGroup;
		view: #gtExamplesFor:
]

{ #category : #accessing }
SimpleTestRunner >> gtMetaFor: aView [
	<gtView>
	^ aView empty
]

{ #category : #accessing }
SimpleTestRunner >> gtPrintFor: aView [
	<gtView>
	^ aView empty
]

{ #category : #accessing }
SimpleTestRunner >> gtRawFor: aView [
	<gtView>
	^ aView empty
]
