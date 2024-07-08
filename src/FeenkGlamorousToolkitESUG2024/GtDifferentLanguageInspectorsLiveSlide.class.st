Class {
	#name : #GtDifferentLanguageInspectorsLiveSlide,
	#superclass : #GtLiveSlide,
	#category : #FeenkGlamorousToolkitESUG2024
}

{ #category : #accessing }
GtDifferentLanguageInspectorsLiveSlide >> create [
	| container dataFile |
	
	container := BlElement new
		constraintsDo: [:c |
			c horizontal fitContent.
			c vertical fitContent ];
		layout: (BlGridLayout new columnCount: 2).
	dataFile := FileLocator gtResource 
		/ 'feenkcom' 
		/ 'gtoolkit-demos' 
		/ 'data' 
		/ 'imdb' 
		/ 'Movies.csv' .
	
	{
	
	[ GtRmMovieCollection fromDataFile: dataFile ] .
	
	[ GtGemStoneSessionRegistry defaultSession 
		evaluateAndWait: 'GtRmMovieCollection defaultInstance' ].
	
	[ PBApplication  uniqueInstance evaluateSourceSequence: ('import movie
import pandas

movie.MovieCollection(pandas.read_csv(''{1}''))' 
	format: {dataFile fullName} )].
	
	[ self createRustEditorRenderedInScripter 	
		children first buildParagraph layoutWithWidth: 400 ]
	
	} do: [:computation | 
		| inspector |
		inspector := computation value gtDefaultInspectorTool asElement.
		
		container addChild: 
				((BrVerticalPane new 
					aptitude: BrShadowAptitude; 
					background: Color white;
					margin: (BlInsets all: 20);
					clipChildren: false;
					matchParent;
					addChild: inspector)
						size: 800@400)  ].
					
	^ container asPannableElement
]

{ #category : #accessing }
GtDifferentLanguageInspectorsLiveSlide >> createRustEditor [
	| stream |
	stream := BlTextStream new.
stream glamorousRegularFont fontSize: 40.
stream next
	putAll: 'This is a piece of text in an editor. The editor is made out of '.
stream next
	foreground: Color blue;
	bold;
	putAll: 'Pharo'.
stream next
	putAll: ' paragraph objects. These paragraph objects have correspondent objects in the '.
stream next
	foreground: Color red;
	bold;
	putAll: 'Rust'.
stream next putAll: ' world which can be inspected seamlessly, too.'.
	^ BrEditor new
		text: stream contents;
		aptitude: BrGlamorousRegularEditorAptitude new
]

{ #category : #accessing }
GtDifferentLanguageInspectorsLiveSlide >> createRustEditorRenderedInScripter [
	| scripter |
	scripter := (BlScripter new 
		 element: self createRustEditor).
	^ scripter element removeFromParent
]
