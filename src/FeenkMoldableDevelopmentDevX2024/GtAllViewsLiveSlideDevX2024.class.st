Class {
	#name : #GtAllViewsLiveSlideDevX2024,
	#superclass : #GtInspectorViewsLiveSlide,
	#category : #FeenkMoldableDevelopmentDevX2024
}

{ #category : #'api - instantiation' }
GtAllViewsLiveSlideDevX2024 >> create [
	| container |
	container := BlElement new
		constraintsDo: [:c |
			c horizontal fitContent.
			c vertical fitContent ];
		layout: (BlGridLayout new columnCount: 3).
	{21/2 . 
	FileLocator imageDirectory asFileReference .
	(GtGraphTreemapLayoutExamples >> #squarifyWithSevenNodes) gtExample returnValue.
	BlBezierElementExamples new curveWithAnchors.
	GtGraphCircleNeighbourhoodExamples new emptyNeighborhoodWithThreeCirclesAndSpace .
	GtWhatMakesBlocSpecialExplanation new sampleText} do: [:x | 
		container addChild: (((x gtViewsFor: GtPhlowView empty) 
			asElementDo: [:e | 
				BlElement new 
					aptitude: BrShadowAptitude; 
					background: Color white;
					margin: (BlInsets all: 20);
					addChild: e]) size: 400@400) ].
	^ container asScalableElement
]
