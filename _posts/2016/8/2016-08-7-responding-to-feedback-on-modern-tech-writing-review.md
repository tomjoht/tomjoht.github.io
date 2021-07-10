---
title: "Will the docs-as-code approach scale? Responding to comments on my Review of Modern Technical Writing"
categories:
- api-doc
- podcasts
description: "My previous post reviewing Andrew Etter's ebook on Modern Technical Writing got an enormous response. Some readers said the docs-as-code approach works only for small shops and doesn't scale to large projects. They said content re-use and translation also become problematic. However, perhaps the real differentiator shouldn't be product size as much as product category. The docs-as-code approach (which is what I'm calling it) works particularly well for developer documentation, such as API documentation, which usually doesn't contain the same challenges that component content management systems (or CCMSs) were meant to solve."
date: 2016-08-01
tags:
- technical writing
- content management
- CCMS
- XML
- component content management
- docs as code
- version control systems
- github
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/docsascodeargument.mp3
podcast_file_size: 13.5 MB
podcast_duration: "16:24"
podcast_length: 13544458
bitlink: http://bit.ly/docsascodeargument
---

{% include audio.html %}

## Responses to Review Post were enormous

The number of comments on my recent post, [Review of Andrew Etter's ebook on Modern Technical Writing](https://idratherbewriting.com/2016/07/26/modern-technical-writing-review/), showed an overwhelming interest in this topic. The post went viral. In addition to 300+ clicks on Twitter and Linkedin, there were about 1,200 page views and an equal number of clicks on the audio files. People spent an average of 5 minutes 11 seconds reading the post. The post had a lively discussion both on [techwr-l](http://www.techwr-l.com/archives/1607/techwhirl-1607-00065.html#.V6nmTpMrK1s) and in the post's comments.

I want to respond generally to at least one trend in the comments -- the idea that the docs-as-code solution won't scale.



By the way, it's not as if the techniques Etter describes in *Modern Technical Writing* (or rather the "docs as code" approach) are new. Lots of people (myself included) have been emphasizing static site generators, version control, lightweight markup languages, and other approaches for documentation for a long time.

But Etter's ebook seems to legitimize the approach, and his title "Modern Technical Writing" might have irked a few people who suddenly felt that their XML/CCMS-based approaches were being labeled antiquated.

In their responses, a few people argued that that the docs-as-code approach would only work for small shops. For larger documentation scenarios, it wouldn't scale.

For example, one reader [said](https://idratherbewriting.com/2016/07/26/modern-technical-writing-review/#comment-2819188210):

> Having worked in ginormous and more boutique-sized content projects, the tips and methods described in Andrew's book are geared more towards the boutique-sized end of the spectrum. Which is fine, as there are many writers who work on projects of that size.

Another person (who noted that he works for easyDITA) [said](https://idratherbewriting.com/2016/07/26/modern-technical-writing-review/#comment-2820720617):

> I'm sure it could work for a very small team but when you get into tens of thousands of topics (not uncommon) it would be a nightmare. And the entire publishing process enabled by a CCMS offers the advantage of eliminating constant formatting while enabling real time updates. Having multiple Jekyll sites, for example, means keeping track of what is where and somehow making them easily accessible to end users. And what about search? How do you search across all these apps with one search? Etc.,etc.

He continued with some more [commentary](https://idratherbewriting.com/2016/07/26/modern-technical-writing-review/#comment-2818952629) about content re-use and formatting later:

>  let's imagine a part number changes that is used across multiple products and appears in multiple docs published to various media. How do you change every instance of that part number other than manually looking for them? There are so many reasons why structure was developed. The average tech writer spends as much as 40% of their time formatting their documentation for multiple delivery options. Formatting is automated in XML-based systems.

Another person also [pointed out](https://idratherbewriting.com/2016/07/26/modern-technical-writing-review/#comment-2820114467) the difficulty of scaling these solutions, saying:

> when content grows, from my experience, it's really hard to manage it all with a self-made solution. Especially when it comes to translation!

These commenters make some good points, so let's take a look at them in more detail. The points might be summarized as follows:

1.  [For a project consisting of tens of thousands of topics, the solution would be a nightmare](#one).
2.  [You can't identify and change a component that appears in multiple places](#two).
3.  [Translation becomes problematic](#three).
4.  [When you have multiple delivery options, this approach becomes inefficient](#four).

## For a project consisting of tens of thousands of topics, the solution would be a nightmare {#one}

Let's look at the first objection: *For a project consisting of tens of thousands of topics, the solution would be a nightmare.*

I'm not entirely sure why a large docs-as-code project would be a nightmare. [Microsoft](https://docs.microsoft.com/en-us/) and [Rackspace](http://docs.rackspace.com/) are two examples of large documentation sites that follow a docs-as-code model. [SendGrid](https://sendgrid.com/docs), [Balsamiq](https://support.balsamiq.com/), and [MongoDB](https://docs.mongodb.com/) are also more than just "boutique-sized" doc sites.

But are massive projects really an issue? How common are projects that have tens of thousands of topics?

I've been a tech writer for more than dozen years, and I've never worked on a single project that includes tens of thousands of topics. I may be an outlier, but almost all documentation at companies I've worked for include lots of different writers working on semi-independent, smallish projects.

A company may have a large amount of documentation, but the documentation is usually broken down into smaller groups based on different products. The documentation for each product tends to be fairly self-contained and rarely exceeds 500 topics per project. Additionally, usually the topics in one project don't need to be re-used in the other projects.

Almost all large doc sites break down into aggregations of smaller projects (see the [MongoDB docs](https://docs.mongodb.com/) as an example). The documentation may all be published on the same website, but each product's documentation is usually segmented off from each other.

When I think of possible projects that might have tens of thousands of topics, I think of documenting robust software like the Adobe Creative Suite or maybe a Boeing 747 airplane. Is there something about the docs-as-code approach (and using a version control system like Github) that couldn't scale to hold 50,000 topics for a single project? Because docs-as-code projects are text files rather than binary files, the projects might actually scale more easily.

Moving the source content into a Github repository, you might have 50 folders, each with 1,000 files. You could have one team working within a specific folder, each committing content into the project. Why wouldn't that work?

We wouldn't tell a large group of developers that they couldn't scale their code using version control systems, right? Let'say a company has 1,000 developers. They will find a way to manage their code using various repositories. Teams work in specific repos, and large teams working in the same repo develop in separate branches and then merge those branches into the master.

Developers do usually have package management systems that control and automate builds, though. Maybe that's the equivalent of the CCMS for content?

I'll concede that I don't have a lot of experience working on massive documentation projects, so maybe my views would change here given more exposure to the problems that crop up with these projects.

## You can't identify and change a component that appears in multiple places {#two}

Let's look at another objection: *You can't identify and change a component that appears in multiple places.*

This idea assumes that you can't re-use components in a static site generator model. Actually, you can. I talked about this in my series comparing DITA versus Jekyll. See [Creating re-usable chunks (conref) in Jekyll versus DITA](https://idratherbewriting.com/2015/04/01/creating-re-usable-chunks-conref-in-jekyll-versus-dita/).

In fact, re-using content is easier in a static site generator than it is with DITA, because DITA requires the content to be "valid" in every place it's re-used. This means a note that appears inside a task element might not be valid if the note appears outside the task.

But it does get difficult if you have to re-use content *across* projects. For example, suppose you have 5 different technical writers working on 5 separate projects, with each project in a separate repository. How do you re-use a topic from Project A in Project B?  

When I ran into this scenario at a former company, we changed our repository model from separate repos to the same repo. Every writer started committing to the same repo but in different folders. As long as you didn't edit other people's content without letting them know, you don't run into merge conflict scenarios.

Technical writers aren't used to version control workflows, so many of these concepts may be unfamiliar. But working in the same project has a number of benefits:

*  You can see what other writers are doing by looking at their commit logs.
*  All projects can be controlled by the same stylesheets, templates, and other project files.
*  Writers can help each other out by solving problems that others run into.

Writers who aren't ready to release content work in separate branches until they're ready to release. Then they merge their branch into the master.

Let's say you want to maintain separate repos but still re-use content across the repos. Jekyll recently released a feature called [gem-based themes](http://jekyllrb.com/news/2016/07/26/jekyll-3-2-0-released/). With gem-based themes, you deliver the theme files (the includes, layouts, styles, and other assets) through Ruby gems. This mechanism allows you to deliver updates across repos without requiring each writer to manually copy in updates to the theme.

While you could manage theme updates this way, you could also distribute re-usable content in the same way. Instead of theme-based includes, you could deliver content to be included across projects.

Another way to re-use content across projects is by rendering the content into JSON and then pulling the content into your project where it's needed. I explored this approach in [Help APIs and UI Tooltips](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_help_api.html). This is also more or less the approach used by [Contentful](https://www.contentful.com/), an API-based content management system.

One bit of info that static site generators won't show you, though, is an automatic UI display that lists where the content is re-used. You would likely need to do a text search for the re-used component. However, searching for text in an editor like Atom, Sublime, or WebStorm is quite easy. It's not as if you're using Notepad to author content.

## Translation becomes problematic {#three}

Let's look at another objection: *Translation becomes problematic.*

Translation is something I'm working on right now. Although most translation agencies can readily consume Word, HTML, or XML, consuming Markdown is less standard and sometimes more problematic since Markdown has different flavors or syntax.

However, in my tests with two translation agencies, both agencies had Markdown filters that could process the Markdown syntax without problems. I'll write more on the topic of translation in another post. (I'm currently adjusting my Jekyll theme to accommodate translation.)

## When you have multiple delivery options, this approach becomes inefficient {#four}

Let's look at the final objection: *When you have multiple delivery options, this approach becomes inefficient.*

Without question, most static site generators are optimized to deliver web-based HTML output. They aren't optimized for generating PDFs, so if PDF is a huge requirement, you might want to use a standard XML-based system.

That said, you can generate beautiful PDFs using a static site generator. I explained how to do it using Prince XML with Jekyll here: [Generating PDFs](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_generating_pdfs.html). It's a little trickier to set up, but you also have greater control to customize the output without having to dig into XSL-FO stylesheets.

Generally I'm content with a single HTML output, because you should avoid PDF for all the reasons I listed in this post: [Why do we need PDFs?](https://idratherbewriting.com/2015/02/05/why-do-we-need-pdfs/)

## Other reasons: Developer documentation

There's another reason why you might want to embrace the docs-as-code model: if you're working in developer documentation.

For example, take a look at this documentation site: [PlayFab](https://api.playfab.com/Documentation/Client). Much of the documentation is built from JSON files that the API generates (you can see the [JSON here](https://github.com/PlayFab/API_Specs)). Their [SDK generator](https://github.com/PlayFab/SDKGenerator), built on NodeJS, also makes use of the same JSON. How would you integrate this kind of workflow into an XML/CCMS based system? If you can generate some doc material from code annotations, that's usually the approach engineers prefer.

When I was developing my [API documentation course](https://idratherbewriting.com/learnapidoc/), I surveyed about [100 REST APIs](https://idratherbewriting.com/learnapidoc/pubapis_apilist.html). Almost all of them follow similar characteristics:

*  The docs are somewhat small (at least not tens of thousands of pages).
*  The docs are published on custom-branded websites.
*  The docs almost never provide PDF output.
*  The docs are rarely translated.
*  The docs sometimes often have publishing workflows that pull from code repositories.
*  The docs often include interactive API explorers that allow users to try out requests.
*  The docs follow specific templates for REST APIs (including sections such as endpoint definitions, parameters, sample requests, sample responses, and so on.)
*  The docs often have Hello World tutorials (instead of strictly task-based patterns).
*  The docs' interactivity is driven through Swagger, RAML, or API Blueprint specs.

Developer documentation does not often contain the same problems that CCMSs solve -- such as multi-channel output, PDF generation, content re-use, strict enforcement of information typing patterns, topic metadata, and so on.

Given all of these differences, is it hard to imagine that a docs-as-code approach might be a better fit for developer documentation?

When you work in developer documentation, you don't want to be behind a WYSIWYG interface. You want to work in the raw code, and a text editor like WebStorm feels like a natural fit if you're already testing your code in Android Studio (since both use the same Jetbrains UI framework).

Using `for` loops, `if-else` logic, and filters available in Liquid feel right at home to me. The idea that I can iterate through a collection of items and do something with the content is pretty awesome. It means I can push content out into JSON or other custom formats, create my own scripts, or come up with ways to handle what I need (for example, creating a custom include template that I can populate with parameters.)

When I'm working in the code, I'm not at the mercy of a black box. I can build my own doc tooling to suit my needs and workflow, and I can incorporate programming workflows and techniques more directly in my content.

## Conclusion

Overall, maybe some of the disagreement about whether the docs-as-code approach *scales* is due to differences in product categories more than product sizes. Working on something like machinery documentation that is translated into 10 languages, has numerous PDFs for different user roles, and has lots of content re-use is much different from working on a software API documentation project for a targeted developer audience.

Even so, I still think the techniques used in the docs-as-code model might work for a wider variety of documentation projects than some of the critics would agree to. This is an emerging model that will prove disruptive, and with that disruption comes a lot of friction.
