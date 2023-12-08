Class {
	#name : #FkMoldableDevelopmentYOW2023Show,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkMoldableDevelopmentYOW2023
}

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide001Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Tudor Girba. I am the CEO of feenk and today I want to talk about Glamorous Toolkit.'>
	^ aSlide title
		priority: 1;
		titleWithFormat: ('moldable development' asRopedText 
			fontSize: 80;
			fontName: 'Desyrel';
			thin;
			in: [:t | (t from: 'glamorous' size + 1 to: t size) bold]; yourself);
		subtitleWithFormat: ('@girba' asRopedText 
			fontSize: 50;
			foreground: Color gray;
			fontName: 'Desyrel')
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide002FeenkSlideFor: aSlide [
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
FkMoldableDevelopmentYOW2023Show >> slide003GTSlideFor: aSlide [
	<gtSlide>
	^ aSlide title
		priority: 3;
		titleWithFormat: ('glamoroustoolkit' asRopedText 
			fontSize: 70;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'glamorous' size + 1 to: t size) bold]; yourself)
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide011PackageJson: aSlide [
	<gtSlide>
	<gtSlideNote: 'Software assessment'>
	^ aSlide element
		priority: 11;
		element: [ | aPager |
			aPager := GtPager createWrappedOn: ('zooniverse' asFileReference gtDefaultInspectorTool asElement).
			aPager maximized.
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide012Mold1: aSlide [
	<gtSlide>
	<gtSlideNote: 'Mold 1'>
	^ aSlide filePicture
		priority: 12;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/gtoolkit-demos/doc/moldable-development/craft-1.png')
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide013Mold2: arg1 [
	<gtSlide>
	<gtSlideNote: 'Mold 2'>
	| tmp1 |
	tmp1 := arg1 filePicture.
	tmp1 priority: 13.
	^ tmp1
		fileReference: (GtResourcesUtility
				resourceAtPath: 'feenkcom/gtoolkit-demos/doc/moldable-development/craft-2.png')
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide014Mold3: aSlide [
	<gtSlide>
	<gtSlideNote: 'Mold 3'>
	^ aSlide filePicture
		priority: 14;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/gtoolkit-demos/doc/moldable-development/craft-3.png')
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide015React: aSlide [
	<gtSlide>
	<gtSlideNote: 'Software assessment'>
	^ aSlide element
		priority: 15;
		element: [ | aPager |
			aPager := GtPager createWrappedOn: ('zooniverse' asFileReference gtDefaultInspectorTool asElement).
			aPager maximized.
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide021GitHubAPiSlideFor: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: 21;
		pageNamed: 'Working with a REST API: the GitHub case study' from: 'Glamorous Toolkit Book'
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide028PythonSlideFor: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: 28;
		pageNamed: 'Working with Python' from: 'default'
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide035DependenciesBaseline: aSlide [
	<gtSlide>
	<gtSlideNote: 'Software assessment: Baselines'>
	^ aSlide element
		priority: 35;
		element: [ | aPager |
			aPager := GtPager
					createWrappedOn: (GtCoder forMethod: BaselineOfGToolkit >> #baseline:).
			aPager maximized.
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide051KMSystemDocumentation: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: 41;
		pageNamed: 'Documenting the domain: the Ludo game case study' from: 'Glamorous Toolkit Book';
		maximized: true
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide061PKM: aSlide [
	<gtSlide>
	<gtSlideNote: 'Private knowledge management.'>
	^ aSlide lepiterPage
		priority: 45;
		pageNamed: 'Moldable Development @ YOW ''23' from: 'default'
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide100Empty: aSlide [
	<gtSlide>
	<gtSlideNote: 'All these perspectives are correct. And they are all wrong.

These perspectives are not distinct tools. There are no tools. There is just a fluid environment. We do not go to tools. Tools come to us. And we can make them come to us in our terms, in our context.

Molding the environment to every single problem transforms everything, starting with the very act of programming.'>
	^ aSlide empty
		priority: 100
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide12150percent1: aSlide [
	<gtSlide>
	<gtSlideNote: '50 percent 1'>
	^ aSlide filePicture
		priority: 121;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/gtoolkit-demos/doc/moldable-development/50percent-1.png')
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide12250percent1: aSlide [
	<gtSlide>
	<gtSlideNote: '50 percent 2'>
	^ aSlide filePicture
		priority: 122;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/gtoolkit-demos/doc/moldable-development/50percent-2.png')
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide12350percent1: aSlide [
	<gtSlide>
	<gtSlideNote: '50 percent 3'>
	^ aSlide filePicture
		priority: 123;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/gtoolkit-demos/doc/moldable-development/50percent-3.png')
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide151WardleyMapFullWithoutRoles: aSlide [
	<gtSlide>
	<text: 'There are thousands of extensions in Glamorous Toolkit out of the box.'>
	^ aSlide element
		priority: 151;
		element: [ self wardleyMapElementFullWithoutRoles ]
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide152WardleyMapFullWithRoles: aSlide [
	<gtSlide>
	<text: 'There are thousands of extensions in Glamorous Toolkit out of the box.'>
	^ aSlide element
		priority: 152;
		element: [ self wardleyMapElementFullWithRoles ]
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide201GTSlideFor: aSlide [
	<gtSlide>
	^ aSlide title
		priority: 201;
		titleWithFormat: ('gtoolkit.com' asRopedText 
			fontSize: 70;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'g' size + 1 to: t size) bold]; yourself)
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> slide211TreemapOfExtensionsAndExamples: aSlide [
	<gtSlide>
	<text: 'There are thousands of extensions in Glamorous Toolkit out of the box.'>
	^ aSlide element
		priority: 211;
		element: [ GtImage treemapWithAllExtensions ]
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> wardleyMapElementForJson: json [
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
FkMoldableDevelopmentYOW2023Show >> wardleyMapElementFullWithRoles [
	<gtExample>
	| json |
	json := self wardleyMapJsonFullWithRoles.
	^ self wardleyMapElementForJson: json
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> wardleyMapElementFullWithoutRoles [
	<gtExample>
	| json |
	json := self wardleyMapJsonFullWithoutRoles.
	^ self wardleyMapElementForJson: json
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> wardleyMapJsonFullWithRoles [
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
FkMoldableDevelopmentYOW2023Show >> wardleyMapJsonFullWithoutRoles [
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
FkMoldableDevelopmentYOW2023Show >> x_slide022GitHubGraphQLSlideFor: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: 22;
		pageNamed: 'Exploring GitHub through GraphQL ' from: 'Glamorous Toolkit Book'
]

{ #category : #accessing }
FkMoldableDevelopmentYOW2023Show >> x_slide051Docker: aSlide [
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
FkMoldableDevelopmentYOW2023Show >> x_slide101ATProto: aSlide [
	<gtSlide>
	<gtSlideNote: 'AT Proto'>
	^ aSlide lepiterPage
		priority: 101;
		pageNamed: 'Browsing a BlueSky user from a dedicated snippet' from: 'gt4atproto-lepiter'
]
