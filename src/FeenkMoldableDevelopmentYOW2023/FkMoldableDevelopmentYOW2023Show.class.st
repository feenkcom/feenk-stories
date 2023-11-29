Class {
	#name : #FkMoldableDevelopmentYOW2023Show,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkMoldableDevelopmentYOW2023
}

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide001Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Tudor Girba. I am the CEO of feenk and today I want to talk about Glamorous Toolkit.'>
	^ aSlide title
		priority: 1;
		titleWithFormat: ('moldable development' asRopedText 
			fontSize: 80;
			fontName: 'Desyrel';
			thin;
			in: [:t | (t from: 'glamorous' size + 1 to: t size) bold]; yourself);
		subtitleWithFormat: ('@girba' asRopedText 
			fontSize: 50;
			foreground: Color gray;
			fontName: 'Desyrel')
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide002FeenkSlideFor: aSlide [
	<gtSlide>
	^ aSlide element
		priority: 2;
		element: [ | form |
			form := PNGReadWriter
					formFromFileNamed: (GtResourceReference path: Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'feenk.png')
							fullName.
			BlElement new
				constraintsDo: [ :c | 
					c horizontal matchParent.
					c vertical matchParent ];
				layout: BlLinearLayout horizontal;
				addChild: (BlElement new
						constraintsDo: [ :c | 
							c horizontal matchParent.
							c vertical fitContent.
							c linear vertical alignCenter ];
						layout: BlLinearLayout vertical;
						addChild: (BrVerticalPane new
								constraintsDo: [ :c | c linear horizontal alignCenter ];
								addChild: (form asElement asScalableElement
										maxScale: 0.2;
										constraintsDo: [ :c | 
											c horizontal matchParent.
											c vertical matchParent ]);
								hExact: 200;
								vExact: 200)) ]
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide003GTSlideFor: aSlide [
	<gtSlide>
	^ aSlide title
		priority: 3;
		titleWithFormat: ('glamoroustoolkit' asRopedText 
			fontSize: 70;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'glamorous' size + 1 to: t size) bold]; yourself)
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide011GitHubAPiSlideFor: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: 11;
		pageNamed: 'Working with a REST API: the GitHub case study' from: 'Glamorous Toolkit Book'
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide022GitHubGraphQLSlideFor: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: 22;
		pageNamed: 'Exploring GitHub through GraphQL ' from: 'Glamorous Toolkit Book'
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide031SoftwareAssessment: aSlide [
	<gtSlide>
	<gtSlideNote: 'Software assessment'>
	^ aSlide element
		priority: 31;
		element: [ | aPager |
			aPager := GtPager createWrappedOn: ('zooniverse' asFileReference gtDefaultInspectorTool asElement).
			aPager maximized.
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide041KMSystemDocumentation: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: 41;
		pageNamed: 'Documenting the domain: the Ludo game case study' from: 'Glamorous Toolkit Book';
		maximized: true
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide045PKM: aSlide [
	<gtSlide>
	<gtSlideNote: 'Private knowledge management.'>
	^ aSlide lepiterPage
		priority: 45;
		pageNamed: 'Moldable Development @ YOW 2023' from: 'default'
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide100Empty: aSlide [
	<gtSlide>
	<gtSlideNote: 'All these perspectives are correct. And they are all wrong.

These perspectives are not distinct tools. There are no tools. There is just a fluid environment. We do not go to tools. Tools come to us. And we can make them come to us in our terms, in our context.

Molding the environment to every single problem transforms everything, starting with the very act of programming.'>
	^ aSlide empty
		priority: 100
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide101ATProto: aSlide [
	<gtSlide>
	<gtSlideNote: 'AT Proto'>
	^ aSlide lepiterPage
		priority: 101;
		pageNamed: 'Browsing a BlueSky user from a dedicated snippet' from: 'gt4atproto-lepiter'
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide211TreemapOfExtensionsAndExamples: aSlide [
	<gtSlide>
	<text: 'There are thousands of extensions in Glamorous Toolkit out of the box.'>
	^ aSlide element
		priority: 211;
		element: [ GtImage treemapWithAllExtensions ]
]
