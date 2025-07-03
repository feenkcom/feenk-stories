Class {
	#name : #FkEsug2025GlamorousToolkit,
	#superclass : #Object,
	#traits : 'TDatabaseHolder + TGtSlideShow',
	#classTraits : 'TDatabaseHolder classTrait + TGtSlideShow classTrait',
	#category : #FeenkGlamorousToolkitESUG2025
}

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide010Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Andrei Chis. I work at feenk, and today I want to talk about how Glamorous Toolkit.'>
	
	^ aSlide title
		priority: 1;
		titleWithFormat: ('glamoroustoolkit' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 1  to: 'glamorous' size) bold]; yourself);
		subtitleWithFormat: ('andrei.chis@feenk.com' asRopedText 
			fontSize: 40;
			glamorousRegularFont)
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide011RawInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 1.1;
		newFadedText: 'Consider how different objects looks quite simlar in the inspector';
		element: [ 
			GtInspectorFullRawLiveEsug2025Slide new  ]
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide012CustomInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 1.2;
		newFadedText: 'Yet, when we change the view the difference is obvious';
		element: [ 
			GtInspectorFullCustomLiveEsug2025Slide new  ]
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide021ClassReferencesInDocumentation: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide element
		priority: 2.1;
		element: [
			| pager |
			pager := GtPager 
				createWrappedOn: (GtPharoBehaviorCoder 
					forClass: GtGraphTreemapSquarify) asElement.
			pager maximized.
			pager ]
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide022MethodSearches: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 2.2;
		startPage: ((LeDatabase databaseNamed: 'ESUG 2025')
			pageNamed: 'Documentation searches - Method Searches')
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide023DocumentationRefactorings: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 2.3;
		startPage: ((LeDatabase databaseNamed: 'ESUG 2025')
			pageNamed: 'Documentation searches - Refactorings')
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide030Profiling: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 3;
		startPage: ((LeDatabase gtBook)
			pageNamed: 'Profiling the styling of a method using the virtual machine telemetry')
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide040ReferenceFinder: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 4;
		startPage: ((LeDatabase databaseNamed: 'ESUG 2025')
			pageNamed: 'Reference Finder')
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide060CreatingViews: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 6;
		startPage: ((LeDatabase databaseNamed: 'ESUG 2025')
			pageNamed: 'Creating Views')
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide070DelphiTransformations: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 7;
		startPage: ((LeDatabase gtBook)
			pageNamed: 'Transforming Delphi code into C# (at syntax level)')
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide080WorkingWithCSS: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide element
		priority: 2.1;
		element: [
			| pager |
			pager := GtPager 
				createWrappedOn: (GtPharoBehaviorCoder 
					forClass: GtCSSFileSamples) asElement.
			pager maximized.
			pager ]
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide090AiAssistants: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 9;
		startPage: ((LeDatabase databaseNamed: 'ESUG 2025')
			pageNamed: 'Working with AI Assistants')
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide091WardleyMapExploration: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 9.1;
		startPage: (self database pageNamed:  'Wardley Map exploration')
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide99End: aSlide [
	<gtSlide>
	<gtSlideNote: ''>
	
	^ aSlide title
		priority: 999;
		titleWithFormat: ('gtoolkit.com' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			bold; yourself)
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> wardleyMapExplorationPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Wardley Map exploration')
	addSnippet: ((LeTextSnippet string: 'Let''s use an AI assistant to create a Wardley Map.')
		addSnippet: (LeTextSnippet string: '`A Wardley map is a map for business strategy. Components are positioned within a value chain and anchored by the user need, with movement described by an evolution axis.`');
		yourself);
	yourself
]
