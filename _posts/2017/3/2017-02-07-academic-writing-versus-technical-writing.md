---
title: An argument for Adobe FrameMaker
published: false
keywords:
summary:
tags:
- general
bitlink:
---

## Doc tools and time

A couple of weeks ago, a reader ("Carl") asked if he could buy me lunch to pick my brain about static site generators. We met at my workplace cafeteria to chat.

Carl told me he had been turned down as a candidate for a previous developer doc job because he didn't have enough experience with static site generators. Carl was now starting a new job on Monday, and he was thinking of implementing Jekyll. What would he need to know to start out on the right path?

We chatted about strategies for a good hour before parting ways.

About a week later, Carl called me and said he had met with the engineering manager at his new work. They had talked about static site generators. The engineering manager felt uncomfortable with Carl beginning down an unfamiliar tool path and feared about the potential loss of time, and the uncertainty with the approaches.

The engineering manager wanted Carl to focus more on content than tools. He recommended that Carl go with an established help authoring tool that Carl was already familiar with.

My conversation with Carl brought up a constant battle that we face in the workplace. Employers want us to focus on content, not tech writing tools. At the same time, tech writers are often hampered by inefficient tools that require a lot of their time and attention.

When I transitioned from my previous job to my new job, I made a post of [regrets and resolutions][1]. One of my regrets was "focusing too much on tools and not enough on content development. ... I wish I could have minimized the time spent on tool development and spent more time with content development from the start."

Although I'm still a fervent believer in the docs-as-code movement and use Jekyll as my static site generator, I am becoming increasingly tool agnostic and open-minded about different approaches. What matters is content, not so much the tool. If there's a way to minimize your time spent tinkering with tools and allow you to deep dive into content, I'm all for that approach.

With that frame of mind, I'd like to take some time to promote one of the most popular tools of my Adobe sponsor: Adobe FrameMaker, specifically the new 2017 FrameMaker release.

## Adobe's Latest Release

Adobe recently released [FrameMaker 2017][6] -- which is a release that takes this longstanding tool that has already been refined and perfected over years of releases and iterations to yet a higher level.

The overall highlights of the FrameMaker 2017 release are as follows:

* More intuitive, easier authoring experience
* Best-in-class search, including search autocomplete
* Professional outputs for mobile, web, desktop, and print formats
* Integration with [Adobe Experience Manager][11] (Adobe's DITA CCMS) to offer an an end-to-end solution
* Productivity through simplicity

Some other bloggers have already explored the new features in more detail. I suggest you check out these articles:

* [2017 Release of FrameMaker][13], by Abishek Jain
* [Adobe Tech Comm Suite 2017 is better than ever!][7], by Danielle Villegas
* [Review: FrameMaker (2017 Release)][8], by Matt Sullivan
* [FrameMaker 2017 and MS Word 2016 Feature Comparison][9], from douwriteright.com

You can also read some review quotes about FrameMaker 2017 [here][10].

FrameMaker 2017 has a ton of improvements and refinements. It offers a new user interface with simplified workflows. Reorganized workspaces make common menus and commands easier to find. New icons with sharper contrast display beautifully on high resolution monitors, even up to 4k. You can easily adjust pods and windows to scale as you want.

The Special menu was replaced with an Insert menu. Other commands are grouped into more logical places. Shortcuts appear next to menu options, and nearly every option has a shortcut. You can click a magnifying glass icon in the upper-right corner to quickly find any command, or use F7.

It's easier to create an update styles. The conditional tags pod has been revamped to be easier to access, read, and navigate. It's also easier to insert graphics. Inserted graphics auto-resize to fit their columns and spaces. Through the graphics pod you can change image properties, such as scaling and DPI or object styles.

If you're using structured authoring with DITA, you can set up dynamic content filters based on DITA attributes. In HTML5 output, a filter option lets users actually select certain DITA attributes to dynamically filter the content based on the attribute.

For example, suppose you had a Mac, PC, and Linux attribute on your content. Users could select the filter they want, and the content would transform to display based on the filter.

FrameMaker 2017 also supports the new `resourceId` attribute in DITA 1.3. There's no need to toggle views between text and code to view the structure of your content. The structure appears in the lower-left to show the elements.

Keys for cross-references has an improved dialog box that makes it easier to find and insert your keys.  

There are also new HTML and HTML5 layout options -- a new HTML layout called "Ocean" and a plain, frameless HTML layout designed to be imported into other systems and templates.

The Ocean layout has an impressive new search feature offering auto-complete options. When you start typing, results immediately appear. This allows users to update their query on the fly without waiting for a results page to serve up matches. The search index uses JSON for fast-indexing of the content.

Additionally, you can merge your CSS files into a single file to improve the loading times in the responsive HTML5 output.

FrameMaker 2017 also integrates with the Adobe Experience Manager, which is Adobe's DITA CCMS. This allows teams with CCMS needs to scale up their solution.

If you use SVG images, the text in the SVG image is also indexed in the search.

## Trying to reinvent the wheel

Although you can try to replicate similar functionality with docs-as-code tools, trust me, you'll end up sinking endless amounts of time on doc tools instead of focusing on the content.

I estimate that I've spent at least a quarter of my time on doc tooling and workflows in my last couple of jobs. Some areas that are especially problematic include the following:

* Search
* PDF output
* Responsive design
* Multilevel navigation menus
* Link validation
* Standardized formats
* Metadata for content
* Templates
* Localization

I'll briefly elaborate on these areas. With docs-as-code tooling, search is usually absent. If available, it's often a lightweight hack that doesn't scale beyond 100 pages. FrameMaker not only gives you robust, fully-indexed search for your content, the 2017 version now offers auto-complete when user's type queries. Not having to worry about search removes a huge burden from tech writers.

PDF output is another struggle with docs-as-code tools. Although there are workarounds, the processes are usually cumbersome and complicated to set up. With FrameMaker, PDF output is robust and configurable.

Designing responsive output is also a major challenge with docs-as-code tools. I wrote about FrameMaker's responsive output previously, so I'll just direct you to this post: [Evaluating Adobe FrameMaker's responsive HTML5 output][12].

Multi-level navigation menus that contain several levels of hierarchy, with expandable/collapsible sections, is also extremely difficult to pull off with docs-as-code tools. You basically need a UX developer to help implement the code here, and most solutions end up with simple static lists. FrameMaker provides robust multi-level menus out of the box, without any hassle to develop special code to iterate through YAML files or other do other complex scripting logic.

Validating links is another challenge. With lightweight syntax formats, broken links are dime a dozen. With FrameMaker, you can incorporate structured authoring formats like DITA or other XML schemas. You also have better validation tools built-in to avoid outputs with broken links.

Standardized formats are also a weakness with docs-as-code tools. These tools vary with endless Markdown variants, Asciidoc, reStructured Text, or others, not to mention the custom scripting language (for example, Liquid) that you can integrate. The result is that content gets locked into the tool and isn't easily portable. You have to learn the custom syntax someone developed to work with that particular tool. With FrameMaker, you can tap into standardized XML schemas or use the built-in editor with styles and other structure that you've defined.

Storing metadata about the content -- such as the date last updated, who authored it, who reviewed it, what links to it, when it was last translated, and so on -- becomes problematic with docs-as-code tools. Again, Adobe allows you to store metadata with each page or even connect into a CCMS to store this metadata. Understanding this information can help authors make intelligent decisions about content.

Finally, localization in docs-as-code tools is almost always a hack. Having just finished out a workflow for a docs-as-code output into German and Japanese for a Jekyll site, I've realized that the localization solutions are cumbersome hacks that writers will find somewhat tricky and entirely custom from one implementation to another. With FrameMaker, there are defined and standard workflows for pushing content through localization.

## Conclusion

If you go the docs-as-code route, you end up spending a lot of time configuring and setting up tools. In some scenarios, such as developer documentation departments with contributing engineers, the docs-as-code tooling can be worthwhile.

But in many other situations, where tech writers primarily author and publish content, docs-as-code tools end up being a time sink with a sub-professional output. Companies would rather have their employees spend time documenting the company's products instead of tinkering and playing around with tools.

At the end of the day, your company judges your worth by the quality of the documentation. They could care less whether you implemented a workflow using version control tools and lightweight syntax formats. Companies need to empower users with the right information to make them successful. This is the bottom line in technical communication.

If you want to enable productivity with content authoring, check out time-tested tools like Adobe FrameMaker that span the tech comm industry with large communities of users, years of refinement, and which are designed from the ground up to support tech comm workflows and scenarios.

## Most popular help authoring tool

Recent tools surveys from The Content Wrangler and WritersUA indicate that FrameMaker is the most common tool used by technical writers. The Content Wrangler's [2016 Technical Communicator Benchmarking Survey][3] found the following:

> Adobe FrameMaker is in use in 22% of the companies surveyed, making it the second most mentioned tool used by technical communicators in our survey. As far as authoring tools go, FrameMaker is used slightly more often than MadCap Flare (20%) and Oxygen XML Editor (13%).

<a href="http://thecontentwrangler.com/2016/05/26/2016-technical-communication-industry-benchmarking-survey/"><img src="/images/topsoftwareproductscontentwrangler.png" style="max-width: 225px; border: 1px solid #dedede" /></a>

In the [2014 WritersUA Tools Survey][2] (which is the most recent), FrameMaker scored 199 in importance to tech writers -- more than 50 points higher than any other help authoring tool.

Finally, search [Indeed for framemaker][5] and you'll find many jobs looking for tech writers with FrameMaker experience. In my search, 259 results appear.

Granted, FrameMaker has been around for 30 years. This gives it time to spread across the tech comm market with many users. But it remains at the top for a reason: it works extremely well and caters to tech writer needs.

## PDF publishing

In addition to outputs for responsive HTML5, mobile app, PDF, EPUB, Kindle, and other formats, FrameMaker delivers superb PDF output. In the Content Wrangler's Benchmarking survey, many companies noted that PDF is an important deliverable:

> Despite what some may believe, print is not dead. While print may seem obsolete in many ways, today it’s still the second most common delivery channel for product content; 49% of companies surveyed craft print deliverables.

In the [2016 WritersUA Skills and Technologies Survey][4], the respondents also indicated that PDF remains a top priority:

> PDF (79%) is at the top of the list as the most valued technology used for producing support manuals. Using PDF as a delivery format has become a staple in our documentation sets. PDF files can be delivered to users in any number of ways. In the past, this technology was mainly used for legacy print documents like user guides, and also for supplemental white papers and troubleshooting information. Today we find many organizations using PDF files as the primary distribution format for product documentation.

Even if you try to move all your documentation to web-only formats, you'll still most likely need PDF to generate early-access docs for beta partners, to submit content for SME's to annotate during reviews, or to compile quick reference and getting started guides.

This is one area where static site generators fall short. With static site generators, you have to do backflips and perform other miracles to get high-quality PDF output from static site generators. FrameMaker gives you the tools to create professional grade print deliverables as well as HTML5 web output from the same source.

[1]: http://idratherbewriting.com/2016/02/27/retrospective-on-the-good-and-bad/
[2]: http://www.welinske.com/2014-user-assistance-tools-survey/
[3]: http://thecontentwrangler.com/2016/05/26/2016-technical-communication-industry-benchmarking-survey/
[4]: http://www.welinske.com/skills-and-technologies-survey-2016-technologies/
[5]: https://www.indeed.com/jobs?q=framemaker&l=
[6]: http://www.adobe.com/products/framemaker.html?sdid=KVGRV6V5&mv=other&promoid=70114000002CZxcAAG
[7]: https://techcommgeekmom.com/2017/02/14/adobe-tech-comm-suite-2017-is-better-than-ever/
[8]: http://www.techcommtools.com/review-framemaker-2017-release/
[9]: http://www.douwriteright.com/PDF/word_v_framemaker_comparison_guide_ue.pdf
[10]: http://www.adobe.com/products/framemaker/reviews.html
[11]: http://www.adobe.com/products/xml-documentation-add-on-for-experience-manager.html
[12]: http://idratherbewriting.com/2017/01/16/adobe-framemaker-html5-mobile-responsive-view/
[13]: http://blogs.adobe.com/techcomm/2017/01/2017-release-of-framemaker.html
