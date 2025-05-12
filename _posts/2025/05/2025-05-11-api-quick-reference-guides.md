---
title: "API quick reference diagrams and my upcoming AI the Docs presentation"
permalink: /blog/api-quick-reference-guides
date: 2025-05-11
categories:
- ai
- api-doc
keywords: API quick reference guides, QRGs
rebrandly: https://idbwrtng.com/api-quick-reference-guides
description: "In this post, I share my enthusiasm for <i>API quick reference diagrams</i>, which have significantly improved user comprehension and findability in our API documentation. I also explore how these diagrams serve as informative, low-token context for AI tools, enhancing their understanding of API structures (especially when accompanied with reference documentation) and how they counter hallucination in AI outputs. Finally, I end with a short tutorial on how to create these diagrams using AI."
---

* TOC
{:toc}

## Upcoming API quick reference guide presentation

I'm putting together a presentation for [AI the Docs](https://apithedocs.org/ai-docs-online-2025), to be held online June 24-25, 2025. Here's my working presentation's title and description. I'm still shaping some details about this presentation, so let me talk through some of my ideas here and invite feedback.

> **API quick reference diagrams: boosting comprehension for both human and machine users**
> 
> A couple of years ago, faced with complaints that users couldn't find or navigate our reference docs well, I created a comprehensive tree diagram showing all the elements of the API. Using this tree diagram, users could easily use Ctrl+F to locate elements. Additionally, they could click the tree elements to go to the corresponding page in the reference docs. These tree diagrams, which served as a quick reference for the API, became the most popular pages in our API documentation. They solved the findability issues, gave users an easy starting point into the documentation, and communicated the information visually. 
> 
> However, I also found that these same quick reference diagrams provided an immense boost to AI tools in understanding reference docs. Even for AI tools that support a million tokens of context, a large API reference (with all its HTML tags) can quickly exhaust that limit. The quick reference diagrams compress the entire reference into a much shorter token count. Even if you could upload your entire API reference into an AI tool, the diagram helps the AI become much smarter in interpreting the elements and their relationships with each other.
> 
> For technical writers, having this reference content available (both the fully detailed reference and the quick reference diagram, if possible) grounds AI responses with an accurate source of truth. When the AI understands your API reference, you can more easily create documentation related to nearly any aspect of your API. You can also use these quick reference diagrams when tackling extensive cross-documentation projects, such as comparing APIs to each other, creating pathways through your documentation portal, or identifying gaps or inconsistencies across APIs.
> 
> As we turn to AI for more advanced documentation authoring, augmenting AI chats with API reference content improves the accuracy of the AI's responses. Grounding your AI with your API reference basically uploads this intelligence into your AI chat sessions, giving your AI the right knowledge and context to address nearly any documentation scenario. Ultimately, these quick reference diagrams serve a dual role: improving the developer's understanding of the API while also enhancing the reliability of the AI responses.

If that description is too long, here's the TLDR version:

> **API quick reference diagrams**
> 
> API quick reference diagrams show every element of your API in a hierarchical tree diagram. Each element links to its page in the reference documentation. By providing a visual, at-a-glance shape of your API, these quick reference diagrams orient developers about the API’s capabilities, allowing them to not only view the entire API at a glance but also jump directly to the documentation they’re interested in. 
> 
> Although creating the diagrams by hand would likely be too tedious, AI tools can crunch through many API pages quickly and build out the diagrams and links in a matter of minutes. They're an easy win for technical writers looking to augment and transform the traditional experience of API reference documentation.

{% include ads.html %}

## Dual purpose of this presentation: (1) Successes of API quick reference diagrams, and (2) helpful RAG context for AI

I'm tackling a couple of ideas in this presentation: first, to share the success of API quick reference diagrams, and second, to explain their strategic advantage when working with AI tools. Let me expand on each goal.

### Successes of API quick reference diagrams

First, I think these quick reference diagrams, which I'd previously referred to as [tree diagrams](/ai/prompt-engineering-task-decomposition.html), are an interesting spinoff or augmentation of API reference documentation. They've been a hit among both PMs and users for the past two years. I find them immediately valuable and plan to expand the number of diagrams for all the APIs I support. Here's a sample (using Jabberwocky filler):

<figure><img style="max-width: 450px" src="{{site.media}}/sampleapiquickreference.png" alt="Quick reference diagrams represent the hierarchy of your API" /><figcaption>Quick reference diagrams represent the hierarchy of your API, with each element linked to its documentation. This sample shows a highlight only; the full quick reference could contain hundreds of elements, depending on the size of your API.</figcaption></figure>

Why create these quick reference diagrams? Aren't they redundant with the reference docs? Javadoc (used for generating Java API reference) is one of the most unfriendly documentation interfaces for non-engineers. It's almost impossible to find what you're looking for in a Javadoc unless you know the packages and classes you're looking for so you can drill down through the right page pathways. The API quick reference, shown as a visual tree diagram with links, lets users see the shape of the API at once and invites them to jump into the docs they want more details about.

While REST APIs are more straightforward and typically list all the elements on the same page, even REST API reference docs default to a list of stacked tables. The tables often represent nested items, so if you have an object in one table, its members might have their definition in the next table below it, and their members might be defined in the next table, etc. You end up with a flat list of tables that's difficult to read. You don't get an immediate sense of the hierarchy of the API at all. This approach to reference documentation is hard to follow. You end up visually scanning a bunch of tables. Here's what I mean:

<figure><img style="max-width: 600px" src="{{site.media}}/ref-doc-deep-nesting-issues.png" alt="Hard to grok the hierarchy from a list of tables" /><figcaption>In the display of most reference docs, objects are deeply nested, but the docs describe the objects in separate tables, without hierarchy. As a result, it's hard to visualize the structure and get a clear mental model.</figcaption></figure>

Finally, the API quick reference links each API element to its corresponding reference documentation. This allows users to go straight to the documentation or interesting most relevant to them.

As a bonus, for tech writers, you now have all links to every API at your fingertips. You can pass this source into an AI chat session if you want to automatically link any code element. Linking code elements not only reduces hallucination, it gives your docs more authority and specificity. 

### Helpful RAG-like context for AI

The second purpose of these API quick reference diagrams is for enhancing AI chat sessions. Wielding the API reference as manually added RAG (retrieval augmented generation) context into chat empowers you to create documentation about anything related to your API. There are limits to this, of course, but most developer documentation has some origination or reference to the API. When you pass the reference docs in as context to AI chat sessions, the AI's responses tend to be smart, accurate, and informed.

It's actually quite difficult to gather up your entire API reference and pass it into an AI chat session. First, there are token limits:

* **[Gemini Pro 2.5](https://cloud.google.com/vertex-ai/generative-ai/docs/models/gemini/2-5-pro )** has an input of about 1 million tokens and an output of 65k tokens. (By the way, this is the model I regularly use and love.)
* **[Gemini Pro 1.5](https://ai.google.dev/gemini-api/docs/models#gemini-1.5-pro)** has about a 2 million token input and an output limit of 8k tokens.

Gemini has the highest token limit support for input. [ChatGPT 4o](https://platform.openai.com/docs/models/gpt-4o) supports a 128k context window, with about 16k output tokens. [Claude Pro](https://support.anthropic.com/en/articles/7996856-what-is-the-maximum-prompt-length) has about a 200k context window. The 200k context window is estimated to be 500 pages of text or 100 images. One wouldn't think a medium-sized API reference would exceed 500 pages, but it does—easily. When you include all the HTML characters and other content from a web page, it adds up surprisingly fast. A medium-sized API reference doc is about a million tokens, I've found. 

Fortunately, the quick reference diagram gives you an abbreviated (low token count) version of your API reference. You can paste the diagram into an API session to provide the AI with a quick understanding of the API without maxing out token limits. This can be incredibly informative for the AI. It's not as comprehensive as pasting the entire API reference in there, but working with shorter representations of data makes the AI sessions quicker.

In contrast, pasting a massive data set into an AI chat session&mdash;the entire API reference&mdash;creates a lot of noise. There might be 750,000 tokens of noise and only 5,000 relevant tokens. The AI has to sift through a massive amount of noise to find the relevant info, which risks more error. A lot more compute and processing power is also required, and with each query in the chat session, the AI has to scan through the corpus of information, slowing down responses. The quick reference diagram avoids all this noise.

Additionally, the diagram provides a better map for those scenarios when you decide to paste in your entire reference docs. I typically add my reference docs by either dragging the reference folder of many individual files over, or by consolidating many files into a single file (via a [script](/ai/prompt-engineering-entire-doc-set-prompts.html)). How does the AI understand the hierarchy and logic of all of these files? The quick reference diagram provides a map for the AI, aiding its comprehension of the reference.

Finally, I want to point out that AI is great at creating these quick reference tree diagrams. These tree diagrams can be complex to construct by hand, but AI excels impressively at generating them and finding the links, especially if you can share a working example. 

If I had to create them all by hand, I'm not sure I'd have the necessary bandwidth, especially for APIs that are constantly changing. But really the way AI tools work is almost as a programming tool: once you figure out the right *programming* instructions, you can transform inputs to the outputs you want, with few tweaks or adjustments needing to be made.

## How to create the quick reference diagrams

Let me add a few notes, a quick tutorial even, on how to make the diagrams. There are basically five steps.

1.  **Provide an example diagram.**

    You could start with the sample tree diagram in this post: [Visualizing APIs with tree diagrams](/blog/task-decomposition-tree-diagram-example). Adjust the sample tree based on the conventions you want to use to represent different API elements (such as methods, objects, fields, etc.).

2.  **Upload your reference docs into AI.**

    As noted earlier, this is easier said than done. Ideally, you drag your reference documentation folder directly into AI. If your AI tool doesn't support folders like that, you could consolidate all your API reference docs into a single file, using the scripts in this post: [Using long-token contexts to quality check an entire API doc set](/ai/prompt-engineering-entire-doc-set-prompts.html). If you exceed token limits, you could build it out little by little, as I described in this post: [Task decomposition and complex tree diagrams](/ai/prompt-engineering-task-decomposition.html).

3. **Ask AI to create a similar output.**

    Pattern matching style prompts are the best use cases for AI. You've provided an example (making this a *few shot prompt*) and a source of information. Now the AI just needs to pattern match the information source and output the example.

4.  **Make each element in your source diagram a variable.**

    The variables approach avoids long HTML in your text diagram. The syntax you use for this depends on your doc platform, but most docs-as-code platforms support variables like this.

    <figure><img style="max-width: 350px" src="{{site.media}}/apiqrgs-each-element-variable.png" alt="Making the source elements variables" /><figcaption>Set each element as a variable.</figcaption></figure>

5.  **Provide variable definitions for the variables.** 

    These definitions typically live in another file, included on the same page where you're rendering the source diagram. When you try to build your doc site, if some variables lack definitions, you'll likely see an error, which is good because it lets you know if links are broken.

    <figure><img style="max-width: 600px" src="{{site.media}}/apiqrgs-variable-definitions.png" alt="Variable definitions" /><figcaption>Another file defines the variable definitions.</figcaption></figure>

## Conclusion

Overall, API quick reference diagrams offer a way to boost both human and machine understanding of your APIs. With AI tools, especially those that support long token context like Gemini, creating the diagrams is actually feasible. For example, I created 8 different quick reference diagrams (for 8 different APIs) in about a day and a half. (Without AI, the task would be much too tedious.)

What do you think about these API quick reference guides? Have you ever created one before, or something similar? With powerful AI tools at your disposal, what's stopping you from creating them now?
