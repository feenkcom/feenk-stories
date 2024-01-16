Extension { #name : #GtHome }

{ #category : #'*FeenkStories' }
GtHome >> feenkStoriesSection [
	<gtHomeSection>
	^ GtHomeStartPageSection new 
		title: 'feenk Stories';
		description: 'Live stories to be consumed in Glamorous Toolkit';
		databaseName: 'feenkcom/feenk-stories/lepiter';
		startPageName: 'feenk stories TOC';
		priority: 8
]
