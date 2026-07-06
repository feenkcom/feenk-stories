Class {
	#name : 'FkEsug2026GlamorousToolkit',
	#superclass : 'Object',
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : 'FeenkGlamorousToolkitESUG2026-Presentations',
	#package : 'FeenkGlamorousToolkitESUG2026',
	#tag : 'Presentations'
}

{ #category : 'accessing' }
FkEsug2026GlamorousToolkit >> presentationDatabase [
	^ LeDatabase databaseNamed: 'feenkcom/feenk-stories/lepiter-esug2026'
]

{ #category : 'slides' }
FkEsug2026GlamorousToolkit >> slide010Title: aSlide [
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

{ #category : 'slides' }
FkEsug2026GlamorousToolkit >> slide011RawInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^aSlide labelAndElement
		priority: 1.1;
		newFadedText: 'Consider how different objects looks quite simlar in the inspector';
		element: [ 
			GtInspectorFullRawLiveEsug2026Slide new  ]
]

{ #category : 'slides' }
FkEsug2026GlamorousToolkit >> slide012CustomInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 1.2;
		newFadedText: 'Yet, when we change the view the difference is obvious';
		element: [ 
			GtInspectorFullCustomLiveEsug2026Slide new  ]
]

{ #category : 'slides' }
FkEsug2026GlamorousToolkit >> slide110PagerFlow: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 110;
		startPage: ((self presentationDatabase)
			pageNamed: 'Pager Flow')
]

{ #category : 'slides' }
FkEsug2026GlamorousToolkit >> slide211IncrementalParsingEditing: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide element
		priority: 211;
		element: [
			 GtPagerSettings usedPager
				createWrappedOn: [GtCoder forMethod: LeCodeSnippet>>#initialize] asStencil]
]

{ #category : 'slides' }
FkEsug2026GlamorousToolkit >> slide212IncrementalParsingExample: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide element
		priority: 212;
		element: [
			 GtPagerSettings usedPager
				createWrappedOn: [GtCoder forMethod: GtPharoIncrementalParserFullUpdateAstComparisonExamples>>#comparisonFromIncrementalParsingPage] asStencil]
]

{ #category : 'slides' }
FkEsug2026GlamorousToolkit >> slide310GemStoneReplication: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 310;
		startPage: ((self presentationDatabase)
			pageNamed: 'GemStone Replication')
]

{ #category : 'slides' }
FkEsug2026GlamorousToolkit >> slide410BasicLLMAgents: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 410;
		startPage: ((self presentationDatabase)
			pageNamed: 'Basic LLM agents in GT')
]

{ #category : 'slides' }
FkEsug2026GlamorousToolkit >> slide420BasicLLMAgents: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 420;
		startPage: ((self presentationDatabase)
			pageNamed: 'Developing with LLM agents in the presence of  objects')
]

{ #category : 'slides' }
FkEsug2026GlamorousToolkit >> slide430BasicLLMAgents: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 430;
		startPage: ((self presentationDatabase)
			pageNamed: 'Exploring GemStone objects using LLMs')
]

{ #category : 'slides' }
FkEsug2026GlamorousToolkit >> slide99End: aSlide [
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
