Class {
	#name : #FkEmbracingVariabilitySlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'FeenkEmbracingVariabilityVAMOS2024-Slideshows'
}

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> explainableLudo: aSlide [
	<gtSlide>
	<text:
'TODO

Show how we can explore the Ludo game.
Need some questions to answer ...
'>

<demo:
'TODO

'>

	^ aSlide labelAndElement
		setPriority;
		newText: 'You can interact with a live system, but you can''t ask it questions.';
		element: [ GtLudoGame new asElement asScalableElement ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> explainableSystems: aSlide [
	<gtSlide>
	<text:
'TODO

Explainable systems expose their insides ....
'>
	^ aSlide title
		setPriority;
		titleBottomPadding: 20;
		titleWithFormat: (self asTitle: 'Explainable systems');
		subtitleWithFormat: (self asBigText: 'placeholder text')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> moldableTools: aSlide [
	<gtSlide>
	<text: 'TODO

Moldable tools and variability
'>
	^ aSlide title
		setPriority;
		titleBottomPadding: 20;
		titleWithFormat: (self asTitle: 'Moldable tools');
		subtitleWithFormat: (self asBigText: 'placeholder text')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> opaqueSystems: aSlide [
	<gtSlide>
	<text:
'TODO

Opaque systems don''t expose their insides ...
'>
	^ aSlide title
		setPriority;
		titleBottomPadding: 20;
		titleWithFormat: (self asTitle: 'Opaque systems');
		subtitleWithFormat: (self asBigText: 'placeholder text')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> runningSystem: aSlide [
	<gtSlide>
	<text:
'TODO

A running system just shows its UI. You can interact with it, but you can''t see what''s happening inside it.
Show the Ludo game ...
'>
	^ aSlide labelAndElement
		setPriority;
		newText: 'You can interact with a live system, but you can''t ask it questions.';
		element: [ GtLudoGame new asElement asScalableElement ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> runningTests: aSlide [
	"NB: May need the scripter to queue this to the second view."

	<gtSlide>
	<text: 'TODO

Running tests won''t tell you much
'>
	^ aSlide labelAndElement
		setPriority;
		newText: 'You can interact with a live system, but you can''t ask it questions.';
		element: [ GtInspector newOn: (SimpleTestRunner for: GtLudoGameExamples) ]
]

{ #category : #accessing }
FkEmbracingVariabilitySlideshow >> slidePriorities [
	<gtExample>
	^ #( 
		titleSlide:
		
		opaqueSystems:
			runningSystem:
			sourceEditor:
			runningTests:
		
		explainableSystems:
			explainableLudo:
			"More examples here"
		
		moldableTools:
			"Dimensions of variability
			views
			actions
			searches
			
			"
		
			
	)
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> sourceEditor: aSlide [
	<gtSlide>
	<text:
'TODO

Browsing source code is not a good way to understand a system.
'>
	^ aSlide labelAndElement
		setPriority;
		newText: 'Reading source code is not an effective way to understand a system.';
		element: [ (GtCoderElement forClass: GtLudoGame) createInPager maximized ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> titleSlide: aSlide [
	<gtSlide>

<text:
'TODO

Intro'>

	^ aSlide titleWithFooter
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Embracing Software Variability');
		subtitleWithFormat: (self asTitle: ' to build Explainable Systems');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
