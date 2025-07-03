Class {
	#name : #GtDemoGithubIssuesList,
	#superclass : #Object,
	#instVars : [
		'organization',
		'repository',
		'openedIssues'
	],
	#category : #FeenkGlamorousToolkitESUG2025
}

{ #category : #'llm-generated' }
GtDemoGithubIssuesList >> fetchOpenIssues [
	| rawIssues |
	rawIssues := (self getIssuesAtPage: 1)
		, (self getIssuesAtPage: 2)
		, (self getIssuesAtPage: 3)
		, (self getIssuesAtPage: 4).
	
	openedIssues := (rawIssues) collect: [ :each |
		GtDemoGithubIssue new 
			rawData: each ].
]

{ #category : #'llm-generated' }
GtDemoGithubIssuesList >> getIssuesAtPage: anInteger [ 
	| response |
	response := ZnClient new
		url: 'https://api.github.com/repos/', organization, '/', repository, '/issues';
		queryAt: 'state' put: 'open';
		queryAt: 'per_page' put: '100';
		queryAt: 'page' put: anInteger asString;
		accept: ZnMimeType applicationJson;
		get.
	^ STONJSON fromString: response contents
]

{ #category : #'llm-generated' }
GtDemoGithubIssuesList >> initializeWithOrganization: anOrganization repository: aRepo [
	organization := anOrganization.
	repository := aRepo.
	openedIssues := #().
]
