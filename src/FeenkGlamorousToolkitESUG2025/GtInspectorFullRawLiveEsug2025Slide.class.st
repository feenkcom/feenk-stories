Class {
	#name : #GtInspectorFullRawLiveEsug2025Slide,
	#superclass : #GtLiveSlide,
	#instVars : [
		'page',
		'container'
	],
	#category : #FeenkGlamorousToolkitESUG2025
}

{ #category : #accessing }
GtInspectorFullRawLiveEsug2025Slide >> create [
	container := BlElement new
		constraintsDo: [:c |
			c horizontal fitContent.
			c vertical fitContent ];
		layout: (BlGridLayout new columnCount: 5).
	{
	

	(21/2) gtRawFor: GtPhlowView empty . 
	(1024*1024) gtRawFor:  GtPhlowView empty.
	Color random  gtRawFor: GtPhlowView empty.
	(Character value: 127876) gtRawFor: GtPhlowView empty.
	DateAndTime now gtRawFor: GtPhlowView empty.
	(BlVector x: -26 y: 19) gtRawFor: GtPhlowView empty.
	 FileLocator imageDirectory gtRawFor: GtPhlowView empty.
	BaselineOfGToolkitInspector  gtRawFor: GtPhlowView empty.
	(BaselineOfGToolkitInspector 
		gtRlProjectWithRepository: 'github://feenkcom/brick:main/src')  gtRawFor: GtPhlowView empty.
	(DAPThreadModel>>#gtStackFor: ) gtRawFor: GtPhlowView empty.
	(AsyncPromiseExamples>>#rejectedPromiseWithOtherwise) gtExample returnValue
	 	gtRawFor: GtPhlowView empty.
	(Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'gtoolkit.png') gtRawFor:GtPhlowView empty.
	 BlBezierElementExamples new curveWithAnchors gtRawFor:GtPhlowView empty.
	 GtGraphCircleNeighbourhoodExamples new 
		emptyNeighborhoodWithThreeCirclesAndSpace gtRawFor: GtPhlowView empty.
	GtWhatMakesBlocSpecialExplanation new sampleText gtRawFor:GtPhlowView empty.
	  (BlLayoutChildNodeWithTransformationExamples>>#scaleTransformation) gtExample returnValue transformation gtRawFor: GtPhlowView empty.
	 (GtPharoMethodCoderUpdateExamples >> #collapsedMethodCoderCheckCollapsedText) gtExample returnValue gtRawFor:GtPhlowView empty.
	 (BlFocusFinderExamples>>#focusFinderDownOnSegment_2_child_41) gtExample returnValue gtRawFor: GtPhlowView empty.
	 BlDevKeyboard new gtRawFor:GtPhlowView empty.
	 (GtGraphTreemapLayoutExamples >> #squarifyWithSevenNodes) gtExample returnValue gtRawFor: GtPhlowView empty.
	 (BrTextEditorSelecterExamples >> #select_moveOneRight_at_6) gtExample returnValue gtRawFor:GtPhlowView empty.
	 (BlCompositionTiledLayerExamples>>#smallTiledLayer) gtExample returnValue
	  	gtRawFor:GtPhlowView empty. 
	 (GtLudoRecordingGameExamples >> #gameShowingAllMoves6) gtExample returnValue gtRawFor:GtPhlowView empty.
	GtMonitorSpaceRunner new gtRawFor:GtPhlowView empty.
	 (IceRepository repositories 
		detect: [ :aRepository | aRepository name = 'gtoolkit-examples' ])
			gtRawFor:GtPhlowView empty.
	(GtDiffBuilder 
		computeDifferencesFrom: GtDiffElementExamples new originalString
		to: GtDiffElementExamples new newString
		using: GtLineDiffSplitter new) gtRawFor: GtPhlowView empty.
	(BlCompositionPainterExamples>>#paintOverlappingSimpleElementsWantingLayerInbetweenOtherElementsInParentWithTransformation) gtExample returnValue
	 	gtRawFor: GtPhlowView empty.
	 (MessageTally new 
		spyEvery: 1 on: [5 timesRepeat: [#gtView gtReferences contents]];
		yourself) gtRawFor: GtPhlowView empty.
	 (GtRlLoadedConsolidatedBaselineEvent 
		readFromFile:  (FileLocator gtResource
			/ 'feenkcom/gtoolkit/doc/loader'
			/ 'loader-log-example.txt')) gtRawFor:GtPhlowView empty.
	 (GtRlReleaserSignalsLogReader 
		readFromFile:  FileLocator gtResource
			/ 'feenkcom/gtoolkit/doc/releaser'
			/ 'releaser-log-example.txt') gtRawFor: GtPhlowView empty.

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
