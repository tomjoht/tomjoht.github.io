---
title: "NotebookLM podcasts -- the missing piece in the GenAI puzzle?"
permalink: /blog/notebooklm-podcasts-and-technical-writing
date: 2024-10-06
categories:
- ai
- technical-writing
keywords: 
rebrandly: https://idbwrtng.com/notebooklm-podcasts-and-technical-writing
description: "<a href='https://notebooklm.google.com/'>NotebookLM</a> can automatically generate podcasts about any content you provide. In exploring these podcasts this week, I think these podcasts might complete a piece that was missing from the GenAI picture with tech comm: these podcasts can help you understand and learn the content you're working on, even when other AI techniques might shortcut that knowledge."
image: conversationainotebook.png
---

* TOC
{:toc}

## The problem with AI shortcuts

Let me unpack my argument in more detail. Let's say you use AI to help generate technical content. Maybe you pass in all the reference documentation, project documentation, and other information about the project you can find. Then you task AI to create content for various topics. But without a stronger sense of subject matter expertise, which AI tools allow you to shortcut, you're at the mercy of the real SMEs to review the content. 

For example, you'll need the project manager to review the overview, the tech leads to review the technical how-to's, and so on. This is because the AI has filled in the blanks in our mind, allowing us to have coherent, seemingly accurate information about topics we're only semi-familiar with.

This shortcutting of actual learning and knowledge gathering comes at a cost&mdash;we become dependent on the SMEs around us, and we can't make as many decisions about other content because we lack more in-depth knowledge and expertise. There's nothing more crippling to writers than to lack knowledge about the subject they're writing about. This is what I mean by the missing piece in the AI equation.

But what if there were also an AI tool that could help fill in those gaps, teaching you the technical knowledge and understanding that you need to ramp up your own familiarity from novice to SME? That's what NotebookLM podcasts do.

If you haven't toyed around with these NotebookLM podcasts, it's somewhat difficult to communicate how mind-blowing the outputs are. The podcasts (or generated conversations) aren't just AI voices reading an article or trying to educate you as in a classroom setting. The format uses conversation to educate, specifically following the format of a podcast like RadioLab. The two co-hosts share a lot of information back and forth in an upbeat style. Their attitude is almost always enthusiastic toward the subject&mdash;they treat it like it's the coolest, most interesting thing they've come across. This enthusiasm helps even the most mundane subjects come alive.

The ability to make boring subjects interesting makes it much easier to learn. Even if your prompt is nothing more than the words [“poop fart” over and over](https://x.com/kkuldar/status/1840680947873718396), the hosts will find a way to make this interesting. If you actually listen to what the hosts find to say for 6 minutes about the "poop fart" text, it's fascinating. They turn it into an exploration of repetition, of Rorschach in art, of modern art and assigning meaning where none might exist, and more.

No matter what the topic, the hosts relate the ideas to their lives, use frequent analogies to simplify concepts, switch off who asks the questions and who provides the answers, and zero in on aspects that they can tease out in a conversation. It's brilliant.

## Combining with other AI tools

You can use regular AI tools in combination with the podcasts for some interesting results. For example, while preparing for a book club, I found a PDF of the book we were reading and passed it into Gemini for a chapter-by-chapter summary. (I used separate prompts for each chapter to ensure the chapters would be rich in detail. Then I chunked up about 3 chapters each and pasted them into separate notebooks.) The result was a series of 10-minute podcasts covering the entire book. Because I'd also read the book, I could tell the content was accurate. Moreover, their conversations were interesting and fun to listen to.


## Exploring NotebookLM in technical contexts

I've wondered about more explicit ways to use NotebookLM podcasts for documentation. Today I made about 10 podcasts (each notebook has different content, generating its own audio file). The topics I tried were the following:

* An SDK overview
* Each API section in the SDK
* An engineering report about two of the APIs, noting quality measures
* An organizational strategy/vision document
* A biweekly update on a project
* A code sample
* An incredibly technical conceptual article

Each of these podcasts was impressively educational and interesting. With the technical conceptual article, I found myself thinking, “Oh, is that what that article was all about?” I suddenly understood it. With the code sample, I wondered how the hosts managed to expand their conversation into so many other details. How did they unpack all that from a single code sample? The engineering report was probably the most interesting. What I initially overlooked as a boring quality report, the hosts turned into the most fascinating (and alarming) conversation. It made me want to re-read that report in much more detail.

In about an hour, I consumed 10 of these podcasts. Unfortunately, each is about ten minutes long, so if you want to focus on a specific topic, you have two options:

* Focus the notebook more narrowly on that topic.
* Expand the content in other AI tools with the slant you want.

For example, you could take some existing text and expand it through AI and infuse it with the slant and approach you want the podcast hosts to take.

{% include ads.html %}

## The time investment

All of this takes time, of course. Most podcasts I listen to in the car automatically download in my podcast app, and I simply open them, see the new episode, and hit play. So the NotebookLM podcast feature will only apply for those who are serious about learning. Since not that many people operate in active learning mode, these podcasts might struggle to become a main listening activity. It requires some preparation time to think about what you want to learn, to gather up the content, then to create the podcasts.

I usually prepare the podcasts on my laptop, generate the audio, and then open the Notebook site on my phone and listen while biking. (Here's a tip: Go to any page on your mobile app, then click the menu and select "Add to Homescreen." Voila, you now have a website functioning as a mobile app.) Once you hit play on the site, you can turn off your phone's display and the audio will continue in the background. 

The only limitation I've found is that you can't queue up a series of podcasts to listen to, and since the podcasts are so short, I have to stop every 10 minutes to load up a new podcast.

## Potential as a documentation deliverable

It's possible that these NotebookLM podcasts could be a documentation deliverable themselves. I've met with one team exploring them as release notes, and they sound awesome. But every now and then, the hosts sneak in a detail that's not accurate. For example, I generated a podcast from my post [Two days in my life as a technical writer](/blog/two-days-in-life-as-technical-writer-reflection). It was an absolute hoot to listen to this! I actually stood up and stared out the window mesmerized for ten minutes. But the hosts made up a detail saying that in logging my activity, I'd put the times I went to the bathroom. Huh? That's not in the post, and why would I do that? But this little detail was marginal compared to the rest of the post.

As a pure feedback mechanism, it's great to see what the hosts pick up on and how they interpret your writing. This could be another great use case&mdash;are the points I wrote landing well with my audience? The podcasts could also be a way to get through all the newsletters and other reports that come your way and which are too boring to read sitting at your computer. 

But I think the real value is using NotebookLM podcasts to learn. Technical writers swim in highly technical, constantly changing material. If we can use these conversational podcasts to stay ahead of the curve, ramping up quickly on technical topics, getting the gist of many different reports, strategies, technical papers, and more, we can then use this knowledge to write and edit more proficiently and powerfully.
