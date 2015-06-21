---
title: "2.8 Challenging factors"
permalink: /publishingapidocs2-8/
course: "Publishing API documentation"
weight: 2.8
---

## Challenging requirements
A lot of the solutions we've looked at tend to break down when you start applying more difficult requirements in your tech comm scenario. If you have to deal with some of these challenges, you may have to resort to more traditional tech comm tooling.

* Translation
* Content re-use
* Versioning
* Authentication
* PDF

You can handle all of this through a custom platform such as Jekyll, but it's not going to be a push-button experience. It will require a higher degree of technical skill and manuevering.

With my Jekyll doc theme, I'm single sourcing the content into about 40 different outputs. Jekyll allows a templating language called Liquid that allows you to do conditional filtering, content re-use, variables, and more.

To handle PDF, I'm using a tool called Prince that converts a list of HTML pages into a PDF document, complete with running headers and footers, page numbering, and other print styling.

## Collaboration

## Maybe a CMS is needed to handle this?