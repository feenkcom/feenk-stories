Class {
	#name : #FkGt10ESUG2023Show,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkGlamorousToolkitESUG2003
}

{ #category : #accessing }
FkGt10ESUG2023Show >> slide001Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Tudor Girba. I am the CEO of feenk and today I want to talk about Glamorous Toolkit.'>
	^ aSlide title
		priority: 1;
		titleWithFormat: ('glamoroustoolkit' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'glamorous' size + 1 to: t size) bold]; yourself);
		subtitleWithFormat: ('@girba' asRopedText 
			fontSize: 30;
			glamorousRegularFont;
			bold)
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide002Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'Specifically, I want to talk about Glamorous Toolkit v1.0 which has been 6 years in the making. What is Glamorous Toolkit? Different people look at it and see different things. Let''s go through these.'>
	^ aSlide title
		priority: 2;
		titleWithFormat: ('glamoroustoolkit' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'glamorous' size + 1 to: t size) bold]; yourself);
		subtitleWithFormat: ('v1.0' asRopedText 
			fontSize: 60;
			glamorousRegularFont;"
			foreground: Color transparent;"
			bold)
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide011Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'Pharo development.'>
	^ aSlide element
		priority: 11;
		element: [ | aPager |
			aPager := GtPager
					createWrappedOn: (GtCoder forMethod: GtLudoGame >> #moveTokenNamed:).
			aPager maximized.
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide021Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'Knowledge management. System documentation.'>
	^ aSlide lepiterPage
		priority: 21;
		pageNamed: 'Documenting the domain: the Ludo game case study' from: 'Glamorous Toolkit Book';
		maximized: true
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide022Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'Private knowledge management.'>
	^ aSlide lepiterPage
		priority: 22;
		pageNamed: 'ESUG 2023 BlueSky thread' from: 'default'
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide031Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'API browser'>
	^ aSlide lepiterPage
		priority: 31;
		pageNamed: 'Browsing a BlueSky user from a dedicated snippet' from: 'gt4atproto-lepiter'
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide051Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'Software assessment'>
	^ aSlide lepiterPage
		priority: 51;
		pageNamed: 'Analyzing JavaScript React Native: the Zooniverse case study' from: 'Glamorous Toolkit Book'
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide071Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'Gemstone'>
	^ aSlide lepiterPage
		priority: 71;
		pageNamed: 'Playing with GemStone' from: 'default'
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide081Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'Development environment for other languages.'>
	^ aSlide element
		priority: 81;
		element: [ | model aPager |
			model := GtLSPRustModel
					onDirectory: (GtResourcesUtility default resourceAtPath: Path * 'feenkcom' / 'gtoolkit-boxer').
			aPager := GtPager createWrappedOn: model gtDefaultInspectorTool asElement.
			aPager maximized.
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide201Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'All these perspectives are correct. And they are all wrong.

These perspectives are not distinct tools. There are no tools. There is just a fluid environment. We do not go to tools. Tools come to us. And we can make them come to us in our terms, in our context.

Molding the environment to every single problem transforms everything, starting with the very act of programming.'>
	^ aSlide empty
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide202Title: aSlide [
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
FkGt10ESUG2023Show >> slide203Title: aSlide [
	<gtSlide>
	<text: 'It also works across languages.'>
	^ aSlide lepiterPage
		priority: 203;
		pageNamed: 'Inspecting wrapped Rust objects' from: 'default'
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide211Title: aSlide [
	<gtSlide>
	<text: 'There are thousands of extensions in Glamorous Toolkit out of the box.'>
	^ aSlide element
		priority: 211;
		element: [ GtImage treemapWithAllExtensions ]
]
