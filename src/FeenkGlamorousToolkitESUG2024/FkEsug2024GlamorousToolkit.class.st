Class {
	#name : #FkEsug2024GlamorousToolkit,
	#superclass : #DatabaseHolder,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkGlamorousToolkitESUG2024
}

{ #category : #pages }
FkEsug2024GlamorousToolkit >> d3UrlPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'What about d3?')
	addSnippet: (LePharoSnippet new
			code: 'GtWebViewElement new
	url: ''https://observablehq.com/@d3/zoomable-sunburst''');
	yourself
]

{ #category : #pages }
FkEsug2024GlamorousToolkit >> esugUrlPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Web Page')
	addSnippet: (LePharoSnippet new
			code: 'znUrl := ZnUrl fromString: ''https://esug.org/2024-Conference/call2024.html''');
	addSnippet: (LePharoSnippet new
			code: 'WebBrowser openOn: znUrl');
	addSnippet: (LeTextSnippet new
			string: '[https://youtu.be/lqogvp1dGpk](https://youtu.be/lqogvp1dGpk)');
	yourself
]

{ #category : #pages }
FkEsug2024GlamorousToolkit >> moviesDemoInGTPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Movies Demo in Glamorous Toolkit')
	addSnippet: (LePharoSnippet new
			code: 'dataFile := FileLocator gtResource 
	/ ''feenkcom'' 
	/ ''gtoolkit-demos'' 
	/ ''data'' 
	/ ''imdb'' 
	/ ''Movies.csv'' ');
	addSnippet: (LePharoSnippet new
			code: 'movieCollection := GtRmMovieCollection fromDataFile: dataFile');
	yourself
]

{ #category : #pages }
FkEsug2024GlamorousToolkit >> moviesDemoInGemStonePage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Movies Demo in GemStone')
	addSnippet: (LePharoSnippet new
			code: 'dataFile := FileLocator gtResource 
	/ ''feenkcom'' 
	/ ''gtoolkit-demos'' 
	/ ''data'' 
	/ ''imdb'' 
	/ ''Movies.csv'' ');
	addSnippet: (LePharoSnippet new
		code: 'GtRmMovieCollectionGemstoneImporter new
	importFromCsvFile: dataFile');
	addSnippet: (LeGemStoneSnippet new
		code: 'GtRmMovieCollection defaultInstance');
	yourself
]

{ #category : #pages }
FkEsug2024GlamorousToolkit >> moviesDemoInPythonPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Movies Demo in Python')
	addSnippet: (LePharoSnippet new
			code: 'dataFile := FileLocator gtResource 
	/ ''feenkcom'' 
	/ ''gtoolkit-demos'' 
	/ ''data'' 
	/ ''imdb'' 
	/ ''Movies.csv'' ');
	addSnippet: (LePythonSnippet new
		code: 'Gimport movie
import pandas

movie.MovieCollection(pandas.read_csv(csvFile))');
	yourself
]

{ #category : #pages }
FkEsug2024GlamorousToolkit >> rewritePharoCodePage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Working with a rewrite')
	addSnippet: (LePharoSnippet new
			code: '');
	yourself
]

{ #category : #pages }
FkEsug2024GlamorousToolkit >> shellCodePage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Working with a shell script')
	addSnippet: (LePharoSnippet new
			code: '');
	"addSnippet: (LeShellScriptSnippet new
		code: 'ls');"
	yourself
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide01Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Andrei Chis. I work at feenk, and today I want to talk about how Glamorous Toolkit.'>
	
	^ aSlide title
		priority: 1;
		titleWithFormat: ('Glamorous Toolkit' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			"in: [:t | (t from: 1  to: 'Glamorous' size) bold];" yourself);
		subtitleWithFormat: ('Andrei Chiș' asRopedText 
			fontSize: 60;
			glamorousRegularFont;
			bold)
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide02MoviesDemoInGt: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 2;
		startPage: (self db pageNamed: 'Movies Demo in Glamorous Toolkit')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide03MoviesDemoInGemStone: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 3;
		startPage: (self db pageNamed: 'Movies Demo in GemStone')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide04MoviesDemoInPython: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 4;
		startPage: (self db pageNamed: 'Movies Demo in Python')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide05RustViews: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 5;
		startPage: (LeDatabase gtBook
			pageNamed: 'Identifying an editor bug by inspecting wrapped Rust objects')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide06ViewsInDifferentRuntimesOverview: aSlide [
	"<gtSlide>
	<gtSlideNote: '.'>"

	^ aSlide lepiterPage
		priority: 6;
		startPage: (LeDatabase gtBook
			pageNamed: 'Identifying an editor bug by inspecting wrapped Rust objects')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide07VisualizingTokenization: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 7;
		startPage: ((LeDatabase databaseNamed: 'gt4llm-lepiter')
			pageNamed: 'Visualizing tokenization')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide08LlmZnUrlViews: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 8;
		startPage: (self db pageNamed:  'Views for an URL')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide09WardleyMap: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide labelAndElement
		priority: 9;
		newFadedText: 'Wardley Map';
		element: [ GtWorld new root ]
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide11ShellScript: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 11;
		startPage: (self db pageNamed:  'Working with a shell script')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide12RewritePharoCode: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 12;
		startPage: (self db pageNamed:  'Working with a rewrite')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide13RewriteRustCode: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 13;
		startPage: (LeDatabase gtBook
			pageNamed: 'Rewriting Rust code')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide15GitTool: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide labelAndElement
		priority: 15;
		newFadedText: 'Git';
		element: [ GtGitPhlowTool new ]
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide16GWebViewEsugUrl: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 16;
		startPage: (self db pageNamed:  'Web Page')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide17YoutubeUrl: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 17;
		startPage: (self db pageNamed:  'What about youtube?')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide18D3Url: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 18;
		startPage: (self db pageNamed:  'What about d3?')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide19ViewUsingd3: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 19;
		startPage: (LeDatabase gtBook
			pageNamed: 'Using d3 to create views for local objects')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide201LudoInspectors: aSlide [
	"<gtSlide>
	<gtSlideNote: 'Viewed objects'>"

	^ aSlide element
		priority: 201;
		element: [  "GtInspector createOn: GtLudoRecordingGameExamples new gameShowingAllMoves3"
			|scripter|
			scripter := GtInspectorScripterExamples
					new
					scriptedInspectorInPagerOn: GtLudoRecordingGameExamples new gameShowingAllMoves3
					withPlaygroundTextAndDoit: 'self moves last'.
			scripter elementWithoutParent ]
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide202LudoInspectorsExploded: aSlide [
	"<gtSlide>
	<gtSlideNote: 'Viewed objects'>"
	| scripter element |
	
	^ aSlide element
		priority: 202;
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

{ #category : #pages }
FkEsug2024GlamorousToolkit >> youtubeUrlPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'What about youtube?')
	addSnippet: (LeTextSnippet new
			string: 'A link to a youtube video: [https://youtu.be/lqogvp1dGpk](https://youtu.be/lqogvp1dGpk)');
	yourself
]

{ #category : #pages }
FkEsug2024GlamorousToolkit >> znUrlPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Views for an URL')
	addSnippet: (LePharoSnippet new
			code: 'ZnUrl fromString: ''https://www.google.com/search?q=moldable+development&oq=moldable&gs_lcrp=EgZjaHJvbWUqBggAEEUYOzIGCAAQRRg7MgYIARBFGDkyBggCEEUYQDIGCAMQRRg7MgYIBBBFGD0yBggFEEUYPDIGCAYQRRg80gEIMTA2MGowajGoAgCwAgA&sourceid=chrome&ie=UTF-8''');
	yourself
]
