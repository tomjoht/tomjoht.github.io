---
title: Adobe FrameMaker 2017, time, and the efficiency of tools
keywords: Adobe, FrameMaker 2017, help authoring tools.
summary: "Adobe FrameMaker 2017 has a new release that has a ton of improvements toward simplicity and usability. Although this is a sponsored post where I promote one of my advertisers, I genuinely think that tools that allow you to focus on the content (instead of worrying about creating your own search, responsive design, pdf output, navigation menu, and more) provide a huge win for technical writers. Technical writers should ultimately be focusing on content. FrameMaker allows you to do this in efficient, powerful ways."
tags:
- general
bitlink: http://bit.ly/adobeframemaker2017idbw
permalink: adobe-framemaker-2017-doc-time-and-tools.html
---

## Doc tools and time

A couple of weeks ago, a reader (Carl) asked if he could buy me lunch to pick my brain about static site generators. Carl and I met at my workplace cafeteria to chat.

Carl had been turned down as a candidate for a previous developer doc job because he didn't have enough experience with static site generators. Carl was now starting a new job on Monday, and he was thinking of implementing Jekyll. What would he need to know to start out on the right path?

We chatted about strategies for a good hour before parting ways.

About a week later, Carl called me and said he had met with the engineering manager at his new work. They had talked about static site generators. The engineering manager felt uncomfortable with Carl beginning down an unfamiliar tool path. The employer feared the potential loss of time and the uncertainty with the approach.

The engineering manager wanted Carl to focus more on content than tools. He recommended that Carl go with an established help authoring tool that Carl was already familiar with.

My conversation with Carl brought up a constant battle that we face in the workplace. Employers want us to focus on content, not tech writing tools. At the same time, technical writers are often hampered by inefficient tools that demand a lot of their time and attention.

When I transitioned from my previous job to my new job, I made a post of [regrets and resolutions][1]. One of my regrets was "focusing too much on tools and not enough on content development." I vowed to "minimize the time spent on tool development and spent more time with content development from the start."

The problem is that I'm often attracted to opportunities that involve major tool and process overhauls.

I'm still a strong believer in the docs-as-code movement and use Jekyll as my static site generator. But I am becoming increasingly tool agnostic and open-minded about different approaches.

What matters is content, not so much the tool. If there's a way to reduce your time spent tinkering with tools and allow you to deep dive into content, I'm all for that approach.

With that context, I'd like to take some time to promote one of the tools of my sponsors: Adobe FrameMaker. Specifically, I want to highlight the recent Adobe FrameMaker 2017 release.

## Adobe FrameMaker 2017 highlights

Adobe recently released [FrameMaker 2017][6].

<a href="http://www.adobe.com/products/framemaker.html?sdid=KVGRV6V5&mv=other&promoid=70114000002CZxcAAG" alt="Adobe FrameMaker 2017"><img src="/images/framemaker2017banner.png" style="max-width: 400px;"/></a>

The main features of the FrameMaker 2017 release are as follows:

* More intuitive, easier authoring experience
* Best-in-class search, including auto-complete search
* New HTML5 responsive layout and plain HTML layout
* Professional outputs for mobile, web, desktop, and print formats
* Integration with [Adobe Experience Manager][11] (Adobe's DITA CCMS) to offer an end-to-end solution
* A variety of enhancements to increase productivity through simplicity

## Blogger reviews of FrameMaker 2017

Some other writers have already explored the new features in more detail. Check out these articles:

* [2017 Release of FrameMaker][13], by Abishek Jain
* [Adobe Tech Comm Suite 2017 is better than ever!][7], by Danielle Villegas
* [Review: FrameMaker (2017 Release)][8], by Matt Sullivan
* [FrameMaker 2017 and MS Word 2016 Feature Comparison][9], from douwriteright.com

## Jumping into more details

I briefly listed highlights, but let's jump into more details.

FrameMaker 2017 offers a new user interface with simplified user workflows. Reorganized workspaces make common menus and commands easier to find.

New icons with sharper contrast display beautifully on high-resolution monitors, even up to 4k. You can adjust pods and windows to scale as you want.

The Special menu was replaced with an Insert menu. Other commands are now grouped into more logical places to increase their findability.

Shortcuts appear next to menu options, and nearly every option now has a shortcut. You can click a magnifying glass icon in the upper-right corner to quickly find any command, or use F7.

The conditional tags pod has been revamped to be easier to access, read, and navigate conditional text.

It's also easier to insert graphics. The graphics you insert will auto-resize to fit their columns and spaces. The graphics pod allows you to change image properties, such as scaling and DPI or object styles.

If you're using structured authoring with DITA, you can set up dynamic content filters based on DITA attributes. In the HTML5 output, a filter option lets users  select certain DITA attributes. When users select an attribute, the content dynamically filters the display.

For example, suppose you had a Mac, PC, and Linux attribute on your content. Users could select the filter they want, and the content would adjust based on the selected filter.

When you're authoring DITA content, you can view the structure of your content in the lower-left corner. There's no need to toggle views to see the elements you're working with.

FrameMaker 2017 also supports the new `resourceid` attribute in DITA 1.3. Keys for cross-references also have an improved dialog box that makes it easier to find and insert your keys.  

There are two new HTML layouts -- a new HTML5 layout called "Ocean" and a plain, frameless HTML layout. The plain frameless layout is meant to be imported into other systems and templates.

The Ocean layout has an impressive new search with auto-complete features. When you start typing, results immediately appear. This allows users to update their query on the fly without waiting for a results page to serve up matches.

The search index uses JSON for fast-indexing of the content. If you use SVG images, the text in the SVG image is even indexed in the search.

Additionally, you can automatically merge your CSS files into a single file to improve the loading times in the responsive HTML5 output.

FrameMaker 2017 also integrates with the [Adobe Experience Manager][14], which is Adobe's DITA CCMS. This allows teams with CCMS needs to scale up their solution.

## Trying to reinvent the wheel

Those are a lot of improvements across a variety of features. Now that I've highlighted the features in the latest release, I want to return to my earlier theme. Time, tools, and the tech writer's focus on content.

You can try to reproduce similar functionality with docs-as-code tooling, but it probably won't be time efficient. Most likely you'll end up sinking a lot of time configuring tools instead of focusing on content.

I estimate that I've spent at least 10-20% of my time on doc tooling and workflows in my last couple of jobs. The following features are especially difficult with static site generator models:

* Search
* PDF output
* Responsive design
* Multilevel navigation menus
* Link validation
* Standard formats
* Metadata
* Localization

I'll briefly elaborate on these areas. Keep in mind that I'm still a proponent of docs-as-code tools, but it only makes sense in engineering documentation or API scenarios. In these scenarios with highly technical content, there's a need for developer collaboration. And many times, developers when you use their environments and models.

## Difficulties and challenges with docs-as-code tools

**Search**. With docs-as-code tooling, search is usually absent. If available, it's often a lightweight hack that doesn't scale beyond 100 pages. To get decent search, you usually have to integrate a third-party service, which is problematic behind a firewall. FrameMaker gives you robust, fully-indexed search for your content, including auto-complete. Not having to worry about search removes a huge burden from tech writers.

**PDF output**. PDF output is another struggle with docs-as-code tools. Although there are workarounds, the processes are cumbersome and complicated. And again, you usually end up buying third-party tools to get the job done. Even if you try to move all your documentation to web-only formats, you'll still most likely need PDF. You will need PDF to generate early-access docs for beta partners, to submit content for SME's to annotate during reviews, and more. With FrameMaker, PDF output is robust and professional-grade.

**Responsive design**. Designing responsive output is also a major challenge with docs-as-code tools. Coding media queries is beyond the ability of most tech writers, so you need web developers or responsive-ready templates to pull this off. I wrote about FrameMaker's responsive output previously in [Evaluating Adobe FrameMaker's responsive HTML5 output][12]. It's so much easier to leverage an output like FrameMaker's HTML5 help instead of creating your own. FrameMaker's help offers top-notch responsive design without the need to configure any CSS.

**Multilevel navigation menus**. Multi-level navigation menus are also difficult to pull off with docs-as-code tools. You need a UX developer to help put in place the code, and most solutions end up as simple static lists. FrameMaker provides robust multi-level menus out of the box. There's no need to develop special code to iterate through YAML files or other do other complex scripting logic.

**Link validation**. Validating links is another challenge. With lightweight syntax formats, broken links can be common and hard to spot. With FrameMaker, you have  validation tools built-in to avoid outputs with broken links. You can also use structured authoring formats like DITA to implement other linking strategies.

**Standard formats**. Standard formats are also a weakness with docs-as-code tools. These tools vary with many Markdown variants, Asciidoc, reStructured Text, or other scripting syntax like Liquid. As a result, content gets locked into the custom system and isn't easily portable. With FrameMaker, you can tap into standardized XML schemas or use the built-in editor. You define the styles and other structure that you've want using standard FrameMaker options. Teams won't have unexpected surprises about custom/hacky syntax when working with a FrameMaker project.

**Metadata**. Storing metadata about content becomes problematic with docs-as-code tools. Metadata might include details such as when the file was last updated, who authored it, who reviewed it, what links to it, when it was last translated, and so on. Again, Adobe allows you to store metadata with each page or even connect into a CCMS to store this metadata. Understanding this information can help authors make intelligent decisions about content.

**Localization**. Localization in docs-as-code tools is almost always a hack. I just finished a workflow for a static site generator output into German and Japanese. In doing so, I realized that the localization solutions with static site generators are often tricky and custom. Many translators can't work with Markdown or YAML, which complicates the effort to translate the source. With FrameMaker, there are defined and standard workflows for pushing content through localization. The workflows have been refined over many years and releases.

## Conclusion

If you go the docs-as-code route, you end up spending a lot of time configuring and setting up tools. In some scenarios, such as with contributing engineers, the docs-as-code tooling can be worthwhile. But in many other situations, these alternative tools can end up being a time sink with a sub-professional output.

Companies prefer their employees to spend time focusing on their products, not tinkering around with third-party tools. At the end of the day, your company judges your worth by the quality of the documentation you produce. They could care less whether you implemented a workflow using version control tools and Markdown. Companies need to empower users with the right information to make the users successful with their products. This is the bottom line in technical communication.

If you want to enable productivity with content authoring, check out time-tested tools like Adobe FrameMaker. FrameMaker has a large communities of users (see the recent [The Content Wrangler][3] and [WritersUA][4] surveys for evidence of its popularity) and is a mature product (with 14 major releases). FrameMaker a tool that is designed from the ground up to support tech comm workflows and scenarios.

<a href="http://www.adobe.com/products/framemaker.html?sdid=KVGRV6V5&mv=other&promoid=70114000002CZxcAAG"><button type="button" class="btn btn-info">Download a trial of FrameMaker 2017</button></a>



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
[14]: https://docs.adobe.com/content/docs/en/aem/6-2.html
