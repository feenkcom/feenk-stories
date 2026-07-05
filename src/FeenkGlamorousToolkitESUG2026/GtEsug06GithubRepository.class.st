Class {
	#name : 'GtEsug06GithubRepository',
	#superclass : 'Object',
	#instVars : [
		'rawData'
	],
	#category : 'FeenkGlamorousToolkitESUG2026-Utils',
	#package : 'FeenkGlamorousToolkitESUG2026',
	#tag : 'Utils'
}

{ #category : 'accessing' }
GtEsug06GithubRepository >> description [
	^ rawData at: 'description'
]

{ #category : 'accessing' }
GtEsug06GithubRepository >> gtDisplayOn: stream [
	stream nextPutAll: self name
]

{ #category : 'views' }
GtEsug06GithubRepository >> gtRawDataFor: aView [
	<gtView>
	^ aView columnedList 
		title: 'Raw data';
		priority: 60;
		items: [ self rawData isDictionary 
			ifTrue: [ self rawData associations sorted: [:a :b | a key < b key ] ]
			ifFalse: [ self rawData ] ];
		column: 'Property' text: #key; 
		column: 'Value' text: #value;
		send: [ :each | each value ] 
]

{ #category : 'accessing' }
GtEsug06GithubRepository >> httpClient [
	^ ZnClient new
		setBearerAuthentication: GtGitHubTokenHolder token;
		yourself
]

{ #category : 'accessing' }
GtEsug06GithubRepository >> name [ 
	^ rawData at: 'name'
]

{ #category : 'accessing' }
GtEsug06GithubRepository >> numberOfOpenIssues [
	^ rawData at: 'open_issues'
]

{ #category : 'accessing' }
GtEsug06GithubRepository >> rawData [
	^ rawData
]

{ #category : 'accessing' }
GtEsug06GithubRepository >> rawData: anObject [
	rawData := anObject
]
