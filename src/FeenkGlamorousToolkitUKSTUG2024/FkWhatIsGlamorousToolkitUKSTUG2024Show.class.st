Class {
	#name : #FkWhatIsGlamorousToolkitUKSTUG2024Show,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkGlamorousToolkitUKSTUG2024
}

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> objectsRaw [
	<gtExample>
	| container |
	container := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ];
			layout: (BlGridLayout new columnCount: 5).

	self objectsToInspect
		do: [ :x | 
			container
				addChild: (((x gtRawFor: GtPhlowView empty)
						asElementDo: [ :e | 
							BrVerticalPane new
								aptitude: (BrShadowAptitude new beLarge);
								background: Color white;
								margin: (BlInsets all: 20);
								matchParent;
								addChild: e ]) size: 600 @ 400) ].
	^ container asPannableElement
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> objectsToInspect [
	^ {21 / 2 gtPreviewFor: GtPhlowView empty.
		1024 * 1024 gtIntegerFor: GtPhlowView empty.
		Color orange gtPreviewFor: GtPhlowView empty.
		(Character value: 127876) gtPreviewFor: GtPhlowView empty.
		DateAndTime now gtViewDetailsIn: GtPhlowView empty.
		(BlVector x: -26 y: 19) gtDegreeFor: GtPhlowView empty.
		FileLocator imageDirectory gtTreeFor: GtPhlowView empty.
		BaselineOfGToolkitInspector gtMapFor: GtPhlowView empty.
		(MessageTally new
			spyEvery: 1 on: [ 5 timesRepeat: [ #gtView gtReferences contents ] ];
			yourself) gtGroupedByMethodFor: GtPhlowView empty.
		DAPThreadModel >> #gtStackFor: gtBytecodeFor: GtPhlowView empty.
		(AsyncPromiseExamples >> #rejectedPromiseWithOtherwise) gtExample returnValue
			gtFullPromiseTreeFor: GtPhlowView empty.
		Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'gtoolkit.png'
			gtFileReferencePathFor: GtPhlowView empty.
		BlBezierElementExamples new curveWithAnchors gtLiveFor: GtPhlowView empty.
		GtGraphCircleNeighbourhoodExamples new
			emptyNeighborhoodWithThreeCirclesAndSpace gtPreviewFor: GtPhlowView empty.
		GtWhatMakesBlocSpecialExplanation new sampleText gtTextFor: GtPhlowView empty.
		(BlLayoutChildNodeWithTransformationExamples >> #scaleTransformation)
			gtExample returnValue transformation gtPreviewFor: GtPhlowView empty.
		(GtPharoMethodCoderUpdateExamples >> #collapsedMethodCoderCheckCollapsedText)
			gtExample returnValue gtStepsMondrianTreeFor: GtPhlowView empty.
		(BaselineOfGToolkitInspector
			gtRlProjectWithRepository: 'github://feenkcom/brick:main/src')
			gtProjectMapFor: GtPhlowView empty.
		(BlFocusFinderExamples >> #focusFinderDownOnSegment_2_child_41) gtExample
			returnValue gtPreviewFor: GtPhlowView empty.
		BlDevKeyboard new gtLiveFor: GtPhlowView empty.
		(GtGraphTreemapLayoutExamples >> #squarifyWithSevenNodes) gtExample
			returnValue gtPreviewFor: GtPhlowView empty.
		(BrTextEditorSelecterExamples >> #select_moveOneRight_at_6) gtExample
			returnValue gtLiveFor: GtPhlowView empty.
		(BlCompositionTiledLayerExamples >> #smallTiledLayer) gtExample returnValue
			gtPreviewFor: GtPhlowView empty.
		(GtLudoRecordingGameExamples >> #gameShowingAllMoves6) gtExample returnValue
			gtPositionsFor: GtPhlowView empty.
		GtMonitorSpaceRunner new gtLiveFor: GtPhlowView empty.
		(IceRepository repositories
			detect: [ :aRepository | aRepository name = 'gtoolkit-examples' ])
			gtPackagesFor: GtPhlowView empty.
		(GtDiffBuilder
			computeDifferencesFrom: GtDiffElementExamples new originalString
			to: GtDiffElementExamples new newString
			using: GtLineDiffSplitter new) gtTextView: GtPhlowView empty.
		(BlCompositionPainterExamples
			>> #paintOverlappingSimpleElementsWantingLayerInbetweenOtherElementsInParentWithTransformation)
			gtExample returnValue gtPreviewFor: GtPhlowView empty.
		(GtRlLoadedConsolidatedBaselineEvent
			readFromFile: FileLocator gtResource / 'feenkcom/gtoolkit/doc/loader'
					/ 'loader-log-example.txt') gtMapFor: GtPhlowView empty.
		(GtRlReleaserSignalsLogReader
			readFromFile: FileLocator gtResource / 'feenkcom/gtoolkit/doc/releaser'
					/ 'releaser-log-example.txt')
			gtViewGroupedByActionTypeFor: GtPhlowView empty}.
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> objectsViewed [
	<gtExample>
	| container |
	container := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ];
			layout: (BlGridLayout new columnCount: 5).

	self objectsToInspect
		do: [ :view | 
			container
				addChild: ((view
						asElementDo: [ :e | 
							BlElement new
								aptitude: BrShadowAptitude new beLarge;
								background: Color white;
								margin: (BlInsets all: 20);
								addChild: e ]) size: 600 @ 400) ].
	^ container asPannableElement
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> slide001Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Tudor Girba. I am the CEO of feenk and today I want to talk about Glamorous Toolkit.'>
	^ aSlide title
		priority: 1;
		titleWithFormat: ('glamoroustoolkit' asRopedText 
			fontSize: 70;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'glamorous' size + 1 to: t size) bold]; yourself);
		subtitleWithFormat: ('@girba' asRopedText 
			fontSize: 40;
			glamorousRegularFont)
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> slide002FeenkSlideFor: aSlide [
	<gtSlide>
	^ aSlide element
		priority: 2;
		element: [ | form |
			form := PNGReadWriter
					formFromFileNamed: (GtResourceReference path: Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'feenk.png')
							fullName.
			BlElement new
				constraintsDo: [ :c | 
					c horizontal matchParent.
					c vertical matchParent ];
				layout: BlLinearLayout horizontal;
				addChild: (BlElement new
						constraintsDo: [ :c | 
							c horizontal matchParent.
							c vertical fitContent.
							c linear vertical alignCenter ];
						layout: BlLinearLayout vertical;
						addChild: (BrVerticalPane new
								constraintsDo: [ :c | c linear horizontal alignCenter ];
								addChild: (form asElement asScalableElement
										maxScale: 0.2;
										constraintsDo: [ :c | 
											c horizontal matchParent.
											c vertical matchParent ]);
								hExact: 200;
								vExact: 200)) ]
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> slide003GTSlideFor: aSlide [
	"<gtSlide>"
	^ aSlide title
		priority: 3;
		titleWithFormat: ('glamoroustoolkit' asRopedText 
			fontSize: 70;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'glamorous' size + 1 to: t size) bold]; yourself)
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> slide015React: aSlide [
	"<gtSlide>"
	<gtSlideNote: 'Software assessment'>
	^ aSlide element
		priority: 15;
		element: [ | aPager |
			aPager := GtPager createWrappedOn: ('zooniverse' asFileReference gtDefaultInspectorTool asElement).
			aPager maximized.
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> slide131RawObjects: aSlide [
	<gtSlide>
	<gtSlideNote: 'Raw objects'>
	^ aSlide element
		priority: 131;
		element: [ self objectsRaw ]
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> slide132ViewedObjects: aSlide [
	<gtSlide>
	<gtSlideNote: 'Viewed objects'>
	^ aSlide element
		priority: 132;
		element: [ self objectsViewed ]
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> slide201GTSlideFor: aSlide [
	<gtSlide>
	^ aSlide title
		priority: 301;
		titleWithFormat: ('gtoolkit.com' asRopedText 
			fontSize: 70;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'g' size + 1 to: t size) bold]; yourself)
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> slide211TreemapOfExtensionsAndExamples: aSlide [
	<gtSlide>
	<text: 'There are thousands of extensions in Glamorous Toolkit out of the box.'>
	^ aSlide element
		priority: 211;
		element: [ GtImage treemapWithAllExtensions ]
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> wardleyMapElementForJson: json [
	| model aWardleyMapElement aWardleyMapViewModel |
	model := GtWardleyMapFromDictionaryImporter importMapFromJSONString: json.
	aWardleyMapViewModel := GtWardleyMapViewModel new.
	aWardleyMapViewModel wardleyMapModel: model.
	aWardleyMapElement := GtWardleyMapElement new.
	aWardleyMapElement wardleyMapViewModel: aWardleyMapViewModel.
	aWardleyMapElement
		evolutionSections: {'genesis'.
				'custom built'.
				'product (+rental)'.
				'commodity'}.
	^ aWardleyMapElement
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> wardleyMapElementFullWithRoles [
	<gtExample>
	| json |
	json := self wardleyMapJsonFullWithRoles.
	^ self wardleyMapElementForJson: json
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> wardleyMapElementFullWithoutRoles [
	<gtExample>
	| json |
	json := self wardleyMapJsonFullWithoutRoles.
	^ self wardleyMapElementForJson: json
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> wardleyMapJsonFullWithRoles [
	<gtExample>
	^ '{
	"nodes" : [
		{
			"id" : "cc5c56d3-1dc2-0d00-af61-b70e044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.32,
			"y" : 0.07999999999999996,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.08333333333333333,
				"y" : -1.0833333333333333,
				"text" : "developers"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "945d56d3-1dc2-0d00-af62-0553044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.45,
			"y" : 0.07999999999999996,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : -0.9166666666666666,
				"text" : "business"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.39,
			"y" : 0.18999999999999995,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.0833333333333335,
				"y" : 0.5833333333333334,
				"text" : "challenge"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.4624600246002461,
			"y" : 0.24910418834929585,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.5,
				"y" : -1.0833333333333333,
				"text" : "decision"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"x" : 0.17749058971141782,
			"y" : 0.63,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.3333333333333333,
				"y" : 2.4166666666666665,
				"text" : "manual inspection"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"x" : 0.3988205771643664,
			"y" : 0.63,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.5833333333333334,
				"y" : 2.4166666666666665,
				"text" : "specific coding"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "d76256d3-1dc2-0d00-af68-fe50044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"x" : 0.32,
			"y" : 0.63,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.6666666666666666,
				"y" : -1.1666666666666667,
				"text" : "synthetization"
			},
			"pipeline" : {
				"inner_nodes" : [
					"c36256d3-1dc2-0d00-af66-15f1044d74b3",
					"ce6256d3-1dc2-0d00-af67-b79a044d74b3"
				],
				"x" : 0.1674905897114178,
				"y" : 0.4088205771643664,
				"is_visible" : true
			}
		},
		{
			"id" : "eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"x" : 0.24,
			"y" : 0.42,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.333333333333333,
				"y" : 0.4166666666666667,
				"text" : "manual  views"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"x" : 0.7742158092848181,
			"y" : 0.42,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.75,
				"y" : 0.3333333333333333,
				"text" : "generated views"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "fd6256d3-1dc2-0d00-af6b-f6ec044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"x" : 0.5,
			"y" : 0.42,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.1666666666666665,
				"y" : -0.5833333333333334,
				"text" : "information"
			},
			"pipeline" : {
				"inner_nodes" : [
					"eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
					"f46256d3-1dc2-0d00-af6a-73d2044d74b3"
				],
				"x" : 0.22999999999999998,
				"y" : 0.7842158092848182,
				"is_visible" : true
			}
		},
		{
			"id" : "076356d3-1dc2-0d00-af6c-40cc044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"x" : 0.53,
			"y" : 0.84,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.3333333333333335,
				"text" : "rigid"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"x" : 0.6912923462986199,
			"y" : 0.84,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5833333333333334,
				"y" : 2.25,
				"text" : "moldable"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "196356d3-1dc2-0d00-af6e-c32e044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"x" : 0.6,
			"y" : 0.84,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -1.5,
				"y" : -0.75,
				"text" : "tools"
			},
			"pipeline" : {
				"inner_nodes" : [
					"076356d3-1dc2-0d00-af6c-40cc044d74b3",
					"106356d3-1dc2-0d00-af6d-451a044d74b3"
				],
				"x" : 0.52,
				"y" : 0.7012923462986199,
				"is_visible" : true
			}
		},
		{
			"id" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.6200829537592247,
			"y" : 0.2830293980700489,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5833333333333334,
				"y" : -1.3333333333333333,
				"text" : "action"
			},
			"pipeline" : {
				"is_visible" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "cc5c56d3-1dc2-0d00-af61-b70e044d74b3",
			"to" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"to" : "945d56d3-1dc2-0d00-af62-0553044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"to" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"to" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"to" : "eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
			"to" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : true
		},
		{
			"from" : "076356d3-1dc2-0d00-af6c-40cc044d74b3",
			"to" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : true
		},
		{
			"from" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"to" : "076356d3-1dc2-0d00-af6c-40cc044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"to" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : true
		},
		{
			"from" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"to" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"to" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"to" : "fd6256d3-1dc2-0d00-af6b-f6ec044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"to" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"to" : "fd6256d3-1dc2-0d00-af6b-f6ec044d74b3",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"to" : "196356d3-1dc2-0d00-af6e-c32e044d74b3",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : false
		}
	]
}'.
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> wardleyMapJsonFullWithoutRoles [
	<gtExample>
	^ '{
	"nodes" : [
		{
			"id" : "cc5c56d3-1dc2-0d00-af61-b70e044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.32,
			"y" : 0.07999999999999996,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.08333333333333333,
				"y" : -1.0833333333333333,
				"text" : "developers"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "945d56d3-1dc2-0d00-af62-0553044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.45,
			"y" : 0.07999999999999996,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : -0.9166666666666666,
				"text" : "business"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.39,
			"y" : 0.18999999999999995,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.0833333333333335,
				"y" : 0.5833333333333334,
				"text" : "challenge"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.4624600246002461,
			"y" : 0.24910418834929585,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.5,
				"y" : -1.0833333333333333,
				"text" : "decision"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"x" : 0.17749058971141782,
			"y" : 0.63,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.3333333333333333,
				"y" : 2.4166666666666665,
				"text" : "manual inspection"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.3988205771643664,
			"y" : 0.63,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.5833333333333334,
				"y" : 2.4166666666666665,
				"text" : "specific coding"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "d76256d3-1dc2-0d00-af68-fe50044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.32,
			"y" : 0.63,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.6666666666666666,
				"y" : -1.1666666666666667,
				"text" : "synthetization"
			},
			"pipeline" : {
				"inner_nodes" : [
					"c36256d3-1dc2-0d00-af66-15f1044d74b3",
					"ce6256d3-1dc2-0d00-af67-b79a044d74b3"
				],
				"x" : 0.1674905897114178,
				"y" : 0.4088205771643664,
				"is_visible" : true
			}
		},
		{
			"id" : "eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"x" : 0.24,
			"y" : 0.42,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.333333333333333,
				"y" : 0.4166666666666667,
				"text" : "manual  views"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7742158092848181,
			"y" : 0.42,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.75,
				"y" : 0.3333333333333333,
				"text" : "generated views"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "fd6256d3-1dc2-0d00-af6b-f6ec044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5,
			"y" : 0.42,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.1666666666666665,
				"y" : -0.5833333333333334,
				"text" : "information"
			},
			"pipeline" : {
				"inner_nodes" : [
					"eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
					"f46256d3-1dc2-0d00-af6a-73d2044d74b3"
				],
				"x" : 0.22999999999999998,
				"y" : 0.7842158092848182,
				"is_visible" : true
			}
		},
		{
			"id" : "076356d3-1dc2-0d00-af6c-40cc044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"x" : 0.53,
			"y" : 0.84,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.3333333333333335,
				"text" : "rigid"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6912923462986199,
			"y" : 0.84,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5833333333333334,
				"y" : 2.25,
				"text" : "moldable"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "196356d3-1dc2-0d00-af6e-c32e044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6,
			"y" : 0.84,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -1.5,
				"y" : -0.75,
				"text" : "tools"
			},
			"pipeline" : {
				"inner_nodes" : [
					"076356d3-1dc2-0d00-af6c-40cc044d74b3",
					"106356d3-1dc2-0d00-af6d-451a044d74b3"
				],
				"x" : 0.52,
				"y" : 0.7012923462986199,
				"is_visible" : true
			}
		},
		{
			"id" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6200829537592247,
			"y" : 0.2830293980700489,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5833333333333334,
				"y" : -1.3333333333333333,
				"text" : "action"
			},
			"pipeline" : {
				"is_visible" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "cc5c56d3-1dc2-0d00-af61-b70e044d74b3",
			"to" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"to" : "945d56d3-1dc2-0d00-af62-0553044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"to" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"to" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"to" : "eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
			"to" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : true
		},
		{
			"from" : "076356d3-1dc2-0d00-af6c-40cc044d74b3",
			"to" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : true
		},
		{
			"from" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"to" : "076356d3-1dc2-0d00-af6c-40cc044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"to" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : true
		},
		{
			"from" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"to" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"to" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"to" : "fd6256d3-1dc2-0d00-af6b-f6ec044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"to" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"to" : "fd6256d3-1dc2-0d00-af6b-f6ec044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"to" : "196356d3-1dc2-0d00-af6e-c32e044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		}
	]
}'.
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> x_slide022GitHubGraphQLSlideFor: aSlide [
	"<gtSlide>"
	^ aSlide lepiterPage
		priority: 22;
		pageNamed: 'Exploring GitHub through GraphQL ' from: 'Glamorous Toolkit Book'
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> x_slide051Docker: aSlide [
	"<gtSlide>"
	<gtSlideNote: 'Docker'>
	^ aSlide element
		priority: 51;
		element: [ | aPager |
			aPager := GtPager
					createWrappedOn: (GtCoder forMethod: LeServerInDockerExamples>>#server).
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkWhatIsGlamorousToolkitUKSTUG2024Show >> x_slide101ATProto: aSlide [
"	<gtSlide>"
	<gtSlideNote: 'AT Proto'>
	^ aSlide lepiterPage
		priority: 101;
		pageNamed: 'Browsing a BlueSky user from a dedicated snippet' from: 'gt4atproto-lepiter'
]
