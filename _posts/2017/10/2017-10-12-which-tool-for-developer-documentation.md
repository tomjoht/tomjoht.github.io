---
title: "Question: Which software tools should I use if my goal is to write API docs?"
categories:
- api-doc
- beginners
keywords:
description: "Finding the right software tools to write API docs is a constant and difficult challenge given the wide variety of tooling and environments in the developer doc space. However, if your goal is to break into developer documentation (rather than specifically reworking your company's documentation tools), you would be better off deepening your technical background with programming languages rather than focusing on doc tools."
bitlink: http://bit.ly/whichtoolsapidocs
---

A reader asks:

> I'm an aspiring technical writer and I'm taking courses for a Masters in Tech Comm. What software tools do you think a freelance writer should own to be successful.  Should I own MadCap and Framemaker? My goal is to write API docs for developers.

Great question. Finding the right authoring tools for developer documentation, specifically documenting APIs, is a topic I touch upon briefly in my [API course](https://idratherbewriting.com/learnapidoc/pubapis_overview.html). The short answer is that there are many different tools for creating documentation, and there's no clear industry standard in this space. You'd be better off devoting time to deepening your technical background with programming languages and technical concepts rather than focusing on doc tools.

Different tools may better suit different environments, skill sets, and products. Currently I'm using [Jekyll](http://jekyllrb.com/) and have been for several years. At my work, we recently completed an engineering integration where we build and deploy Jekyll's web output directly from the server. This is the docs-as-code tooling approach.

This workflow fits our authoring needs quite well because we're in a large engineering group with a lot of engineers who contribute documentation. Most engineers like to write in Markdown, and they are comfortable interacting with text files in repos. For example, we may send an engineer a review task, and he or she will respond by submitting a change request (using the same Review Board tools as with code) to merge his or her edits into a branch in our doc repo.

Because we are only a small handful of authors responsible for hundreds of pages of documentation across a wide swath of deeply technical topics, we know we need to rely on engineering contributions and involvement to be successful. Therefore we selected our tooling to fit our needs and environment.

We're also not generating a full website with Jekyll, but are instead inserting the generated HTML into a larger website (with a robust header, footer, search index, and localization logic). (You can [browse our documentation here](https://developer.amazon.com/documentation).)

If you want to pursue the docs-as-code route, you could use a number of tools besides Jekyll. Sphinx, Hugo, Middleman, Slate, and Mkdocs are just a few [static site generator options](https://www.staticgen.com/).

In this same category of static-site-generator tools, there are also many hosted options for developer docs. [Readthedocs.com](https://readthedocs.com/), [Forestry.io](https://forestry.io/), [CloudCannon](https://cloudcannon.com/) are all excellent choices. Also check out [Readme.com](http://readme.com/). If your company allows you to use third-party hosting for your content and you have budget, I'd recommend this route instead of trying to build your own theme.

If you're documenting REST APIs, definitely check out the [OpenAPI specification](https://idratherbewriting.com/learnapidoc/pubapis_swagger_intro.html) and [SwaggerHub](https://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html). Find a doc tool that supports the OpenAPI specification.

If you have more robust requirements around translation and content re-use, you might want to use a more traditional help authoring tool that excels in this area. Both Madcap Software's Flare and Adobe's Tech Comm Suite are widely used tools in the tech comm industry because they handle just about every tech comm scenario you will encounter. If you're trying to ramp up your tech comm skill set to look attractive to employers, familiarity with these tools will make you better qualified for a broader number of jobs.

There are also some hosted doc services for tech comm tools if you need to collaborate online. [Paligo](https://paligo.net/) and [Corilla](https://corilla.com/) are two new doc platforms with a lot of momentum.

(Note that a lot of these companies advertise on my site &mdash; see my sidebar for a list of current advertisers.)

However, to break into developer documentation (which is what I presume is your larger goal), employers are often more interested in your programming background/knowledge rather than specific documentation tools. Tools are seen as a means to get a job done, and companies want you to spend as little time on doc tooling as possible so you can focus on content.

Learning how to document code written in Java, JavaScript, C++, PHP, or some other language or platform (iOS, Android), can be more difficult and require more preparation than learning a doc tool. Companies will typically look primarily at your technical background, and then secondarily at any doc tools you're familiar with.

Additionally, unless you're revamping the doc tool set at a company, many times there is already adequate tooling in place. It could be Confluence, Google Docs, or even Microsoft Word. The company is likely hiring you to fill a documentation need, not to implement a new documentation toolset. Therefore your best approach for success in breaking into developer/API documentation is to deepen your technical learning and preparation, and not to get too mired with doc tools.


