Class {
	#name : #FkModernizingLegacyESynergy2024Show,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkMoldableDevelopmentCraftConf2024
}

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> objectsRaw [
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
FkModernizingLegacyESynergy2024Show >> objectsToInspect [
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
FkModernizingLegacyESynergy2024Show >> objectsViewed [
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
FkModernizingLegacyESynergy2024Show >> pagerWithPageNamed: pageName from: dbName [
	| page book |
	book := LeDatabasesRegistry defaultLogicalDatabase databaseNamed: dbName.
	page := book pageNamed: pageName.
	^ page asPhlowTool
		asElementDo: [ :e | 
			| aPager |
			aPager := GtPager createWrappedOn: e.
			aPager addAptitude: BrShadowAptitude new.
			aPager ]
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> slide001Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Tudor Girba. I am the CEO of feenk and today I want to talk about Glamorous Toolkit.'>
	^ aSlide title
		priority: 1;
		titleWithFormat: ('modernizing legacy systems' asRopedText 
			fontSize: 50;
			glamorousCodeFont;
			bold)";
		subtitleWithFormat: ('@girba' asRopedText 
			fontSize: 40;
			glamorousCodeFont)"
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> slide002FeenkSlideFor: aSlide [
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
FkModernizingLegacyESynergy2024Show >> slide003CustomTools: aSlide [
	<gtSlide>
	^ aSlide text
		priority: 3;
		horizontalWeight: 1;
		newTextWithFormat: ('moldable development is
programming through
custom tools
a
b' asRopedText
				fontSize: 60;
				glamorousCodeFont;
				thin;
				in: [ :t | 
					(t from: 'moldable development is' size + 1 to: t size - 3) bold.
					(t from: t size - 3 to: t size) foreground: Color transparent ];
				yourself)
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> slide004Thousands: aSlide [
	<gtSlide>
	^ aSlide text
		priority: 4;
		horizontalWeight: 1;
		newTextWithFormat: ('moldable development is
programming through
thousands of
custom tools
b' asRopedText
				fontSize: 60;
				glamorousCodeFont;
				thin;
				in: [ :t | 
					(t
						from: 'moldable development is
programming through' size + 1
						to: t size - 2) bold.
					(t from: t size - 1 to: t size) foreground: Color transparent ];
				yourself)
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> slide005ThousandsPerSystem: aSlide [
	<gtSlide>
	^ aSlide text
		priority: 5;
		horizontalWeight: 1;
		newTextWithFormat: ('moldable development is
programming through
thousands of
custom tools
per system' asRopedText
				fontSize: 60;
				glamorousCodeFont;
				thin;
				in: [ :t | 
					(t
						from: 'moldable development is
programming through' size + 1
						to: t size) bold ];
				yourself)
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> slide015React: aSlide [
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
FkModernizingLegacyESynergy2024Show >> slide111WardleyMapWithActions: aSlide [
	<gtSlide>
	^ aSlide element
		priority: 111;
		element: [ self wardleyMapElementMoldableDevelopmentWithTension01 ]
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> slide112WardleyMapWithActions: aSlide [
	<gtSlide>
	^ aSlide element
		priority: 112;
		element: [ self wardleyMapElementMoldableDevelopmentWithTension02 ]
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> slide113WardleyMapWithActions: aSlide [
	<gtSlide>
	^ aSlide element
		priority: 113;
		element: [ self wardleyMapElementMoldableDevelopmentWithTension03 ]
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> slide211TreemapOfExtensionsAndExamples: aSlide [
	<gtSlide>
	<text: 'There are thousands of extensions in Glamorous Toolkit out of the box.'>
	^ aSlide element
		priority: 311;
		element: [ GtImage treemapWithAllExtensions ]
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> slide301GTSlideFor: aSlide [
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
FkModernizingLegacyESynergy2024Show >> slide401Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Tudor Girba. I am the CEO of feenk and today I want to talk about Glamorous Toolkit.'>
	^ aSlide title
		priority: 401;
		titleWithFormat: ('modernizing legacy systems' asRopedText 
			fontSize: 50;
			glamorousCodeFont;
			bold);
		subtitleWithFormat: ('@girba' asRopedText 
			fontSize: 40;
			glamorousCodeFont)
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> wardleyMapElementForJson: json [
	| model aWardleyMapElement aWardleyMapViewModel |
	model := GtWardleyMapFromDictionaryImporter importMapFromJSONString: json.
	aWardleyMapViewModel := GtWardleyMapViewModel new.
	aWardleyMapViewModel wardleyMapModel: model.
	aWardleyMapElement := GtWardleyMapElement withDefaultSections.
	aWardleyMapElement wardleyMapViewModel: aWardleyMapViewModel.
	^ aWardleyMapElement
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> wardleyMapElementMoldableDevelopmentWithTension01 [
	<gtExample>
	| json |
	json := self wardleyMapJsonMoldableDevelopmentWithTension01.
	^ self wardleyMapElementWithActionsFromJson: json
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> wardleyMapElementMoldableDevelopmentWithTension02 [
	<gtExample>
	| json |
	json := self wardleyMapJsonMoldableDevelopmentWithTension02.
	^ self wardleyMapElementWithActionsFromJson: json
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> wardleyMapElementMoldableDevelopmentWithTension03 [
	<gtExample>
	| json |
	json := self wardleyMapJsonMoldableDevelopmentWithTension03.
	^ self wardleyMapElementWithActionsFromJson: json
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> wardleyMapElementWithActionsFromJson: json [
	| element |
	element := self wardleyMapElementForJson: json.
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'ASSESSMENT'
		ifFound: [ :aNode | 
			aNode
				wardleyMapDecoratorModels: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ GtPresenterSlideShow create: FkDbMigrationCraftConf2024Show new ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'EXPLORATION'
		ifFound: [ :aNode | 
			aNode
				wardleyMapDecoratorModels: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ (self
									pagerWithPageNamed: 'How are toggles defined and used?'
									from: 'feenkcom/gt4edx/lepiter') maximized ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'CONVERSATION'
		ifFound: [ :aNode | 
			aNode
				wardleyMapDecoratorModels: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ (self
									pagerWithPageNamed: 'Cozy Corner - Step By Step'
									from: 'feenkcom/uhmo/lepiter') maximized ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'INFORMATION'
		ifFound: [ :aNode | 
			aNode
				wardleyMapDecoratorModels: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ GtPresenterSlideShow create: FkDbMigrationCraftConf2024Show new ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'SYNTHETIZATION'
		ifFound: [ :aNode | 
			aNode
				wardleyMapDecoratorModels: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ self
									pagerWithPageNamed: 'Analyzing Ruby on Rails: the Whitehall case study'
									from: 'Glamorous Toolkit Book' ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'DEVELOPMENT ENVIRONMENT'
		ifFound: [ :aNode | 
			aNode
				wardleyMapDecoratorModels: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ GtPresenterSlideShow create: FkMoldableDevelopmentViewsCraftConf2024Show new ]} ]
		ifNone: [  ].
	^ element
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> wardleyMapJsonFullWithRoles [
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
FkModernizingLegacyESynergy2024Show >> wardleyMapJsonFullWithoutRoles [
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
FkModernizingLegacyESynergy2024Show >> wardleyMapJsonMoldableDevelopmentWithTension01 [
	^ '{
	"title" : {
		"text" : "Tudor, Simon - Moldable Development - 14.06.2024",
		"is_visible" : true
	},
	"nodes" : [
		{
			"id" : "7a4cf338-44db-0d00-ac0e-e9ae006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.5518703241895262,
			"y" : 0.2721238938053097,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.16666666666666666,
				"y" : -1.25,
				"text" : "EXPLORATION"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.4768703241895262,
				"y" : 0.6268703241895262,
				"inner_nodes" : [ ]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "414df338-44db-0d00-ac0f-d195006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7242995452545106,
			"y" : 0.6297539089119858,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.0,
				"y" : -1.0,
				"text" : "DEVELOPMENT EXPERIENCE"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.6492995452545106,
				"y" : 0.7992995452545105,
				"inner_nodes" : [ ]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "df4df338-44db-0d00-ac10-8f29006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.52,
			"y" : 0.15884955752212393,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 4.583333333333333,
				"y" : -0.75,
				"text" : "ASSESSMENT"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.445,
				"y" : 0.595,
				"inner_nodes" : [ ]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "0d4ef338-44db-0d00-ac11-cfb0006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.55,
			"y" : 0.3776991150442477,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.6666666666666666,
				"y" : -1.1666666666666667,
				"text" : "CONVERSATION"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.47500000000000003,
				"y" : 0.625,
				"inner_nodes" : [ ]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "224ef338-44db-0d00-ac12-5d0e006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.63,
			"y" : 0.8936187399030694,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.416666666666667,
				"y" : -1.0,
				"text" : "DEVELOPMENT ENVIRONMENT"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.555,
				"y" : 0.705,
				"inner_nodes" : [ ]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "2f4ef338-44db-0d00-ac13-4de2006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.52,
			"y" : 0.07999999999999996,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 3.9166666666666665,
				"y" : 0.5833333333333334,
				"text" : "Decision"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "3c4ef338-44db-0d00-ac14-6c30006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.46,
			"y" : 0.040000000000000036,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.16666666666666666,
				"y" : -1.0833333333333333,
				"text" : "Business"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "494ef338-44db-0d00-ac15-f0ab006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.56,
			"y" : 0.040000000000000036,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.16666666666666666,
				"y" : -0.9166666666666666,
				"text" : "Engineering"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "554ef338-44db-0d00-ac16-880b006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5848567307222141,
			"y" : 0.7454439313575516,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 4.083333333333333,
				"y" : -0.75,
				"text" : "SYNTHETIZATION"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.5098567307222142,
				"y" : 0.6598567307222141,
				"inner_nodes" : [ ]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "6f4ef338-44db-0d00-ac18-1d72006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.539064837905237,
			"y" : 0.5059172421023537,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.3333333333333333,
				"y" : -1.0,
				"text" : "INFORMATION"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.46406483790523695,
				"y" : 0.6140648379052369,
				"inner_nodes" : [ ]
			},
			"evolve" : {
				"is_visible" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "2f4ef338-44db-0d00-ac13-4de2006f725a",
			"to" : "df4df338-44db-0d00-ac10-8f29006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
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
			"from" : "494ef338-44db-0d00-ac15-f0ab006f725a",
			"to" : "2f4ef338-44db-0d00-ac13-4de2006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
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
			"from" : "3c4ef338-44db-0d00-ac14-6c30006f725a",
			"to" : "2f4ef338-44db-0d00-ac13-4de2006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
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
			"from" : "df4df338-44db-0d00-ac10-8f29006f725a",
			"to" : "7a4cf338-44db-0d00-ac0e-e9ae006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
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
			"from" : "7a4cf338-44db-0d00-ac0e-e9ae006f725a",
			"to" : "0d4ef338-44db-0d00-ac11-cfb0006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
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
			"from" : "0d4ef338-44db-0d00-ac11-cfb0006f725a",
			"to" : "6f4ef338-44db-0d00-ac18-1d72006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
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
			"from" : "6f4ef338-44db-0d00-ac18-1d72006f725a",
			"to" : "414df338-44db-0d00-ac0f-d195006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
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
			"from" : "414df338-44db-0d00-ac0f-d195006f725a",
			"to" : "554ef338-44db-0d00-ac16-880b006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
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
			"from" : "554ef338-44db-0d00-ac16-880b006f725a",
			"to" : "224ef338-44db-0d00-ac12-5d0e006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
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
}'
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> wardleyMapJsonMoldableDevelopmentWithTension02 [
	^ '{
	"title" : {
		"text" : "Tudor, Simon - Moldable Development - 14.06.2024",
		"is_visible" : true
	},
	"nodes" : [
		{
			"id" : "7a4cf338-44db-0d00-ac0e-e9ae006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.5518703241895262,
			"y" : 0.2721238938053097,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.16666666666666666,
				"y" : -1.25,
				"text" : "EXPLORATION"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.5418703241895262,
				"y" : 0.7518703241895262,
				"inner_nodes" : [
					"9e4ef338-44db-0d00-ac19-42e6006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "414df338-44db-0d00-ac0f-d195006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7242995452545106,
			"y" : 0.6297539089119858,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.0,
				"y" : -1.0,
				"text" : "DEVELOPMENT EXPERIENCE"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.7025434982804426,
				"y" : 0.7342995452545106,
				"inner_nodes" : [
					"44d2bb3b-44db-0d00-ac2f-58b7006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "df4df338-44db-0d00-ac10-8f29006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.52,
			"y" : 0.15884955752212393,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 4.583333333333333,
				"y" : -0.75,
				"text" : "ASSESSMENT"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.51,
				"y" : 0.72,
				"inner_nodes" : [
					"e64ef338-44db-0d00-ac1e-4378006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "0d4ef338-44db-0d00-ac11-cfb0006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.55,
			"y" : 0.3776991150442477,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.6666666666666666,
				"y" : -1.1666666666666667,
				"text" : "CONVERSATION"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.54,
				"y" : 0.68,
				"inner_nodes" : [
					"024ff338-44db-0d00-ac20-f060006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "224ef338-44db-0d00-ac12-5d0e006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.63,
			"y" : 0.8936187399030694,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.416666666666667,
				"y" : -1.0,
				"text" : "DEVELOPMENT ENVIRONMENT"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.62,
				"y" : 0.72,
				"inner_nodes" : [
					"204ff338-44db-0d00-ac22-3ad5006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "2f4ef338-44db-0d00-ac13-4de2006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.52,
			"y" : 0.07999999999999996,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 3.9166666666666665,
				"y" : 0.5833333333333334,
				"text" : "Decision"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "3c4ef338-44db-0d00-ac14-6c30006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.46,
			"y" : 0.040000000000000036,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.16666666666666666,
				"y" : -1.0833333333333333,
				"text" : "Business"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "494ef338-44db-0d00-ac15-f0ab006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.56,
			"y" : 0.040000000000000036,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.16666666666666666,
				"y" : -0.9166666666666666,
				"text" : "Engineering"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "554ef338-44db-0d00-ac16-880b006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5848567307222141,
			"y" : 0.7454439313575516,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 4.083333333333333,
				"y" : -0.75,
				"text" : "SYNTHETIZATION"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.4048567307222141,
				"y" : 0.5948567307222141,
				"inner_nodes" : [
					"4e4ff338-44db-0d00-ac25-2bbd006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "6f4ef338-44db-0d00-ac18-1d72006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.539064837905237,
			"y" : 0.5059172421023537,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.3333333333333333,
				"y" : -1.0,
				"text" : "INFORMATION"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.2890648379052369,
				"y" : 0.549064837905237,
				"inner_nodes" : [
					"5e4ff338-44db-0d00-ac26-a588006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "9e4ef338-44db-0d00-ac19-42e6006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.7418703241895261,
			"y" : 0.2721238938053097,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 4.166666666666667,
				"y" : 0.4166666666666667,
				"text" : "Ad hoc"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "e64ef338-44db-0d00-ac1e-4378006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.71,
			"y" : 0.15884955752212393,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.0,
				"y" : 0.5,
				"text" : "Gut feel driven"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "024ff338-44db-0d00-ac20-f060006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.67,
			"y" : 0.3776991150442477,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.0,
				"y" : 0.5,
				"text" : "\"Data centric\""
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "204ff338-44db-0d00-ac22-3ad5006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.71,
			"y" : 0.8936187399030694,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.166666666666667,
				"y" : 0.4166666666666667,
				"text" : "Institutionalized"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "4e4ff338-44db-0d00-ac25-2bbd006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.41485673072221413,
			"y" : 0.7454439313575516,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -6.0,
				"y" : 0.5,
				"text" : "Manual inspection"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "5e4ff338-44db-0d00-ac26-a588006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.2990648379052369,
			"y" : 0.5059172421023537,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.5,
				"y" : 0.5,
				"text" : "Manual views"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "44d2bb3b-44db-0d00-ac2f-58b7006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.7125434982804426,
			"y" : 0.6297539089119858,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.0,
				"y" : 0.5833333333333334,
				"text" : "Fixed"
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
			"from" : "e64ef338-44db-0d00-ac1e-4378006f725a",
			"to" : "9e4ef338-44db-0d00-ac19-42e6006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
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
			"from" : "9e4ef338-44db-0d00-ac19-42e6006f725a",
			"to" : "024ff338-44db-0d00-ac20-f060006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
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
			"from" : "2f4ef338-44db-0d00-ac13-4de2006f725a",
			"to" : "df4df338-44db-0d00-ac10-8f29006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
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
			"from" : "494ef338-44db-0d00-ac15-f0ab006f725a",
			"to" : "2f4ef338-44db-0d00-ac13-4de2006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
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
			"from" : "3c4ef338-44db-0d00-ac14-6c30006f725a",
			"to" : "2f4ef338-44db-0d00-ac13-4de2006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
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
			"from" : "4e4ff338-44db-0d00-ac25-2bbd006f725a",
			"to" : "204ff338-44db-0d00-ac22-3ad5006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
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
			"from" : "024ff338-44db-0d00-ac20-f060006f725a",
			"to" : "5e4ff338-44db-0d00-ac26-a588006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
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
			"from" : "5e4ff338-44db-0d00-ac26-a588006f725a",
			"to" : "44d2bb3b-44db-0d00-ac2f-58b7006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
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
			"from" : "44d2bb3b-44db-0d00-ac2f-58b7006f725a",
			"to" : "4e4ff338-44db-0d00-ac25-2bbd006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
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
}'
]

{ #category : #accessing }
FkModernizingLegacyESynergy2024Show >> wardleyMapJsonMoldableDevelopmentWithTension03 [
	^ '{
	"title" : {
		"text" : "Tudor, Simon - Moldable Development - 14.06.2024",
		"is_visible" : true
	},
	"nodes" : [
		{
			"id" : "7a4cf338-44db-0d00-ac0e-e9ae006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.5518703241895262,
			"y" : 0.2721238938053097,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.16666666666666666,
				"y" : -1.25,
				"text" : "EXPLORATION"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.2586284289276808,
				"y" : 0.7518703241895262,
				"inner_nodes" : [
					"9e4ef338-44db-0d00-ac19-42e6006f725a",
					"ab4ef338-44db-0d00-ac1a-497d006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "414df338-44db-0d00-ac0f-d195006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7242995452545106,
			"y" : 0.6297539089119858,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.0,
				"y" : -1.0,
				"text" : "DEVELOPMENT EXPERIENCE"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.7025434982804426,
				"y" : 0.775043844636774,
				"inner_nodes" : [
					"b94ef338-44db-0d00-ac1b-ec92006f725a",
					"44d2bb3b-44db-0d00-ac2f-58b7006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "df4df338-44db-0d00-ac10-8f29006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.52,
			"y" : 0.15884955752212393,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 4.583333333333333,
				"y" : -0.75,
				"text" : "ASSESSMENT"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.32,
				"y" : 0.72,
				"inner_nodes" : [
					"d54ef338-44db-0d00-ac1d-5388006f725a",
					"e64ef338-44db-0d00-ac1e-4378006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "0d4ef338-44db-0d00-ac11-cfb0006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.55,
			"y" : 0.3776991150442477,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.6666666666666666,
				"y" : -1.1666666666666667,
				"text" : "CONVERSATION"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.31,
				"y" : 0.68,
				"inner_nodes" : [
					"f54ef338-44db-0d00-ac1f-9e51006f725a",
					"024ff338-44db-0d00-ac20-f060006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "224ef338-44db-0d00-ac12-5d0e006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.63,
			"y" : 0.8936187399030694,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.416666666666667,
				"y" : -1.0,
				"text" : "DEVELOPMENT ENVIRONMENT"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.5,
				"y" : 0.72,
				"inner_nodes" : [
					"114ff338-44db-0d00-ac21-48e3006f725a",
					"204ff338-44db-0d00-ac22-3ad5006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "2f4ef338-44db-0d00-ac13-4de2006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.52,
			"y" : 0.07999999999999996,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 3.9166666666666665,
				"y" : 0.5833333333333334,
				"text" : "Decision"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "3c4ef338-44db-0d00-ac14-6c30006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.46,
			"y" : 0.040000000000000036,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.16666666666666666,
				"y" : -1.0833333333333333,
				"text" : "Business"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "494ef338-44db-0d00-ac15-f0ab006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.56,
			"y" : 0.040000000000000036,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.16666666666666666,
				"y" : -0.9166666666666666,
				"text" : "Engineering"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "554ef338-44db-0d00-ac16-880b006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5848567307222141,
			"y" : 0.7454439313575516,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 4.083333333333333,
				"y" : -0.75,
				"text" : "SYNTHETIZATION"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.4048567307222141,
				"y" : 0.6915233973888808,
				"inner_nodes" : [
					"3f4ff338-44db-0d00-ac24-e4fb006f725a",
					"4e4ff338-44db-0d00-ac25-2bbd006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "6f4ef338-44db-0d00-ac18-1d72006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.539064837905237,
			"y" : 0.5059172421023537,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.3333333333333333,
				"y" : -1.0,
				"text" : "INFORMATION"
			},
			"pipeline" : {
				"is_visible" : true,
				"x" : 0.2890648379052369,
				"y" : 0.789064837905237,
				"inner_nodes" : [
					"5e4ff338-44db-0d00-ac26-a588006f725a",
					"6e4ff338-44db-0d00-ac27-b96f006f725a"
				]
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "9e4ef338-44db-0d00-ac19-42e6006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.7418703241895261,
			"y" : 0.2721238938053097,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 4.166666666666667,
				"y" : 0.4166666666666667,
				"text" : "Ad hoc"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "ab4ef338-44db-0d00-ac1a-497d006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.2686284289276808,
			"y" : 0.2721238938053097,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -6.5,
				"y" : 0.4166666666666667,
				"text" : "Moldable Development"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "b94ef338-44db-0d00-ac1b-ec92006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.765043844636774,
			"y" : 0.6297539089119858,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 9.5,
				"y" : 0.4166666666666667,
				"text" : "Composable & context-specific"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "d54ef338-44db-0d00-ac1d-5388006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.33,
			"y" : 0.15884955752212393,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -5.833333333333333,
				"y" : 0.4166666666666667,
				"text" : "Hypothesis driven"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "e64ef338-44db-0d00-ac1e-4378006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.71,
			"y" : 0.15884955752212393,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.0,
				"y" : 0.5,
				"text" : "Gut feel driven"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "f54ef338-44db-0d00-ac1f-9e51006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.32,
			"y" : 0.3776991150442477,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.416666666666667,
				"y" : 0.3333333333333333,
				"text" : "Model centric"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "024ff338-44db-0d00-ac20-f060006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.67,
			"y" : 0.3776991150442477,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.0,
				"y" : 0.5,
				"text" : "\"Data centric\""
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "114ff338-44db-0d00-ac21-48e3006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.51,
			"y" : 0.8936187399030694,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.166666666666667,
				"y" : 0.5,
				"text" : "Moldable"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "204ff338-44db-0d00-ac22-3ad5006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.71,
			"y" : 0.8936187399030694,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.166666666666667,
				"y" : 0.4166666666666667,
				"text" : "Institutionalized"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "3f4ff338-44db-0d00-ac24-e4fb006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6815233973888808,
			"y" : 0.7454439313575516,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.833333333333333,
				"y" : 0.41666666666667596,
				"text" : "Specific coding"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "4e4ff338-44db-0d00-ac25-2bbd006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.41485673072221413,
			"y" : 0.7454439313575516,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -6.0,
				"y" : 0.5,
				"text" : "Manual inspection"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "5e4ff338-44db-0d00-ac26-a588006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.2990648379052369,
			"y" : 0.5059172421023537,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.5,
				"y" : 0.5,
				"text" : "Manual views"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "6e4ff338-44db-0d00-ac27-b96f006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.779064837905237,
			"y" : 0.5059172421023537,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.416666666666667,
				"y" : 0.4166666666666667,
				"text" : "Generated views"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_visible" : false
			}
		},
		{
			"id" : "44d2bb3b-44db-0d00-ac2f-58b7006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
			},
			"x" : 0.7125434982804426,
			"y" : 0.6297539089119858,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.0,
				"y" : 0.5833333333333334,
				"text" : "Fixed"
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
			"from" : "ab4ef338-44db-0d00-ac1a-497d006f725a",
			"to" : "f54ef338-44db-0d00-ac1f-9e51006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
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
			"from" : "e64ef338-44db-0d00-ac1e-4378006f725a",
			"to" : "9e4ef338-44db-0d00-ac19-42e6006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
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
			"from" : "9e4ef338-44db-0d00-ac19-42e6006f725a",
			"to" : "024ff338-44db-0d00-ac20-f060006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
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
			"from" : "d54ef338-44db-0d00-ac1d-5388006f725a",
			"to" : "ab4ef338-44db-0d00-ac1a-497d006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
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
			"from" : "2f4ef338-44db-0d00-ac13-4de2006f725a",
			"to" : "df4df338-44db-0d00-ac10-8f29006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
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
			"from" : "494ef338-44db-0d00-ac15-f0ab006f725a",
			"to" : "2f4ef338-44db-0d00-ac13-4de2006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
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
			"from" : "3c4ef338-44db-0d00-ac14-6c30006f725a",
			"to" : "2f4ef338-44db-0d00-ac13-4de2006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
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
			"from" : "114ff338-44db-0d00-ac21-48e3006f725a",
			"to" : "3f4ff338-44db-0d00-ac24-e4fb006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
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
			"from" : "3f4ff338-44db-0d00-ac24-e4fb006f725a",
			"to" : "b94ef338-44db-0d00-ac1b-ec92006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
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
			"from" : "6e4ff338-44db-0d00-ac27-b96f006f725a",
			"to" : "b94ef338-44db-0d00-ac1b-ec92006f725a",
			"color" : {
				"green" : 0.0,
				"blue" : 0.9198435972629521,
				"alpha" : 1.0,
				"red" : 0.0
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
			"from" : "4e4ff338-44db-0d00-ac25-2bbd006f725a",
			"to" : "204ff338-44db-0d00-ac22-3ad5006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
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
			"from" : "f54ef338-44db-0d00-ac1f-9e51006f725a",
			"to" : "6e4ff338-44db-0d00-ac27-b96f006f725a",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
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
			"from" : "024ff338-44db-0d00-ac20-f060006f725a",
			"to" : "5e4ff338-44db-0d00-ac26-a588006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
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
			"from" : "5e4ff338-44db-0d00-ac26-a588006f725a",
			"to" : "44d2bb3b-44db-0d00-ac2f-58b7006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
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
			"from" : "44d2bb3b-44db-0d00-ac2f-58b7006f725a",
			"to" : "4e4ff338-44db-0d00-ac25-2bbd006f725a",
			"color" : {
				"green" : 0.624633431085044,
				"blue" : 0.624633431085044,
				"alpha" : 1.0,
				"red" : 0.624633431085044
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
}'.
]
