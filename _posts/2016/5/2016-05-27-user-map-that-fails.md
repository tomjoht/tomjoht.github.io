---
title: "User maps should give users the whole picture"
categories:
- visual-communication
keywords: 
summary: ""
thumb:
published: false
---

I've been thinking more about user maps lately. My first user map looked like this:

<figure><a href="http://idratherbewriting.com/2016/05/11/establishing-more-context-in-tech-comm/"><img src="{{ "/images/diagram_setupworkflowdiagram.png" | prepend: site.baseurl }}"/></a><figcaption>This shows all the steps in the workflow.</figcaption></figure>

The feedback I got was that it was too massive. It made the process look really complicated.

In this new version, I made the workflow scrollable (and in one row), with a specific workflow highlighted. 

<figure><a href="//jsfiddle.net/tomjohnson1492/gj1agw00/2/"><img src="{{ "/images/scrollingusermap.png" | prepend: site.baseurl }}"/></a><figcaption>The idea is that the current page auto-focuses on your current step.</figcaption></figure>

Here's my JS Fiddle:

<script async src="//jsfiddle.net/tomjohnson1492/gj1agw00/2/embed/"></script>

The underlying code is all JS and CSS. The idea is that you create the map in one file, and then include the file at the top of each doc page where it applies. However, on each page, you add a small JS script that specifies the scroll position and CSS that specifies which box is active. 

When I showed this to my wife, she said she didn't like having to scroll. She wanted to see the whole map at once. I agree that having to scroll is less than ideal. Really when you look at a map (any map, such as Google maps), there are two features you want: 

* Zoom out
* Zoom in

Ideally the user should have some controls to zoom out or in, but the idea of horizontal scrolling like this seems like a design fail. What do you think? 
