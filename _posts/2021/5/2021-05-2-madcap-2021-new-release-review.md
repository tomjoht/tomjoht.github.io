---
title: "An in-depth look at MadCap Flare 2021’s New Markdown Import Feature"
permalink: /blog/madcap-import-feature-madcap-flare-release-2021/
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/madcapmarkdownimport
description: "MadCap Flare’s first major new release of 2021 includes, among other new features, the ability to import Markdown files. There are several workflows where this Markdown import could be useful, most notably in scenarios where tech writers support multiple engineering teams that author READMEs and other how-to content in code repos."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/markdownmadcapflarethumb.png
---

_Note: This is a sponsored post._

## Markdown Import Feature in Flare 2021 Release

In the MadCap Flare 2021 release, you can now import Markdown files directly into your Flare projects in a robust, automated way. In the Project > Import menu, “Markdown Documents” now appears as an option:

<figure><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/flaremkimportproject3.png" alt="Markdown file import feature in Flare 2021" /><figcaption>Markdown file import feature in Flare 2021</figcaption></figure>

Note that the Flare editor doesn’t support native authoring in Markdown directly. Instead, the workflow is one of importing Markdown files (authored elsewhere) into Flare. The supported Markdown flavor is CommonMark Markdown (which is also the standard embraced by OpenAPI).

The scenario MadCap Software envisions for tech writers importing Markdown is as follows. A tech writer might be working with various engineering teams that prefer to write content in Markdown. The tech writer takes the Markdown files that these engineering teams write and imports the files into Flare, mapping the Markdown elements to CSS styles in Flare, mapping tables to table styles, deciding where to break the Markdown files into multiple topics, and more before publishing. In this case, the technical writer acts more like a content curator and publisher instead of author.

Admittedly, converting Markdown to HTML is a no-brainer with tools like Pandoc. However, Flare’s Markdown import editor goes beyond just importing Markdown content. With Flare, you can map each of the Markdown elements to CSS elements in your project. The mapped stylesheet can be your main stylesheet in Flare or a special stylesheet you’ve created just for the Markdown import. Here’s what the style mapping dialog box looks like:

<figure><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/flaremapcssmarkdown.png" alt="Flare's style mapping options with Markdown file import" /><figcaption>Flare's style mapping options with Markdown file import</figcaption></figure>

In this example, the CSS shown is just the standard HTML elements, but you could also have specific classes and divs instead.

If a fenced code block has a language lexer, such as <code>&#96;&#96;&#96;java</code>, that code is mapped to a code block in Flare and will automatically be syntax-highlighted with the specified language.

With tables, you can choose to map them to special table stylesheets in Flare. With lists, you can choose to map them to regular list styles or paragraph list styles. You can also specify which Markdown element should signal a new topic in Flare (such as breaking up the Markdown file at H1); this might be useful if you’re importing a massive Markdown file that needs to be chunked up. The import will also pull images directly into Flare &mdash; assuming the images are in the same import directory as the Markdown files (not web links).

When you create the import, Flare creates an import file that remembers and stores all of your settings. In short, the import isn’t just a Markdown-to-HTML conversion. It’s much more robust and specialized to your project’s styles and settings.

The Markdown import options also include a box called “Auto-reimport before generate output”:

<figure><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/flaremarkdownimportreimport.png" alt="Option to auto-reimport before building the output" /><figcaption>Option to auto-reimport before building the output</figcaption></figure>

This setting (which is optional) allows you to reimport the Markdown files in an automated way each time before you build your output in Flare. This treats the import not as a one-time task but rather as part of a regular authoring and publishing workflow. This workflow points to one of the most interesting aspects of the Markdown import. In the import workflow, you opt to essentially turn Flare off as an editor and instead use Flare as a publishing engine for the content. (Note that importing Markdown files bypasses the content management features you might use in Flare, such as snippets, variables, and conditional tagging.)

If you prefer to edit the Markdown files after import, you can also do that. For example, if you plan to edit and manage the content in Flare after importing the content, you wouldn’t select the “Auto-reimport before generate output” box because reimporting the same file would overwrite any changes you made in Flare.

For more details about the Markdown import feature, see the video [What’s New in MadCap Flare 2021 ](https://www.youtube.com/watch?v=uyG4l91TC3Q#t=2m5s)(specifically, 2:05 to 9:41) by Paul Stoecklein, Director of Documentation at MadCap Software:

<iframe width="560" height="315" src="https://www.youtube.com/embed/uyG4l91TC3Q#t=2m5s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

For a text version, see [What’s New?](https://help.madcapsoftware.com/flare2021/Content/Flare/Introduction/Whats-New/Whats-New.htm) on MadCap Software's site.

## Evaluating Different Workflows

How popular do I think this Markdown import feature will be? It depends on your authoring scenario and how engineers contribute to your docs. In my experience, engineers tend to contribute to docs in several ways: (1) they write content on a wiki like Google Docs or Confluence, and then the tech writers migrate it into their authoring/publishing system. (2) The engineering writers contribute directly within a docs-as-code tool, writing and publishing natively in Markdown. (3) The engineers create docs as lengthy comments directly in source code files.

Let’s walk through each of these scenarios, evaluating whether Flare’s Markdown import feature would be useful.

### Scenario 1. Engineers write on Google Docs or Confluence, and tech writers bring it over to Flare

In this scenario, engineers building a feature have a Google Doc or Confluence wiki where they dump all their knowledge and then hand it off like a baton to tech writers to edit and publish. Most likely you can export either a Markdown file or HTML directly from these systems. You could start content in Google Docs and use the [Docs to Markdown Addon](https://workspace.google.com/marketplace/app/docs_to_markdown/700168918607) to convert the content to Markdown (image references would be lost). You could then copy the Markdown into a separate file, remove any warning tags about the conversion, and then pull it into Flare through the Markdown import. However, you could just as easily import the HTML, which will preserve links and resources like images. Or you could import directly from Confluence to Flare.

### Scenario 2. Engineers write directly in the docs-as-code authoring system

More content-savvy engineers might work with content directly in an authoring tool, writing natively in Markdown. These scenarios are where engineers (or DevRel types) themselves are authors and publishers. Most engineers I’ve worked with prefer to have content edited by tech writers before publishing, so this scenario is much less common. In this scenario, the Markdown import wouldn’t be useful because these engineers would want to author Markdown natively within the authoring system and see the output.

### Scenario 3: Engineers create docs as comments in code files

This last case might be the most interesting use case for the Markdown import because it’s clearly a case where docs start out on another system, usually need to remain there, but also need to be incorporated into an authoring/publishing tool. In this case, an engineer adds README files in the code repo as well as other how-to files that live alongside the code files. Both the README and other how-to files are usually in Markdown when they live in these code repositories.

This form of documentation follows an approach where docs are literally stored in the same repository and handled with the same workflow as software code. In these scenarios, the content is almost always written and managed by engineers, since many tech writers will lack access to edit the source code.

For this scenario, you would import the Markdown files from these projects directly into Flare. Flare’s Markdown import process will let you specify a number of different import files and settings to pull Markdown files from different engineering repositories, creating an integrated help center.

For example, suppose you support 10 different engineering teams working on various products. Each of these teams is responsible for writing their own docs, but you don’t want to have piecemeal docs that appear only as standalone README files in various repos. You want to pull all of this information together into one developer portal. You could create individual import mappings for each project, pulling all this content into Flare in an automated way.

To edit the content at the source though, you would need to get involved in whatever change management processes the teams already have in place for code. (Most teams have changelist tools that look at changes to code and present the changes as file diffs showing line-by-line changes; others can comment, review, and approve the changes.)

Flare’s Markdown import solves the content reuse problem here because it allows you to store the content both within the project code as well as in the main help content in your developer portal. This scenario is the most relevant to Flare’s Markdown import. Overall, the Markdown import feature gives you more flexibility to address complex multi-author, multi-location scenarios like this.

## Engineering Contributions to the Publishing Output

In almost all cases, regardless of how engineers contribute content to docs, one thing is common in my experience: the engineers almost never contribute to the publishing process. For example, they don’t configure search, develop stylesheets, deploy the outputs to the web, capture feedback, or handle other publishing-oriented tasks. (If they do, they aren’t the same engineers writing docs.) Engineers might be in favor of Markdown as an authoring format but shrink away when more robust content management requirements present themselves, when search needs to be configured into the documentation output, or when a professional-looking PDF needs to be generated out for partners.

In these scenarios, you’ll be happy that you have a help authoring solution designed to handle these more robust publishing scenarios. It will make your life a lot easier than writing in Markdown. But adopting Flare doesn’t mean you can’t also incorporate Markdown and work with authors who prefer to write in Markdown.

## Other Features in the 2021 Flare Release

I’ve mentioned only the Markdown import feature in the MadCap Flare 2021 release. There are many other new features as well:

*   Start Page Redesign
*   Layout Resizer
*   PDF enhancements with UA Accessibility
*   Images from MadCap Central added to reviews
*   FrameMaker 2020 support
*   Redesigned Table Style Editor

To learn more about these features, see [What’s New](https://help.madcapsoftware.com/flare2021/Content/Flare/Introduction/Whats-New/Whats-New.htm) on MadCap Software’s site.
