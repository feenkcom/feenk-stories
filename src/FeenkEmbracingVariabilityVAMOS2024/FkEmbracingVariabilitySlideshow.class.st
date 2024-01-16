Class {
	#name : #FkEmbracingVariabilitySlideshow,
	#superclass : #PrioritySlideshow,
	#category : #FeenkEmbracingVariabilityVAMOS2024
}

{ #category : #accessing }
FkEmbracingVariabilitySlideshow >> slidePriorities [
	"This method defines the slide priorities implicitly by their order instead of by fixed numbers.
	See also: PrioritySlideshow>>#priorityFor:"
	<gtExample>
	^ #( 
		titleSlide:
		
		unExplainableSystems
			runningSystem
			sourceEditor
			tests
		
		explainableSystems
			
	)
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> titleSlide2: aSlide [
	<gtSlide>

<text: 'TODO'>

	^ aSlide titleWithFooter
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Embracing Software Variability');
		subtitleWithFormat: (self asTitle: ' to build Explainable Systems');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> titleSlide: aSlide [
	<gtSlide>

<text: 'TODO'>

	^ aSlide titleWithFooter
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Embracing Software Variability');
		subtitleWithFormat: (self asTitle: ' to build Explainable Systems');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> unExplainableSystems: aSlide [
	<gtSlide>

<text: 'TODO'>

	^ aSlide titleWithFooter
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Embracing Software Variability');
		subtitleWithFormat: (self asTitle: ' to build Explainable Systems');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
