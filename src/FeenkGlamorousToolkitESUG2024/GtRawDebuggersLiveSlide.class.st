Class {
	#name : #GtRawDebuggersLiveSlide,
	#superclass : #GtDebuggerViewsLiveSlide,
	#category : #FeenkGlamorousToolkitESUG2024
}

{ #category : #accessing }
GtRawDebuggersLiveSlide >> create [
	| container |
	container := BlElement new
		constraintsDo: [:c |
			c horizontal fitContent.
			c vertical fitContent ];
		layout: (BlGridLayout new columnCount: 2).
	
	{
	
	[ JavaParser parse: 'public class Person {
  private String name; // private = restricted access

  // Getter
  public String getName() {
    return name;
  }

  // Setter
  public void setName(String newName) {
    this.name = newName
  
}' ] -> GtPharoDebuggerElement.
	
	[ self 
	assert: GtExampleComparisonExceptionWithDebuggingViews new
		expectedStringForTest 
	equals: GtExampleComparisonExceptionWithDebuggingViews new
		computedStringForTest ] ->GtPharoDebuggerElement.
	
	[ |viewBuilder|
		viewBuilder := GtPhlowView empty. 
viewBuilder
	basicOn: GtPhlowViewWithErrorExamples new 
	perform: #gtViewWithReturningSameViewFor2:
	withArguments: {viewBuilder}. ] -> GtPharoDebuggerElement.
	
	[ 
		GtPhlowViewTester new 
	assertViewOk: (GtPhlowViewWithErrorExamples new 
		gtViewWithFailureInColumnedListFor: GtPhlowView empty) ] -> GtPharoDebuggerElement
	
	} do: [:assoc | 
		| debuggingSession debugger |
		debuggingSession := nil.
		[ assoc key value ] on: Error do: [ :anException |
			debuggingSession := assoc value sessionClass 
				forExceptionFromExampleFor: anException].
				
		debugger := assoc value on: debuggingSession.
		
		container addChild: 
				((BrVerticalPane new 
					aptitude: BrShadowAptitude; 
					background: Color white;
					margin: (BlInsets all: 20);
					matchParent;
					addChild: debugger)
						size: 800@400)  ].
					
	^ container asPannableElement
]
