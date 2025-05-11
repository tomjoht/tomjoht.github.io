---
title: "I feel like I’ve seen the future today"
permalink: /blog/seen-the-future-document-authoring-api
date: 2025-04-30
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/seen-the-future-document-authoring-api
description: "Today was one of those days where I felt like I've seen the future. In about a day, I used AI to create 8 different tree diagrams for APIs in an SDK I support. Each tree diagram has varying numbers of elements (from 50 to 350+). The tree diagrams visually depict the API structure and hierarchy, showing the data type, required/optional status, and sometimes other details. Each element links to its specific section in the reference documentation."
---

What blows me away is how easy the tree diagrams were to create. I'm using Gemini Pro 2.5 integrated into my VS-Code-based IDE (Google's homegrown IDE), with the ability to easily drag reference documentation, proto file sources, and other files into Gemini's context. Gemini was able to quickly interpret the API and render the tree diagrams, include the appropriate links, and more. It even created a list of bullets describing the diagram conventions and notation. 

Although I modeled these tree diagrams on some others I'd already created, Gemini enabled me to do this in an extraordinarily fast time &mdash; about a day, that's all. This task would have taken me a month if done manually, and it would be prone to many errors. Gemini Pro 2.5 is at the top of leaderboards like [Chatbot Arena](https://lmarena.ai/). (Maybe a year ago, Google's AI models lagged behind others, but now, Gemini is what I prefer both at work and home.)

I'm kind of shaking my head at what AI has enabled me to do this week. On Monday I wrote a substantial landing page for one of our products, essentially converting information from a product slide deck and other information sources into a coherent flowing narrative that orients users and summarizes key parts of the product. This also took me about a day. For that effort, I actually used the Gemini web app, which has canvas functionality. 

With the [Gemini web app](https://gemini.google.com/app), the canvas allows you to easily iterate on content with multiple drafts. You can read a paragraph, highlight it, and write something like, “*I think we need to add some more detail about this aspect. Here's an internal doc with more info and a slide that has some detail. From this info, expand some more info here.*” Then in a matter of seconds (and uploading the mentioned file assets), canvas shows the changes. Then you move on to the next part that might need adjustment.

I know I've been an AI optimist for a while, but today was one of those days where even engineers are like, *how are you doing this?* Basically, the tree diagrams augment and address existing limitations with API reference documentation. I wouldn't say that tree diagrams *reinvent* reference docs; more realistically, they provide quick reference guides for APIs. However, even though quick reference guides don't seem like anything new, they're really helpful for developers using an API. Both engineers and product managers love them. 

And with Gemini (and other AI tools, I'm guessing), the tree diagrams are easy to create. Essentially I'm using Gemini to *program*&mdash;through the English language&mdash;the output based on a list of inputs. Having a million token input is necessary to crunch through API reference documentation and source files.

If I'm looking at the future, I think it's bright for tech comm. The key is that we have to focus our efforts on those tough problems, using AI and especially reference documentation and other content assets to tackle them. Now my biggest challenge is the queue of changelists that I'm waiting for others to review and approve.

{% include ads.html %}