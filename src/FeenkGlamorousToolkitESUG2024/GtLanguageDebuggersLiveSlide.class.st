Class {
	#name : #GtLanguageDebuggersLiveSlide,
	#superclass : #GtDebuggerViewsLiveSlide,
	#category : #FeenkGlamorousToolkitESUG2024
}

{ #category : #accessing }
GtLanguageDebuggersLiveSlide >> create [
	| container debuggers |
	container := BrVerticalPane new
		fitContent;
		alignCenter.
	
	debuggers := {
		'debugger-smacc.png'.
		'debugget-python.png'.
		'debugger-gemstone.png'
	
	
	} collect: [:fileName | 
		|debugger folder|
		folder := FileLocator gtResource / 'feenkcom' / 'feenk-stories' / 'data' / 'images-debuggers'.
	 	debugger := (GtFileUtility imageElementFromFileReference: (folder/fileName))
			margin: (BlInsets all: 10).
		((BrVerticalPane new 
					aptitude: BrShadowAptitude; 
					background: Color white;
					margin: (BlInsets all: 20);
					addChild: debugger)
						size: 600@400)  ].
	
	container addChild: (BrHorizontalPane new
		fitContent;
		addChild: debuggers first;
		addChild: debuggers second).
	container addChild: (debuggers third).
				
	^ container asPannableElement
]
