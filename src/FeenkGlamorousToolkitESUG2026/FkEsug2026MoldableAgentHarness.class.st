Class {
	#name : 'FkEsug2026MoldableAgentHarness',
	#superclass : 'Object',
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : 'FeenkGlamorousToolkitESUG2026-Presentations',
	#package : 'FeenkGlamorousToolkitESUG2026',
	#tag : 'Presentations'
}

{ #category : 'pages' }
FkEsug2026MoldableAgentHarness >> initialGithubExplorationPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Exploring GitHub issues')
	addSnippet: (LePharoSnippet new
			code: '');":Generate the code to get the list of opened issues from the gtoolkit project in the feenkcom organization on github"
	yourself
]

{ #category : 'utils' }
FkEsug2026MoldableAgentHarness >> presentationDatabase [
	^ LeDatabase databaseNamed: 'feenkcom/feenk-stories/lepiter-esug2026'
]

{ #category : 'slides' }
FkEsug2026MoldableAgentHarness >> slide010Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Andrei Chis. I work at feenk, and today I want to about working with AI assistants.'>
	
	^ aSlide title
		priority: 1;
		titleWithFormat: ('Moldable Agent Harness in Glamorous Toolkit' asRopedText 
			fontSize: 64;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 1  to: 'Moldable Agent Harness' size) bold]; yourself);
		subtitleWithFormat: ('andrei.chis@feenk.com' asRopedText 
			fontSize: 40;
			glamorousRegularFont)
]

{ #category : 'slides' }
FkEsug2026MoldableAgentHarness >> slide10StructuredOutput: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 10;
		startPage: (self presentationDatabase
			pageNamed: 'Creating agents with structured output')
]

{ #category : 'slides' }
FkEsug2026MoldableAgentHarness >> slide20UsingLepiterExplanations: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 20;
		startPage: (self presentationDatabase
			pageNamed: 'Guiding chats through explanations')
]

{ #category : 'slides' }
FkEsug2026MoldableAgentHarness >> slide30ToolInteraction: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 30;
		startPage: (self presentationDatabase
			pageNamed: 'Tool-augmented interaction')
]

{ #category : 'slides' }
FkEsug2026MoldableAgentHarness >> slide40WorkingWithObjects: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 40;
		startPage: (self presentationDatabase
			pageNamed: 'Working with objects')
]

{ #category : 'slides' }
FkEsug2026MoldableAgentHarness >> slide41WorkingWithObjectsExamples: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 41;
		startPage: (self presentationDatabase
			pageNamed: 'Working with objects - starting from examples')
]

{ #category : 'slides' }
FkEsug2026MoldableAgentHarness >> slide50DevelopingUsingLLMs: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 50;
		startPage: (self presentationDatabase
			pageNamed: 'Developing using LLMs')
]

{ #category : 'slides' }
FkEsug2026MoldableAgentHarness >> slide60MCPStub: aSlide [
	"<gtSlide>
	<gtSlideNote: '.'>"
	
	^ aSlide title
		priority: 60;
		titleWithFormat: ('MCP Servers - no time - ask for a demo' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			bold; yourself)
]

{ #category : 'slides' }
FkEsug2026MoldableAgentHarness >> slide710UserInterfaceAsALanguage: aSlide [
	<gtSlide>
	<gtSlideNote: ''>
	
	^ aSlide labelAndElement
		priority: 71;
		element: [ 
			(FileLocator gtResource
				/ 'feenkcom' / 'feenk-stories' / 'data' / 'esug2026'
				/ 'UserInterfaceAsLanguage.png') 
					gtFigureFor:  GtPhlowView empty ]
]

{ #category : 'slides' }
FkEsug2026MoldableAgentHarness >> slide720ViewsAndLepiterAsSkills: aSlide [
	<gtSlide>
	<gtSlideNote: ''>
	
	^ aSlide labelAndElement
		priority: 72;
		element: [ 
			(FileLocator gtResource
				/ 'feenkcom' / 'feenk-stories' / 'data' / 'esug2026'
				/ 'ViewsAndLepiterAsSkills.png') 
					gtFigureFor:  GtPhlowView empty ]
]

{ #category : 'slides' }
FkEsug2026MoldableAgentHarness >> slide99End: aSlide [
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
