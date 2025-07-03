Class {
	#name : #GtDemoGithubIssue,
	#superclass : #Object,
	#instVars : [
		'rawData'
	],
	#category : #FeenkGlamorousToolkitESUG2025
}

{ #category : #printing }
GtDemoGithubIssue >> printOn: aStream [
	super printOn: aStream.
	
	aStream parenthesize: [
		aStream << self title ]
]

{ #category : #accessing }
GtDemoGithubIssue >> rawData [
	^ rawData
]

{ #category : #accessing }
GtDemoGithubIssue >> rawData: anObject [
	rawData := anObject
]

{ #category : #accessing }
GtDemoGithubIssue >> title [
	^ rawData at: 'title'
]

{ #category : #accessing }
GtDemoGithubIssue >> userName [
	^ rawData at: 'user' at: 'login'
]
