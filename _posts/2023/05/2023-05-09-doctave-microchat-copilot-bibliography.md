---
title: "Newsletter: Doctave, Chatbase, SiteGPT, small CLs, TC bibliography"
permalink: /blog/doctave-microchat-small-cls-bibliography
date: 2023-05-09
categories:
- technical-writing
- AI
- academics-and-practitioners
- innovation
keywords: 
rebrandly: https://idbwrtng.com/doctave-microchat-copilot-bibliography
description: "The following are tech comm links, articles, and thoughts for May 9, 2023."
---

* TOC
{:toc}

## Doctave, a new docs-as-code platform

[Doctave](https://docs.doctave.com/) is a new docs-as-code authoring platform, priced at 75 €/month per managing user and 15 €/month per light user. Doctave includes a static site generator with a lot of documentation-oriented features built-in, such as support to publish OpenAPI documentation, content re-use, and so on. The Doctave platform also includes documentation linters, built-in analytics, a preview app, content hosting, and more. It’s intended for users who want to write in Markdown and follow a docs-as-code workflow using Git as version control. It even has some AI features built-in through GitHub Copilot. Best of all, it has good documentation on how to use it. Read their [launch announcement here](https://www.doctave.com/blog/2023/05/04/doctave-public-launch.html).

**Tom’s thoughts:** I haven’t used Doctave myself, just read details on their website. In general, I welcome it to the tech comm landscape. We have far too many open-source static site generators that lure tech writers in with a free, totally open/flexible/customizable model only to become time sinks that eat up weeks, months, etc. of documentation-writing time as writers play developer and UX roles setting things up. I’m glad to see someone package up a docs-as-code solution in a commercial way with all the features that one needs for docs, especially with OpenAPI support. 

That said, this solution seems more oriented toward startups. Big companies will likely prefer to build their own. Also, wouldn’t you want to plug into a community of other writers using a similar static site generator? For example, the community of Jekyll, Hugo, of Docusaurus users? As someone who likes to tinker with tools, I fall into this latter camp. 

Also, Doctave is written in Rust. From what I can see on [Jamstack](https://jamstack.org/generators/), only 3 other static site generators are written in Rust: mdBook, Zola, and Cobalt. How fast does a Rust-based SSG build a site consisting of thousands of pages? If it’s similar to Zola, it's apparently fast. Zola is 4x faster than Hugo, according to [TQdev.com](https://tqdev.com/2023-zola-ssg-is-4x-faster-than-hugo). Maybe Rust was a great choice here. 

## Chatbase and SiteGPT — add an AI Chatbot to your website

Both [Chatbase](https://www.chatbase.co/) and [SiteGPT](https://sitegpt.ai/) allow you to easily add an AI chatbot to your site. The chatbots are constrained to a specific website or set of documents, allowing you to create specialized chatbots that can answer subject-specific questions. Chatbase’s [featured chatbots](https://www.chatbase.co/featured-chatbots) show examples of chatbots focused on specific texts or websites. Chatbase’s cost is based on message credits and tokens used per month. SiteGPT’s cost is based on the number of pages you train, with 5,000 web pages requiring $499/month.

**Tom’s thoughts:** The implementation for both chatbots looks trivial but the costs seem prohibitive. When I convert credits and tokens into actual estimated usage, or count up the number of pages (my blog has ~3,000+ pages), then anticipate how many people might use it, it seems more of a corporate-only purchase. But it does seem cool to create chatbots for specific documentation manuals.

Looking at these chatbot models, two questions come to mind: Is it better to constrain docs to a small set of pages? Constraining the training data provides more accuracy but would lead to a limited set of responses from the bot. In contrast, including millions of pages of training data makes the chatbot more intelligent to respond to a wider array of questions but also makes it more prone to hallucination. It’s a tradeoff. 

For tech writers, the constrained training data model is more preferable. This would put pressure on companies to populate the training data for the chatbot with abundant pages of documentation, potentially increasing the importance of tech writers in a company.

However, given that so few people use site search (in my experience, &lt; 5% of visitors), I’m guessing the more general entry point and interaction will be with the general, wide-scoped chatbots. Eighty percent of traffic to my website comes from organic search. Should we anticipate a similar inflow with a chat-search model?

Right now we’re in the figure-it-out phase with AI chat models. Will each website be paying $500/month to add its own chatbot to the site? Will developer portals offer a variety of specialized chatbots based on the general topics you’re interested in? Or will the cost-prohibitive nature of these chatbots fuel more of the open-source chat models instead?

I’m also curious what these plug-and-play chatbots do that the basic AI chatbot configuration described in OpenAI’s docs &mdash; [How to build an AI that can answer questions about your website](https://platform.openai.com/docs/tutorials/web-qa-embeddings) &mdash; wouldn’t accomplish, and how much the build-it-yourself model actually costs in terms of API usage. In other words, what features/optimization are Chatbase, SiteGPT, and Markprompt adding that aren’t possible with the method described in OpenAI’s docs? And isn’t there a GitHub project somewhere that offers an easy integration that one can just drop in, customizing an API key?

## Not your typical technical writing course (Sponsor)

Universities and other institutions teach by copying available material in existing courses and stuffing your head with information that may or may not apply to get started as a technical writer.

[Jump School](https://idbwrtng.com/becometechnicalwriter2) focuses on exercising knowledge &mdash; doing exercises, creating documents, and building a portfolio. 

These courses are “lean” and not full of theoretical or abstract knowledge so most members who earn a certificate are actively working in the industry within a few months. [Learn more >](https://idbwrtng.com/becometechnicalwriter3)

## Small CLs that focus on "just one thing"

This best practice article encourages small changelists (CLs) as a way to speed up review time and approval. (A CL shows the changes that a developer or writer has made to an existing body of code/content.) By “small,” the author suggests: 
 
> The CL makes a minimal change that addresses just one thing. This is usually just one part of a feature, rather than a whole feature at once. In general it’s better to err on the side of writing CLs that are too small vs. CLs that are too large. Work with your reviewer to find out what an acceptable size is.” 
 
[Read more >](https://google.github.io/eng-practices/review/developer/small-cls.html)

**Tom’s thoughts:** 

I find this advice increasingly relevant in the docs-as-code workflow. My natural tendency is toward larger CLs because I’m often adjusting content across pages, but the larger the CL, the more cumbersome the review process. The more people I have to add a review, the more time the review takes. There’s nothing worse than having a CL drag out for weeks because you can’t get it approved, finally resorting to meetings to talk through it. 

Most people would rather be presented with a handful of small CLs instead of one all-encompassing CL. If you follow the advice here and limit your CLs to “just one thing,” similar to the idea in a well-focused paragraph, you’ll have an easier time with doc reviews.

{% include ads.html %}

## Testers needed for new TC bibliographic database

Dr. Avon Murphy, who has been a researcher, teacher, book reviewer, editor, etc. for more than 50 years, is working with a group of computer science students to develop a comprehensive bibliographic database for tech comm research. The team is nearing completion with the bibliography project and looking for testers. Reach out to Avon at avonmu@comcast.net if you’re interested in doing usability testing. Formal testing will begin in Fall 2023.

Murphy’s bibliographic project was featured in a recent article by editor Miriam Williams titled “[Good Research Leads to Good Practice: an Interview with Dr. Avon Murphy, STC Fellow](https://www.ingentaconnect.com/contentone/stc/tc/2023/00000070/00000001/art00001#)” (Feb 2023 issue of _Technical Communication_). In the article, Murphy says, “All that we do in technical communication comes down to a triumvirate of practice, research, and teaching. One outcome of their relationship is that good research leads to good practice." He says earlier on his career, he "came across a visual example of this when [he] walked into [his] first interview for a position at Microsoft. On the manager’s table were stacked a dozen issues of _Technical Communication_. Research was alive and well in a Redmond office.”

If you’re looking to build your tech comm group on best practices, or want to back your practices with research, the bibliographic database can help you find this research. Murphy continues:

> “The project is a continuously updated web-based bibliography of technical communication articles published beginning in 2000. As a reviewer of hundreds of manuscripts, I’ve seen that researchers often have difficulty discovering relevant articles. The service is meant to address this problem.
> 
> ... The project will open to users in May 2023 or a few weeks later. ... Users can search by author’s name, article title, journal name, and year. Most importantly, they can do deep subject searches taking advantage of hundreds of subject tags and artificial intelligence. Our sources include full runs of 60 journals of special interest to technical communicators, such as _IEEE Transactions on Professional Communication, Journal of Business and Technical Communication, Journal of Scholarly Publishing, Journal of Technical Writing and Communication, Technical Communication, Technical Communication Quarterly,_ and _Written Communication_.” 

Again, reach out to Avon Murphy if you’d like to test the bibliography system.

**Tom’s thoughts:** Hooray for bibliographies! The labyrinth of academic journals (distributed across various sites, paywalls, and other hoops to jump through) makes it difficult to find relevant research in the field of tech comm. I imagine this database will be like a Google Scholar for tech comm. 

Granted, due to licensing issues, it won’t have the actual articles, but it will help you find _where_ the content is. I hope to cycle in more relevant research from the academic world into these newsletters, so I’m constantly trying to find new articles of interest. A lot of practitioners want to stay abreast of what’s going on in research domains. Hopefully bibliography tools will make it easier to surface, summarize, and make accessible the trove of academic content. 