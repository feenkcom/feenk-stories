Class {
	#name : #FkEsug2025AiAssistants,
	#superclass : #Object,
	#traits : 'TDatabaseHolder + TGtSlideShow',
	#classTraits : 'TDatabaseHolder classTrait + TGtSlideShow classTrait',
	#category : #FeenkGlamorousToolkitESUG2025
}

{ #category : #pages }
FkEsug2025AiAssistants >> initialGithubExplorationPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Exploring GitHub issues')
	addSnippet: (LePharoSnippet new
			code: '');":Generate the code to get the list of opened issues from the gtoolkit project in the feenkcom organization on github"
	yourself
]

{ #category : #slides }
FkEsug2025AiAssistants >> slide010Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Andrei Chis. I work at feenk, and today I want to about working with AI assistants.'>
	
	^ aSlide title
		priority: 1;
		titleWithFormat: ('AI assistants in Glamorous Toolkit' asRopedText 
			fontSize: 70;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 1  to: 'AI assistants' size) bold]; yourself);
		subtitleWithFormat: ('andrei.chis@feenk.com' asRopedText 
			fontSize: 40;
			glamorousRegularFont)
]

{ #category : #slides }
FkEsug2025AiAssistants >> slide02GihubIssuesExploration: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 2;
		startPage: (self database pageNamed:  'Exploring GitHub issues')
]

{ #category : #slides }
FkEsug2025AiAssistants >> slide03WardleyMapExploration: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 3;
		startPage: (self database pageNamed:  'Wardley Map exploration')
]

{ #category : #slides }
FkEsug2025AiAssistants >> slide04DevelopABlogTutor: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 4;
		startPage: (LeDatabase gtBook
			pageNamed: 'Building an LLM assistant for editing blog posts')
]

{ #category : #slides }
FkEsug2025AiAssistants >> slide051ChatInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: 'Chat Inspectors'>

	^ aSlide element
		priority: 5.1;
		element: [  "GtInspector createOn: GtLudoRecordingGameExamples new gameShowingAllMoves3"
			|scripter|
			scripter := GtInspectorScripterExamples
					new
					scriptedInspectorInPagerOn: GtLudoRecordingGameExamples new gameShowingAllMoves3
					withPlaygroundTextAndDoit: 'self moves last'.
			scripter elementWithoutParent ]
]

{ #category : #slides }
FkEsug2025AiAssistants >> slide052CharInspectorsExploded: aSlide [
	<gtSlide>
	<gtSlideNote: 'Chat Inspectors'>
	
	
	^ aSlide element
		priority: 5.2;
		element: [ 
		| scripter element |
		scripter := GtInspectorScripterExamples new
					scriptedInspectorInPagerOn: GtLudoRecordingGameExamples new gameShowingAllMoves3
					withPlaygroundTextAndDoit: 'self moves last'.
			element := scripter elementWithoutParent.
			GtPresenterElementExplosion new
						preferredLayerExtent: 800 @ 400;
						baseLabelString: 'Frame';
						layerQuery: BlElementLazyQuery new // GtPagerPageElement
							label: 'Flow composition';
						layerQuery: BlElementLazyQuery new // GtPhlowLabelledViewElementId
							label: 'Composable snippets and views';
						layerQuery: BlElementLazyQuery new
									// [ :each | each phlow isViewContent or: [ 
						each class = LePharoSnippetElement ] ]
							label: 'Embeddable content';
						explode: element ]
]

{ #category : #slides }
FkEsug2025AiAssistants >> slide99End: aSlide [
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

{ #category : #pages }
FkEsug2025AiAssistants >> wardleyMapExplorationPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Wardley Map exploration')
	addSnippet: ((LeTextSnippet string: 'Let''s use an AI assistant to create a Wardley Map.')
		addSnippet: (LeTextSnippet string: '`A Wardley map is a map for business strategy. Components are positioned within a value chain and anchored by the user need, with movement described by an evolution axis.`');
		yourself);
	yourself
]
