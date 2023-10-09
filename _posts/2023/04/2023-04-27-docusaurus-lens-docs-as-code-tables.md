---
title: "Newsletter: Docusaurus, Lens, Docs-as-Code, 2022 site analytics, and HTML Table formatting"
permalink: /blog/docusaurus-lens-docs-as-code-tables
date: 2023-04-27
categories:
- AI
- news
keywords: 
rebrandly: https://idbwrtng.com/docusaurus-lens-docs-as-code-tables
description: "Here are tech comm news and links for April 28, 2023."
---

* TOC
{:toc}

## Docusaurus

Someone wrote to me last week to say that, after an extensive search for doc platforms, they settled on Docusaurus and were very pleased with it. I frequently hear similar feedback about this platform, yet not many people know about Docusaurus, so I thought I’d feature it here.

Docusaurus, developed by Meta's Open Source Community, is a static-site generator powered by React. It helps you create interactive, single-page-like applications with fast client-side navigation. Docusaurus has more than 44k stars and hundreds of contributors on GitHub, and is used primarily for documentation sites. If you want to use the React framework and are building a documentation site, Docusaurus is worth considering. For an intro to Docusaurus, see the [Introduction](https://docusaurus.io/docs) in their docs.

For an excellent post comparing Docusaurus with Gatsby and Hugo, see [Docusaurus vs Gatsby vs Hugo](https://wtjungle.com/blog/docusaurus-gatsby-hugo/) by David Simão. For a counterargument against Docusaurus in favor of Hugo, see [Moving from Docusaurus to Hugo](https://ricard.dev/moving-from-docusaurus-to-hugo/) by Richard Torres.

## Lens (AI search)

Lens is an AI search tool provided by Gitbook that toggles between regular search and AI chat. If you have a Gitbook project, you can toggle on Lens AI search through your project settings. Or you can implement Lens in another project using Gitbook APIs. Lens uses the OpenAI API “to pass your content to OpenAI to index and process data.” Once implemented, users can “simply tell Lens what you want — it’ll scan your documentation and summarize the results in seconds.”

What content does Lens draw upon? According to their Q&A, “GitBook Lens constantly indexes your documentation using OpenAI. When you ask a Lens a question, it finds and combines information from within that documentation to provide an answer. It doesn’t use content from anywhere else to form its answers.” 

By creating a toggle between "search" and "lens," the widget provides an interesting evolution in search. It suggests that users prefer to search or chat ad different times. Perhaps chat can help users figure out the right terms to search, and vice versa.

Overall, I suspect more AI-powered search widgets will be available for docs. Read more on the [Lens product page](https://www.gitbook.com/solutions/ai) or the [Lens (AI search) intro](https://docs.gitbook.com/product-tour/searching-your-content/lens) in the GitBook docs.

## The only technical writing certificate for career changers (Sponsor)

Last year, 70% of the US workforce was actively looking for a career change. But as many as 62% of career changers never followed through.

Why? 

* Time - takes too long to learn a new skill.
* Money - costs too much to learn new skills.

So, too many stuck to a job they disliked, stagnating in careers with no hope of advancing or changing.

If you’re a career changer and considering technical writing, [Jump School](https://idbwrtng.com/becometechnicalwriter2) is the only course you need to start as a technical writer.

Tip: Use code `April100` when [signing up for the Jump School](https://idbwrtng.com/becometechnicalwriter3) and save $100 off the course price.

[Learn more >](https://idbwrtng.com/becometechnicalwriter2)

## Discover the New Edition of Docs Like Code: Available Now, by Anne Gentle

Anne Gentle released an updated edition of *Docs Like Code*. She says 5 years have passed since its publication. With this updated version, she added a new subtitle: “Collaborate and Automate to Improve Technical Documentation.” She also added information on “how to eliminate biased language. The tools are ready: you can encode inclusive language policies for linters such as alex or woke.”

She also made updates about the scale of docs-like-code sites: “While researching, it became apparent how much larger the docs sites are, such as Read the Docs serving 55 million pages a month; wow! And many more teams and organizations have adopted these techniques, so the updates incorporate those examples.” 

The mention of scale is worth commenting on. When docs-as-code approaches first started appearing, they were often for small sites, such as GitHub projects. Now the docs-as-code approach is standard in big tech developer documentation, with thousands of pages of content. This scalability was one of the big questions about these docs-as-code systems. Could an engineering-based approach compete with a more robust CCMS specifically designed with all the buttons and levers to manage thousands of pages of content, with metadata to make the content findable and an XML structure to make the content reusable and interoperable? It seems that many tech companies, particularly those with APIs in their docs, made the switch to docs-as-code and never looked back.

Gentle also makes updates about freely available style guides: “There are even open-source rulesets for the Microsoft or Google Style Guides available for free, which you can enable as tests in a CICD pipeline.” 

Gentle’s first book was on wikis. Five years after that publication, wikis mostly fizzled. The same isn’t true for docs-as-code sites. Five years after this publication, docs-as-code sites became the default for API documentation sites. [Read more >](https://justwriteclick.com/2022/12/07/discover-the-new-edition-of-docs-like-code-available-now/) 

## Meandering thoughts on my 2022 site analytics

I updated my site analytics page for 2022. I usually do this at the turn of the year, particularly when renewing ads on the site, but this year I postponed it until last weekend. In this meandering post, I talk transparently about a variety of site-related challenges and issues, from content focus to newsletter subscribers, monetization, and more. [Read more >](https://idbwrtng.com/site-analytics-2022)

{% include ads.html %}

## HTML table formatting with ChatGPT and Bard

Did you know that AI tools like ChatGPT and Bard are wizards at table formatting? Throw any natural language instruction at them about tables, and they can transform the data quickly and efficiently into well-constructed HTML tables, either as raw code or as a rendered table. For the latter, just copy/paste the rendered table into Google Docs and use the [Docs to Markdown extension](https://workspace.google.com/u/0/marketplace/app/docs_to_markdown/700168918607) to export the code as HTML. After doing this, you’ll probably never code an HTML table by hand again. [Tables in ChatGPT and what you can do with them](https://chatgpt-guide.se/tables-in-chatgpt-and-what-you-can-do-with-them)  provides some more basics about prompts, but honestly you don’t need detailed instructions to be successful.