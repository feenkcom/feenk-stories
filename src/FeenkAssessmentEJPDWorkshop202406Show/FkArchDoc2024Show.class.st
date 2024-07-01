Class {
	#name : #FkArchDoc2024Show,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkAssessmentEJPDWorkshop202406Show
}

{ #category : #accessing }
FkArchDoc2024Show >> slide001ArchDoc01: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: 1;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/feenk-stories/res/arch-doc-01.png')
]

{ #category : #accessing }
FkArchDoc2024Show >> slide002ArchDoc02: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: 2;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/feenk-stories/res/arch-doc-02.png')
]

{ #category : #accessing }
FkArchDoc2024Show >> slide003ArchDoc03: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: 3;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/feenk-stories/res/arch-doc-03.png')
]

{ #category : #accessing }
FkArchDoc2024Show >> slide004ArchDoc04: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: 4;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/feenk-stories/res/arch-doc-04.png')
]

{ #category : #accessing }
FkArchDoc2024Show >> slide005ArchDoc05: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: 5;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/feenk-stories/res/arch-doc-05.png')
]

{ #category : #accessing }
FkArchDoc2024Show >> slide006ArchDoc06: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: 6;
		fileReference: (GtResourcesUtility resourceAtPath: 'feenkcom/feenk-stories/res/arch-doc-06.png')
]
