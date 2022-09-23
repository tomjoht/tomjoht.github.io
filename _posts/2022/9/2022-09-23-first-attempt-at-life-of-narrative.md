---
title: "Attempting to write a Life of a [something] narrative" (Trends to follow or forget)"
permalink: /trends/2022-09-22-writing-a-life-of-a-something-narrative.html
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/trends-writinglifeofasomething
series: "Trends to follow or forget"
jtype: notes_fizzled_trends
description: "In this post, I try to articulate the emerging thesis in this <a href='/trends/trends-to-follow-or-forget-intro.html'>series on fizzled trends</a>."
published: false
---

# First attempt at horizontal writing

This past week I've been writing a type of documentation I've never written before: a systems view of a product, describing the path that information follows through many services and systems. The documentation follows the "Life of a [something]" narratives that show the whole life cycle of an information flow. (I wrote about the importance of this type of content in my previous post, ['Putting together things': Articulating a thesis about the effects of hyper-specialization on documentation](/trends/2022-09-18-exploiting-the-systems-view-tech-writers.html).) My draft (an internal-only doc) is currently about 6,500 words and traces the path information takes when people make a directions request with Google Maps -- all the backend systems and processes that the request travels through before that magical route appears on your phone. 

My goal in writing this was to show how all these systems and services work together toward a specific result, thus helping people across the organization understand the larger picture, pieces involved, and how their work fits into a larger product system and flow.

It's been an interesting writing experience, and I want to jot down a few thoughts about it. I'm not finished with the documentation and probably won't be for another couple of weeks.

## An endless universe of information at every point in time

This horizontal type of writing has been challenging in part because of scope. At every point along the way, there's a universe of information within each system and how it operates. I've literally mentioned about 20 different services/systems/frameworks/servers in this journey, and each one of them could be its own reference manual. Each level of the stack (frontend, middle tier, backend) has its own depths of complexity that I find humbling.

Confronting this complexity is a bit mind-blowing. How does all this happen within the blink of an eye? That little request for directions seems to trigger a workflow that involves an orchestra of services, algorithms, and APIs firing in perfect harmony and coordination, moving at lightning speed and completing in less than a second. It reminds me a bit of what Kevin Kelly describes in *What Technology Wants*. In a section describing various trajectories of technology, Kelly says one trajectory technology takes is beauty. He quotes from Joan Didion's writing about the Hoover dam in her anthology, *The White Album*, in which she "felt the heart of a dynamo." Joan writes:

> . . . Once when I revisited the dam I walked through it with a man from the Bureau of Reclamation. We saw almost no one. Cranes moved above us as if under their own volition. Generators roared. Transformers hummed. The gratings on which we stood vibrated. We watched a hundred-ton steel shaft plunging down to that place where the water was. And finally we got down to that place where the water was, where the water sucked out of Lake Mead roared through thirty-foot penstocks and then into thirteen-foot penstocks and finally into the turbines themselves. "Touch it," the Reclamation man said, and I did, and for a long time I just stood there with my hands on the turbine. It was a peculiar moment, but so explicit as to suggest nothing beyond itself (321)

If you've ever visited a dam, beholding its sheer size and scope puts the mind into a state of awe and wonder. It's not too different from gazing out into an endless ocean, its waves continually rolling ashore. Or looking at a river with slow-moving but strong current, winding its way through the landscape with unrelenting force. But in this case, the experience is with the machine performing this same incomprehensible feat. I often feel mesmerized when I'm close to a train as it goes by, such as when I'm on a bike and am close to the rails so that I can see all the detail of the giant steel wheels rolling smoothly yet forcibly along the track, moving the train along with so much force that it seems unstoppable. 

Documenting this requests query was like that, only a bit different. To see that there are hundreds of people across fifty or more teams all working on some aspect of this product, with an endless complexity of services and frameworks handling every detail of the experience, it was overwhelming. It's the same language-defying experience of beauty and awe -- like, oh god, this extraordinary machine, feeling the pulse of the heart of technology itself, something so incredibly complex but all working together harmoniously -- that I felt. I'd compare it to the picoseconds of the Big Bang, where so much happens within that first second of the universe that each microsecond of time holds within it book after book of detail.

For Kelly, the Internet itself is the "evocative object," as pyschologists put it, that sets of a state of reflection about the beauty of the machine. Different objects (a stethoscope for a doctor, a pen for a writer, a radio for a dispatcher) can "serve as a springboard for identity or for reflection and thinking,"  according to MIT sociologist Sherry Turkle (322, qtd. in Kelly). For Kelly, that evocative technology that transports him into a sense of beholding the beautiful is the Internet itself. Kelly writes: 

> I am no longer embarrassed to admit that I love the internet. Or maybe it's the web. Whatever you want to call the place we go to while we are online, I think it is beautiful. People love places and will die to defend a place they love, as our sad history of wars proves. Our first encounters with the internet/web portrayed it as a very widely distributed electronic dynamo—a thing one plugs into—and that it is. But the internet as it has matured is closer to the technological equivalent of a place. An uncharted, almost feral territory where you can genuinely get lost. At times I've entered the web just to get lost. In that lovely surrender, the web swallows my certitude and delivers the unknown. Despite the purposeful design of its human creators, the web is a wilderness. Its boundaries are unknown, unknowable, its mysteries uncountable. The bramble of intertwined ideas, links, documents, and
images creates an otherness as thick as a jungle. The web smells like life. It knows so much. It has insinuated its tendrils of connection into everything, everywhere. The net is now vastly wider than I am, wider than I can imagine; in this way, while I am in it, it makes me bigger, too. I
feel amputated when I am away from it.
> 
> I find myself indebted to the net for its provisions. It is a steadfast benefactor, always there. I caress it with my fidgety fingers; it yields to
my desires, like a lover. Secret knowledge? Here. Predictions of what is to come? Here. Maps to hidden places? Here. Rarely does it fail to please,
and more marvelous, it seems to be getting better every day. I want to remain submerged in its bottomless abundance. To stay. To be wrapped in its dreamy embrace. Surrendering to the web is like going on an aboriginal walkabout. The comforting illogic of dreams reigns. In dream time you jump from one page, one thought, to another. First on the screen you are in a cemetery, looking at an automobile carved out of solid rock; the next moment, there's a man in front of a blackboard writing the news in chalk, then you are in jail with a crying baby, then a woman in a veil gives a long speech about the virtues of confession, then tall buildings in a city blow their tops off in a thousand pieces in slow motion. (322-323)

I quote at length here because, as I said, the experience of beauty for the machine is somewhat beyond langauge to fully capture and articulate. Always before, as a technical writer, I had focused on some smaller part of the machine and documented it, without fully understanding the complexity of the whole. It was only while writing this Life of a [something] narrative that I moved beyond that reductionalist point of view to glimpse into the insondable depths of something much more intelligent, beautiful, and mystical than I'd ever seen.

## Finding a format

Putting aside that sense of reverence about giant machines, there's a question of format for such a document. My approach was to follow a frontstage-backstage approach. To use an analogy, consider a stage where actors are performing on the stage, while a lot of other activity is going on behind the curtain. The stage is the UX, and behind the curtain is the technical infrastructure that's supporting everything happening on stage. My approach has been to briefly describe what happens on stage (which most users are already familiar with), and then to expand in detail the technical stuff going on to support those activities. Then jump back on stage to describe another scene, then expand again with backstage events. Back and forth, back and forth. The user does X, and now all this stuff happens on the backend that no one sees.

This works fairly well, except that at most points, there's a lot more going on behind the curtain than what happens on stage. Sometimes the on-stage activity is simply, okay, now the user clicks a button to initiate the request, then there are 2,500 words of technical how-to describing what's going on to get the response to that request. 

In some places, I wasn't sure what the technical details were (for example, how does the voice guidance work?), and I ended up searching and poking around the endless corporate intranet for information. It can be exhausting to jump from site to site, finding fragments of information and then piecing together into some kind of coherent narrative. 

Overall, I tried to describe just enough information so that people are aware of what services are involved, what those services do, which teams work on them, and so on, without getting into too many details. If I get lost in the details, I'll lose sight of the larger picture and workflow.

In some ways, horizontal writing is easier because I don't have to go in depth with each service, and I can often steal descriptions and explanations from already-written internal documentation. For example, I might say, "And now the ACME service calls the Gizmo service. Gizmo's job is to "[copy/paste description from Gizmo's docs]...." I describe enough detail to give users a sense of what something does, what's involved there, and then keep moving. In the simplest approach, I'm merely copying snippets from 20 different sites and weaving them together, more or less following the workflow already outlined in a workflow diagram that exists.

This approach varies from the standard type of documentation I've written as a tech writer. The standard documentation approach is to be thorough and detailed, to work with a specific product team to document all the parameters of an API, each field in the response, the exact workflow for using each endpoint, etc. Not so with horizontal writing. I barely have time to copy/paste a description of the service before moving on to the next link in the chain.

In looking for writing models for this type of documentation, I came across the C4 model, which is an approach for describing system architecture. The basic idea is to 
layer the detail, so that users can zoom in at any level and get more detail as desired. You start with a high-level of abstraction and allow the reader to zoom-in at any point for more detail. However, following this approach would have required me to understand and articulate that more granular detail, which would have increased the documentation from 5,000 words to 50,000 or more, and likewise the timeline.

Instead, I implemented two easy techniques. First, I created a tl;dr summary at the top that summarizes the whole workflow (the 6,500 word explanation) into two paragraphs. This brief summary serves two purposes. Personally, I don't really find that brief summary interesting or useful, but high-level summaries at the top of pages is a best practice. I also included a list of services covered so people could see at a glance the documentation's scope and whether a service they were interested in was covered.

Second, at the bottom of each section, I included a couple of links for more info (including team contacts). This allows people to jump into the team's internal documentation for more information. Whether their documentation is any good is beyond my concern because trying to fine tune too many details would be like attempting to boil the ocean.

To generate this first draft, I focused exclusively on this project for the entire week, with only minor interruptions for meetings or small doc bug fixes. I kept track of the focus sessions I completed for each day, and on average, I completed about 2.3 ninety-minute focus sessions a day. That's about 3.5 hours of heads-down writing a day, where I tried to reduce all distractions and focus on writing in an immersive way.

Sadly, I've found these focus sessions to be a bit draining, and they've taken some of the fun out of writing. I'm actually not sure if it's the best approach, despite my enthusiasm in the previous post where I [described techniques from Cal Newport's *Deep Work*](/blog/newport-deep-work/). Mixing in a bit more of a distraction into writing might lighten up the task so that it's not so taxing. Then again, I'm amazed at the ability to basically knock out a first draft so quickly, and it feels good to have written it rather than doddle and flitter about online.

After I finished a first draft, I reached out to about 8 different groups to ask them to review various sections. The requests for review were surprisingly well received, as people were intrigued with the document. At least a dozen or more people whom I'd never met made a lot of comments on the document. This surprised me because I'm used to twisting reviewers' arms to get them to review material by setting up meetings so they can do the reviews during the meeting (a technique I described in the section "3. Stop expecting reviewers to read docs on their own" in my post [Some advice if you're just starting out your technical writing career](/blog/career-advice-just-starting-out.html)).

I think reviewers had an easier time because at such a high level, it was easy for teams to evaluate the content. Reviewing highly technical material that requires more specialized knowledge is a far more demanding task. Reviewers often pointed me to links with much more info, but were I to articulate their more granular workflows and systems at that level of detail, the document would lose the high-level focus (shifting to the leaves instead of the forest).

Writing this document, I also thought a lot about the audience. Who will actually be excited to read this? It seemed like a clear fit for onboarding material, for engineers and others just joining the organization and trying to get a sense of the whole. After someone has been working for a few years in a place, they come to understand what information is essential to know versus information they can ignore.

My approach here was specific to this "Life of a _______" genre, and I have other general formats for product overviews. I did find another model that championed a particular approach for writing this content called [C4 model](https://c4model.com/). This writing model is specific to describing software architecture. Basically, this model recommends using more general boxes and arrows to describe the system architecture, and then to layer things at several levels. The first level is fairly general, but users can zoom into to increasing levels of detail at each level. In other words, follow a model of progressive information disclosure.

The C4 model authors explain:

> How do you diagram large and complex software systems?
> 
> Even with a relatively small software system, it's tempting to try and include the entire story on a single diagram. For example, if you have a web application, it seems logical to create a single component diagram that shows all of the components that make up that web application. Unless your software system really is that small, you're likely to run out of room on the diagram canvas or find it difficult to discover a layout that isn't cluttered by a myriad of overlapping lines. Using a larger diagram canvas can sometimes help, but large diagrams are usually hard to interpret and comprehend because the cognitive load is too high. And if nobody understands the diagram, nobody is going to look at it.
>
> Instead, don't be afraid to split that single complex diagram into a larger number of simpler diagrams, each with a specific focus around a business area, functional area, functional grouping, bounded context, use case, user interaction, feature set, etc. The key is to ensure that each of the separate diagrams tells a different part of the same overall story, at the same level of abstraction.

As an analogy, consider your perspective of a city from multiple levels: from the sky, from buildings, from the sidewalk, and from the ground. Allow the user to drill into the level they're interested in.

[images]

Describing a software system "from different levels of abstraction" seems like a good approach. However, I didn't have the time or bandwidth to present the detail at more zoomed-in levels.

The C4 model also prompts another question: is this genre part of the writing world of software architects? Was I doing software architecture writing? This is what one commenter said on my previous post. Rafał Dylewski said,

> Capturing and managing the big picture usually belongs to solution architects, heads of development, solution designers, system architects, or enterprise architects. That would mean that technical writers will become more relevant to these audiences instead specialized developers. On the other hand, these architects and designers usually are capable of managing their architectural docs well, modeling systems in advanced tools, such as Enterprise Architect, Visual Paradigm, etc. So the question is: do they need help? ([link](https://idratherbewriting.com/trends/2022-09-18-exploiting-the-systems-view-tech-writers.html#commento))

My impression is that software architecture design is much more diagram-based, without explaining many nuances of each service. 


Like I mentioned at the start, I'm only at the initial draft stage. I still have the following to do:

- Create a high-level diagram showing the workflow
- Review the content within my own team
- Reach out to about a dozen different teams asking them to review the content
- Include more visuals to break up the content
- Publish the content on an internal site
- Market the content internally
- Gather and measure feedback about the documentation

I anticipate this will take another month. I'll follow up to describe the outcome.

============




See also Diagramming vs modelling for an alternative approach.https://c4model.com/

The C4 model vs UML, ArchiMate and SysML?
Although existing notations such as UML, ArchiMate and SysML already exist, many software development teams don't seem to use them. Often this is because teams don't know these notations well enough, perceive them to be too complicated, think they are not compatible with agile approaches or don't have the required tooling.


The C4 model is just a way to describe a software system, from different levels of abstraction,

One of the frequently asked questions (above) is about diagramming large and complex software systems. Once you start to have more than ~20 elements (plus the relationships between them) on a diagram, the resulting diagram starts to become cluttered very quickly. 
One approach to dealing with this is to not show all of the components on a single diagram, and instead create multiple diagrams, one per "slice" through the container (image 2, below). This approach can certainly help, but it's worth asking whether the resulting diagrams are useful. Are you going to use them and, if so, what are you going to use them for? Although the System Context and Container diagrams are very useful, Component diagrams for large software systems often have less value because they are harder to keep up to date, and you might find that very few people look at them anyway, especially if they are not included in documentation or presentations.

sounds good in theory but in practice you realize how complex this. understanding a technical system and all the parts, how they fit and work together, etc., is an enormous undertaking. unclear who the audience is for this. is it something writes can even do? 

another question is what scale would you describe? for example, the Gizmo API handles X versus 50 + pages of details about this API.

maybe writers have to go even higher up to connect the parts at a much higher level? 

c4model.com zooming in and out.

what approach to describing something so massive? 

who will maintain such a thing?

what use case are you solving for? onboarding? when users have to work across teams? i'm not sure this is the right approach.
