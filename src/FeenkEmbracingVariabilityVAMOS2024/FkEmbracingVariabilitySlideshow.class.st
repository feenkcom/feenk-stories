Class {
	#name : #FkEmbracingVariabilitySlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'FeenkEmbracingVariabilityVAMOS2024-Slideshows'
}

{ #category : #page }
FkEmbracingVariabilitySlideshow >> abstractPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Embracing Software Variability to build Explainable Systems')
	addSnippet: (LeTextSnippet new
			string: '# Abstract';
			addSnippet: (LeTextSnippet new
					string: 'Software systems can be a rich resource of knowledge about their application domain, stakeholder requirements, design decisions, and technical infrastructure, but this knowledge is often hard to access and exploit. An *explainable system* is a software system that can quickly and accurately answer questions that humans ask about it. We show how explainable systems can be systematically constructed through *moldable development*, an approach in which existing, moldable tools, such as code editors, inspectors, debuggers and notebooks, can be molded to an arbitrary application domain by creating dozens, hundreds or thousands of cheap, custom tools. This is made possible by enabling fine-grained variability in moldable tools. In contrast to conventional plug-in architectures, moldable tools adapt themselves to the dynamic context of live objects in the development environment, thus supporting navigation and exploration within an explainable system. Variability in the environment thus becomes the key to explaining variability in the software systems themselves. We will illustrate the approach through numerous examples gained over several years of experience with moldable development. ';
					yourself);
			yourself);
	addSnippet: (LeTextSnippet new
			string: '';
			yourself);
	yourself
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> abstractPage: aSlide [
	"<gtSlide>"
	<text: 'TODO'>
	^ aSlide lepiterPage
		"setPriority;"
		startPage: (self db pageNamed: 'Embracing Software Variability to build Explainable Systems')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> explainableLudo: aSlide [
	<gtSlide>
	<text: '## Explainable Ludo

Here we see a class that defines test cases for the Ludo game.
As before we can see all the tests and run them.
Let''s take a closer look at the first test.

We see that it builds on a setup that is also a test case.
In fact, each test case returns an *example* that can be used to build further test cases.
We can see in the Examples map how the examples are composed.

Let''s inspect this example.
Normally we can only inspect the intermediate results of a unit test if the test fails.
With examples, however, we can also inspect the example resulting from a successful test.

What we see here is a *moldable Inspector*.
In a conventional Inspector we would just see this Raw view, which is not very interesting.
Instead we have molded the Inspector to show us a number of dedicated custom views for a Ludo game.
We can see the Board view, which is the same as the GUI we saw before.
We can also browse the list of Players and navigate to an individual player.

If we want to understand how the game got to this state, we can explore the list of Moves.
Each Move object shows us exactly what happened.
Alternatively we can directly view the history of moves.

Now suppose we would like to know what might have happened if in the last move, instead of rolling a 1 and moving token big B, player B had rolled a 6 and brought in token little b.
We can open a *Playground* on the second last Move and *replay* the game to this state.

The result is a new instance of the game with just 5 moves.
Now we can programatically roll a 6, and move in token little b.
If we explore the last move, we see what happened.
The token little b landed on big B, was sent to the next square, landed on token big A, which was sent back to its home square.'>
	<demo: '## Explainable Ludo

- Browse the GtLudoRecordingGameExamples class.
- See the list of Examples and run them.
- Browse the first one (bEntersAndPlaysWithAahead).
- See that it is composed of an earlier test.
- Each test returns an example.
- Go to the Examples map and mouse (hover) over the composition.
- Inspect the example.
- Show the Raw view.
- See the Players and navigate to Player A.
- Go to Moves and explore them.
- Go to the History and walk through the moves.
- Ask what would happen if instead B rolled a 6.
- Open a Playground on the second last Move, and inspect `self replayGameToHere`
- In the new game evaluate `self roll: 6`, then click on token "b"
- Go to the Moves view and inspect the last move to see b lands on B, then on A

'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'An explainable Ludo game lets you explore its inner workings';
		element: [ (GtCoderElement forClass: GtLudoRecordingGameExamples) createInPager maximized ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> explainableSystems: aSlide [
	<gtSlide>
	<text: '# Explainable Systems

Explainable systems expose their inner workings in such a way that you can have a conversation with them.
Let''s have a look at two examples.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Explainable systems');
		paragraphWithFormat: (self asText: 'make their domain concepts queryable and explorable.')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> explainableWebsite: aSlide [
	<gtSlide>
	<text: '## An explainable website

Here''s another example.

This is an Inspector on the contents of Markdown-based website hosted on GitHub Pages.
As the Overview tells us, the website hasn''t been cloned yet.
We can do this by clicking on a custom action button.

This will take a few moments, but then we have a refreshed Overview, as well as a number of other views.

If we just look at the source code of the pages of the website, or if we browse the live website, it is just another opaque system.
But by adding a few custom tools, it becomes an explainable system.

The Overview shows us some statistics about the number of pages as well as internal and external links.

We see that there are numerous links whose HTTP status is unknown.

We have a new custom action to check the HTTP status of these links.
We can start  this process, or interrupt it.
We see that there are numerous broken links that should be fixed.

We can navigate to the pages containing these links, and see where they occur, and we can even open the offending page in a web browser.

In addition to these simple textual views, we can also see an interactive map of the website with the home page in orange, the menu pages in blue, reachable pages in green, and apparently unreachable pages in red.

We can also directly view the list of unreachable pages.
Most of these seem not to be problematic, but there are a couple that should be fixed.

Finally, we can perform a custom search over the web pages.
We find one page with the keyword “VAMOS.”'>
	<demo: '## An explainable website

- Hover over the down button to see the tooltip before activating it.
- Open the Missing status group and browse the Links
- Start checking HTTP status from the first Inspector
- See the number of missing status pages go down and the broken links go up
- Stop checking
- Explore the broken links
- Go to the Pages view to see which page they are on, and open the page in a web browser
- Go to the Map view
- Move the orange node and click on it
- Click on some unreachable pages
- Switch to the overview and select the list of unreachable pages
- Go to the Spotter and type in “VAMOS”
- Open the page in a web browser'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'An explainable website';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: DemoMarkdownWebsite oscarHomePage))
				maximized ]
]

{ #category : #initialization }
FkEmbracingVariabilitySlideshow >> initializeDb [
	self db addPage: self abstractPage.
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> moldableTools: aSlide [
	<gtSlide>
	<text: 'TODO

Moldable tools and variability



'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Moldable tools');
		paragraphWithFormat: (self asText: 'placeholder text')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> opaqueSystems: aSlide [
	<gtSlide>
	<text: '# Opaque systems

The opposite of an explainable system is an *opaque* one, which makes it hard for you to answer questions about how it works.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Opaque systems');
		paragraphWithFormat: (self asText: 'make it hard for you to understand how they work.')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> runningSystem: aSlide [
	<gtSlide>
	<text: '## Running systems are typically opaque

A running system just shows its UI. You can interact with it, but you can''t see what''s happening inside it.

With this implementation of a Ludo game, we can only click on the die and enter a token when we roll a 6.
Beyond observing the external behavior of the game, we can gain no insights into inner workings of the game or its logic.'>
	<demo: '## Running systems are typically opaque

Click on the die repeatedly, and make moves when possible.'>
	^ aSlide labelAndElement
		setPriority;
		newText: 'You can interact with a live system, but you can''t ask it questions.';
		element: [ GtLudoGame new asElement asScalableElement ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> runningTests: aSlide [
	"NB: May need the scripter to queue this to the second view."

	<gtSlide>
	<text: '## Unit tests are opaque

The only things you can do with tests are run them or read them.

Running a test won''t tell you anything interesting unless the test fails.

Reading a test can be more interesting, but unfortunately most tests are not designed to be interesting to read.

Here we are lucky and we see a test that exercises a particular scenario, but most tests just exercise a function, rather than play through an interesting story.'>
	<demo: '## Unit tests are opaque

Run the tests and see that they are all green.

Click on the first test and see that a scenario is played.'>
	^ aSlide labelAndElement
		setPriority;
		newText: 'You can interact with a live system, but you can''t ask it questions.';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: (SimpleTestRunner for: GtLudoGameExamples)))
				maximized ]
]

{ #category : #accessing }
FkEmbracingVariabilitySlideshow >> slidePriorities [
	<gtExample>
	^ #( 
		titleSlide:
		
		opaqueSystems:
			runningSystem:
			sourceEditor:
			runningTests:
		
		explainableSystems:
			explainableLudo:
			explainableWebsite:
		
		moldableTools:
			"Dimensions of variability
			views
			actions
			searches
			
			"
		
		
	)
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> sourceEditor: aSlide [
	<gtSlide>
	<text: '## Source editors are opaque

Browsing source code is not a good way to understand a system.
We can see the classes of the Ludo implementation, and browse the source code of the methods, but it''s a poor way to understand how the pieces fit together, and it does not scale to large software systems.'>
	<demo: '## Source editors are opaque

Open a few methods, such as the `initialize` method.
Perhaps browse the `initialization` and `playing` protocols.'>
	^ aSlide labelAndElement
		setPriority;
		newText: 'Reading source code is not an effective way to understand a system.';
		element: [ (GtCoderElement forClass: GtLudoGame) createInPager maximized ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> titleSlide: aSlide [
	<gtSlide>
	<text: '# Embracing Software Variability to build Explainable Systems

Hi. My name is Oscar Nierstrasz.

Today I''d like to tell you about a form of software variability that we use to make software systems *explainable*.
We do this by exposing the internal domain concepts of the system and augmenting them with lots and lots of small, custom tools (or “features”) that can be used to answer questions  and fulfil various tasks.

The secret to making these tools cheap and easy to build is a form of variability that we call *moldability*.
The standard tools  ofthe IDE are opened up so that they can be *molded* to the needs of an arbitrary application.

I''ll show you some examples of explainable systems, and then we''ll see how variability in the IDE enables the creation of cheap, custom tools for explainable systems.'>
	^ aSlide titleWithFooter
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Embracing Software Variability');
		subtitleWithFormat: (self asTitle: ' to build Explainable Systems');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
