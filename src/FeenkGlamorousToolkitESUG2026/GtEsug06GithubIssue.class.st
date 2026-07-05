Class {
	#name : 'GtEsug06GithubIssue',
	#superclass : 'Object',
	#instVars : [
		'rawData'
	],
	#category : 'FeenkGlamorousToolkitESUG2026-Utils',
	#package : 'FeenkGlamorousToolkitESUG2026',
	#tag : 'Utils'
}

{ #category : 'accessing' }
GtEsug06GithubIssue >> createdAt [
	^ rawData at: 'created_at' ifAbsent: [ '' ]
]

{ #category : 'accessing' }
GtEsug06GithubIssue >> creatorLogin [
	^ (rawData at: 'user' ifAbsent: [ Dictionary new ])
		at: 'login'
		ifAbsent: [ '' ]
]

{ #category : 'printing' }
GtEsug06GithubIssue >> gtDisplayOn: stream [
	stream
		nextPutAll: self title;
		nextPutAll: ' by ';
		nextPutAll: self creatorLogin
]

{ #category : 'gt-extensions' }
GtEsug06GithubIssue >> gtRawDataFor: aView [
	<gtView>
	^ aView columnedList 
		title: 'Raw data';
		priority: 60;
		items: [ self rawData isDictionary 
			ifTrue: [ self rawData associations sorted: [ :a :b | a key < b key ] ]
			ifFalse: [ self rawData ] ];
		column: 'Property' text: #key; 
		column: 'Value' text: #value;
		send: [ :each | each value ]
]

{ #category : 'gt-views' }
GtEsug06GithubIssue >> gtWebViewFor: aView [
	<gtView>
	^ aView explicit
		title: 'Web page';
		stencil: [ GtWebViewElement new url: self htmlUrl ]
]

{ #category : 'accessing' }
GtEsug06GithubIssue >> htmlUrl [
	^ self rawData at: 'html_url'
]

{ #category : 'accessing' }
GtEsug06GithubIssue >> rawData [
	^ rawData
]

{ #category : 'accessing' }
GtEsug06GithubIssue >> rawData: anObject [
	rawData := anObject
]

{ #category : 'accessing' }
GtEsug06GithubIssue >> title [
	^ rawData at: 'title'
]

{ #category : 'examples' }
GtEsug06GithubIssue >> webViewElement [
	<gtExample>
	<return: #GtWebViewElement>
	| anIssue anElement |
	anIssue := self.
	anElement := anIssue gtWebViewFor: GtPhlowView empty.
	self assert: anIssue htmlUrl equals: 'https://github.com/feenkcom/gtoolkit/issues/5123'.
	^ GtWebViewElement new url: anIssue htmlUrl
]
