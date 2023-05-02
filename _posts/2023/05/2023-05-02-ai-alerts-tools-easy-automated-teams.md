---
#layout: newsletter
layout: post
title: "Newsletter: AI doc alerts, state of tools, saying easy or just, automated writing teams"
permalink: /blog/ai-alerts-tools-easy-automated-teams
date: 2023-05-02
categories:
- technical-writing
- AI
- newsletter
keywords: 
rebrandly: https://idbwrtng.com/ai-alerts-tools-easy-automated-teams
description: "Here are tech comm news and links for May 2, 2023."
---

## Notes in docs indicating AI partially generated the content

AI notes started appearing in some [Microsoft Azure docs](https://learn.microsoft.com/en-us/azure/analysis-services/analysis-services-create-terraform), like this: 

> “This article was partially created with the help of artificial intelligence. Before publishing, an author reviewed and revised the content as needed. See [Our principles for using AI-generated content in Microsoft Learn](https://learn.microsoft.com/en-us/principles-for-ai-generated-content).” 
 
The principles page explains: 

> “By using AI-generated content, we can extend the content for your scenarios. We can provide more examples in more programming languages. We can cover solutions in greater detail. We can cover new scenarios more rapidly. \ We understand that AI-generated content isn't always accurate. We test and review AI-generated content before we publish it.”

Disclosing AI assistance is an interesting rhetorical move. Microsoft's justification for the AI content generation is to expand doc coverage into additional programming languages and scenarios. The expansion might unsettle writers (first steps toward obsolescence?); on the other hand, it might also help them feel more empowered. [Read more >](https://learn.microsoft.com/en-us/principles-for-ai-generated-content)

{% include newsletterlink2.html %}

## How I Built WritingGPT, a Fully Automated AI Writing Team, by Thomas Smith

Although this seems like another wild claim about what ChatGPT can do, this article is actually brilliant. Smith describes how he divided the writing process into 5 tasks, each fed separately into GPT-4 APIs. He used AutoGPT to chain together each of the 5 tasks and had the API perform a specialized role with each task. AutoGPT consists of “AI agents that combine AI systems together in chains, improving their output by having the AI systems work together.”

The 5 specialized roles for the tasks include the following:

> Freelance copywriter<br/>
> Experienced editor<br/>
> SEO pro<br/>
> Photo researcher<br/>
> Production editor

He calls this whole solution WritingGPT. Smith says, 

> “By using the output of one AI system as the input for another, a developer can chain together multiple AIs, enhancing their collective capabilities.” 

By decomposing AI bots into specialized assembly workers each focusing on a specific task, the process more closely mirrors the human writing process. The API cost for a 1,000-word article is about $1 to produce the output. [Read more >](https://medium.com/the-generator/how-i-built-writinggpt-a-fully-automated-ai-writing-team-a8fdf0255586)

{% include newsletterlink1.html %}

{% include ads.html %}

## DevDocs: Your do-it-all documentation project partner (Sponsor)

Is your doc team overloaded with doc requests? Is your bandwidth constrained due to layoffs or due to writers who left for other companies? Don't burn out your existing writers. DevDocs can take on the extra documentation work.

[DevDocs](https://idbwrtng.com/devdocs) provides comprehensive consulting services to help organizations streamline technical writing needs. DevDocs goes beyond writing and consulting, offering a full suite of services, including design, tool implementation, and custom development. 

Whether you need assistance with API documentation, SDKs, content writing, or any other documentation needs, DevDocs has the expertise and resources to get the job done. DevDocs empowers you to focus on your core business while handling your documentation needs. With a proven track record of guiding companies to success, DevDocs can help take your organization’s documentation to the next level. [Learn more >](https://idbwrtng.com/devdocs)

{% include newsletterlink4.html %}

## The State of Tools, by Christina Mayr

Mayr describes the many tools tech writers use for different tasks across a variety of industries. Structured authoring, content management, enterprise content, end-users vs. developers, and more influence the tools for the job. She says there aren’t any standard tools anymore. 

Also, as tools become easier to use, writers can focus more on content. Mayr says, 

> “The future of technical documentation is at the same time more technical and less technical and changing constantly. While the ability to write coherently and create an attractive, easy-to-use document that solves a user’s problem will always be core skills of technical communicators, the newer tools on the market are making authoring and publishing processes more automated, so documentation will be less about writing and more about building content.”

I agree that tools shouldn’t get in the way of content creation and publication. Mayr’s article is a helpful reminder that my preference for docs-as-code tools is likely heavily influenced by being in the API documentation space. Were I writing for end-users, for translation, for the enterprise, for hardware, or for a regulated industry, another set of tools might be more applicable.

Although I’ve veered away from tool development and “document engineering” type roles given that my current workplace already has robust authoring tools and workflows in place, I’m personally keen to become more tools savvy again, especially as AI threatens to automate content creation. The tools in the API doc space follow [Jamstack trends](https://jamstack.org/survey/2022/) and tend to involve a complex number of tools and services working together. Additionally, I want to learn more about integrating AI chat experiences into docs. [Read more >](https://www.stc.org/intercom/2023/04/the-state-of-tools/)

{% include newsletterlink3.html %}

## If someone’s having to read your docs, it’s not “simple”, by General Products

The author advises writers to keep words like “just” and “simply” and “painlessly” out of tech docs. When writers try to convey that a process that might seem hard is actually easy, they make users feel slow if they can’t quickly accomplish the task. Instead of saying a process is simple, explain the process and let the user decide whether it’s simple.

My take? This advice isn't new for most technical writers. In fact, if there’s one distinction between tech docs and marketing content, it’s that marketers use the word “easy” everywhere. But what language do you use when you want to dispel the myth behind a process widely believed to be more complex than it truly is? What if a major selling point of your software is that the setup, configuration, and execution requires less learning, code, and button-pushing than other solutions? Isn’t it ultimately *easier* for the average user?

In this case, you could qualify the task by user level, saying something like, “This task can be achieved in less than 30 minutes by someone with only a modest understanding of Java programming and Linux servers.” That reduces the risk of insinuating that someone is incompetent if they can’t readily do an “easy” task. [Read more >](https://justsimply.dev/)