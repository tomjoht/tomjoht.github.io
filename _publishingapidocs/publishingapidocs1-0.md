---
title: "1.0 Course: Publishing API docs"
permalink: /publishingapidocs/
course: "Publishing API documentation"
weight: 1.0
---

outline of talk

central question: how do you publish? why is this question different from any other help material? what makes API doc different and unique?

survey the landscape, note the variety

limit to 20 slides

you need some kind of story arc to things
bootstrap and foundation
using jekyll
how to get engineers 
how do you know if it's good if the code is too complex for you to understand
how to test what you write
should you use markdown? why does markdown fit a dev doc shop?
can you use a hat like flare?
copy and paste snippets. gists.
how will devs consume it? pull from your UCD presentation.
hello world tutorials.
video
glossary
online vs. pdf
how to know what to assume about your audience's level of knowledge.

how to get engineers to review the content
with static site gens, easy to embed code for demos. 

- api endpoint doc has a specific structure to it
- story of your attempt to unite doc generated content into regular doc
- auto-gen solutions will create isolated outputs not tied in with user guide

- but engineers write shitty doc, so why go out of the way to allow them to write?- who is doing the writing? if engineers, look to use source. example = ria macnamara at google
                                                                                  - sometimes the content is really complicated, so it's better for them to write it

- building templates to cycle through standard sections

- some big tools: readme.io, readthedocs.com, mulesoft

- avoid doc drift. if there are checks inside the code requiring doc for each param, that's good. build custom script to pull it into doc.

- ref docs and user guides not easy to mush together

- generate from source -- pull in real json examples from a test system. this is how we did it at badgeville.

- integrating into source code workflow

- offering try it out within api -- this can be dangerous. plus people learning may not have actual data. kind of a novelty.

- with rest apis, make sure you cover each of the core sections

- there are many different ways to publish docs

- some design patterns: three column, infinite pages, etc.

- some design non-patterns: pdf, dita, 

- how do you authenticate your docs to the right users?







## The focus here is on publishing

This API course has a specific focus: publishing strategies for API documentation. If you're new to APIs, first see my course <a href="{{ "/restapicourse" | prepend: site.baseurl }}">REST API Course</a>. 

## API docs have incredible variety

Nothing has so much variety in tech docs as API documentation. Almost no API doc set is the same. Whereas many tech comm outputs are recognizable to a specific tool, such as a Madcap Flare output, a Framemaker output, or an Author-it output, it's hard to attribute an API doc set to a particular tool.

If dividing API docs into categories, there are probably 3 main categories of publishing:

* Document generators from source code (platform APIs)
* Custom websites
* Spec-driven approaches (RAML, Swagger)
* All-in-one API platforms (Apigee, Mulesoft)

## My approach is to identify key trends and patterns

My approach in this presentation is to identify some key trends and patterns with API documentation publishing. Rather than focusing on specific tools, I want to look at common themes or techniques in outputs. You can do similar things with a lot of different tools.

## 50 APIs

As a sample size, I gathered 50 of the top APIs published on the web. In this presentation, I'm focusing on web API documentation, mainly REST APIs, rather than also looking at document generator solutions (such as Javadoc or Doxygen).

{% include restapicourse_next.html %}





