---
title: "Markdown or reStructuredText or DITA? Choosing the right format for tech docs"
categories:
- jekyll
- dita
- technical-writing
keywords: 
description: "In the deliberation about authoring formats -- whether to use Markdown or reStructuredText or DITA (or something else) -- one detail that is frequently overlooked is the importance of the accompanying tool or platform that uses that format. You almost never use these authoring formats alone but rather with a tool that stores, processes, and renders the source into an output. The tool you use with the authoring format is almost as important as the authoring format itself."
bitlink: http://bit.ly/techdocformats
---

## The Debate About Markdown

There's a lively comment thread in the Linkedin "DITA Awareness" Group about the place of Markdown. The thread begins: 

> I was told yesterday that "everyone" creates their documentation in Markdown now. I was asked why I'm still creating content using XML. (I use DITA XML.) Informal polling time, methinks. How many of you create CUSTOMER-FACING content using Markdown? ([Markdown for creating technical content? (versus DITA)](https://www.linkedin.com/groups/162465/162465-6194890405864099844))

The debate about whether to treat Markdown as a first-class citizen in tech comm authoring workflows is a debate that cycles periodically, but this time the author seems to feel that *everyone* now is using Markdown, which suggests new trends in Markdown's popularity among tech comm crowds.

Common arguments are exchanged on both sides. One side says, Markdown is too primitive to handle my robust authoring needs. Another side responds, DITA is too cumbersome and restrictive to be worth its time, etc.

Let's put aside that controversy for now. Among the lightweight markup groups, there are also competing paradigms. Eric Holscher, the founder of [Read the Docs](https://readthedocs.org/), says [Please don't write in Markdown](http://ericholscher.com/blog/2016/oct/6/authoring-documentation-with-semantic-meaning/) and provides a lengthy explanation about the semantic benefits of [reStructuredText](http://docutils.sourceforge.net/rst.html). Eric's main objection to Markdown is that there are so many variants of Markdown, there's no consistency to process it. He writes:

> ... every tool implements a different flavor. Even tools that do similar things with the language use different syntax for it!
> 
> Without standard ways of denoting different types of content, such as warnings or links or other blocks, you can't do much in processing Markdown. ([Why You Shouldn’t Use “Markdown” for Documentation](http://ericholscher.com/blog/2016/mar/15/dont-use-markdown-for-technical-docs/))
 
On the other hand, other people criticize reStructuredText for being too complicated. Victor Zverovich writes:

> The history of computer science is littered with somebody inventing something technically correct but too complex, and then somebody else inventing something simpler that throws half the assumptions out the window (and everybody mocks it for being "worse"), and then the latter wins because it's simpler, and we realize in hindsight that all those assumptions weren't worth the cost of the complexity."  ([reStructuredText vs Markdown for documentation](http://zverovich.net/2016/06/16/rst-vs-markdown.html))

DITA authors have more semantic richness with XML than reStructuredText, but they seem to be on the defensive these days. DITA is not only complex, the XML architecture can also be awkward and restrictive to some (for example, when you have a topic with *two* tasks or a third-level subheading). Realizing the popularity of Markdown, the makers of OxgenXML developed support for Markdown in [Oxygen XML Editor 18.1](https://oxygenxml.com/demo/Markdown.html). I haven't tried it yet, but if you can write content in Markdown *and* plug into larger content management systems, that would provide a significant advantage.

Sarah Maddox also recently shared tips on getting started with Markdown. Sarah's opinion about Markdown is mixed. She writes:

> In my day job, I write docs in both HTML and Markdown. I prefer HTML for comprehensive technical documentation. Markdown is good for very simple documents, but the syntax becomes clumsy for more complex things like tables, anchors, and even images. On the other hand, there are excellent benefits to using Markdown for quick collaboration on a document. ([How to get started with Markdown and where to try it out](https://ffeathers.wordpress.com/2016/09/24/how-to-get-started-with-markdown-and-where-to-try-it-out/))

There's even a new article on The Content Wrangler about the simplicity of Markdown, where Erik Martin argues that the embrace of Markdown is a "backlash against digital precociousness." Erik writes, 

> ... as many electronic tools become more complex, others survive and thrive in a state of simplistic bliss—appealing to modern consumers with their retro charm and unfussy features. ([Markdown: Markup That's Downright Simple](http://thecontentwrangler.com/2016/10/27/markdown-markup-thats-downright-simple/))

It seems everyone is talking about Markdown these days. Where do you stand in this debate? Are you a proponent of Markdown, reStructuredText, DITA, or something else? 

## My Advice

Here's my advice on the subject. Remember that the format you write in is only part of the authoring process. For example, you can write reStructuredText and use Sphinx or Github to render it. You can write DITA and use OxygenXML, a robust CMS like IXIASOFT, or even Notepad and the command line to render it. You can write Markdown and use Jekyll, Readme.com, Gitbook, Middleman, or countless other [static site generators](http://www.staticgen.com/) to render it. 

The systems that store, process, and render the content are perhaps more important than the format of the content you're writing in. Mark Baker once said he felt the main reason for moving to XML is not so much for the information typing architecture, but for the ability to use the systems that manage your content.

In short, it's not a matter of simply deciding which format you want to use, but rather which **format and tool**. There are numerous tools available for each authoring format, especially for Markdown and DITA. I'll identify some common pairings of authoring formats with tools and give some general advice about which to use and when.

### reStructuredText and Sphinx:

Use this combination if you want the following:

* You want a format that's a little more semantic than Markdown but still a space-sensitive (human readable) plain text.
* You need an output that includes search.
* You're working in a developer environment with code samples and need syntax highlighting or want to pull in code samples stored in another directory. (If you're working in a Python environment, Sphinx is the default tool for docs.)
* You want to take advantage of the Read the Docs hosting (either [open source](https://readthedocs.org) or [commercial](https://readthedocs.com/)), so that commits to your repository automatically build your Sphinx site.
* You want to generate your content into PDF, ebook, and JSON formats.
* You want something open source and free.
* You want a more robust way to manage links.

### DITA and OxygenXML

Use this combination if you want the following:

* You need to deliver a lot of PDFs for your content (in addition to web outputs).
* You have a need for a variety of conditional builds for your content -- for example, an output for audience #1, audience #2, audience #3, and so on, each with different values used in the output. 
* You want to potentially step up to a larger, more robust content management system at a future time to manage your content. For example, when you have a dozen authors and re-use/share your topics across projects, you might want to step up to easyDITA.
* You're translating your content, and your translation vendors prefer an XML format (especially because you're re-using chunks and need to translate those chunks independent of where they're inserted).
* You have a lot of authors and want to enforce a consistent pattern and style for your content.

### kramdown Markdown and Jekyll

Use this combination if you want the following:

* You want a simple authoring format that engineers are likely already familiar with or can easily learn in a few minutes.
* You want to publish on Github Pages so that by merely committing to a repository, your Jekyll site automatically builds the output.
* You want to use [Liquid](https://help.shopify.com/themes/liquid/basics) (a scripting language) for things like variables, filters, loops, conditions, and other advanced logic.
* You want a simple way to build a theme to match your company's branding. 
* You're working in a developer environment with a lot of code samples and need good syntax highlighting.
* PDF output and search are not essential requirements. For example, maybe web content is all that's important, and you'd prefer to use Google Custom Search or another search provider, such as [Algolia](https://www.algolia.com/) or [Swiftype](https://swiftype.com/).
* You want flexibility to define your own templates for notes, images, audio clips, or other components. You also want an easy way to brand your theme to match your company site.
* Your site includes a blog.

## Conclusion

There's a lot of crossover with these three authoring formats and tools. You can often make one tool do something that I haven't listed here. For example, you could use DITA and OxygenXML in a developer environment and include code samples, though I think the syntax highlighting will require more setup. You can use Markdown and Jekyll to produce PDFs through [Prince](https://www.princexml.com/) (which creates PDFs from web pages and styles them using CSS), but it will require more setup. You could use reStructured Text and Sphinx for translation projects, and Sphinx has some extensions specifically for this, but it assumes your translation vendor works with Sphinx's formats.

Overall, there's too much talk about the authoring formats independent of the tools that process the formats. I know that we want to avoid vendor lock-in to a tool and allow content to be tool agnostic. That is what's especially great about DITA -- because it's a standard, every tool can process it pretty much the same way. Same with Sphinx -- the more semantic nature of the markup allows tool vendors to standardize in the way they process it. With kramdown Markdown and Jekyll, however, things are a lot less standard (but also more flexible). But when deciding on authoring formats, think carefully about the tools that can work with that format, because it makes a huge difference in the authoring experience.

Overall, I've used kramdown Markdown + Jekyll, DITA + OxygenXML, and I buried my head in reStructuredText + Sphinx for a couple of days to evaluate it. All of these systems are solid choices, and inexpensive. With each approach, you can easily plug into version control frameworks like git, and you can work in text file formats. 

There are additional formats and tools I haven't explored, such as [XHTML and Flare](http://www.madcapsoftware.com/), which now has a cloud-based content management solution called [MadCap Central](http://www.madcapsoftware.com/products/central/), or [Docbook and Paligo](https://idratherbewriting.com/2016/08/01/paligo-the-story-xml-ccms-in-the-cloud/), or [Asciidoc](http://www.methods.co.nz/asciidoc/) and [Asciidoctor](http://asciidoctor.org/). The system you choose really depends on the requirements you have and the features that are most important to you.

In my environment, we want to empower authors outside of our team, so we need a drop-dead simple way for subject matter experts (who are often developers or product managers) to author and manage their own content. At the same time, we want more robust features and techniques to be available for technical writers. We're also writing for developers and have a lot of code samples. In this scenario, both the Markdown + Jekyll and reStructuredText + Sphinx solutions make sense, but the Markdown + Jekyll solution is currently winning out because everyone seems to already understand Markdown and prefer it. It also helps that I'm already extremely familiar with Jekyll and can easily create themes containing the features I need.

However, simplicity has its tradeoffs. Linking in reStructuredText and Sphinx is far superior. For example, you can link to sections within a page, or to page slugs, and the title automatically gets pulled in. You can even link to Python classes and the class info will automatically be available. However, this advantage with links didn't outweigh simplicity and flexibility even with the more limited Markdown (at least not at the moment).










