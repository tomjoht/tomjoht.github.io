---
title: "Markdown or reStructured Text or DITA?"
categories:
- jekyll
keywords: 
summary: ""
thumb: 
published: false
---

There's a lively comment thread in the Linkedin "DITA Awareness" Group about the place of Markdown. The thread begins: 

> I was told yesterday that "everyone" creates their documentation in Markdown now. I was asked why I'm still creating content using XML. (I use DITA XML.) Informal polling time, methinks. How many of you create CUSTOMER-FACING content using Markdown?

The debate about whether to treat Markdown as a first-class citizen in tech comm authoring workflows is a debate that cycles periodically, but this time the author seems to feel that *everyone* now is using Markdown, which is more slanted than before. 

Common arguments are exchanged on both sides. One person says, Markdown is too primitive to handle my robust authoring needs. Another responds, DITA is too cumbersome and restrictive and inflexible to be worth its time.

Let's put aside that controversy for now. Among the Markdown groups, there are also competing paradigms. Eric Holscher, the founder of Read the Docs, says [Please don't write in Markdown](http://ericholscher.com/blog/2016/oct/6/authoring-documentation-with-semantic-meaning/) and provides a lengthy explanation about the semantic benefits of [reStructuredText](http://docutils.sourceforge.net/rst.html). Eric's [main objection](http://ericholscher.com/blog/2016/mar/15/dont-use-markdown-for-technical-docs/) to Markdown is that there are so many variants of Markdown, there's no consistency to it. 

> ... every tool implements a different flavor. Even tools that do similar things with the language use different syntax for it!

Without standard ways of denoting different types of content, such as warnings or links or other blocks, you can't do much in processing Markdown.

On the other hand, other people criticize rST for being too complicated. Victor Zverovich writes:

> 	The history of computer science is littered with somebody inventing something technically correct but too complex, and then somebody else inventing something simpler that throws half the assumptions out the window (and everybody mocks it for being "worse"), and then the latter wins because it's simpler, and we realize in hindsight that all those assumptions weren't worth the cost of the complexity."  ([reStructuredText vs Markdown for documentation](http://zverovich.net/2016/06/16/rst-vs-markdown.html))

DITA XML authors have more semantic richness than rST, but they seem to be on the defensive these days. DITA is not only complex, the element architecture can also be awkward and limiting to some (for example, when you have a topic with *two* tasks or a third-level subheading).

Trying to keep up with trends toward lightweight Markup languages, the makers of OxgenXML now support Markdown in [Oxygen XML Editor 18.1](https://oxygenxml.com/demo/Markdown.html). 

Sarah Maddox also shares tips on [How to get started with Markdown and where to try it out](https://ffeathers.wordpress.com/2016/09/24/how-to-get-started-with-markdown-and-where-to-try-it-out/). Sarah's opinion about Markdown is mixed:

> In my day job, I write docs in both HTML and Markdown. I prefer HTML for comprehensive technical documentation. Markdown is good for very simple documents, but the syntax becomes clumsy for more complex things like tables, anchors, and even images. On the other hand, there are excellent benefits to using Markdown for quick collaboration on a document.

Where do you stand in this debate? Are you a proponent of Markdown, reStructuredText, DITA, or something else? 



