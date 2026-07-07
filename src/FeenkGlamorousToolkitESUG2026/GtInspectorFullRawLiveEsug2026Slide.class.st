Class {
	#name : 'GtInspectorFullRawLiveEsug2026Slide',
	#superclass : 'GtLiveSlide',
	#instVars : [
		'page',
		'container'
	],
	#category : 'FeenkGlamorousToolkitESUG2026-Utils',
	#package : 'FeenkGlamorousToolkitESUG2026',
	#tag : 'Utils'
}

{ #category : 'accessing' }
GtInspectorFullRawLiveEsug2026Slide >> create [
	container := BlElement new
		constraintsDo: [:c |
			c horizontal fitContent.
			c vertical fitContent ];
		layout: (BlGridLayout new columnCount: 3).
	{
	

	
	(BlVector x: -26 y: 19) gtRawFor: GtPhlowView empty.
	(Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'gtoolkit.png') gtRawFor:GtPhlowView empty.
	 BlBezierElementExamples new curveWithAnchors gtRawFor:GtPhlowView empty.
	 GtGraphCircleNeighbourhoodExamples new 
		emptyNeighborhoodWithThreeCirclesAndSpace gtRawFor: GtPhlowView empty.
	GtWhatMakesBlocSpecialExplanation new sampleText gtRawFor:GtPhlowView empty.
	  (BlLayoutChildNodeWithTransformationExamples>>#scaleTransformation) gtExample returnValue transformation gtRawFor: GtPhlowView empty.
	 (GtPharoMethodCoderUpdateExamples >> #collapsedMethodCoderCheckCollapsedText) gtExample returnValue gtRawFor:GtPhlowView empty.
	 (BlFocusFinderExamples>>#focusFinderDownOnSegment_2_child_41) gtExample returnValue gtRawFor: GtPhlowView empty.
	 BlDevKeyboard new gtRawFor:GtPhlowView empty.
	 


	} do: [:view | 
		container addChild: (( view
			asElementDo: [:e | 
				BlElement new 
					aptitude: BrShadowAptitude; 
					background: Color white;
					margin: (BlInsets all: 20);
					addChild: e]) size: 400@400) ].
	^ container asPannableElement
]
