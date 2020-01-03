---
title: "My gravity towards tools"
categories:
- technical-writing
keywords: 
description: "Tools are an odd problem in tech comm. On the one hand, companies don't want you to spend hardly any time at all either learning or setting up authoring tools. Preferably, you should already be familiar with the company's tools before being hired. Then after you're hired, companies usually want you to focus on content, not any kind of tool configuration or setup. On the other hand, it seems like almost every company I've been at has needed extensive help with authoring/publishing tool setup and configuration. I am starting to think that my pattern of deep diving into tool sets at companies is indicative of a deeper interest in web development."
bitlink: http://bit.ly/gravitytowardstools
---

## Background 

In a quest to make our authoring tools as drop-dead simple as possible, I've been swimming in Jekyll code for the past few days, creating prototypes for a sidebar navigation with a more traditional documentation theme. However, despite the time I'm spending setting up this tool, I know that I shouldn't spend a lot of my tech comm time "tinkering" with tools. Instead, I should focus 95% of my energy on creating great documentation.

But in nearly every company I've worked at, authoring and publishing tools have always needed some help, and I've been more than willing to give it. Here's a short recap of my tools involvement at various jobs in my career:

**2002** ... When I was a writing teacher at the American University in Cairo, we had a tool called WebCT (which was replaced by Blackboard). In addition to creating a WebCT resource hub for all writing faculty, I also built my own interactive class website using Dreamweaver. This was before I discovered technical writing.

**2004** ... As a copywriter for BodyHealth, I could have written everything in Notepad and submitted it to our website manager. This complete hands-off approach with tools bothered me. I didn't like my relegation to the non-tool world. I admit, I wrote a ton of content. Not all of it saw the light of day, and my manager couldn't keep up with my pace.

**2005** ... As a technical writer at Raymond James, I dug into our Robohelp skin and rebranded it to match the company's look and feel (colors, logo, buttons, etc). I also created extensive macros to fix the Word output so that we could more easily clean render it to PDF. 

**2007** ... As a technical writer for a government contractor, I wrote everything in Microsoft Word and Visio, because these were formats people could work with and use after I left. I constructed elegant MS World styles throughout the docs and made the content all style-based. I also loved playing around in Visio.

**2007** ... As a technical writer for a Utah-based non-profit, I introduced MadCap Flare and set up stylesheets, templates, PDF output, and other authoring details. I got space on a server for tech comm to directly publish to the web via FTP.

**2010** ... Same company, different group. I also created a Mediawiki theme and published documentation on the wiki using stylized templates I'd created. I resisted the move to have another department's system consume and control our documentation (though that is ultimately what happened after I left).

**2012** ... As a technical writer for Badgeville, a startup in California, I developed a process for efficiently writing and reviewing Markdown in Google Docs, converting it to HTML, and then feeding it into Drupal, the company's publishing platform. I also pursued ways to import DITA into Drupal.

**2014** ... As a technical writer for 41st Parameter, a startup acquired by Experian, I first implemented DITA through OxygenXML and then later created a Jekyll theme to help move content out of Confluence-generated PDF into a web format. This is where I first started learning Jekyll.

**2016** ... As a technical writer at Amazon, I created a hack to insert a navigation sidebar into an existing CMS (called Hippo), and also developed a more extensive Jekyll theme for local viewing and as a potentially deployable site. (See [Coding the sidebar navigation element for documentation websites](https://idratherbewriting.com/2016/10/23/coding-sidebar-navigation-for-documentation-websites/) for more details.)

It seems that no matter where I go, I get involved in the authoring and publishing toolchain more than most other tech writers. Where others are content to use the existing setup (no matter how poor it is), I'm always trying to innovate with tools.

This Dilbert comic describes it well: [dilbert.com/strip/2016-10-17](http://dilbert.com/strip/2016-10-17).

Why the interest in tools? Honestly, I'm not sure. My background is in English and Creative Writing, not Engineering or Web Development.

## Deep diving into tools

Few things are harder to change at a company than the documentation tools. For starters, you almost never get a big chunk of time to take a hiatus from documentation while you revamp the tools. In every situation, you are rebuilding the highway while simultaneously driving down it. 

This means if you want to start hacking the tools, you've got to squeeze in your tool time outside of work or during the infrequent times when you aren't heads down working on documentation for an upcoming release. 

Also, engineers and product managers care almost nothing about the tech writer's tools, so they will see little value in any effort here.

If you're always working on documentation but are also revamping the tools, at some point you need to switch over your content to the new or revamped tool. You can't have some content in the old tool, some in the new, and continue to publishing documentation that is coherent. When you make the change, you've mostly got to bite the bullet and convert huge chunks of it all in one go. I remember at Experian, when I switched over to OxygenXML, and then later to Jekyll, I pretty much lost some weekends.

Additionally, no matter what format you choose, you're going to spend quite a while reformatting things. Despite the supposed interchangeability of formats like you see on [Pandoc online](https://pandoc.org/try/), you can't easily convert to other formats without carefully adjusting things. Even when I tried to move from DITA to regular HTML (and then to Markdown) I had a bunch of extra classes and IDs in the HTML output that I needed to strip out. 

Setting up authoring and publishing tools can be incredibly tedious. Making one small change could break a whole chain of things that you also need to fix. (Again, Dilbert is spot on: [dilbert.com/strip/2016-10-18](http://dilbert.com/strip/2016-10-18).)

I think at some point, I bet I could develop a side business creating documentation themes based on Jekyll, or something. Before moving out to California, I used to run a small freelance business creating themes for WordPress, and I definitely had enough business from small clients to keep me busy, but never enough to transition beyond anything more than pocket change, and the hours I sunk into projects outweighed the profitability of the projects. 

Since moving to California, I haven't had much time for side projects. API documentation is fully consuming, because even if you aren't doing work at home, you always need to be learning some programming language or other technical platform. 

Also, I doubt there are enough doc departments using Jekyll that would actually hire out theme development (especially given the engineer-heavy environments where they might actually use Jekyll). If you're in an engineer-filled environment, you can usually get the attention of a web developer or other savvy front-end engineer to create a theme.

Despite all this, I still love exploring Jekyll. It has just the right amount of flexibility and power while maintaining a sense of the unknown about its potential -- it captivates me.
