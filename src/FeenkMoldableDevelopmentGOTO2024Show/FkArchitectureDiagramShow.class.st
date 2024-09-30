Class {
	#name : #FkArchitectureDiagramShow,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkMoldableDevelopmentGOTO2024Show
}

{ #category : #'as yet unclassified' }
FkArchitectureDiagramShow >> slide001Diagram01: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: 1;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/feenk-stories/res/arch-diagram-1.png')
]

{ #category : #'as yet unclassified' }
FkArchitectureDiagramShow >> slide002Diagram02: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: 2;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/feenk-stories/res/arch-diagram-2.png')
]

{ #category : #'as yet unclassified' }
FkArchitectureDiagramShow >> slide003Diagram03: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: 3;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/feenk-stories/res/arch-diagram-3.png')
]

{ #category : #'as yet unclassified' }
FkArchitectureDiagramShow >> slide004Diagram04: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: 4;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/feenk-stories/res/arch-diagram-4.png')
]

{ #category : #'as yet unclassified' }
FkArchitectureDiagramShow >> slide005Diagram05: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: 5;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/feenk-stories/res/arch-diagram-5.png')
]

{ #category : #'as yet unclassified' }
FkArchitectureDiagramShow >> slide006Diagram06: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: 6;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/feenk-stories/res/arch-diagram-6.png')
]
