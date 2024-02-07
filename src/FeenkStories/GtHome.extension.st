Extension { #name : #GtHome }

{ #category : #'*FeenkStories' }
GtHome >> feenkStoriesSection [
	<gtHomeSection>
	^ FeenkStoriesHomeSection new
		priority: 10;
		yourself
]
