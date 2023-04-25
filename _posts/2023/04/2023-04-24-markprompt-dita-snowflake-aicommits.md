---
#layout: newsletter
layout: post
title: "Newsletter: Markprompt Q&A, LearningDITA, Snowflake docs, AI Commits"
permalink: /blog/markprompt-dita-snowflake-aicommits
date: 2023-04-24
categories:
- technical-writing
- newsletter
keywords: 
rebrandly: https://idbwrtng.com/markprompt-dita-snowflake-aicommits
description: "The latest techcomm news for April 24, 2023."
---

## Markprompt Q&A: interview with founder

Last week I played around with Markprompt, integrating it in a basic way on my [API doc site](https://idratherbewriting.com/learnapidoc) (click the Chat button). During the process, I had a few questions, mostly around how to optimize content for embedding. I asked the co-founder, Michael Fester, if he’d be up for a Q&A post, and he agreed. Our Q&A exchange covers everything covers everything from the history of Markprompt to strategies for links, analytics workflows, optimal page sizes, preventing hallucination, structure and semantics, branding, privacy, and more. If you’re looking to move toward integrating GPT-style chat into your docs, especially with Markprompt, this post might help clarify some details. [**Read more >**](https://idbwrtng.com/markprompt-questions-and-answers)

{% include newsletterlink1.html %}

## Not your typical technical writing course (Sponsor)

Universities and other institutions teach by copying available material in existing courses and stuffing your head with information that may or may not apply to get started as a technical writer.

[Jump School](https://idbwrtng.com/becometechnicalwriter2) focuses on exercising knowledge &mdash; doing exercises, creating documents, and building a portfolio. 

These courses are “lean” and not full of theoretical or abstract knowledge so most members who earn a certificate are actively working in the industry within a few months.

If you sign up for the Jump School, you can save $100 off the course price when you use code <code>April100</code>.

[**Learn more >**](https://idbwrtng.com/becometechnicalwriter3)

{% include newsletterlink4.html %}

## What is LearningDITA? (podcast)

The latest podcast from Scriptorium focuses on their [LearningDITA course](https://learningdita.com/), which has about 15,000 users so far. It seems to be a highly popular and valuable offering for learning DITA. The last time I mentioned LearningDITA on my blog was [back in 2015](https://idratherbewriting.com/2015/07/28/learning-dita-scriptorium-course/), when the course launched. In 2014, I was learning and experimenting with DITA as a way for managing doc content outside of Drupal. At the time, DITA tutorials were scarce and it seemed like DITA experts preferred to hold expensive DITA bootcamps instead of openly sharing the knowledge online. That’s why [LearningDITA](https://learningdita.com/), a free resource, was such a welcome addition on the internet.

Although the ChatGPT wasn’t discussed during the podcast, I was curious how much ChatGPT knows about DITA. From my initial playing around, quite a lot. ChatGPT gave me code samples of the several topic types in DITA (e.g., task, reference, troubleshooting). It also converted the format of unstructured content to DITA structure. I’m not sure how accurate its DITA knowledge is, since I haven’t used DITA for more than a decade. But if you’re in a DITA environment, ramping up, it might be worth exploring ChatGPT (or Bard &mdash; it also seemed familiar with DITA) as a complement to the tutorials in the Learning DITA course. 

Reference documentation like the [OASIS DITA schema](http://docs.oasis-open.org/dita/dita/v1.3/errata02/os/complete/part3-all-inclusive/archSpec/base/topicover.html#topicsoverview) could benefit from a more interactive user experience. Reference docs are almost always consulted on a per-question basis (for example, what is X element). AI tools can pull that info out quickly and promptly. [**Read more >**](https://www.scriptorium.com/2023/04/what-is-learningdita-podcast/)

{% include newsletterlink2.html %}

## Building a New Platform for Snowflake Documentation: Part I and II, by James Lai

This duo of posts by James Lai describes the change that the company Snowflake, with its 1,800 pages of reStructuredText docs and 20 technical writers, made to revamp its documentation site. Snowflake's previous doc site ran on Sphinx and was uploaded to S3 with Cloudfront as the CDN. They felt that Sphinx built slowly, had poor navigation components, was hard to customize, and looked outdated. 

In brainstorming a new site, the team examined systems they enjoyed and noted patterns. Their shortlist of model docs included “Stripe, Twilio, Github, Heap, Postman, Shopify, Hashicorp and Square.” Lai says that from these sites, they "noted common patterns (such as as-you-type search, copy buttons for code blocks, light and dark themes), their overall navigation and content strategy, page structure, presentation, and other features.”

Although Snowflake’s other sites used Go, the doc team needed more interactivity and so chose Next.js, based on React. Interactive elements they wanted included "collapsing sidebars, collapsible navigation, tabs for displaying multiple languages in examples ... interactive examples and results, diagrams, and even feedback systems." Lai says that "If we were to use Go to build the platform, the interaction with the code at that point becomes split-brained.“

The team chose Next.js+React over Go+React because it provided server-side rendering capabilities, better interactivity, and efficient page transitions. For styling, they chose TailwindCSS. They still used Sphinx for building the basic HTML but then passed the HTML to Next.js for the layout. However, Sphinx's build times were still lengthy (because Sphinx can’t rebuild just the changed pages). To address this, they moved some build processes to Jenkins to free up writers’ bandwidth from local builds. This dropped their build times from 45 minutes on a local computer to 7 minutes on a server. You can view their new doc site [here](https://docs.snowflake.com/). **Read more >** [Part I](https://medium.com/snowflake/building-a-new-platform-for-snowflake-documentation-part-i-f655acdadc34), [Part II](https://medium.com/snowflake/building-a-new-platform-for-snowflake-documentation-part-ii-9b01bf08e7e7)

{% include newsletterlink3.html %}

## AI Commits

AI Commits, an open-source Github project, uses the OpenAI API to figure out what to write for your commit message. The project’s tagline reads: “A CLI that writes your git commit messages for you with AI. Never write a commit message again.” 

While using AI tools to write commit messages might seem helpful for technical writers, because it would allow you to see what developers have changed in a more readable way, some developers aren’t eager for it. One developer comments on a [Hacker News thread](https://news.ycombinator.com/item?id=34790721): “Something I learnt about good commit messages over my career was that the more useful messages don't summarize what is in a change, but why the change was needed. Usually everyone can quickly figure out what changed if the commit is of some kind of reasonable size, but why it was changed is lost forever.” 

Perhaps the larger reason why developers won’t use this tool is for privacy. [Anderson Bosa says](https://dev.to/t4inha/my-experience-with-aicommits-794) that having OpenAI APIs write your commit messages could put confidential info at risk: “Since aicommits reads and analyzes the code context, it could potentially expose sensitive information such as API keys, passwords, and other secrets or the intellectual property itself, in this case, the source code.” The privacy factor seems to be a huge roadblock for enterprises embracing more AI tools in developer workflows. [**Read more >**](https://github.com/Nutlope/aicommits)