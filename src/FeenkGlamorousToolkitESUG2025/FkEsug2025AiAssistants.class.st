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
FkEsug2025AiAssistants >> slide050AssistantUseCases: aSlide [
	<gtSlide>
	<gtSlideNote: ''>
	
	^ aSlide labelAndElement
		priority: 5;
		element: [ 
			(FileLocator gtResource
				/ 'feenkcom' / 'feenk-stories' / 'data' / 'esug2025'
				/ 'AssistantsUsecasesOverview.png') 
					gtFigureFor:  GtPhlowView empty ]
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
