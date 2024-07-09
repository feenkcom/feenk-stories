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
FkEsug2024GlamorousToolkit >> differentSnippetsPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Different snippets')
	addSnippet: (LeShellScriptSnippet new
			code: './gtoolkit-vm-builder \
--release \
    --app-name ''GlamorousToolkit'' \
    --identifier ''com.gtoolkit'' \
    --author "feenk gmbh <contact@feenk.com>" \
    --libraries-versions libraries.version \
    --libraries boxer clipboard filewatcher gleam glutin pixels process skia winit test-library cairo crypto freetype git sdl2 ssl');
	addSnippet: (LePharoRewriteSnippet new
		search: '``@any isNil
	ifTrue: [ ^ self ].';
		replace: '``@any ifNil: [ ^ self ].';
		yourself);
	addSnippet: (LeYoutubeReferenceSnippet new
			youtubeUrl: 'https://youtu.be/lqogvp1dGpk');
	addSnippet: (LeWardleyMapSnippet new
	wardleyMap: (GtWardleyMapFromDictionaryImporter new
			importWardleyMapFrom: (STONJSON
					fromString: '{
	"title" : {
		"text" : "\rMoldable Development\r",
		"is_visible" : false
	},
	"nodes" : [
		{
			"id" : "2a48cb82-25d9-0d00-a768-e3c6088563e2",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.1,
			"y" : 0.9,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.0,
				"text" : "Development Practices"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "6e48cb82-25d9-0d00-a769-023f088563e2",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.3,
			"y" : 0.19999999999999996,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.0,
				"text" : "Programming Languages"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "b648cb82-25d9-0d00-a76a-8ae0088563e2",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.9,
			"y" : 0.8,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.0,
				"text" : "Problem Domain"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "be48cb82-25d9-0d00-a76b-9146088563e2",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7,
			"y" : 0.35655737704918034,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.25,
				"y" : -0.75,
				"text" : "Customization Frameworks"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "c048cb82-25d9-0d00-a76c-9f18088563e2",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.2,
			"y" : 0.25,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.0,
				"text" : "Frameworks and Libraries"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "c148cb82-25d9-0d00-a76d-fc75088563e2",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.8302233902759528,
			"y" : 0.04672131147540986,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.0,
				"text" : "Moldable Tools"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "c348cb82-25d9-0d00-a76e-826a088563e2",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7,
			"y" : 0.7,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.0,
				"text" : "Developer Skills"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "c548cb82-25d9-0d00-a76f-3b18088563e2",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.85,
			"y" : 0.6,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.0,
				"text" : "User Feedback"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "c548cb82-25d9-0d00-a76f-3b18088563e2",
			"to" : "c148cb82-25d9-0d00-a76d-fc75088563e2",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "c548cb82-25d9-0d00-a76f-3b18088563e2",
			"to" : "be48cb82-25d9-0d00-a76b-9146088563e2",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "c348cb82-25d9-0d00-a76e-826a088563e2",
			"to" : "c148cb82-25d9-0d00-a76d-fc75088563e2",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "c348cb82-25d9-0d00-a76e-826a088563e2",
			"to" : "6e48cb82-25d9-0d00-a769-023f088563e2",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "c348cb82-25d9-0d00-a76e-826a088563e2",
			"to" : "c048cb82-25d9-0d00-a76c-9f18088563e2",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "c148cb82-25d9-0d00-a76d-fc75088563e2",
			"to" : "b648cb82-25d9-0d00-a76a-8ae0088563e2",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "be48cb82-25d9-0d00-a76b-9146088563e2",
			"to" : "b648cb82-25d9-0d00-a76a-8ae0088563e2",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "2a48cb82-25d9-0d00-a768-e3c6088563e2",
			"to" : "c148cb82-25d9-0d00-a76d-fc75088563e2",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "2a48cb82-25d9-0d00-a768-e3c6088563e2",
			"to" : "be48cb82-25d9-0d00-a76b-9146088563e2",
			"color" : {
				"green" : 0.5004887585532747,
				"blue" : 0.5004887585532747,
				"alpha" : 1.0,
				"red" : 0.5004887585532747
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		}
	]
}')));
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
FkEsug2024GlamorousToolkit >> gitCliLoggingPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Logging git commands')
	addSnippet: (LePharoSnippet new
			code: 'MemoryLogger startFor: GtGitCliSignal');
	addSnippet: (LePharoSnippet new
			code: 'MemoryLogger instance');
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
	addSnippet: (LePharoSnippet new
		code: 'fileName := dataFile fullName');
	addSnippet: (LePythonSnippet new
		code: 'import movie
import pandas

movie.MovieCollection(pandas.read_csv(fileName))');
	yourself
]

{ #category : #pages }
FkEsug2024GlamorousToolkit >> rewritePharoCodePage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Working with a rewrite')
	addSnippet: (LeTextSnippet new
			string: '{{gtMethod:GtPrefixTree>>#childrenDo:|expanded}}');
	yourself
]

{ #category : #pages }
FkEsug2024GlamorousToolkit >> shellBasedAnalysisPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Performing an analysis using the shell')
	addSnippet: (LePharoSnippet new
			code: '| data |
data := NeoCSVData new.

data 
	data: (((Smalltalk allClasses 
		sorted: [ :each | each methods size ] descending)
		first: 20)
			collect: [ :aClass |
				{aClass name. aClass methods size. aClass linesOfCode }]).
String streamContents: [:aStream |
	data writeOn: aStream ]');
	addSnippet: (LePharoSnippet new
		code: 'code := thisSnippet previousSibling code');
	addSnippet: (LeShellScriptSnippet new
		bindingName: 'result';
		code: '
./GlamorousToolkit.app/Contents/MacOS/GlamorousToolkit-cli  GlamorousToolkit.image eval $code');
		
	addSnippet: (LePharoSnippet new
		code: 'obtainedString := (result trimBoth: [ :char | char = $'']) trimBoth.');
	addSnippet: (LePharoSnippet new
		code: 'returnedData := (NeoCSVReader on: obtainedString readStream)
	upToEnd');
	addSnippet: (LePharoSnippet new
		code: 'dataGroup := GtPlotterDataGroup new values: returnedData.
GtPlotterScatterChart new
		with: dataGroup;
		valueX: [ :array | array second asInteger ];
		scaleX: GtPlotterLinearScale new;
		titleX: ''Number of methods'';
		ticksX: 10;
		valueY: [ :array | array third asInteger ];
		scaleY: GtPlotterLinearScale new;
		titleY: ''Lines of Code'';
		ticksY: 10;
		withProjectionAxis;
		dotElement: [ :aGtPlotterContext |
			BlElement new
				geometry: BlEllipseGeometry new;
				size: 10 asPoint;
				aptitude: (BrGlamorousWithTooltipAptitude 
					content: [ BrLabel new
						text: (aGtPlotterContext originalValue first);
						aptitude: (BrGlamorousLabelAptitude new 
							padding: (BlInsets all: 1)) ])].');
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
FkEsug2024GlamorousToolkit >> slide010Title: aSlide [
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
FkEsug2024GlamorousToolkit >> slide011RawInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 1.1;
		newFadedText: 'Consider how different objects looks quite simlar in the inspector';
		element: [ 
			GtInspectorFullRawLiveSlide new  ]
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide012CustomInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 1.2;
		newFadedText: 'Yet, when we change the view the difference is obvious';
		element: [ 
			GtInspectorFullCustomLiveSlide new  ]
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
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 6;
		newFadedText: 'Objects in Pharo, GemStone, Python and Rust can have custom views written in the same language as the object';
		element: [ 
			GtDifferentLanguageInspectorsLiveSlide new asElement ]
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide07VisualizingTokenization: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 7;
		startPage: ((LeDatabase databaseNamed: 'gt4llm-lepiter')
			pageNamed: 'Accessing a tokenizer written in Python')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide08LlmZnUrlViews: aSlide [
	"<gtSlide>
	<gtSlideNote: '.'>"

	^ aSlide lepiterPage
		priority: 8;
		startPage: (self db pageNamed:  'Views for an URL')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide110ShellBasicLs: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 11;
		startPage: (self db pageNamed:  'Working with a shell script')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide111ShellScriptAnalysis: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 11.1;
		startPage: (self db pageNamed:  'Performing an analysis using the shell')
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
FkEsug2024GlamorousToolkit >> slide140ChatLLM: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 14;
		startPage: ((LeDatabase databaseNamed: 'gt4llm-lepiter')
			pageNamed: 'Getting a tutor to create a view')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide141WardleyMap: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide labelAndElement
		priority: 14.1;
		newFadedText: 'Wardley Map';
		element: [ GtWorld new root ]
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide150GitTool: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide labelAndElement
		priority: 15;
		element: [ GtGitStencil new  ]
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide151GitToolCommandLog: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>

	^ aSlide lepiterPage
		priority: 15.1;
		startPage: (self db pageNamed:  'Logging git commands')
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide16WebViewEsugUrl: aSlide [
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
FkEsug2024GlamorousToolkit >> slide20DifferentSnippets: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 20;
		newFadedText: 'Tools can be expressed as snippets and combined to form custom workflows';
		element: [ 
			GtDifferentSnippetsLiveSlide new 
				page: (self db pageNamed: 'Different snippets') ]
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide210GenericDebuggers: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 21;
		element: [ GtRawDebuggersLiveSlide new asElement ]
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide211Customebuggers: aSlide [
	<gtSlide>
	<gtSlideNote: '.'>
	
	^ aSlide labelAndElement
		priority: 21.1;
		element: [ GtCustomDebuggersLiveSlide new asElement ]
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide221LudoInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: 'Viewed objects'>

	^ aSlide element
		priority: 22.1;
		element: [  "GtInspector createOn: GtLudoRecordingGameExamples new gameShowingAllMoves3"
			|scripter|
			scripter := GtInspectorScripterExamples
					new
					scriptedInspectorInPagerOn: GtLudoRecordingGameExamples new gameShowingAllMoves3
					withPlaygroundTextAndDoit: 'self moves last'.
			scripter elementWithoutParent ]
]

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide222LudoInspectorsExploded: aSlide [
	<gtSlide>
	<gtSlideNote: 'Viewed objects'>
	| scripter element |
	
	^ aSlide element
		priority: 22.2;
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

{ #category : #slides }
FkEsug2024GlamorousToolkit >> slide99End: aSlide [
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
