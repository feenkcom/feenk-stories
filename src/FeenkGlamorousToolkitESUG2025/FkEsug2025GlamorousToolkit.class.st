Class {
	#name : #FkEsug2025GlamorousToolkit,
	#superclass : #Object,
	#traits : 'TDatabaseHolder + TGtSlideShow',
	#classTraits : 'TDatabaseHolder classTrait + TGtSlideShow classTrait',
	#category : #FeenkGlamorousToolkitESUG2025
}

{ #category : #slides }
FkEsug2025GlamorousToolkit >> instancesCountPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Instance Count')
		addSnippet: (LePharoSnippet new
			code: 'GtInstanceCounter countInstancesSummary');
		yourself
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> referenceFinderPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Reference Finder')
		addSnippet: (LePharoSnippet new
			code: 'GtReferenceFinder findPathTo: BrTabGroup allInstances first');
		addSnippet: (LePharoSnippet new
			code: 'GtReferencePaths to: BrTabGroup allInstances first');
		yourself
]

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
			GtInspectorFullRawLiveSlide new  ]
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide012CustomInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 1.2;
		newFadedText: 'Yet, when we change the view the difference is obvious';
		element: [ 
			GtInspectorFullCustomLiveSlide new  ]
]

{ #category : #slides }
FkEsug2025GlamorousToolkit >> slide020DocumentationSearches: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 2;
		startPage: ((LeDatabase databaseNamed: 'ESUG 2025')
			pageNamed: 'Documentation searches')
]
