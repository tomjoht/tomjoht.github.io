---
title: "Attempting to write a Life of a [something] narrative (Trends to follow or forget)"
permalink: /trends/writing-a-life-of-a-something-narrative.html
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/trends-writinglifeofasomething
series: "Trends to follow or forget"
jtype: notes_fizzled_trends
description: "In this post, I describe an attempt at horizontal writing and what I learned from it. I was surprised to be struck with a kind of reverent awe for the complexity that this horizontal view revealed."
redirect_from:
- /2022/09/30/2022-09-23-first-attempt-at-life-of-narrative/
- /2022/09/29/2022-09-23-first-attempt-at-life-of-narrative/
- /2022/09/26/2022-09-23-first-attempt-at-life-of-narrative/
- /2022/09/24/2022-09-23-first-attempt-at-life-of-narrative/
- /2022/09/23/2022-09-23-first-attempt-at-life-of-narrative/
- /trends/2022-09-22-writing-a-life-of-a-something-narrative.html
---

# First attempt at horizontal writing

These past two weeks, I've been writing a type of documentation I've never written before: a systems view of a product, describing the path that information follows through many services and systems. The documentation follows the "Life of a [something]" narratives that show the whole life cycle information flow. (I wrote about this type of content in my previous post, ['Putting together things': Articulating a thesis about the effects of hyper-specialization on documentation](/trends/2022-09-18-exploiting-the-systems-view-tech-writers.html).) 

My draft (an internal-only doc) is currently about 7,000 words and traces the path that information takes when people make a directions request with Google Maps &mdash; all the backend systems and processes that the request travels through before that magical route appears on your phone. 

My goal in writing this was to show how all these systems and services work together toward a specific result, thus helping people across the organization understand the larger picture, pieces involved, and how their work fits into the broader product system and flow. Ideally, we wanted to highlight an information journey that showed how the organization's technology worked.

It's been an interesting writing experience, and I want to jot down a few thoughts about it. I'm not finished with the documentation quite yet but am mostly there. I'm also collaborating on it with other writers.

## Dealing with infinite scope at every level

This horizontal type of writing has been challenging in part because of scope. At every point along the way, there's a universe of information within each system and how it operates. In my doc, I mention about 20 different services/systems/frameworks/servers that information flows through, and each one of these services could be its own reference manual. Each level of the stack (frontend, middle tier, backend) has its own depth of complexity that I find both fascinating and intimidating. Just when I think I'm getting a grasp on the workflow, I discover some new detail that has a slide with so many boxes and arrows that I'm stunned.
 
Confronting this complexity is a bit mind-blowing. How does all this happen (the route that draws from start to end on your digital map) within the blink of an eye? That little request for directions seems to trigger a workflow that involves an orchestra of services, algorithms, and APIs firing in perfect harmony and coordination, moving at lightning speed and completing trips through dozens of services in milliseconds.

## The beauty trajectory of technology 

My sense of overwhelm to this awesome complexity reminds me a bit of what Kevin Kelly describes in [*What Technology Wants*](https://www.amazon.com/What-Technology-Wants-Kevin-Kelly/dp/0143120174). In a section describing various trajectories that technology takes, Kelly says one trajectory that technology takes is beauty. He quotes from Joan Didion's writing about the Hoover dam in her anthology, *The White Album*, in which she "felt the heart of a dynamo." Didion writes:

> . . . Once when I revisited the dam I walked through it with a man from the Bureau of Reclamation. We saw almost no one. Cranes moved above us as if under their own volition. Generators roared. Transformers hummed. The gratings on which we stood vibrated. We watched a hundred-ton steel shaft plunging down to that place where the water was. And finally we got down to that place where the water was, where the water sucked out of Lake Mead roared through thirty-foot penstocks and then into thirteen-foot penstocks and finally into the turbines themselves. "Touch it," the Reclamation man said, and I did, and for a long time I just stood there with my hands on the turbine. It was a peculiar moment, but so explicit as to suggest nothing beyond itself. (321)

If you've ever visited a dam, beholding its sheer size and scope puts most observers' minds into a state of bewildering awe. To touch the massive turbine that converts mechanical energy to electrical energy prompted Didion to just stand there with her hand on the turbine for a long time. The experience seems similar to gazing out into the massive blue ocean, its waves continually rolling ashore, for much longer than you planned to gaze at it. Or watching a powerful river with slow-moving but strong current, winding through the landscape with unrelenting force to carve through the earth. But in Didion's case, rather than with nature, the experience is with a machine performing some incomprehensible feat. 

Documenting this requests workflow was like that &mdash; touching the heart of a dynamo and feeling a sense of reverent wonder. To see that there are hundreds of people across fifty or more teams all working on some aspect of this product, with an endless complexity of services and frameworks handling every detail of the experience &mdash; it filled me with a sense of privilege/opportunity for getting to work on such a special product. It's the same language-defying experience of putting your hand on a dynamo &mdash; like, oh my, this is both mysterious and fascinating and massive and insanely complex &mdash; how is it even possible? 

I'd compare it to the picoseconds of the Big Bang, where so much happens within that first second of the universe that each microsecond of time holds within it book after book of detail.

Kelly says that many technological tools act as an "evocative object," as one psychologist puts it, that trigger a state of reflection about the beauty of the machine. For example, a stethoscope for a doctor, a pen for a writer, or a radio for a dispatcher can "serve as a springboard for identity or for reflection and thinking" (qtd. in Kelly, 322). 

For Kelly, that evocative object is the Internet itself. Kelly explains: 

> I am no longer embarrassed to admit that I love the internet. Or maybe it's the web. Whatever you want to call the place we go to while we are online, I think it is beautiful. People love places and will die to defend a place they love, as our sad history of wars proves. Our first encounters with the internet/web portrayed it as a very widely distributed electronic dynamo &mdash; a thing one plugs into &mdash; and that it is. But the internet as it has matured is closer to the technological equivalent of a place. An uncharted, almost feral territory where you can genuinely get lost. At times I've entered the web just to get lost. In that lovely surrender, the web swallows my certitude and delivers the unknown. Despite the purposeful design of its human creators, the web is a wilderness. Its boundaries are unknown, unknowable, its mysteries uncountable. The bramble of intertwined ideas, links, documents, and images creates an otherness as thick as a jungle. The web smells like life. It knows so much. It has insinuated its tendrils of connection into everything, everywhere. The net is now vastly wider than I am, wider than I can imagine; in this way, while I am in it, it makes me bigger, too. I feel amputated when I am away from it.
> 
> I find myself indebted to the net for its provisions. It is a steadfast benefactor, always there. I caress it with my fidgety fingers; it yields to my desires, like a lover. Secret knowledge? Here. Predictions of what is to come? Here. Maps to hidden places? Here. Rarely does it fail to please, and more marvelous, it seems to be getting better every day. I want to remain submerged in its bottomless abundance. To stay. To be wrapped in its dreamy embrace. Surrendering to the web is like going on an aboriginal walkabout. The comforting illogic of dreams reigns. In dream time you jump from one page, one thought, to another. First on the screen you are in a cemetery, looking at an automobile carved out of solid rock; the next moment, there's a man in front of a blackboard writing the news in chalk, then you are in jail with a crying baby, then a woman in a veil gives a long speech about the virtues of confession, then tall buildings in a city blow their tops off in a thousand pieces in slow motion.... (322-323)

I quote at length here because, as I said, experiencing the beauty of technology is somewhat beyond language to fully articulate. I keep thinking that with enough attempts, I'll convey a glimpse of it. Previously, in most documentation projects as a technical writer, I'd focused on some smaller part of the machine and documented it, without fully understanding the complexity of the whole. It was only while writing this *Life of a [something]* narrative that I moved beyond that reductionist point of view to glimpse into the depths of a system much more intelligent and massive than I'd realized.

{% include ads.html %}

## Finding a format: alternating frontstage, backstage

All right, let's move on to more practical matters. Putting aside that sense of reverence about giant machines, there's a question of format for such a document. My approach was to follow a frontstage-backstage approach. To use an analogy, consider a stage where actors are performing on the stage, while a lot of other activity goes on behind the curtain. The stage is the UX, and behind the curtain is the technical infrastructure supporting everything happening on stage (the UX). My approach was to briefly describe what happens on stage (which most users are already familiar with), and then to expand in detail about the technical workflows going on to support those activities. Then jump back on frontstage to describe another scene, then expand again with backstage events. Back and forth, back and forth. The user does X, and now all this stuff happens on the backend that no one sees.

This worked all right, except that at most points, there was a lot more going on behind the curtain than what happened on stage. Sometimes the on-stage activity was simple &mdash; okay, now the user clicks a button to initiate the request, then there were 2,500 words of technical how-to describing what's going on to get the response to that request. 

In some places, I wasn't sure what the technical details were (for example, how does the voice guidance work?), and I ended up searching and poking around the endless corporate intranet for information. It can be exhausting to jump from site to site, finding fragments of information (across intranet sites, Google Docs, slides, email threads, Groups, and more) and then piecing snippets together into some kind of coherent narrative. By contrast, when you're reading a book, there's a strong linear narrative that carries you from page to page in an organized, somewhat logical sequence.

Overall, I tried to describe just enough information so that people were aware of what services were involved, what those services do, which teams work on them, and so on, without getting into too many details. If I got lost in the details, I would lose sight of the larger picture and workflow.

## Horizontal writing can be easier 

In some ways, horizontal writing is easier because you don't have to go in depth with each service, and you can often steal descriptions and explanations from already-written internal documentation. For example, I might say, "And now the ACME service calls the Gizmo service. Gizmo's job is to "[copy/paste description from Gizmo's docs]...." I described enough detail to give users a sense of what something does, what's involved there, and then kept moving.

From an outsider's point of view, I'm perhaps merely copying snippets from 20 different sites and weaving them together, more or less following the workflow already outlined in various architectural diagrams. And it's much easier to reduce a page full of engineering mumbo-jumbo into a few readable sentences than to generate content from scratch. Even so, my Life of a [something] narrative seemed highly valuable, a kind of curation-based approach to writing.

The approach I've described deviates from the standard type of documentation I've traditionally taken as a tech writer. The standard documentation approach is to be thorough and detailed, to work with a specific product team and document all the parameters of an API, each field in the response, the exact workflow for using an endpoint, etc. Not so with horizontal writing. I barely have time to jot down a description of the service before moving on to the next link in the chain.

## The C4 writing model

In looking for writing models for this type of horizontal documentation, I came across the [C4 model](https://c4model.com/), which is an approach for describing system architecture. Basically, the C4 model recommends using general boxes and arrows to describe the system architecture, and then to layer the detail at several levels (moving from context to containers, components, and then code). The first level is fairly general, but users can zoom in for increased detail at each level. In other words, the C4 model recommends a technique elsewhere called "progressive information disclosure."

The C4 model authors explain:

> How do you diagram large and complex software systems?
> 
> Even with a relatively small software system, it's tempting to try and include the entire story on a single diagram. For example, if you have a web application, it seems logical to create a single component diagram that shows all of the components that make up that web application. Unless your software system really is that small, you're likely to run out of room on the diagram canvas or find it difficult to discover a layout that isn't cluttered by a myriad of overlapping lines. Using a larger diagram canvas can sometimes help, but large diagrams are usually hard to interpret and comprehend because the cognitive load is too high. And if nobody understands the diagram, nobody is going to look at it.
>
> Instead, don't be afraid to split that single complex diagram into a larger number of simpler diagrams, each with a specific focus around a business area, functional area, functional grouping, bounded context, use case, user interaction, feature set, etc. The key is to ensure that each of the separate diagrams tells a different part of the same overall story, at the same level of abstraction.

As an analogy, consider your perspective of a city from multiple levels: from the sky, from buildings, from the sidewalk, and from the ground. Allow the user to drill into the level they're interested in.

<figure><img style="max-width: 800px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/perspectivesfromhightolowimage.jpg" alt="Perspectives from high to low" /><figcaption>Perspectives from multiple levels -- this is the C4 approach. Start at high levels of abstraction and allow users to zoom in for progressively more detail.</figcaption></figure>

Describing a software system "from different levels of abstraction" seems like a good approach. However, I didn't have the time or bandwidth to present the detail at more zoomed-in levels. Instead, I implemented two easy techniques. First, I created a tl;dr summary at the top that summarized the whole workflow into two paragraphs. This brief summary lets readers quickly know what they're getting into (even if the summary mostly just lists the services). 

Second, at the bottom of each section, I included several links for more info (including team contacts). This allows people to jump into the team's internal documentation for more information. (Whether the team's documentation is any good is beyond my concern because trying to fine tune too many details would be like attempting to boil the ocean.)

## Does this genre belong to software architecture?

The C4 model also prompts another question: Is horizontal writing a genre of software architecture writing? Was I doing software architecture writing with this "Life of a [something]" narrative? This is what one commenter suggested on my previous post. Rafał Dylewski said,

> Capturing and managing the big picture usually belongs to solution architects, heads of development, solution designers, system architects, or enterprise architects. That would mean that technical writers will become more relevant to these audiences instead specialized developers. On the other hand, these architects and designers usually are capable of managing their architectural docs well, modeling systems in advanced tools, such as Enterprise Architect, Visual Paradigm, etc. So the question is: do they need help? ([link](https://idratherbewriting.com/trends/2022-09-18-exploiting-the-systems-view-tech-writers.html#commento))

To this question, I'd say sure, to some extent a "Life of a [something]" narrative fits into the architecture genre. But software architects seem to have other concerns in mind, such as latency, server management, security, and more. Architects also have their own modeling language (UML) for describing systems. Even so, there's a whole genre of systems thinking writing, unrelated to UML, that leverages other vocabulary to describe systems. Terms like inflow, outflow, stock, limiting factors, balancing loops, buffers, reinforcing feedback, shifting dominance, oscillations, length of delay, limits to growth, flow-limited, stock-limited, and more (terms from Donella Meadows' [*Thinking in Systems*](https://www.amazon.com/Thinking-Systems-Donella-H-Meadows/dp/1603580557)) describe systems in a way that's much different from a typical software architectural diagram.

Further, in this horizontal writing genre, there are many types of writing not so related to architecture, including product overviews, conceptual explanations, information workflows, competitive analyses, and of course "Life of a [something]" narratives.

## Generating the first draft

To generate this first draft, I focused exclusively on this project for the entire week, with only minor interruptions for meetings or small doc bug fixes. I kept track of the focus sessions I completed for each day, and on average, I completed about 2.3 90-minute focus sessions a day. That's about 3.5 hours of heads-down writing a day in which I tried to reduce all distractions and focus on writing exclusively.

I found these focus sessions to be a bit draining, and they've taken some of the fun out of writing. (I described these focus sessions more in my post [Techniques for deep work from Cal Newport](/blog/newport-deep-work/).) Mixing in a bit more of a distraction into writing might lighten up the task. Then again, I'm amazed at the ability to basically knock out a first draft so quickly, and it feels good to have written it rather than doddle and flitter about online. (I'll have more to say about these focus sessions soon in my other series, [Journey away from smartphones](/blog/awakening-moment-to-how-smartphones-fragment-our-attention/).)

## Reviewing the doc

After I finished a first draft, I reached out to about 8 different groups to ask them to review various sections. The requests for review were surprisingly well received, as people were intrigued with the document's purpose and structure. At least a dozen or more people whom I'd never met made a lot of comments on the document. Some reviewers pulled in other reviewers as well. 

This proactivity and responsiveness to review the material surprised me because I'm accustomed to twisting reviewers' arms to get them to review docs. I usually set up meetings just so reviewers can do the reviews during the meeting (a technique I described in the section "3. Stop expecting reviewers to read docs on their own" in [Some advice if you're just starting out your technical writing career](/blog/career-advice-just-starting-out.html)).

I think reviewers had an easier time because at such a high level, it wasn't difficult for teams to evaluate the content. In contrast, reviewing highly detailed material that requires more specialized knowledge is far more demanding. Reviewers often pointed me to links with more info, but had I articulated their more granular workflows and systems at that level of detail, the document would lose the high-level focus (shifting to the leaves instead of the forest). It was already 7,000 words and I didn't want to balloon it even more.

Also, most reviewers read only the sections related to the services they owned. Am I too optimistic to think that others in the org would read 7,000 words (which works out to 27 or so pages in Google Docs)? The point wasn't for each team to read only a small section relevant to them.

## The audience comes into focus 

Writing this document, I also thought a lot about the audience. Who will actually be excited to read this? It seemed like a clear fit for onboarding material, for engineers and others just joining the organization and trying to get a sense of the whole. After someone has been working for a few years in a place, they come to understand what information is essential to know for their role versus information they can ignore.

## Next steps

Like I said earlier, I haven't yet published the doc, so it's too early to see the feedback. Review comments are still trickling in, and we have to figure out how to publish a long doc in a such a way that people will still read it. One of our plans is to test the waters with a small group of readers and survey them afterwards. If things go well, we might write a lot more of these "Life of a [something]" narratives. Making the case for the document's value, as with other types of documentation, is yet another challenge to figure out. But one thing is for sure: I like this genre of writing, and I might be good at it.

