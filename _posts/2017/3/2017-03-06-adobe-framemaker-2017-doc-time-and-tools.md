---
title: Adobe FrameMaker 2017 -- time, tools, and the tech writer’s focus on content
keywords: Adobe, FrameMaker 2017, help authoring tools.
description: "Adobe FrameMaker has a new release (called Adobe FrameMaker 2017) that has a ton of improvements toward simplicity and usability. Some of the new features include new responsive HTML5 layouts, auto-complete search, more intuitive menus for authors, and more. Tools like FrameMaker that allow you to focus on content (instead of worrying about creating your own search, site design, pdf output, navigation menu, and more) provide a huge win for both technical writers and companies. The company's documentation tends to be what matters most to both users and product owners."
categories:
- technical-writing
- writing
bitlink: http://bit.ly/adobeframemaker2017idbw
---

## Doc tools and time

A couple of weeks ago, a reader (Carl) asked if he could buy me lunch to pick my brain about static site generators. Carl and I met at my workplace cafeteria to chat.

Carl had been turned down as a candidate for a previous developer doc job because he didn't have enough experience with static site generators. Carl was now starting a new job on Monday, and he was thinking of implementing Jekyll. What would he need to know to start out on the right path?

We chatted about strategies for a good hour before parting ways.

About a week later, Carl called me and said he had met with the engineering manager at his new work. They had talked about static site generators. The engineering manager felt uncomfortable with Carl beginning down an unfamiliar tool path. The employer feared the potential loss of time and the uncertainty with the approach.

The engineering manager wanted Carl to focus more on content than tools. He recommended that Carl go with an established help authoring tool that Carl was already familiar with.

My conversation with Carl brought up a constant battle that we face in the workplace. Employers want us to focus on content, not tech writing tools. At the same time, technical writers are often hampered by inefficient tools that demand a lot of their time and attention.

When I transitioned from my previous job to my new job, I made a post of [regrets and resolutions][1]. One of my regrets was "focusing too much on tools and not enough on content development." I vowed to "minimize the time spent on tool development and spend more time with content development from the start."

(The problem is that I'm often attracted to opportunities that involve major tool and process overhauls.) I'm still a  believer in the docs-as-code movement and use Jekyll for docs. But I am becoming increasingly tool agnostic and open-minded about different approaches.

What matters is content, not so much the tool. If there's a way to reduce your time spent tinkering with tools and allow you to deep dive into content, I'm all for that approach.

With that context, I'd like to take some time to promote one of the tools of my sponsors: Adobe FrameMaker. Specifically, I want to highlight the recent <a rel="nofollow" href="http://www.adobe.com/products/framemaker.html?sdid=KVGRV6V5&mv=other&promoid=70114000002CZxcAAG">Adobe FrameMaker 2017 release</a>.

## Adobe FrameMaker 2017 highlights

Adobe recently released FrameMaker 2017.

<a rel="nofollow" href="http://www.adobe.com/products/framemaker.html?sdid=KVGRV6V5&mv=other&promoid=70114000002CZxcAAG" alt="Adobe FrameMaker 2017"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/framemaker2017banner.png" style="max-width: 600px;"/></a>

The main features of the FrameMaker 2017 release include the following:

* More intuitive, easier authoring experience
* Best-in-class search, including auto-complete search
* New responsive HTML5 layouts and a plain HTML layout
* Professional outputs for mobile, web, desktop, and print formats
* Integration with <a href="https://idratherbewriting.com/2019/03/10/introducing-xml-documentation-for-adobe-experience-manager/">Adobe Experience Manager</a> (Adobe's DITA CCMS)
* A variety of enhancements to increase productivity through simplicity

I briefly listed highlights, but let's jump into the details.

FrameMaker 2017 offers a new user interface with simplified user workflows. Reorganized workspaces make common menus and commands easier to find.

New icons with sharper contrast display beautifully on high-resolution monitors, even up to 4k. You can adjust pods and windows to scale as you want.

The Special menu was replaced with an Insert menu. Other commands are now grouped into more logical places to make them easier to find.

Shortcuts appear next to menu options, and nearly every option now has a shortcut. You can click a magnifying glass icon in the upper-right corner to quickly find any command, or use F7.

The conditional tags pod has been revamped to be easier to access, read, and navigate conditional text.

It's also easier to insert graphics. The graphics you insert will auto-resize to fit their columns and spaces. Through the graphics pod, you can change image properties, such as scaling and DPI or object styles.

If you're using structured authoring with DITA, you can set up dynamic content filters based on DITA attributes. In the HTML5 output, a filter option lets users select certain DITA attributes. When users select an attribute, the content dynamically filters the display. For example, suppose you had a Mac, PC, and Linux attribute on your content. Users could select the filter they want, and the content would adjust based on the selected filter.

When you’re authoring DITA content, you can view the structure of your content in the updated status bar. There’s no need to toggle views to see the elements you’re working with.

FrameMaker 2017 also supports the new `resourceid` attribute in DITA 1.3. Keys for cross-references also have an improved dialog box that makes it easier to find and insert your keys.  

There are two new HTML5 layouts &mdash; called "Ocean" and "Indigo." Also, there’s a plain, frameless HTML layout. The plain frameless layout is meant to be imported into other systems and templates.

All responsive HTML5 layouts have an impressive new search with auto-complete feature. When you start typing, results immediately appear. This allows users to update their query on the fly without waiting for a results page to serve up matches.

The search index uses JSON for fast-indexing of the content. If you use SVG images, the text in the SVG image is even indexed in the search.

Additionally, you can automatically merge your CSS files into a single file to improve the loading times in the responsive HTML5 output.

FrameMaker 2017 also integrates with the <a rel="nofollow" href="https://docs.adobe.com/content/docs/en/aem/6-2.html">Adobe Experience Manager</a>, which is Adobe's DITA CCMS. This allows teams with CCMS needs to scale up their solution.

To learn more about these new features, check out these other articles:

* <a rel="nofollow" href="http://blogs.adobe.com/techcomm/2017/01/2017-release-of-framemaker.html">2017 Release of FrameMaker</a>, by Abishek Jain
* [Adobe Tech Comm Suite 2017 is better than ever!][7], by Danielle Villegas
* [Review: FrameMaker (2017 Release)][8], by Matt Sullivan
* [FrameMaker 2017 and MS Word 2016 Feature Comparison][9], from douwriteright.com

## Time and efficiency

Now that I've highlighted the features in the latest release, I want to return to my earlier theme -- time, tools, and the tech writer's focus on content.

Although you can try to reproduce similar functionality with docs-as-code tooling, it probably won't be time efficient. Most likely you'll end up sinking a lot of time in configuring tools instead of focusing on content.

I estimate that I've spent at least 10-20% of my time on doc tooling and workflows in my last couple of jobs. The following features are especially difficult with static site generator models:

* Search
* PDF output
* Responsive design
* Multilevel navigation menus
* Link validation
* Standard formats
* Metadata
* Localization

I'll briefly elaborate on these areas.

**Search**. With docs-as-code tooling, search is usually absent. If available, it's often a lightweight hack that doesn't scale beyond 100 pages. To get decent search, you usually have to integrate a third-party service, which is problematic behind a firewall. FrameMaker gives you robust, fully-indexed search for your content, including auto-complete. Not having to worry about search removes a huge burden from tech writers.

**PDF output**. PDF output is another struggle with docs-as-code tools. Although there are workarounds, the processes are cumbersome and complicated. And again, you usually end up buying third-party tools to get the job done. Even if you try to move all your documentation to web-only formats, you'll still likely need PDF. You will need PDF to generate early-access docs for beta partners, to submit content for SMEs to annotate during reviews, and more. With FrameMaker, PDF output is robust and professional-grade.

**Responsive design**. Designing responsive output is also a major challenge with docs-as-code tools. Coding media queries is beyond the ability of most tech writers, so you need web developers or responsive-ready templates to pull this off. I wrote about FrameMaker's responsive output previously (see [Evaluating Adobe FrameMaker's responsive HTML5 output][12]). It's so much easier to leverage an output like FrameMaker's HTML5 help instead of creating your own. FrameMaker's help offers top-notch responsive design without the need to configure any CSS.

**Multilevel navigation menus**. Multi-level navigation menus are also difficult to pull off with docs-as-code tools. You'll likely need a UX developer to help develop the code, and most solutions end up as simple static lists. FrameMaker provides robust multi-level menus out of the box. There's no need to develop special code to iterate through YAML files or other do other complex scripting logic.

**Link validation**. Validating links is another challenge. With lightweight syntax formats, broken links can be common and hard to prevent. With FrameMaker, you have validation tools built-in to avoid outputs with broken links. You can also use structured authoring formats like DITA to implement other linking strategies.

**Standard formats**. Standard formats are also a weakness with docs-as-code tools. Static site generators vary with many Markdown variants, Asciidoc, reStructured Text, or other scripting syntax like Liquid as their syntax. As a result, content gets locked into a custom system and isn't easily portable. With FrameMaker, you can tap into standardized XML schemas or use the built-in editor. You define the styles and other elements that you've want using standard FrameMaker options. Teams can be more efficient by tapping into industry-standard structure and syntax for their content.

**Metadata**. Storing metadata about content becomes problematic with docs-as-code tools. Metadata might include details such as when the file was last updated, who authored it, who reviewed it, what links to it, when it was last translated, and so on. Again, Adobe allows you to store metadata with each page or even connect into a CCMS to store this metadata. Understanding this information can help authors make intelligent decisions about content.

**Localization**. Localization in docs-as-code tools is almost always a hack. I just finished a workflow for a static site generator that outputs to German and Japanese. In doing so, I realized that the localization solutions with static site generators are often tricky and custom. Many translators can't work with Markdown or YAML, which complicates the effort to translate the source. With FrameMaker, there are defined and standard workflows for pushing content through localization. The workflows have been refined over many years and releases.

## Conclusion

If you go the docs-as-code route, you end up spending a lot of time configuring and setting up tools. In some scenarios, such as with contributing engineers interacting on GitHub, the docs-as-code tooling can be worthwhile. But in many other situations, these alternative tools can end up being a time sink with a sub-professional output.

Companies prefer their employees to spend time focusing on documentation for their products, not on tinkering around with third-party tools. At the end of the day, your company judges your worth by the quality of the documentation you produce. They could care less whether you implemented a workflow using version control tools and Markdown. Companies need to empower users with the right information to make users successful with their products. This is the bottom line in technical communication.

If you want to enable productivity with content authoring, check out time-tested tools like Adobe FrameMaker. FrameMaker has a large community of users (see the recent [Content Wrangler Benchmarking survey][3] and [WritersUA Tools survey][4] for evidence of its popularity). It is also a mature product with 14 major releases. FrameMaker is a tool that is designed from the ground up to support tech comm workflows and scenarios.

<a rel="nofollow" href="http://www.adobe.com/products/framemaker.html?sdid=KVGRV6V5&mv=other&promoid=70114000002CZxcAAG"><button type="button" class="btn btn-info">Download a trial of FrameMaker 2017</button></a>


[1]: https://idratherbewriting.com/2016/02/27/retrospective-on-the-good-and-bad/
[2]: http://www.welinske.com/2014-user-assistance-tools-survey/
[3]: http://thecontentwrangler.com/2016/05/26/2016-technical-communication-industry-benchmarking-survey/
[4]: http://www.welinske.com/skills-and-technologies-survey-2016-technologies/
[5]: https://www.indeed.com/jobs?q=framemaker&l=
[7]: https://techcommgeekmom.com/2017/02/14/adobe-tech-comm-suite-2017-is-better-than-ever/
[8]: http://www.techcommtools.com/review-framemaker-2017-release/
[9]: http://www.douwriteright.com/PDF/word_v_framemaker_comparison_guide_ue.pdf
[12]: https://idratherbewriting.com/2017/01/16/adobe-framemaker-html5-mobile-responsive-view/
