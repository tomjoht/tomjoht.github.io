---
title: "WordPress and web CMSs (Trends to follow or forget)"
permalink: /trends/trends-to-follow-or-forget-wordpress.html
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/trendswordpress
series: "Trends to follow or forget"
jtype: notes_fizzled_trends
description: "This post is part of a series on trends that explores trends that I've either followed or forgotten, and why. The overall goal is to better understand the reasons that drive trend adoption or abandonment in my personal career. This post focuses on WordPress and web content management systems (CMSs)."
---

## WordPress and web CMSs

[WordPress](https://wordpress.org/) started out as a popular blogging platform but has since evolved into a multipurpose online platform with an extensive library of plugins that makes it easy for non-technical people to create rich, interactive websites for almost any need. WordPress is so popular that, as of 2021 it [powers approximately 37% of the total websites on the web](https://www.envisagedigital.co.uk/wordpress-market-share/)! WordPress falls within a category of online web content management systems (CMSs) similar to [Drupal](https://drupal.org) and [Joomla](https://joomla.org), which are also popular.

## Why I embraced WordPress and web CMSs

WordPress gave me the tools I needed to launch my blogging presence online. My timeline started in 2006, when I volunteered to be the "webmaster" (remember that term?) for the STC Suncoast chapter (which has since combined with Orlando as [STC Florida](https://stc-orlando.org/)). As the new web manager, I wanted to redo the website, so I poked around on the available tools on the web host panel and found an easy path with WordPress.

My efforts at managing the STC Suncoast site soon [spawned my own blog](/2006/06/01/why-this-blog-separate-from-the-suncoast-blog/), and later I become adept enough at WordPress that I managed a side hustle as a freelance WordPress consultant for about 5 years (often working on the [Lavacon.org](https://lavacon.org) site) to supplement my day job as a technical writer.

I loved how WordPress made it easy for people without deep technical skills to create and manage websites. The web leveled the playing field, allowing anyone to write and publish content. But tools like WordPress made it technically possible for people to actually manage their content online in a way that looked professional, with the functionality they needed through the library of plugins.

For years, I longed to merge the toolset used in my day job as a technical writer  (at the time, [HATs](/trends/trends-to-follow-or-forget-hats.html)) with my post-work hobby as a blogger (using WordPress). However, while WordPress worked great for publishing web content, its PHP code made it a difficult sell for enterprises, which typically forbid PHP due to security vulnerabilities. In fact, troubleshooting hacked WordPress sites was a common task in my freelance consulting.

Besides PHP, WordPress also required other infrastructure that was hard to set up without more engineering support, such as a MySQL database. Many web hosts (like Bluehost) provided this infrastructure in a way that was already configured and optimized for WordPress, so you didn't have to worry about things like whether you had libcurl enabled and configured. But this wasn't the case within the enterprise. In the enterprise, you didn't simply get FTP credentials and a web panel to manage a site. You might get a bare-bones Linux box, if they give you anything at all. You usually would need engineering-level access to hit a production server as well. And engineering groups would rarely grant production server access to technical writers.

In sum, security practices made WordPress almost an impossible option in the enterprise. For many years, I thought about how great it would be to finally get the green light to use WordPress for docs, and I waited patiently for the right enterprise conditions to experiment.

I finally got my chance to play in the web CMS space when I joined a startup (Badgeville, focused on gamification &mdash; both of which fizzled) that was using [Drupal](https://www.drupal.org/) as the main content platform for documentation, support forums, and marketing content &mash; all living together on one site under the same federated search.

Drupal agencies were fairly common, and we hired an external agency to customize some API documentation templates in Drupal. All we had to do is upload some JSON files and populate other fields in a structured template to publish API docs that looked pretty amazing, I have to say.

However, despite the ease of these templates, Drupal was a bit clunky for editing. I usually [wrote content in Google Docs](/2014/02/25/a-simple-way-to-write-edit-and-publish-documentation-online-using-google-docs-and-markdown/), managed the review process there, and then [converted the content to HTML](/2017/09/22/convert-google-docs-to-markdown/) to paste into the Drupal editor (bypassing their WYSIWYG editor).

## Why I abandoned WordPress/Drupal and web CMSs

I left the Badgeville startup after just one year due to company instability issues. The hiring and firing in that place was so volatile, with a new CEO every six months rebalancing everything, that I'd become nervous (being the main breadwinner for my family and living in the one of the most expensive places on earth &mdash; SF Bay). As a result, I transitioned to another company (41st Parameter / Experian). With that transition, I left Drupal behind.

However, my fantasy of using WordPress (or similar, like Drupal) for docs had met a reality check. Documentation scenarios presented many challenges that weren't common with more mainstream online publishing needs handled by WordPress. For example, content re-use, variables, translation workflows, versioning, access gateways, review workflows, and more all become problematic with a web CMS.

Further, doing simple operations like global find-and-replace was challenging. To do a find-and-replace in Drupal, it involved a database query that could very easily go wrong (with unsupported characters ending up in the output). You also couldn't easily move pages around or rename them. And editing became much slower.

In fact, years later when I started working for Amazon, the team I joined was using a web CMS as well (a Java-based web CMS called [Hippo CMS, which was later rebranded to [Bloomreach](https://documentation.bloomreach.com/)). It was also a nightmare to work in that web CMS as well for similar reasons. One of my first tasks was to help us ditch that platform.

Despite the problems of web CMSs, engineers liked these solutions for writers because they enabled us to push content into production environments through a simple, controlled interface. These tools enabled an easy way to publish content externally, without going through official engineering releases, but the authoring experience was poor. WordPress excelled for me as a blogger because so much of the content development workflow involved one-off blog posts &mdash; articles that I wrote once and never returned to. But tech docs was a different affair &mdash; you managed a set of documentation overtime, constantly editing existing content. You might change a product name across 20 different pages, or add an include for a note or warning on the same pages.

Because the authoring experience was so bad in these web CMS systems, I actually started using OxygenXML and DITA to create and manage content outside of Drupal. In fact, [DITA](https://idratherbewriting.com/ditaqrg/) started to appeal to me because it offered solutions for all the tech comm scenarios I was up against (unlike WordPress, which required me to find my own hacks). I longed to [merge the worlds of DITA and web-based CMSs](https://idratherbewriting.com/2009/02/08/merging-worlds-dita-and-wordpress/). I wrote a whole series of posts on this topic that included the following:

* [Import DITA's XHTML Output into WordPress](/2014/10/14/import-dita-xhtml-output-into-wordpress/)
* [Author in DITA, publish with WordPress](/2014/08/19/author-dita-publish-wordpress/)
* [Challenges in using WordPress for publishing DITA content](/2014/09/02/challenges-using-wordpress-publishing-help-content/)
* [Using WordPress natively for single source publishing and conditional content](/2014/09/08/using-wordpress-natively-for-single-source-publishing-and-conditional-content/)
* [Import DITA Webhelp Output into WordPress](/2013/01/21/how-to-import-webhelp-from-a-help-authoring-tool-into-wordpress/)

In the end, my experiments with DITA and Drupal ended when I left the Badgeville startup and joined another company that was using a different system for docs (first Confluence, and then Jekyll). I also abandoned WordPress for my personal blog about this same time as well (circa 2015) so that I could better unify the authoring/publishing systems in my professional and personal worlds. If I was using Jekyll to publish docs at work, I also wanted to use Jekyll to publish my blog at home.

## Current status

WordPress still continues strong for the variety of websites that make up the web, but I don't come across too many WordPress-based documentation sites. Of course, it's not always clear what technologies are used in building websites ([Wappalyzer](https://www.wappalyzer.com/) is a tool that performs a tech probe query on any site you view), but my sense is that tech writers are often burdened by requirements that WordPress never evolved to cover.

As soon as you have to produce PDFs, send docs out for translation, provide multiple versions, re-use content, implement variables, control access to some content, make content available offline, etc., using these web CMS platforms becomes strenuous. Additionally, companies usually restrict the technologies that these systems require (e.g., PHP). As a result, WordPress never seemed to take off as a common documentation platform, despite powering so many sites on the web. The failure of WordPress to excel as a tech comm tool reinforced the face that technical writers face unique requirements for content.
