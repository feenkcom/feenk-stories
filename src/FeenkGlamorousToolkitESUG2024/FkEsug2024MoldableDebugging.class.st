Class {
	#name : #FkEsug2024MoldableDebugging,
	#superclass : #DatabaseHolder,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkGlamorousToolkitESUG2024
}

{ #category : #pages }
FkEsug2024MoldableDebugging >> assertionFailurePage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'AssertionFailure')
	addSnippet: (LePharoSnippet new
			code: 'self 
	assert: GtExampleComparisonExceptionWithDebuggingViews new
		expectedStringForTest 
	equals: GtExampleComparisonExceptionWithDebuggingViews new
		computedStringForTest');
	yourself
]

{ #category : #pages }
FkEsug2024MoldableDebugging >> contextExtensionsPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Context extensions')
	addSnippet: (LeTextSnippet new
		string: '#Debugging Views';
		yourself);
	addSnippet: (LePharoSnippet new
			code: 'element := BlElement new
	size: 0@0;
	transformDo: [ :t | 
		t scaleBy: 0 .
		t translateBy: 10@5.
		t rotateBy: 25.
		t shearBy: 2@3 ].
element transformation inverseTransformPoint: 10@10';
			yourself);
	addSnippet: (LeTextSnippet new
		string: '#Debugging Actions';
		yourself);
	addSnippet: (LePharoSnippet new
			code: 'ZnClient new 
	url: ''https://www.gmail.com'';
	maxNumberOfRedirects: 3;
	get ';
			yourself);
	yourself
]

{ #category : #pages }
FkEsug2024MoldableDebugging >> debuggingGemStonePage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Debugging GemStone code')
	addSnippet: (LePharoSnippet new
		code: 'data := GtRmMovieCollection basicData';
		yourself);
	addSnippet: (LeGemStoneSnippet new
		code: 'GtRmMovieCollection fromFullData: data';
		yourself);
	yourself
]

{ #category : #pages }
FkEsug2024MoldableDebugging >> debuggingPythonPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Debugging Python code')
	
	addSnippet: (LePythonSnippet new
			code: 'import tfactorial
tfactorial.factorial(3,1)';
			yourself);
	yourself
]

{ #category : #pages }
FkEsug2024MoldableDebugging >> debuggingSmaCCPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Debugging a parser')
	
	addSnippet: (LePharoSnippet new
			code: 'JavaParser parse: ''public class Person {
  private String name; // private = restricted access

  // Getter
  public String getName() {
    return name;
  }

  // Setter
  public void setName(String newName) {
    this.name = newName;
  }
}''';
			yourself);
	yourself
]

{ #category : #pages }
FkEsug2024MoldableDebugging >> developingInPlaygroundPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Developing in the playground')
	addSnippet: (LePharoSnippet new
			code: 'message := ''Hello''.
action := MyAction new.');
	addSnippet: (LePharoSnippet new
			code: 'action 
	label: ''Inform''
	priority: 2
	message: message');
	yourself
]

{ #category : #pages }
FkEsug2024MoldableDebugging >> extensionMechanismsPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Extension Mechanisms')
	addSnippet: (LeTextSnippet new
		string: '#Inspector extensions';
		yourself);
	addSnippet: (LePharoSnippet new
		code: '#gtView gtPragmas';
		yourself);
	addSnippet: (LePharoSnippet new
		code: '#gtAction gtPragmas';
		yourself);
	addSnippet: (LeTextSnippet new
		string: '#Debugger extensions';
		yourself);
	addSnippet: (LePharoSnippet new
		code: 'GtDebuggerElement allSubclasses 
	reject: [ :aClass | aClass hasSubclasses or: [
		aClass debuggerSpecification isNil ] ]';
		yourself);
	yourself
]

{ #category : #pages }
FkEsug2024MoldableDebugging >> phlowApiErrorPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Phlow API error')
	addSnippet: (LePharoSnippet new
			code: 'viewBuilder := GtPhlowView empty. 
viewBuilder
	basicOn: GtPhlowViewWithErrorExamples new 
	perform: #gtViewWithReturningSameViewFor:
	withArguments: {viewBuilder}.');
	yourself
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide010Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Andrei Chis. I work at feenk, and today I want to talk about how we approach debugging in Glamorous Toolkit.'>
	
	^ aSlide title
		priority: 1;
		titleWithFormat: ('moldable debugging' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 1  to: 'moldable' size) bold]; yourself);
		subtitleWithFormat: ('Andrei Chiș' asRopedText 
			fontSize: 60;
			glamorousRegularFont;
			bold)
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide012feenk: aSlide [
	<gtSlide>
	<gtSlideNote: 'Specifically, I want to talk about Glamorous Toolkit v1.0 which has been 6 years in the making. What is Glamorous Toolkit? Different people look at it and see different things. Let''s go through these.'>
	^ aSlide title
		priority: 1.2;
		titleWithFormat: ('feenk' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 1 to: 'feenk' size) bold]; yourself)
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide013gt: aSlide [
	<gtSlide>
	<gtSlideNote: ''>
	
	^ aSlide title
		priority: 1.3;
		titleWithFormat: ('glamoroustoolkit' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'glamorous' size + 1  to: 'glamoroustoolkit' size) bold]; yourself)
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide020FromFullDebuggerToSmaCC: aSlide [
	<gtSlide>
	<gtSlideNote: ''>

	^ aSlide lepiterPage
		priority: 2;
		startPage: (self db pageNamed: 'Debugging a parser')
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide030DebuggingGemStone: aSlide [
	<gtSlide>
	<gtSlideNote: ''>

	^ aSlide lepiterPage
		priority: 3;
		startPage: (self db pageNamed: 'Debugging GemStone code')
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide040DebuggingPython: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 4;
		startPage: (self db pageNamed: 'Debugging Python code')
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide049CustomUIs: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	
	^ aSlide labelAndElement
		priority: 4.9;
		element: [ GtLanguageDebuggersLiveSlide new asElement ]";
		newFadedText: 'Yet, when we change the view, the differences are obvious.'."
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide050ExtensionMechanismInspector: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide labelAndElement
		priority: 5;
		newFadedText: 'Objects can have custom views and actions';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: (GtGitRepository fromIcebergRepository: (IceRepository registry 
	detect: [ :each | each name = 'gtoolkit-inspector']))))
				maximized ]
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide051ExtensionMechanismCount: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 5.1;
		startPage: (self db pageNamed: 'Extension Mechanisms')
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide060ContextExtensions: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 6;
		startPage: (self db pageNamed: 'Context extensions')
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide070AssertionFailure: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 7;
		startPage: (self db pageNamed: 'AssertionFailure')
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide080PhlowApiError: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide labelAndElement
		priority: 8;
		newFadedText: 'Inspector view API error';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: (GtPhlowViewWithErrorExamples new)))
				maximized ]
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide090ZincTooManyRedirects: aSlide [
	"<gtSlide>
	<gtSlideNote: '.'>"

	^ aSlide lepiterPage
		priority: 9;
		startPage: (self db pageNamed: 'Zinc Error')
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide100DevelopingInPlayground: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 10;
		startPage: (self db pageNamed: 'Developing in the playground')
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide110ShowingFalingAssertionsInCoder: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide labelAndElement
		priority: 11;
		newFadedText: 'Highlighting failed assertions in coder';
		element: [ 
			(GtCoderElement forMethod: GtRemotePhlowDeclarativeViewsExamples>>#treeViewWithStyledText) createInPager maximized ]
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide120ExampleToPlayground: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	"database pageBuilder title: 'PageOne'; add."
	^ aSlide labelAndElement
		priority: 12;
		newFadedText: 'Playing with examples in a playground';
		element: [ 
			(GtCoderElement forMethod: LeDatabaseReloadInEmptyDatabaseExamples>>#databaseWithMonitorStoppedAndExplicitLinkAndPagesRemoved) createInPager maximized ]
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide150GenericDebuggers: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 15;
		element: [ GtRawDebuggersLiveSlide new asElement ]
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide151Customebuggers: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 15;
		element: [ GtCustomDebuggersLiveSlide new asElement ]
]

{ #category : #slide }
FkEsug2024MoldableDebugging >> slide999EndTitle: aSlide [
	<gtSlide>
	<gtSlideNote: ''>
	
	^ aSlide title
		priority: 999;
		titleWithFormat: ('moldable debugging' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 1  to: 'moldable' size) bold]; yourself);
		subtitleWithFormat: ('Andrei Chiș' asRopedText 
			fontSize: 60;
			glamorousRegularFont;
			bold)
]

{ #category : #pages }
FkEsug2024MoldableDebugging >> zincRedirectsErrorPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Zinc Error')
	addSnippet: (LeTextSnippet new
		string: '#Too may redirects';
		yourself);
	addSnippet: (LePharoSnippet new
			code: 'ZnClient new 
	url: ''https://www.gmail.com'';
	maxNumberOfRedirects: 3;
	get ';
			yourself);
	yourself
]
