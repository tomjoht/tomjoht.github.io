---
title: "Blown away by fork to my documentation theme"
categories:
- jekyll
keywords: 
summary: "A company (Loopback.io) recently forked my Jekyll documentation theme and did an amazing job enhancing it. One of their writers let me know on Twitter that they forked and modified the theme, and provided a link. At first I didn't think much of it, but as I've been looking at the enhancements in the code, I'm absolutely blown away."
thumb: 
published: false
---

You can check out Loopback.io's documentation site here: [loopback.io/docs](http://loopback.io/doc/).

Without a doubt, this doc site contains a lot of content. It's the kind of documentation that, if printed, would probably fill 500+ pages. Additionally, the site accommodates translations for about 5 different languages (or plans to). 

The UX person who improved the code in the sidebar is a total genius with Liquid. The sidebar code provides a more concise design with expandable/collapsible sections, and the site's display seems to handle as many levels as you can feed it. The designer uses parameters with includes, and then iterates through the parameters passed to the include. This isn't even documented coherently in the Jekyll documentation, but this person seems to be a pro at liquid. 

It's times like these that make me (painfully) aware that I am *not* a professional UX web developer. I get a glimpse of a skill set several levels beyond me. 

Although my Jekyll doc theme has been on Github for more than a year, this is the first time someone has forked it in a way that takes the theme up a few levels.

I'm going to try to roll back in some of the improvements Loopback made. I have to separate out the features I think would be worthwhile while removing the rest. Ultimately I want to strip down the site back to its bare bones minimum, genericizing everything.

I've realized some other shortcomings in my documentation theme. At times I've treated the theme as a playground for implementing new ideas for code. However, each new idea adds some code that makes the theme more complex. One appeal of Jekyll is that its code is usually simple enough to understand and customize it. The more unnecessary features you add, the more unwieldy and confusing it gets. 

There's certainly a balance between simplicity and complexity when it comes to themes. I don't think many people looking for doc sites plan to use the blogging features, or my attempt at managed links, or even my series code. People really need a solid sidebar navigation component, responsive design, alerts, and other core features. 

It'll be a while before I can sort through all the code and both understand and roll it back in. This experience has persuaded me to the power of open-sourcing code on Github. This code will certainly take this theme to the next level, and someone might come along and do something similar in the future. 

Ultimately I want this Jekyll theme to be a design pattern for Jekyll-based documentation sites. It should contain best practices for coding and developing out all the features tech writers need.

