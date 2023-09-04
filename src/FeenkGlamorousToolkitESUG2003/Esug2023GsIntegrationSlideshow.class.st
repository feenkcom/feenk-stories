Class {
	#name : #Esug2023GsIntegrationSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'FeenkGlamorousToolkitESUG2003-Akg'
}

{ #category : #testing }
Esug2023GsIntegrationSlideshow class >> showIt [

	self show
]

{ #category : #accessing }
Esug2023GsIntegrationSlideshow >> db [

	^ db ifNil: [ db := LeDatabasesRegistry uniqueInstance defaultLogicalDatabase ].
]

{ #category : #slides }
Esug2023GsIntegrationSlideshow >> loadDataDemo: aSlide [
	<gtSlide>
	<noTest>
	<text: ''>

	^ aSlide lepiterPage
		priority: (self priorityFor: #loadDataDemo:);
		startPage:  (self db pageNamed: 'ESUG 2023 - Load gpx data')
]

{ #category : #slides }
Esug2023GsIntegrationSlideshow >> objectives: aSlide [
	<gtSlide>
	<text: ''>

	^ aSlide paragraph
		priority: (self priorityFor: #objectives:);
		subtitleWithFormat: (self asTitle: 'Objectives');
		paragraphWithFormat: (self
				asBigText: '

- Provide an update on what has happened recently
- Show how we''re making GemStone development '), 
(self asBigText: 'moldable.') italic
]

{ #category : #slides }
Esug2023GsIntegrationSlideshow >> questions: aSlide [
	<gtSlide>
	^ aSlide textAndElement
		elementWeight: 0.60;
		priority: (self priorityFor: #questions:);
		newTextWithFormat: (self
				asText: 'Questions');
		element: [ GtFilePictureLiveSlide new
				fileReference: '/home/alistair/Pictures/2023-08-31_09-55.png' asFileReference ]
]

{ #category : #private }
Esug2023GsIntegrationSlideshow >> slidePriorities [
	"This method defines the slide priorities implicitly by their order instead of by fixed numbers.
	See also: PrioritySlideshow>>#priorityFor:"
	<gtExample>
	^ #( 
		titleSlide:
		objectives:
		loadDataDemo:
		
		threeViews:

		summaryFrameInspector:
		summaryFrameView:
		
		questions:
	)
]

{ #category : #slides }
Esug2023GsIntegrationSlideshow >> summaryFrameInspector: aSlide [
	<gtSlide>
	^ aSlide textAndElement
		elementWeight: 0.60;
		priority: (self priorityFor: #summaryFrameInspector:);
		newTextWithFormat: (self
				asText: 'Making first class object allows them to be viewed...');
		element: [ GtFilePictureLiveSlide new
				fileReference: '/home/alistair/Pictures/2023-08-31_07-34.png' asFileReference ]
]

{ #category : #slides }
Esug2023GsIntegrationSlideshow >> summaryFrameView: aSlide [
	<gtSlide>
	^ aSlide textAndElement
		elementWeight: 0.60;
		priority: (self priorityFor: #summaryFrameView:);
		newTextWithFormat: (self
				asText: '... and acted on');
		element: [ GtFilePictureLiveSlide new
				fileReference: '/home/alistair/Pictures/2023-08-31_07-35.png' asFileReference ]
]

{ #category : #slides }
Esug2023GsIntegrationSlideshow >> threeViews: aSlide [
	<gtSlide>
	^ aSlide textAndElement
		elementWeight: 0.60;
		priority: (self priorityFor: #threeViews:);
		newTextWithFormat: (self
				asText: 'Three view definition locations');
		element: [ GtFilePictureLiveSlide new
				fileReference: '/home/alistair/Pictures/2023-08-31_09-48.png' asFileReference ]
]

{ #category : #slides }
Esug2023GsIntegrationSlideshow >> titleSlide: aSlide [
	<gtSlide>
	<text: 
''>

	^ aSlide titleWithFooter
		priority: (self priorityFor: #titleSlide:);
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'GlamorousToolkit / GemStone integration');
		footerWithFormat: (self asBigText: 'alistair.grant@feenk.com')
]
