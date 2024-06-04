Class {
	#name : #FeenkStoriesHomeSection,
	#superclass : #GtHomeMultiCardSection,
	#category : #'FeenkStories-Sections'
}

{ #category : #accessing }
FeenkStoriesHomeSection >> sectionTitle [
	^ 'Feenk Stories'
]

{ #category : #accessing }
FeenkStoriesHomeSection >> tocCard [
	<gtSectionCard>
	<gtExample>
	<notest>
	^ GtHomeCard page
		title: 'feenk Stories';
		description: 'Live stories to be consumed in Glamorous Toolkit';
		priority: 10;
		pageName: 'feenk stories TOC';
		databaseName: 'feenkcom/feenk-stories/lepiter';
		yourself
]
