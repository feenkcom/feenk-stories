Class {
	#name : 'GtEsug06GithubOrganization',
	#superclass : 'Object',
	#instVars : [
		'rawData'
	],
	#category : 'FeenkGlamorousToolkitESUG2026-Utils',
	#package : 'FeenkGlamorousToolkitESUG2026',
	#tag : 'Utils'
}

{ #category : 'views' }
GtEsug06GithubOrganization >> gtRawDataFor: aView [
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

{ #category : 'views' }
GtEsug06GithubOrganization >> gtReposFor: aView [
	<gtView>
	| aList |
	aList := aView columnedList
			title: 'Repositories';
			priority: 40;
			items: [ self repositories ];
			column: 'Repo' text: #name;
			column: 'Description'
				text: #description
				weight: 2;
			column: 'Open issues'
				text: [ :aRepo | 
					| aCount |
					aCount := aRepo numberOfOpenIssues.
					aCount isZero ifTrue: [ '' ] ifFalse: [ aCount ] ]
				width: 90.

	^ aList
]

{ #category : 'accessing' }
GtEsug06GithubOrganization >> httpClient [
	^ ZnClient new
		setBearerAuthentication: GtGitHubTokenHolder token;
		yourself
]

{ #category : 'accessing' }
GtEsug06GithubOrganization >> rawData [
	^ rawData
]

{ #category : 'accessing' }
GtEsug06GithubOrganization >> rawData: anObject [
	rawData := anObject
]

{ #category : 'accessing' }
GtEsug06GithubOrganization >> repositories [
	^ rawData 
		at: 'repos_url'
		ifPresent: [ :url | 
			| trimmedUrl |
			trimmedUrl := url
				copyWithRegex: '{.*}'
				matchesTranslatedUsing: [ :each | ''].
			self httpClient 
				get: trimmedUrl
				onSuccess: [ :result | 
						(STON fromString: result) collect: [ :each  |
							GtEsug06GithubRepository new rawData: each ] ]
				onError: [ #() ] ]
		ifAbsent: [ {} ]
]

{ #category : 'accessing' }
GtEsug06GithubOrganization >> repositoryNamed: aName [
	^ self repositories detect: [ :each |
		each name = aName ]
]
