Class {
	#name : #FkEmbracingVariabilitySlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'FeenkEmbracingVariabilityVAMOS2024-Slideshows'
}

{ #category : #page }
FkEmbracingVariabilitySlideshow >> abstractPage [
	<lePage>
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
FkEmbracingVariabilitySlideshow >> birdsEye: aSlide [
	<gtSlide>
	<text: '# The Birds eye view

In moldable development we have an environment consisting of a language of interactive and visual operators.

These operators can be combined in many different ways to express a variety of narratives that answer questions we have about our software systems.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'The Birds-eye view');
		paragraphWithFormat: (self
				asText: '

Moldable development treats custom tools
as a ') , (self asText: 'language') italic
				, (self
						asText: ' of composable operators
to support decision making')
]

{ #category : #page }
FkEmbracingVariabilitySlideshow >> coderViewPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Coder views')
	addSnippet: (LeTextSnippet new
			string: 'Classes can also provide dedicated views to the Coder.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: '{{gtClass:name=BrGlamorousVectorIcons}} displays the icons it defines.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: '{{gtClass:name=Color}}  displays the color palette it provides.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'and {{gtClass:name=FkEmbracingVariabilitySlideshow}}  shows a list of the slides it defines.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: '';
			yourself);
	addSnippet: (LeTextSnippet new
			string: '';
			yourself);
	yourself
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> coderViews: aSlide [
	<gtSlide>
	<text: '## Custom Coder Views


Not just the Object Inspector, but also other tools can be molded with custom views.

The `BrGlamorousVectorIcons` class displays a handy list of all the icons next to the methods use to generate them

The `Color` class displays the actual colors next to their method definitions.

Slideshow classes, like the one used to prepare this presentation, can display live, explorable instances of the slides they define.'>
	<demo: '## Custom Coder Views

Scroll through the examples, showing the views and their definitions.'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Coder views')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> composableTools: aSlide [
	<gtSlide>
	<text: '## Custom Tools are composable

In a typical IDE with a plugin architecture, each new tool tends to be standalone, and is not designed to play nicely with other tools.

Instead, fine-grained custom tools in GT can be thought of as operators that can be combined to create new narratives.

Here we see a custom tool that was designed to teach newcomers about the syntax of Smalltalk.

As we mouse over the syntactic constructs, we see them connected to code examples.

This particular tool could then easily be reused as a custom view for compiled methods.

If we inspect any method in the system, we see a number of views, including the Git history, the bytecode, and the syntax Tree.

But we also have the Syntax explanation, which is exactly the same tool, reused as a view.

'>
	<demo: '## Custom Tools are composable

- Mouse over the constructs
- Click on the package name and select the GtPharo101 class
- Inspect the first method (arrayExplanationSlideFor:)
- Show several of the views
- Go to the Syntax explanation view
- Mouse around, then show the view code'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Custom Tools are composable.';
		element: [ (GtPager
				createWrappedOn: (LePagePhlowTool
						page: (self gtBook pageNamed: 'Smalltalk method syntax on a postcard')))
				maximized ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> conclusion: aSlide [
	<gtSlide>
	<text: '# Conclusions

Software systems become explainable by embracing variability in tools

A effective software-intensive system must be explainable, that is, it must expose the inside of the system to querying and exploration.
This is done by reifying domain concepts as objects, and augmenting them with cheap, custom tools.

Dimensions of variability come from SE stakeholders: querying, exploration, searching, analysis, debugging ...

Customization needs to be part of the moldable development process.
Custom tooling needs to be cheap, fine-grained and composable.
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Conclusions');
		paragraphWithFormat: (self
				asText: '

• Software systems become explainable by embracing variability in tools.

• Dimensions of variability are driven by stakeholder needs.

• Customization is an essential part of the (moldable) development process.')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> customAction: aSlide [
	<gtSlide>
	<text: '## Custom actions

Whereas custom views present interesting information about our domain objects that we want to access quickly, custom actions encapsulate interesting operations that we want to easily access.

These actions may update the current view, or lead us to new views.

Here we see the last move of an example scenario of the Ludo game.

While we can evaluate snippets in the playground, we can also encapsulate these actions as buttons.

Back in the game, we could also evaluate the autoplay feature in the playground, or turn it into a custom action.'>
	<demo: '## Custom actions

- Lift the playground to show the code `self replayGameToHere.`
- Hover over and click the replay button
- Show `self autoPlay: 1.` in the game playground
- Hover over and click the autoplay button
- Click it a few times, showing each time the resulting move'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Custom actions encapsulate interesting operations to perform.';
		element: [ (GtPager
				createWrappedOn: (GtInspector
						forObject: GtLudoRecordingGameExamples new bEntersAndPlaysWithAahead moves last))
				maximized ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> customSearches: aSlide [
	<gtSlide>
	<text:
'## Custom searches

Custom searches, on the other hand, allow you to configure different ways to search through your domain objects.

Here, for example, in the markdown website domain, we might want to search for pages either by title or by content.

Here too, the custom search tools are defined using a dedicated annotation, in this case `<gtSearch>`.

'>
<demo: 
'## Custom searches

- Type "VAMOS" in the Spotter, showing both results for pages and contents
- OPT-click to show the code'>
	
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Custom searches offer multiple ways to  search your domain space.';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: DemoMarkdownWebsite oscarHomePage))
				maximized ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> debuggerViews: aSlide [
	<gtSlide>
	<text: '## Moldable exceptions

Many other kinds of tools can benefit from moldability.

Just like the default `Raw` view of an object inspector may not help you to find what is important, the default stack views offered by a standard debugger can be intimidating and hard to work with.

Here we have a scenario of a Ludo game in which player C rools a 6, but then Player B''s token is brought into play.

A custom view can highlight the problem better than the standard debugger view.

Custom debugger views for moldable exceptions are defined like other views, but with a `<gtExceptionDebuggingView>` pragma.'>
	<demo: '## Moldable exceptions

- Evaluate the faulty snippet
- Explore the views, especially the last two moves
- Switch to the default debugger view
- Go back to the Ludo exception view and OPT-click to show the code
'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Moldable Exceptions')
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
		newFadedText: 'An explainable Ludo game lets you explore its inner workings.';
		element: [ (GtCoderElement forClass: GtLudoRecordingGameExamples) createInPager maximized ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> explainableLudoDocumentation: aSlide [
	<gtSlide>
	<text: '## Explainable Ludo Documentation

Once we have these examples, we can also use them to build live documentation.
Here we see a page in the Glamorous Toolkit book that explains the various kinds of special situations that can arise in the Ludo game, by embedding the examples into notebook pages.'>
	<demo: '## Explainable Ludo Documentation

- Step through several moves, and navigate to the history of the game'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'You can embed examples within live documentation.';
		element: [ (GtPager
				createWrappedOn: (LePagePhlowTool
						page: (self gtBook pageNamed: 'Executable domain-driven design: the Ludo game case study')))
				maximized ]
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
		paragraphWithFormat: (self asText: '
make their domain concepts queryable and explorable.')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> explainableWebsite: aSlide [
	<gtSlide>
	<text: '## An Explainable Website

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
	<demo: '## An Explainable Website

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
		newFadedText: 'An explainable website lets you explore various narratives.';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: DemoMarkdownWebsite oscarHomePage))
				maximized ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> exploringGitHubRestAPI: aSlide [
	<gtSlide>
	<text: '## Working with a REST API

So far we have seen various examples of custom tools, but not how the process of adding new tools (or “features”) works.

In this example  we explore the REST API of GitHub, starting with the data GitHub has about the feenk organization.

Here is a page from the Glamorous Toolkit book, an integrated knowledge base of wiki pages containing various kinds of live snippets.

We start by programmatically retrieving the JSON data from GitHub.
This is just a string, but we can parse it and obtain a dictionary.

This is already an improvement, but we are missing the fact that this represents an organization, so  let''s wrap this data as a domain object called `MyOrganization`.

The class doesn''t exist, so we can create it by clicking on the “fixit” icon.
We also create the `rawData:` setter method to initialize a slot, or instance variable, of the object.

Now if we inspect this object, we get a default inspector view showing the `rawData` slot.
If we explore this, we find the dictionary has all sorts of fields with URLs in them, like `repos_url`.

Let''s explore this more closely, by pulling the repos URL out of the dictionary.
Now let''s assign it to `url`.

We''d like to retrieve the data behind the URL, but we already know how to do that, so let''s copy-paste that snippet.
Now we see the result is also a JSON, so let''s parse it.

That looks useful, so let''s turn it into a method.
We evaluate an “Extract method” refactoring.

Now note that we have a little triangle that allows us to explore the new method in place.

What I''d like is to see this list  over here in the Organization view, because it captures important information about the organization.

Now we''ll switch the Coder view that shows the methods of the object.
We''now create a new view, `gtReposFor:` a view.
It takes an argument `aView` which will be the view that we configure.
It has an annotation `<gtView>` that allows it to be recognized by the tools as a view method.
We tell the  view that we want a list view, with a title, and the list of items to display.
That''s it!
The view is already visible.

This is nice, but it is showing me a list of Dictionaries, while what I want are objects representing the repositories.

Let''s change the `repos` method to return a collection of Repos instead.
As before, we create the new class, setter and slot using fixits.

Now we have a list of repos instead of dictionaries, but we would like to improve how this looks.

We inspect a repo and its data and see there are many different fields.
Perhaps there is some kind of name.
We search and see `full_name`.
That looks good, so let''s extract it as a method `name`

Now we can tell the object how to display itself.

If we continue like this, after some steps we can arrive at a view like this, which shows `Repositories` and `Events`.
If dive into the repositories, we can see events and contributors, and from there to the events that they participated in.

Note that in this whole process we were able to work fluidly within the environment, without having to jump out and use different external tools.
This is a key point.
We extend the moldable tools of the environment as we need to, adding new features that help make the the software system explainable.'>
	<demo: '## Working with a REST API

- Retrieve the data
- Parse to obtain a dictionary
- Add a snippet: `MyOrganization new rawData: dictionary`
- Click the fixits to create the class, the method and the new slot
- Inspect the object and the `rawData` slot
- Open the playground and evaluate `rawData at: ''repos_url''.`
- Rewrite as `url := ...`
- Copy-paste the `json := ...` snippet and inspect the result
- Copy-paste the `dictionary := ...` code and evaluate it
- Extract the snippet as a `repos` method
- Expand the code bubble to show the new code
- Go to the Meta view
- Create method
	`gtReposFor: aView
	<gtView>
	^ aView list
		title: ''Repos'';
		items: [ self repos ]`
- Show the new view
- Go to the code bubble in the Playground to update the `repos` method
- Wrap the result in `collect: [:dict | MyRepo new rawData: dict ]`
- Evaluate the snippet to show the list of repos
- Re-evaluate the `MyOrganization new rawData: dictionary` from the notebook page to regenerate the view
- Inspect a repo and its rawData to see the dictionary, and search in spotter for "name"
- Evaluate `rawData at: ''full_name''` and extract as `name`
- Implement `gtDisplayOn: stream stream nextPutAll: self name`
- Re-evaluate the `MyOrganization` snippet to regenerate the views
- Navigate to `gtoolkit`, Contributors, onierstrasz and events.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'You can incrementally add custom views to API results.';
		element: [ (GtPager
				createWrappedOn: (LePagePhlowTool
						page: (self gtBook pageNamed: 'Working with a REST API: the GitHub case study')))
				maximized ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> featurePlugins: aSlide [
	<gtSlide>
	<text:
'## Custom tools are dynamic plugins

We can see a moldable development environment as a kind of Software Product Line of “moldable tools” that can be extended with dynamic features.

Each moldable tool, in this case an Inspector, is extended by features that are provided by the objects they manipulate.
These features are custom tools that are dynamically plugged in to the moldable tool.

What is different from a classical software product line is that the set of features is open-ended, and is continuously extended to answer questions about the software under development.'>
	<demo: ''>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Custom tools are dynamic plugins.';
		element: [ self featureScenery ]
]

{ #category : #accessing }
FkEmbracingVariabilitySlideshow >> featureScenery [
	"The feature scenery after manual tweaking"

	<gtExample>
	| scenery item1 item2 item3 item4 item5 item6 item7 |
	scenery := GtScenery new.
	item1 := scenery
			addItem: (GtSceneryItem new
					stencil: (GtSceneryInspectorStencil new target: [ Object new ])).
	item1 position: 0 @ 600.
	item1 extent: 500.0 @ 500.0.
	item2 := scenery
			addItem: (GtSceneryItem new
					stencil: [ (self ludoGame gtRawFor: GtPhlowProtoView new) asElement
							border: Color veryLightGray;
							yourself ] asStencil).
	item2 position: 800 @ 650.
	item2 extent: 400.0 @ 400.0.
	item3 := scenery
			addItem: (GtSceneryItem new
					stencil: [ self ludoGame gtPositionsFor: GtPhlowProtoView new ] asStencil).
	item3 position: 637 @ 344.
	item3 extent: 200.0 @ 200.0.
	item4 := scenery
			addItem: (GtSceneryItem new
					stencil: [ (self ludoGame gtMovesFor: GtPhlowProtoView new) asElement
							border: Color veryLightGray;
							yourself ] asStencil).
	item4 position: 896 @ 302.
	item4 extent: 200.0 @ 200.0.
	item5 := scenery
			addItem: (GtSceneryItem new
					stencil: [ (self ludoGame gtAutoplayAction: GtPhlowNoAction new)
							asElement: [ :x | x ]
							withHostElement: nil ] asStencil).
	item5 position: 1094 @ 530.
	item5 extent: 200.0 @ 24.0.
	item6 := scenery
			addItem: (GtSceneryItem new
					stencil: (GtSceneryTextStencil new
							text: ((BlRunRopedText string: 'an Inspector')
									attributeRuns: (BlRunTree basicNew
											instVarAt: 1
												put: (BlRunTreeLeafNode basicNew
														instVarAt: 1 put: 13;
														instVarAt: 2
															put: ((Array new: 2)
																	at: 1 put: (BlFontSizeAttribute new size: 20);
																	at: 2
																		put: (BlFontFamilyDefaultAttribute new beNotOverwritableByStyler
																				name: 'Source Sans Pro');
																	yourself);
														yourself);
											yourself)))).
	item6 position: 190 @ 1115.
	item6 extent: 250.0 @ 40.0.
	item7 := scenery
			addItem: (GtSceneryItem new
					stencil: (GtSceneryTextStencil new
							text: ((BlRunRopedText string: 'a Ludo game')
									attributeRuns: (BlRunTree basicNew
											instVarAt: 1
												put: (BlRunTreeLeafNode basicNew
														instVarAt: 1 put: 12;
														instVarAt: 2
															put: ((Array new: 2)
																	at: 1 put: (BlFontSizeAttribute new size: 20);
																	at: 2
																		put: (BlFontFamilyDefaultAttribute new beNotOverwritableByStyler
																				name: 'Source Sans Pro');
																	yourself);
														yourself);
											yourself)))).
	item7 position: 942 @ 1064.
	item7 extent: 250.0 @ 40.0.
	scenery
		addConnectionWithStencil: (GtSceneryParabollaArcStencil new
				labelText: 'Dynamic context';
				curvatureFraction: -0.2;
				arrowLengthFraction: 10;
				yourself)
		from: item2
		to: item1.
	scenery
		addConnectionWithStencil: (GtSceneryParabollaArcStencil new
				labelText: 'Board view';
				curvatureFraction: 0;
				arrowLengthFraction: 10;
				yourself)
		from: item2
		to: item3.
	scenery
		addConnectionWithStencil: (GtSceneryParabollaArcStencil new
				labelText: 'Moves view';
				curvatureFraction: 0;
				arrowLengthFraction: 10;
				yourself)
		from: item2
		to: item4.
	scenery
		addConnectionWithStencil: (GtSceneryParabollaArcStencil new
				labelText: 'Replay action';
				curvatureFraction: 0;
				arrowLengthFraction: 10;
				yourself)
		from: item2
		to: item5.

	^ scenery
]

{ #category : #accessing }
FkEmbracingVariabilitySlideshow >> featureSceneryOriginal [
	"Original feature scenery before tweaking."

	<gtExample>
	| scenery item1 item2 item3 item4 item5 item6 item7 |
	scenery := GtScenery new.



	item1 := scenery
			addItem: (GtSceneryItem new
					stencil: (GtSceneryInspectorStencil new target: [ Object new ])).
	item1 extent: 500 @ 500.
	item1 position: 0 @ 600.


	item2 := scenery
			addItem: (GtSceneryItem new
					stencil: [ (self ludoGame gtRawFor: GtPhlowProtoView new) asElement
							border: Color veryLightGray;
							yourself ] asStencil).


	item2 extent: 400 @ 400.
	item2 position: 800 @ 650.

	item3 := scenery
			addItem: (GtSceneryItem new
					stencil: [ self ludoGame gtPositionsFor: GtPhlowProtoView new ] asStencil).
	item3 extent: 200 @ 200.
	item3 position: 700 @ 300.


	item4 := scenery
			addItem: (GtSceneryItem new
					stencil: [ (self ludoGame gtMovesFor: GtPhlowProtoView new) asElement
							border: Color veryLightGray;
							yourself ] asStencil).
	item4 extent: 200 @ 200.
	item4 position: 950 @ 250.


	item5 := scenery
			addItem: (GtSceneryItem new
					stencil: [ (self ludoGame gtAutoplayAction: GtPhlowNoAction new)
							asElement: [ :x | x ]
							withHostElement: nil ] asStencil).
	item5 extent: 200 @ 200.
	item5 position: 1100 @ 500.

	item6 := scenery
			addItem: (GtSceneryItem new
					stencil: (GtSceneryTextStencil new text: ('an Inspector' asRopedText fontSize: 20))).
	item6 extent: 250 @ 40.
	item6 position: 200 @ 1150.


	item7 := scenery
			addItem: (GtSceneryItem new
					stencil: (GtSceneryTextStencil new text: ('a Ludo game' asRopedText fontSize: 20))).
	item7 extent: 250 @ 40.
	item7 position: 950 @ 1050.

	scenery
		addConnectionWithStencil: (GtSceneryParabollaArcStencil new
				curvatureFraction: -0.2;
				labelText: 'Dynamic context';
				yourself)
		from: item2
		to: item1.


	scenery
		addConnectionWithStencil: (GtSceneryParabollaArcStencil new
				curvatureFraction: 0;
				labelText: 'Board view';
				yourself)
		from: item2
		to: item3.

	scenery
		addConnectionWithStencil: (GtSceneryParabollaArcStencil new
				curvatureFraction: 0;
				labelText: 'Moves view';
				yourself)
		from: item2
		to: item4.

	scenery
		addConnectionWithStencil: (GtSceneryParabollaArcStencil new
				curvatureFraction: 0;
				labelText: 'Replay action';
				yourself)
		from: item2
		to: item5.

	^ scenery
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> fineGrained: aSlide [
	<gtSlide>
	<text: '## Fine-grained custom views

There are literally thousands of custom views defined in the GT environment.
Most of these are implemented in just a few lines of code.

The Metrics view shows us there are currently over 3000 custom views, on average under 12 lines of code.

The key here is that it should be cheap to solve small problems by building a custom tool.
The cost of building a tool should pay itself off after the first usage.

This means it should be cheaper and faster to answer a question by building a small tool than trying to solve it with some existing generic tool, or simply not answering the question.'>
	<demo: '## Fine-grained custom views

- Evaluate the snippet
- Open a few views and show they are very short (skip the firdst 2!)
- Switch to the Inspector
- Show the Metrics view
'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Fine-grained custom views')
]

{ #category : #page }
FkEmbracingVariabilitySlideshow >> fineGrainedViewsPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Fine-grained custom views')
	addSnippet: (LeTextSnippet new
			string: 'There are thousands of custom views in the default environment, each consisting of just a few lines of  code.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: '#gtView gtPragmas.';
			yourself);
	yourself
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> inspectorViews: aSlide [
	<gtSlide>
	<text: '## Custom Inspector Views

Each custom Inspector view is created by a dedicated method of the inspected object.
The Inspector recognizes it by the `<gtView>` annotation, just like a JUnit test runner recognizes test methods with an `@Test` annotation.

We can see the implementation of any view by Option-clicking on on its heading.
Here we see the Players view is implemented as a method with a `gtView` annotation.
It creates a “columned list” view, with one row for each player, in a straightforward way.

As we can see, each view is implemented in just a few lines of code, making it cheap and easy to create new views, even while exploring a system.'>
	<demo: '## Custom Inspector Views

- OPT-Click on several views to show their code.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Custom views are dynamic features provided by objects to moldable tools.';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: GtLudoRecordingGameExamples new gameShowingAllMoves2))
				maximized ]
]

{ #category : #accessing }
FkEmbracingVariabilitySlideshow >> ludoGame [
	| ludoGame |
	ludoGame := GtLudoRecordingGameExamples new bEntersAndPlaysWithAahead.
	^ ludoGame
]

{ #category : #page }
FkEmbracingVariabilitySlideshow >> moldableExceptionPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Moldable Exceptions')
	addSnippet: (LeTextSnippet new
			string: 'The debugger can also benefit from custom views.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'In this scenario, player C rolls a 6, but Player B tries to move its token.';
			yourself);
	addSnippet: (LeElementSnippet new
			code: 'GtLudoRecordingGameExamples new bEntersAndPlaysWithAahead';
			codeVisible: false;
			elementHeight: 456;
			codeHeight: 50;
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'GtLudoRecordingGameExamples new bEntersAndPlaysWithAahead
	roll: 6;
	moveTokenNamed: ''B'';
	yourself.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: '';
			yourself);
	yourself
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> moldableTools: aSlide [
	<gtSlide>
	<text: '# Moldable Tools and Variability

A moldable tool dynamically adopts features provided by the entities it operates on.
Let''s see some examples.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Moldable tools');
		paragraphWithFormat: (self asText: '
dynamically adapt themselves to the entities they work with.')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> opaqueSystems: aSlide [
	<gtSlide>
	<text: '# Opaque systems

The opposite of an explainable system is an *opaque* one, which makes it hard for you to answer questions about how it works.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Opaque systems');
		paragraphWithFormat: (self
				asText: '
make it hard for you to understand how they work.')
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> pervasiveTools: aSlide [
	<gtSlide>
	<text: '## Custom tools are pervasive

This visualization shows a treemap of packages and classes in the current image.

Blue classes have at least one custom view (i.e., a feature) and green ones have at least one example.
This shows that custom tools were  heavily used to build the moldable development environment itself.

Here at the top left we see `BlElement`, the root of the graphical hierarchy.'>
	<demo: '## Custom tools are pervasive

- Click on the top-left class (BlElement)'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Custom tools are pervasive.';
		element: [ (GtPager createWrappedOn: GtTour new treemapWithViewsAndExamples) maximized ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> rubySyntax: aSlide [
	<gtSlide>
	<text: '## Ruby syntax

Of course this works for other programming languages as well, such as Ruby

'>
<demo:
'## Ruby syntax

- Select one of the shorter `write` methods
- Show the Syntax explanation'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Moldable development is language-agnostic.';
		element: [ (GtPager
				createWrappedOn: (GtInspector newOn: FileLocator gtResource / 'feenkcom' / 'gt4ruby' / 'ruby'))
				maximized ]
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
		newFadedText: 'You can interact with a live system, but you can''t ask it questions.';
		element: [ GtLudoGame new asElement asScalableElement ]
]

{ #category : #slides }
FkEmbracingVariabilitySlideshow >> runningTests: aSlide [
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
		newFadedText: 'You can only interact with unit tests if they fail.';
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
			explainableLudoDocumentation:
			explainableWebsite:
			exploringGitHubRestAPI:
		
		moldableTools:
			#inspectorViews:
			coderViews:
			debuggerViews:
			customAction:
			customSearches:
			
			"Skip lepiter extensions?"

		birdsEye:
			featurePlugins:
			fineGrained:
			composableTools:
			rubySyntax:
			pervasiveTools:

		conclusion: 
			
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
		newFadedText: 'Reading source code is not an effective way to understand a system.';
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
The standard tools  of the IDE are opened up so that they can be *molded* to the needs of an arbitrary application.

I''ll show you some examples of explainable systems, and then we''ll see how variability in the IDE enables the creation of cheap, custom tools for explainable systems.'>
	^ aSlide titleWithFooter
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Embracing Software Variability');
		subtitleWithFormat: (self asTitle: ' to build Explainable Systems');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
