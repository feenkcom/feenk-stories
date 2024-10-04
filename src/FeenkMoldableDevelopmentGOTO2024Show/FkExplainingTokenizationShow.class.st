Class {
	#name : #FkExplainingTokenizationShow,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkMoldableDevelopmentGOTO2024Show
}

{ #category : #'as yet unclassified' }
FkExplainingTokenizationShow >> karpathyTokenizationVideoSlideFor: aSlide [
	<gtSlide>
	^ aSlide element
		priority: 001;
		element: [ GtWebViewElement new
		url: 'file:///Users/girba/Movies/Movies/andrej-karpathy-lets-build-the-GPT-tokenizer.html';
		"url: 'https://youtu.be/zduSFxRajkE?si=1__f6guqVJyPGFor&t=353';"
		margin: (BlInsets all: 100) ]
]

{ #category : #'as yet unclassified' }
FkExplainingTokenizationShow >> lepiterPageWithTokenizationSlideFor: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: 002;
		pageNamed: 'Explaining Andrej Karpathy''s tokenization explanation' from: 'Glamorous Toolkit Book'
]
