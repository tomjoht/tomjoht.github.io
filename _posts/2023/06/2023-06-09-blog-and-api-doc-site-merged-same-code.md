---
title: "Blog and API doc course are now one site"
permalink: /blog/blog-and-api-doc-site-merged-same-code
date: 2023-06-09
categories:
- jekyll
keywords: 
rebrandly: https://idbwrtng.com/blog-and-api-doc-site-merged-same-code
description: "I've been a bit quiet on my blog lately because I've been focusing on some technical upgrades. They probably aren't that noticeable, but I recently merged the blog and API doc site into the same code base."
---

* TOC
{:toc}

Previously, the blog ran from one Jekyll site stored in the [tomjoht.github.io repo](https://github.com/tomjoht/tomjoht.github.io), and the API doc site ran from the [learnapidoc repo](https://github.com/tomjoht/learnapidoc). I originally put the API doc course into a separate repo because it was easier to manage the content that way, but making updates to the code has been a slog over the years, requiring duplicate updates across the two repos, remembering the reasons for the differences in templates and code and logic, etc. Further, the two sites were never seamless, even though they were branded similarly.

By having all code running from the same Jekyll site, it's a lot easier to manage. I moved all my series posts to use the same yaml format and sidebar logic as my API documentation content as well. The top navigation has the same links, as well as the sidebar, footer, etc.

{% include ads.html %}

One reason I decided to merge the two sites (after having them separate for years) is because, frankly, I felt more confident to make technical changes with AI tools available. It's a lot easier to figure out the right regex commands to make changes across hundreds of files, for example. Also, if I'm trying to adjust some Liquid logic and need a bit of help, AI responses around Jekyll are great. This is another reason for choosing a doc platform with a lot of information, tutorials, and documentation about it &mdash; the AI tools are so much more helpful when you need them. 

Finally, I realized that I enjoy working with websites and code. After switching from Amazon, where I developed and managed the doc platform for our group, to Google, where a separate tools team manages the doc platform across thousands of projects, I haven't been as knee-deep in website code as I used to. I miss that. I think doc tooling is one of my strengths, and I want to allow myself to get back into it. I'm curious to see how many enhancements I can make given how AI lowers the technical bar for amateurs like me to DIY everything.

I still have more technical debt to fix, but it's now a lot easier working with one code base. In the past, I've seen questions about whether it's better to have separate sites for separate interests, or to have a single site that contains posts about all interests. Having been in the blog business for 16 years, I can say that managing multiple sites is impractical, particularly if you're handling the code aspects of the sites. It's much better to have a single site that contains all your information.

Other technical debt I plan to fix includes updating all the libraries (Bootstrap, Algolia, and more) to the latest versions, creating a new version of my Jekyll theme on GitHub (based on this site's code), adding some tutorials on how to generate PDF and EPUB formats, and more.
