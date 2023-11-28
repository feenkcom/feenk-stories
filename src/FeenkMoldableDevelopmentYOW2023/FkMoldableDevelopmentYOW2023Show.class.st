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
			fontName: 'Desyrel')
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide021KMSystemDocumentation: aSlide [
	<gtSlide>
	<gtSlideNote: 'Knowledge management. System documentation.'>
	^ aSlide lepiterPage
		priority: 21;
		pageNamed: 'Documenting the domain: the Ludo game case study' from: 'Glamorous Toolkit Book';
		maximized: true
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide022PKM: aSlide [
	<gtSlide>
	<gtSlideNote: 'Private knowledge management.'>
	^ aSlide lepiterPage
		priority: 22;
		pageNamed: 'Moldable Development @ YOW 2023' from: 'default'
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide031APIBrowsing: aSlide [
	<gtSlide>
	<gtSlideNote: 'API browser'>
	^ aSlide lepiterPage
		priority: 31;
		pageNamed: 'Browsing a BlueSky user from a dedicated snippet' from: 'gt4atproto-lepiter'
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide051SoftwareAssessment: aSlide [
	<gtSlide>
	<gtSlideNote: 'Software assessment'>
	^ aSlide element
		priority: 51;
		element: [ | aPager |
			aPager := GtPager createWrappedOn: ('zooniverse' asFileReference gtDefaultInspectorTool asElement).
			aPager maximized.
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide061GraphicalEnvironment: aSlide [
	<gtSlide>
	<gtSlideNote: 'Smalltalk syntax'>
	^ aSlide lepiterPage
		priority: 61;
		pageNamed: 'Smalltalk method syntax on a postcard' from: 'Glamorous Toolkit Book';
		beMaximized
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide201Empty: aSlide [
	<gtSlide>
	<gtSlideNote: 'All these perspectives are correct. And they are all wrong.

These perspectives are not distinct tools. There are no tools. There is just a fluid environment. We do not go to tools. Tools come to us. And we can make them come to us in our terms, in our context.

Molding the environment to every single problem transforms everything, starting with the very act of programming.'>
	^ aSlide empty
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide202EditorSelection: aSlide [
	<gtSlide>
	<text: 'It touches everything at all levels of abstraction. For example, here we look at an example of selecting a piece of text.'>
	^ aSlide element
		priority: 202;
		element: [ | aPager |
			aPager := GtPager
					createWrappedOn: (GtCoder forMethod: BrTextEditorSelecterExamples >> #select_moveOneRight_at_6).
			aPager maximized.
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide204GraphicalEnvironment: aSlide [
	<gtSlide>
	<gtSlideNote: 'You can use it for teaching'>
	^ aSlide element
		priority: 204;
		element: [ | aPager |
			aPager := GtPager
					createWrappedOn: (GtCoder forMethod: BrTextEditorSelecterExamples >> #select_moveOneRight_at_6).
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide211TreemapOfExtensionsAndExamples: aSlide [
	<gtSlide>
	<text: 'There are thousands of extensions in Glamorous Toolkit out of the box.'>
	^ aSlide element
		priority: 211;
		element: [ GtImage treemapWithAllExtensions ]
]
