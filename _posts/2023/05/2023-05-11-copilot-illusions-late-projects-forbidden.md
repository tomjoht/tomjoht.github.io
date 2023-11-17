---
title: "Newsletter: Copilot for Docs, Wappalyzer, Illusions, Late projects, Forbidden Fruit"
permalink: /blog/copilot-illusions-late-projects-forbidden
date: 2023-05-11
categories:
- technical-writing
- ai
- innovation
- news
keywords: 
rebrandly: https://idbwrtng.com/copilot-illusions-late-projects-forbidden
description: "The following are tech comm links, articles, and thoughts for May 11, 2023."
---

* TOC
{:toc}

## GitHub Copilot for Docs

[GitHub Copilot for Docs](https://githubnext.com/projects/copilot-for-docs) is an AI chat interface that is constrained to specific sets of documentation. It’s not yet released to the public, but Copilot for Docs allows you to search GitHub, React, MDN, Azure, TypeScript, or Webpack. When you choose a source, the chat's responses pull from that documentation and provide links indicating the source of the information.

The site says, "We're exploring a way to get you the information you need, faster. By surfacing the most relevant content for questions with tailored summaries that help connect the dots, Copilot for docs saves developers from scouring reams of documentation." [Watch a video here from Christian Heilmann](https://christianheilmann.com/2023/04/05/github-copilot-for-docs-putting-the-fun-into-rtfm/) for an intro.

With Copilot for Docs, we’re seeing a trend towards micro-focused bots (chatbots constrained to a specific set of documentation) as a way to provide accurate answers. This trend is good news for tech writers because it means companies will want to provide abundant training data for their documentation. In my experience, when you use these micro-chatbots, it becomes immediately apparent whether they have a strong foundation of documentation. If not, the bot frequently says it doesn't know the answer to your questions. Whereas the more general AI chats hallucinate at this point, or string together more farfetched information sources to predict an answer, the constrained chats admit a lack of knowledge. This model could create more demand for documentation.

## "What doc platform is this site using? It looks really nice…"

This is a question that often lands in my inbox: "Do you know what doc tool is used for [x] site?” The latest question someone asked me was about [OpenAI’s docs](https://platform.openai.com/docs/introduction), which admittedly look nice. There’s a great tool for investigating the technologies a site uses: [Wappalyzer](https://chrome.google.com/webstore/detail/wappalyzer-technology-pro/gppongmhjkpfnbhagpmjfkannfbllamg), which is a Chrome extension. Click the Wappalyzer button while viewing a site, and probably half the time you can identify the platform. A lot of times, the static site generator gets included in the “generator” HTML tag, and Wappalyzer easily identifies it. If Wappalyzer just says “React,” as is the case with OpenAI’s docs, it could be a custom site and not the output of any specific documentation platform. 

If Wappalyzer doesn’t help, try viewing the page source. Sometimes the platform is branded this way, such as with Document360 sites (used with [Midjourney’s docs](https://docs.midjourney.com/)) or Readme.com sites ([Akamai’s docs](https://techdocs.akamai.com/home) are an example). The meta name, image paths, or CSS file often reveal the platform/tool. 

If the project is on GitHub, you can view the source structure. You could then ask an AI bot which doc tool/platform has those folder names and file structure (e.g., using the term “partials” might indicate Hugo). Even if the site doesn’t link to a GitHub location, you can search for “Github + company name” to see if the source exists there.

If all this fails, try searching for the “company name + technical writer” on Linkedin and see if you can identify someone who works there. Usually tech writers are happy to share some basic details about doc platforms.

## The Illusion of Explanatory Depth

[The Illusion of Explanatory Depth](https://www.edge.org/response-detail/27117) is a cognitive bias in which people overestimate their understanding of a process or system. This bias can lead to problems when people are asked to explain how something works, as they may be unable to do so accurately. The term was coined in 2002 by Leonid Rozenblit and Frank Keil, who stated, “Most people feel they understand the world with far greater detail, coherence, and depth than they really do.”

I find myself returning to this illusion more and more. Its application to writing documentation is enormous. When people see the complexity of a process, it often opens their eyes toward making processes simpler. The other week I documented a complicated authorization process and complained about it a few times to the dev team. When they reviewed the documentation, the engineers were suddenly confronted by the complexity and decided to simplify things. In this light, documenting a process might be the best way to inspire a better user experience. Product managers and other designers might suddenly realize just how complicated a task is when they review the documentation. The Illusion of Explanatory Depth explains why they might not have perceived the complexity previously.

It’s also good to keep this illusion in mind when estimating a task in someone else’s domain. Most of the time, things are more complex than they appear on the surface. 

{% include ads.html %}

## Here’s Why All Your Projects Are Always Late — and What to Do About It — Freakonomics podcast

[This Freakonomics podcast](https://freakonomics.com/podcast/heres-why-all-your-projects-are-always-late-and-what-to-do-about-it/) gets into psychological theories about why we underestimate the time it takes to finish projects. The hosts discuss a phenomenon called _optimism bias_, in which people naturally embrace best-possible outcomes rather than reality. The hosts say the way to properly plan projects is by comparing them to similar projects to estimate timelines. Also, develop algorithms based on those projects that help you quantify the timeline. Don’t use your optimistically minded brain to pick a date when you assume you’ll finish. 

I found the podcast relevant because, like most, I occasionally fall prey to procrastinating a project, only to spend enormous amounts of bandwidth near the deadline that leads to stress and burnout. If I could just plan more judiciously, I could avoid these traps. Simply by being aware that we have an optimism bias, we can identify the timeline bias and offset it with some deserved pessimism. For example, I can anticipate that all kinds of unexplainable nonsense will happen on this project that will extend the timeline beyond my estimations.

## Do you know how many subscribers this newsletter has?

This newsletter has 6,200 subscribers, mostly people in tech comm + engineering. Each time I send it, about 35% of recipients open the email, so about 2,200. Of those 2,200 people who open the newsletter, about 75 click on the links in the sponsored section. That’s a click-through-rate (CTR) of about 3.4%. If you want to advertise something here, the cost is $100 per newsletter instance, or 10 instances for $900. More advertising details are [here](/advertising/#newsletter_summaries).

If you do want to advertise in this newsletter, you’ll need to write your newsletter summary. In your summary, try to be informative and interesting. Avoid marketing language or overt sales techniques. Most people respond best to plain explanations of products. Their eyes might glaze over banner ads, as experience has taught them to consider ads to be irrelevant, but if you share information in an authentic, transparent way, they may choose to learn more. People dislike sales but love information.

## “Warning: Don’t click this button” — the rhetoric of deterrence and the forbidden fruit

We frequently read AI experts [warning society about the potential harms of AI technologies](https://www.bbc.com/news/world-us-canada-65452940). When I read these warnings, I often think hey, aren’t you inadvertently increasing the appeal of those technologies? Apparently, the doom-and-gloom warning rhetoric can actually trigger “psychological reactance,” a motivational state that occurs when people feel their freedom is threatened. 

Psychological reactance can lead to resistance against perceived constraints; it inspires people with a desire to regain their lost freedom. In the context of AI, this means people are more likely to use AI technologies if they are told not to.

A subcategory of psychological reactance is the “Forbidden Fruit Effect.” This effect refers to the increased desire for something prohibited or restricted. If AI experts tell people not to develop or use AI technologies, those forbidden technologies may become more appealing. (In the Victorian era, forbidding exposed ankles increased their attractiveness.)

Are AI experts who try to deter AI development making it a forbidden fruit? How can we avoid the unintended consequences when we want to forbid certain technologies? One way is to provide more balanced information, sharing both the benefits and risks of these technologies in plain ways and allowing the audience to decide. By providing balanced information, we reduce the feeling that people are being told what to do and allow them to make more informed choices on their own. In presenting the two sides, be careful to avoid alarmist, sensational language that exposes your bias.

Tech writers might be well suited to a rhetoric of deterrence because of our alignment with factual, objective information. We stick to the facts and tell readers the consequences of actions in simple language. If you want to stop the development of AI technologies because you fear computers will develop their own sentient intelligence and destroy humans, how would you go about it? For academics in the field of “rhetoric,” this scenario might be a perfect dilemma to explore.
