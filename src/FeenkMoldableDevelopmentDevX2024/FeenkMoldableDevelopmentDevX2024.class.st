Class {
	#name : #FeenkMoldableDevelopmentDevX2024,
	#superclass : #DatabaseHolder,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkMoldableDevelopmentDevX2024
}

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> dbPageToolsAsComposableSnippets [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Tools  as composable snippets')
	addSnippet: (LePharoSnippet new
			code: 'GtWebViewElement new
	url: ''https://observablehq.com/@d3/zoomable-sunburst''');
	yourself
]

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> slide010Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Andrei Chis. I work at feenk, and today I want to talk about Moldable Development with Glamorous Toolkit.'>
	
	^ aSlide title
		priority: 1;
		titleWithFormat: ('moldable development with glamorous toolkit' asRopedText 
			fontSize: 36;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 1 to: 'moldable development' size) bold]; yourself);
		subtitleWithFormat: ('andrei.chis@feenk.com' asRopedText 
			fontSize: 32;
			glamorousRegularFont)
]

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> slide011RawSingleInspector: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 1.1;
		newFadedText: 'Basic inspectors allow us to understand how an object is implemented';
		element: [ 
			 (GtGraphTreemapLayoutExamples >> #squarifyWithSevenNodes) gtExample returnValue gtRawFor: GtPhlowView empty.  ]
]

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> slide012RawInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 1.1;
		newFadedText: 'Consider how different objects looks quite similar in the inspector';
		element: [ 
			GtRawViewsLiveSlideDevX2024 new  ]
]

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> slide013CustomInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 1.2;
		newFadedText: 'Yet, when we change the view the difference is obvious';
		element: [ 
			GtCustomViewsLiveSlideDevX2024 new  ]
]

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> slide014AllViewsSlide: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: 1.4;
		element: [  GtAllViewsLiveSlideDevX2024 new asElement ];
		newFadedText: 'Every object is different, and the environment should show it, too.'. 
]

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> slide015SingleObjectAllViewsSlide: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: 1.5;
		element: [ (GtGraphTreemapLayoutExamples >> #squarifyWithSevenNodes) gtExample returnValue  gtViewsFor: GtPhlowView empty  ];
		newFadedText: 'Every object can have multiple domain-specific views'.
]

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> slide02TreeMapPageSlide: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 5;
		startPage: (LeDatabase gtBook
			pageNamed: 'Explaining the squarified treemap algorithm')
]

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> slide03ToolsAsSnippetsSlide: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 3;
		startPage: (self db pageNamed: 'Tools  as composable snippets')
]

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> slide5DifferentSnippets: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 5;
		newFadedText: 'Tools can be expressed as snippets and combined to form custom workflows';
		element: [ 
			GtDifferentSnippetsLiveSlide new 
				page: (self db pageNamed: 'Different snippets') ]
]

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> slide61LudoInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: 'Viewed objects'>

	^ aSlide element
		priority: 6;
		element: [  "GtInspector createOn: GtLudoRecordingGameExamples new gameShowingAllMoves3"
			|scripter|
			scripter := GtInspectorScripterExamples
					new
					scriptedInspectorInPagerOn: GtLudoRecordingGameExamples new gameShowingAllMoves3
					withPlaygroundTextAndDoit: 'self moves last'.
			scripter elementWithoutParent ]
]

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> slide62LudoInspectorsExploded: aSlide [
	<gtSlide>
	<gtSlideNote: 'Viewed objects'>
	| scripter element |
	
	^ aSlide element
		priority: 6.2;
		element: [ scripter := GtInspectorScripterExamples new
					scriptedInspectorInPagerOn: GtLudoRecordingGameExamples new gameShowingAllMoves3
					withPlaygroundTextAndDoit: 'self moves last'.
			element := scripter elementWithoutParent.
			GtPresenterElementExplosion new
						preferredLayerExtent: 800 @ 400;
						baseLabelString: 'Frame';
						layerQuery: BlElementLazyQuery new // GtPagerPageElement
							label: 'Flow composition';
						layerQuery: BlElementLazyQuery new // #tool
							label: 'Composable snippets and views';
						layerQuery: BlElementLazyQuery new
									// [ :each | each phlow isViewContent or: [ 
						each class = LePharoSnippetElement ] ]
							label: 'Embeddable content';
						explode: element ]
]

{ #category : #'as yet unclassified' }
FeenkMoldableDevelopmentDevX2024 >> slide999EndTitle: aSlide [
	<gtSlide>
	
	^ aSlide title
		priority: 999;
		titleWithFormat: ('moldable development with glamorous toolkit' asRopedText 
			fontSize: 36;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 1 to: 'moldable development' size) bold]; yourself);
		subtitleWithFormat: ('andrei.chis@feenk.com' asRopedText 
			fontSize: 32;
			glamorousRegularFont)
]
