---
title: "Q&A about adoc Studio, with Frank Blome"
permalink: /blog/adoc-studio-qa-with-frank-blome
date: 2024-12-16
categories:
- technical-writing
keywords: 
rebrandly: https://idbwrtng.com/adoc-studio-qa-with-frank-blome
description: "In this Q&A post, <a href='#frank-blome'>Frank Blome</a>, co-founder of <a href='https://idbwrtng.com/adoc-studio'>adoc Studio</a>, discusses this new Mac-based documentation tool designed for technical writers. Learn about their choice of AsciiDoc markup, the native Apple platform strategy, unified stylesheet publishing workflow, and how the tool aims to simplify documentation processes for both docs-as-code and topic-based writers. adoc Studio is one of the latest authoring tools to emerge on the tech comm landscape."
---

*Note: This is a sponsored post.*

<ul id="markdown-toc">
    <li>
        <a href="#origin-story" id="markdown-toc-origin-story">
            Origins and team background
        </a>
    </li>
    <li>
        <a href="#mac-platform" id="markdown-toc-mac-platform">
            Mac-specific platform strategy
        </a>
    </li>
    <li>
        <a href="#markup-choice" id="markdown-toc-markup-choice">
            Why AsciiDoc was chosen
        </a>
    </li>
    <li>
        <a href="#target-audience" id="markdown-toc-target-audience">
            Target audience and market focus
        </a>
    </li>
    <li>
        <a href="#content-migration" id="markdown-toc-content-migration">
            Content migration capabilities
        </a>
    </li>
    <li>
        <a href="#ai-features" id="markdown-toc-ai-features">
            AI integration approach
        </a>
    </li>
    <li>
        <a href="#output-formats" id="markdown-toc-output-formats">
            Supported output formats
        </a>
    </li>
    <li>
        <a href="#distinguishing-features" id="markdown-toc-distinguishing-features">
            Key differentiating features
        </a>
    </li>
    <li>
        <a href="#frank-blome" id="markdown-toc-frank-blome">
            About Frank Blome
        </a>
    </li>
</ul>


### Tom: adoc Studio for Mac and iPad is a relative newcomer on the tech comm tools scene. Can you give us a sense of your origin story? Why did you build the tool in the first place? Were you trying to solve a particular problem? Are you engineers, tech writers, entrepreneurs, or other role types? {#origin-story}

**Frank:** The idea for [adoc Studio](https://idbwrtng.com/adoc-studio) was born out of our own frustrations as users. For years, I wrote documentation using tools like Word and Markdown, often turning to AsciiDoc for its modularity. But every time I tried to publish something, the process became a maze of terminal scripts, converters, and disconnected stylesheets. It was like trying to cook a meal with mismatched pots and pans scattered across a kitchen. And then came the iPad dilemma&mdash;writing wasn't even supported there. That's when I knew: there had to be a better way.

Our team is an eclectic mix of developers, architects, and business professionals, united by one thing&mdash;we're Apple fans to the core. Creating a seamless writing experience for macOS and iPad was not just a technical challenge but a personal mission.

### Tom: Your Mac specific platform strikes me as being very bold. I don't know how many Mac-specific tech comm tools there are out there. Why did you focus on Mac? Why wouldn't you build a browser-agnostic cloud tool? {#mac-platform}

**Frank:** I could point to the steady rise in Mac adoption over the years or highlight its superior user experience, but in the end, it was a personal choice:

This goes back to a very specific day in the early 2000s. I was working at Bertelsmann, and the "ILOVEYOU" virus hit. It brought everything to a halt. The entire company&mdash;one of the biggest media houses in the world&mdash;was frozen for days. We found ourselves sitting in a park, unable to work. I promised myself then and there: I would never rely on a Windows system again.

When we started developing our project management software, Merlin Project, in 2004, Mac was still considered niche in the business world. Yet, two decades later, we've thrived on the platform, proving its reliability and resilience. With adoc Studio, we're continuing that journey, staying true to the principles of control and privacy. Your content remains on your device unless you choose otherwise, which is why we've consciously avoided cloud-based solutions.

### Tom: As far as mark-up formats, it seems like markdown has been most common in this lightweight scripting race. There's even an MDX format that lets you embed JSX components, but I've never used it. Asciidoc offers a little more semantic notation, but not nearly the same as what you would get from DITA or some other XML. Why did you choose Asciidoc? {#markup-choice}

**Frank:** AsciiDoc hits the sweet spot for technical writers. It has all the essential syntax elements&mdash;tables, variables, includes, conditions and cross-references&mdash;without the steep learning curve of XML. What really drew me in was its modularity. You can manage content centrally and embed it seamlessly into your projects. It's structured without being overbearing, making it ideal for documentation that needs to scale but stay maintainable.

### Tom: Breaking into this market is really hard. You have to convince people to switch content (perhaps thousands of pages) from one tool to another. Are you targeting a particular audience? I see you're based in Germany. Are you tailoring the solution to hardware manufacturers more than software, or both? Are you angling for companies that maybe have technicians using iPads and making updates to docs in the field? {#target-audience}

**Frank:** So far, we are still in exploring phase. Generally speaking, adoc Studio is for all technical writers. However, we see two groups that can benefit the most from adoc Studio: 

Docs-as-code writers, who treat documentation like software development, find AsciiDoc invaluable for its compatibility with version control systems like Git. It enables efficient collaboration, detailed revision tracking, and integration with automated pipelines for publishing and validation.

Topic-based writers benefit from AsciiDoc's modularity, allowing them to create reusable content pieces without the steep learning curve of XML. adoc Studio makes it easy to centralize and manage these content chunks while enabling quick updates and seamless integration across projects.

### Tom: How easy is it to get content in and out of adoc Studio in order to experiment with your platform? That seems to be one of the biggest challenges&mdash;migrating from one tool to another is a really tedious. {#content-migration}

**Frank:** With adoc Studio, the transition is painless. All content is stored in plain UTF8 text. Copy-pasting works, and tools like Pandoc can convert other formats to AsciiDoc. For those new to the syntax, our adoc Coach acts as a guide. It explains the syntax right at your cursor so you can focus on writing instead of troubleshooting.

### Tom: What kind of AI features are you integrating into your toolset? It seems like that could be the distinguishing element to come. Are you at the forefront of this or playing catch up? Where do you stand on AI in general&mdash;enthusiast, skeptic, or other? {#ai-features}

**Frank:** We are generally enthusiasts of AI, but that doesn't mean we jump on trends as soon as they arise. We prefer to wait until there's concrete value for our users. That was the case with Merlin Project, where we integrated AI to generate full project plans&mdash;far beyond what most tools offer. For adoc Studio, we're eagerly anticipating Apple Intelligence's release in Europe next spring. We already envision several use cases, such as helping users rewrite, proofread, and summarize text, making the writing process smoother and more efficient.

### Tom: What are the multiple outputs that you're providing&mdash;web, PDF, anything else? Does the PDF render entire manuals rather than just a single page? {#output-formats}

**Frank:** Currently, we support HTML and PDF, with plans for formats like ePub and site generators on the horizon. What sets adoc Studio apart is its unified stylesheet, used for both HTML and PDF outputs. Unlike Asciidoctor and Asciidoctor-PDF, which require separate stylesheets and template languages for each format, adoc Studio ensures consistent formatting across outputs with a single CSS. Additionally, our composite document feature allows you to export single pages, chapters, or entire manuals&mdash;whatever suits your project needs.

### Tom: What features set adoc Studio apart from other tools in a distinguishing way? In other words, what would really compel tech writers to try out adoc Studio, potentially switching to it? {#distinguishing-features}

It depends on where users are coming from.

For Asciidoctor users, adoc Studio streamlines the entire publishing process by eliminating the need for separate converters like Asciidoctor and Asciidoctor-PDF, which require distinct style sheets and template languages. This approach often forces writers to manage intricate scripts to generate consistent outputs. In adoc Studio, all outputs are created with one CSS. This means users spend less time maintaining the converter and more time writing.

For users familiar with Markdown or other markup languages, adoc Studio provides a robust feature set without the fragmentation caused by dialects. In many markup systems, essential elements often require extensions, which can lead to compatibility issues when a document changes hands and another user must install the necessary plugins. In contrast, AsciiDoc and adoc Studio offer a seamless, plug-and-play experience, delivering all the functionality out of the box while keeping the learning curve low for new users.

For CCMS users, adoc Studio provides a lightweight and cost-effective alternative to traditional Component Content Management Systems. While CCMS platforms offer powerful tools for content reuse and consistency, they often come with high costs, steep learning curves, and the need for significant IT resources. adoc Studio delivers the same benefits&mdash;like modularity and centralized content management&mdash;without the cumbersome infrastructure.

**[Learn more about adoc Studio.](https://idbwrtng.com/adoc-studio)**

## About Frank Blome {#frank-blome}

<figure style="margin-right: 15px; max-width: 150px; float: left; margin-top:-10px;"><img src="{{site.media}}/frank-blome.jpg" alt="Frank Blome" /></figure>Frank Blome is the founder and CEO of ProjectWizards, a company dedicated to developing business software for macOS and iOS. With Merlin Project, their flagship product, they introduced the first professional project management tool for Apple devices. Drawing on this experience, the company began developing adoc Studio over two years ago to provide an ideal writing environment for AsciiDoc on macOS and iOS.

<hr/>

{% include ads.html %}

<style>
#content h3 {color: #d4811c}
#content p, #content li {margin-left: 25px;}
</style>