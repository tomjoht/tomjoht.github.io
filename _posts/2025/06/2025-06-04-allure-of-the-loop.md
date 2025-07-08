---
title: "The allure of iterative improvement loops (AI experiments)"
permalink: /blog/allure-of-the-loop
date: 2025-06-05
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/allure-of-the-loop
description: "In this experiment, I try to implement a loop of recursive self improvement on an essay, but it fails. I gave Gemini a prompt to continuously improve a blog post through 10 iterations, hoping to see exponential quality gains. Instead, the AI's editorial judgment deteriorated over time, resulting in awkward, pretentious writing that was worse than the original."
image: recursiveloopaiexperimentthumb.png
---

* TOC
{:toc}

In playing around with agents, I've become curious about the idea of the loop. Would it be possible to design a prompt that gets the agent running a loop of continuous improvements for content? I decided to run an experiment. I started with the manually written blog post that I published the other day &mdash; [My first vibecoding project](/blog/my-first-vibecoding-project). I then gave Gemini Code Assist this prompt.

I asked AI (Gemini) to read the article and consider how it could be improved. Then implement the improvements. Read the new version of the article and consider how this version could be improved. Then implement the improvements. And so on through 10 iterations. I was excited to see how great the post would be after 10 rounds of this. 

<figure><a href=""><img src="{{site.media}}/recursiveloopaiexperiment.png" alt="Recursive loop toward content improvement" /></a><figcaption>Trying to initiate a recursive loop toward content improvement</figcaption></figure>

Unfortunately, this didn't result in exponentially better content. I'm not entirely sure why, but the AI seems to lack some judgment, especially regarding its own writing. The resulting article ended up with pretentious and awkward diction. While some places did show improvement, overall it felt subpar and I threw it out, reverting to my original draft.

{% include ads.html %}

This idea isn't new. It's the holy grail of recursive self improvement (RSI), and it's probably a good thing that our AI systems aren't yet capable of it. If systems could implement RSI, they could dramatically improve in short periods of time, since they could iterate rapidly through a task. Early versions of AlphaGo played Go thousands of times against variants of itself to discover new strategies and techniques. 

The problem is that with each iteration, Gemini lacks the right judgment to really recognize and assess problems in the content. The first couple of edits were decent, but that editorial acumen fizzled. For rounds 7-10 of my experiment, Gemini was mostly "refining" the language, selecting better word choices here and there. But the final result was awkward sentences that I'd never say myself, and would raise an eyebrow if I read them. Somehow, RSI failed. The second and third AI-improved drafts were the best. After that, the essay quality went downhill.

I'm not sure what to make of this experiment and why it failed. I suppose I should be glad it did fail, for when AI can achieve RSI, it might displace us all. 

Perhaps I just haven't found the right approach, the right sequence of steps for Gemini to perform with each iteration, which might lead to a superior essay. Instead of asking Gemini to assess its own draft and incorporate revisions, it might be better to apply a heuristic that would analyze the content through a different lens with each iteration. This way, Gemini (like a human) wouldn't become blind to the content, resigning the edits to decisions about whether to replace a semicolon with a period, and then reverting back to the semicolon.




