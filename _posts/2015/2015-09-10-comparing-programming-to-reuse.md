---
title: Comparing object-oriented design to content reuse
categories:
- api-doc
keywords:
description: "In a presentation to the STC Suncoast chapter, Mark Lewis compares object-oriented design to content re-use. It's an apt comparison that helps illustrate the parallels between programming and single sourcing."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/oodesignthumb.png
---

Mark Lewis, author of [DITA Metrics 101](http://www.rockley.com/DITAMetrics101/AboutTheAuthor.html) and a long-time friend from the Suncoast STC chapter, sent me a link to a recording of a presentation he gave comparing object-oriented design to content re-use. You can listen to it [here](https://www.linkedin.com/pulse/alignment-understanding-objects-mark-lewis).

<a href="https://www.linkedin.com/pulse/alignment-understanding-objects-mark-lewis"><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/lewisood.png" | prepend: site.baseurl }}" alt="Mark Lewis on object-oriented design" /></a>

It's an interesting presentation to listen to. The basic idea is that when programmers create classes, they include attributes and methods for each class. "Objects" are derived from the classes (kind of like how all the different breeds of dogs are all derived from the general species of "dog"). Each object uses the attributes and methods from the class. While each object shares common characteristics with the class, the specific values for the attributes and methods in each object are often unique.



Being familiar with both Java and DITA, I can see the parallels that Mark is talking about. Mark himself is a former software programmer, so these concepts align with his programming background quite nicely. 

I make use of these concepts regularly in my help projects. I have a topic that has certain variables. When I generate different outputs (like generating objects from a class), a configuration file defines different values for each of the outputs. These values get inserted into the variables in each of the topics, making the topics unique for the output. It's content re-use 101, but it's fundamental to single sourcing methodology.

I think the comparisons between programming and content re-use are brilliant and worth listening to. The only thing I find odd is why so many developers seem to be allergic to XML formats like DITA that maximize re-use. When programmers write documentation, they don't seem to really get single sourcing nor do they frequently leverage much content re-use. But that may be because programmers (at least those I interact with) don't usually write much documentation. Overall, it's cool to see the parallels between single sourcing and object-oriented programming.
