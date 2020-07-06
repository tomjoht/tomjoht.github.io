---
title: "Creative maps to depict workflows through information spaces"
categories:
- visual-communication
keywords:
description: ""
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/userprocesscomplexthumb.png
jtype: notes_visualcommunication
published: false
---

Last weekend I toured Stanford's Cantor museum. Since I had user maps on my mind, I was intrigued by the museum map:

<figure><a href="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/stanfordmap.jpg"><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/standfordmapsmall.jpg" | prepend: site.baseurl }}"/></a><figcaption>This museum map presents me with a lot of different choices.</figcaption></figure>

My goal in visiting the museum was to see interesting, inspiring art. Because I had a goal, I also needed to follow a process to achieve that goal.

But in contrast to my previous process maps, in this case the process is much looser and less linear.

First of all, there isn't a directional arrow leading me through the content. I may not want to see Ancient Americas exhibit. Maybe I just want to see the Contemporary Art. When there isn't a set path through the content, workflow arrows don't make sense.

This map is the equivalent of a table of contents in a help file -- it tells me what's contained in each section, but not the order in which I should proceed through the sections.

What if the museum could issue several workflow maps based on different user goals? For example, suppose I want to browse ancient and contemporary *American* art? The curator could draw appropriate workflow arrows through exhibits containing these items. Or suppose I want to compare ancient and modern sculpture art? Or maybe I am only interested in abstract, boundary-pushing art?

With more specific goals, it becomes possible to guide users with workflow arrows through the art exhibits. But since there are so many different paths through the content, drawing the workflows becomes too onerous.

How feasible is it for Stanford to create a dozen different maps based on different goals and interests for museum guests? Not feasible at all. More likely you would ask the museum information desk which exhibits meet your goals, and the information clerk would circle the correct areas on the map.

In the same way, the general organization of help content tends to be general, like the Stanford map. There isntIt's only when you have a specific, concrete process that a more directed map tends to make sense.

There are drawbacks to embedding maps on topics. If your content has overlap between processes, the embedded maps will pose challenges. For example, suppose there are two workflows that both require the same step? Which map do you show? Do you link to both maps? How many maps can you embed before you totally confuse readers? For more general topics like the introduction, FAQ, and troubleshooting, which often cover the system as a whole instead of being specific to a single process, it won't make sense to embed a map there.

I admit that, despite my interest with maps lately, the Stanford map proved to be somewhat useless. I'm sure I could have used it to orient myself, but I didn't know what I wanted to see, so it didn't matter which way I walked in the museum, or which exhibit I explored first or last. I didn't know what to expect, so I welcomed everything. Mostly I followed my 5-year-old around, because I didn't want to lose her and wanted her to maintain her own attention through self-directed exploration. That is also a behavior users often have in help material.

You could get more creative with user maps. For example, see [this site](http://www.clairetnet.com/serre-a-voeux/index.php?lang=en), as mentioned in this post on [rethinking navigation](http://sixrevisions.com/user-interface/is-it-time-to-rethink-website-navigation/).

However, this more creative approach is usually overkill for documentation and requires more web design skill and resources than most of us have.


https://thevirtualleader.wordpress.com/tag/process-mapping/


- still processes, but non-linearity
- the stanford map
- sample swimlane map: https://thevirtualleader.wordpress.com/tag/process-mapping/
- uml diagrams and workflow squares
- user maps are a UX tool used to better understand the customer journey
- uml diagrams are a syntax used to model workflow
- topic maps are clusters of topics focused on a specific theme
- mark baker's affinity maps
- focus on processes that are somewhat complex and broken up
- creative visual maps for information spaces -- relied on flash, hard to scan, nonstandard
- lot of attention spent on vertical versus horizontal bars
- no vertical nav in bootstrap
- the megamenu
- instead of single topic workflows, how about groups. each square is a modal that pops up.

- multiple paths through similar content
more research:

- user maps are a UX tool used to better understand the customer journey
- uml diagrams are a syntax used to model workflow
- topic maps are clusters of topics focused on a specific theme

Phase 1 is Planning, Scoping, and Definition, where project parameters are explored and defined. Phase 2, Exploration, Synthesis, and Design Implications, is characterized by immersive research and design ethnography, leading to implications for design. Phase 3 is Concept Generation and Early Prototype Iteration, involving participatory and generative design activities. Phase 4 is Evaluation, Refinement, and Production, based on iterative testing and feedback. Phase 5 is Launch and Monitor, the quality assurance testing of design to ensure readiness for market and public use, and ongoing review and analysis to course-correct when necessary. The table of contents displays an overview of methods in this context.

from Universal Methods of Design
by Bella Martin, Bruce Hanington
Publisher: Rockport Publishers
Released: February 2012

what also comes to mind are mark baker's affinity maps, where you have affinity lines. but those aren't very helpful either.

this map is more like a physical description of an actual system. it is a metphor in carnate.

<figure><a href="https://idratherbewriting.com"><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/designmap.png" | prepend: site.baseurl }}"/></a><figcaption>your caption</figcaption></figure>

https://thevirtualleader.wordpress.com/tag/process-mapping/

the toc is not a map. it's a list. people hate docs b/c there is no  map.
workflow process diagrams.

http://hcil2.cs.umd.edu/trs/97-10/97-10.html "It is difficult for users to navigate large document spaces, since they often experience a disorientation problem. Hypertext readers must remember their location in the network, make decisions about where to go next, and keep track of pages previously visited. "

if you have a clear process with separate topics, then the workflow process diagram works well.
the problem with these more creative visual maps of information spaces is that they're hard to scan. that's what's nice about a toc -- you can quickly scan down for your list of topics, epxanding or collapsing a section.

the vertical navigation bar is an unusual and unique element in web design that doesn’t conform to anything in the real world outside of the web, and thus can be a hindrance to a site’s usability.https://www.smashingmagazine.com/2010/01/the-case-against-vertical-navigation/ (this article argues for horizontal nav b/c it places more focus on content, but there are exceptions for info heavy sites and pages with long titles)

example of a flash-based site with creative navigataion: http://www.clairetnet.com/serre-a-voeux/index.php?lang=en courtesy of http://sixrevisions.com/user-interface/is-it-time-to-rethink-website-navigation/

bootstrap has only horizontal nav, no vertical nav bar. where does that leave doc systems? why hasn't more attention been placed on doc systems?

interesting doc organization: http://docs.sencha.com/extjs/6.0/

the megamenu is also becoming a trend. there's a good example here. http://sixrevisions.com/user-interface/is-it-time-to-rethink-website-navigation/

mini-tabs horizontal: http://vault.simplebits.com/bits/minitabs.html#

i like the pattern of 5 across. you could click a square and a modal pops up. you could fit 3 tasks per square, making them more column like.

In a previous post, I wrote about [linear workflow maps for users](https://idratherbewriting.com/2016/05/30/building-a-workflow-user-map-with-css-and-js/). But not all tech doc (and actually very little tech doc) consists of straightforward linear steps like this.

Instead, workflows in user documentation are often non-linear, optional, branching, and depending on user goals. There isn't always one way through the documentation, but rather a lot of different routes users can take depending on what they want to learn about or do.

Today I toured the Stanford Museum with my family and friends. Here's the map you receive upon entering the museum:

<figure><a href="https://idratherbewriting.com"><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/standfordmap.JPG" | prepend: site.baseurl }}"/></a><figcaption>This map presents me with a lot of different choices.</figcaption></figure>

First of all, there isn't a directional arrow leading me through the content. I may not want to see Ancient Americas exhibit. Maybe I just want to see the Contemporary Art. When there isn't a set path through the content, workflow arrows don't make sense. This map is the equivalent of a table of contents in a help file -- it tells me what's contained in each section, but not the order in which I should proceed through the sections.

What if Stanford issues several other types of maps based on different user goals? For example, suppose I want to browse ancient and contemporary *American* art? The curator could draw appropriate workflow arrows through exhibits containing these items. Or suppose I want to compare ancient and modern sculpture art? Or maybe I am only interested in abstract, boundary-pushing art?

With these goals, it becomes possible to guide users with workflow arrows through the art exhibit.

This map proved to be somewhat useless. I'm sure I could have used it to orient myself, but I didn't know what I wanted to see, so it didn't matter which way I walked in the museum, or which exhibit I explored first or last. I didn't know what to expect, so I welcomed everything.

The map provides a legend, but I would have appreciated short descriptions of each exhibit, perhaps on the back.

What I like about the map is that it presents a non-linear workflow to the user. Most help is a mix of both linear and non-linear instructions. There are various groups of doc that might be helpful to know about. For example, when learning about a system, you're in an intro area. In this space, it would be good to read an overview, release notes, FAQ, and maybe a diagram workflow chart.

In other spaces, it might be helpful to look at how to contact support, resources, and troubleshooting.

Another space might have a sequence of tasks to implement.

Since it's not practical to create and distribute 5 different maps for different users, how about creating workflow arrows in different colors or patterns based on these various goals? This could be like the bike tour maps through San Francisco that tourists get when renting a bicycle. Some routes take you through the Wiggle, others take you across the Golden Gate Bridge and around to the ferry, others take you along the Fisherman's warf, and so on.

One map, many routes.

A good map will explain each route, allowing you to align your desires with the route you want to take.

More user documentation needs maps like this. In a very literal sense, users would highly benefit from well-drawn and placed maps within the documentation.

In contrast to paper maps, digital maps have a much easier time drawing multiple routes through the same map. You can likely create layers on top of a base diagram in Illustrator.
