---
title: "The problem with single-sourced docs when fact checking with AI"
permalink: /blog/is-single-sourcing-over
date: 2025-06-09
categories:
- academics-and-practitioners
- ai
keywords: 
rebrandly: https://idbwrtng.com/is-single-sourcing-over
description: "To use AI for fact checking, AI tools might do better with a complete, self-contained set of documentation to check against a reference. Single-sourcing, with its conditional and fragmented content, complicates this model."
---

* TOC
{:toc}

## How single sourcing makes AI verification problematic

This is an idea I'm experimenting with and haven't fully vetted, so bear with me. Let me explain a scenario that recently reshaped my thinking on single-sourcing. I have two sets of docs for two different APIs &mdash; API A and API B. Both APIs supposedly use the same underlying data model. A couple of years ago, I decided to create a central library (like a wikipedia site) where users could read about these data concepts, which would mostly apply regardless of the API they were using because the data model was supposedly the same.

Well, it turned out that the APIs didn't quite implement the data model in the same way. There were enough small differences here and there to frustrate the project. Not only differences in the API language (Java vs. REST, which led to differences between nouns, such as `SomeElement` and verbs, such as `getSomeElement`), but also a lack of feature parity. Some APIs had some attributes that others didn't (yet), and so on.

I also couldn't easily link the mentioned elements to their reference documentation, because links would force me to choose whether to link to API A or API B. For example, consider a statement like, "This API provides `SomeElement`...." -- do you link to API A, or do you recast it as "This API provides `getSomeElement` for info about ..." and link it to API B? Or do you not link to any reference?

Additionally, the library pages were siloed from the API's documentation, creating a less usable experience due to the changing navigation. For example, one minute the user would be reading a data concept with one sidebar, and as soon as they clicked a reference element, it would switch them back into the API reference sidebar. This is because the data concepts, being centralized, had their own navigation context.

I realize this isn't conventional single sourcing. In my approach, I consolidated the content into a single source of material and asked different audiences to come to that single source. But a more typical single-sourcing approach would involve pushing the common content into discrete instances, based on a single source. With this approach, my concepts page might have conditional language like this:

```
{% raw %}
{% if instance == "API_A" %}
// show this...
}

{% if instance == "API_B" %}
// show this...
}
{% endraw %}
```

Then on the target pages where the single-sourced concept gets included, it might look like this: 

```jinja
{% raw %}
{% include /path/to/somefile.md %}
{% setvar instance == "API_A" %}
{% endraw %}
```

A CCMS would even slice up all the pieces into small chunks and allow me to assemble them onto a page in more of a cafeteria-style, like this:

```jinja
{% raw %}
{% include /path/to/chunk_a.md %}
{% include /path/to/chunk_n.md %}
{% include /path/to/chunk_r.md %}
{% include /path/to/chunk_z.md %}
{% endraw %}
```

While these approaches can work, here's now the problem. Let's say I want to fact check Concept 1 against API A to see if everything is accurate. To do this, I start by priming the AI session with the reference documentation as the source of truth. Then I add Concept 1 topic into the context and ask Gemini to verify every assertion in the conceptual documentation against the reference.

This is where the single-sourcing model breaks down for AI verification. Assume the content is littered with conditional tags. While one could theoretically instruct the AI to process the content for a specific instance (e.g., "process this for API_A and ignore API_B conditionals"), this approach seems susceptible to error. It adds a complex layer of instruction that can easily be misinterpreted. The AI would need to not only understand the content but also correctly parse the surrounding conditional logic. 

It would be even more challenging to pass in the second single-sourcing example, which would just be a series of include tags. Gemini would have to go and retrieve all the included content from other parts of the directory. It might be able to handle this, reading the content at those paths. But what a pain to edit and manage. What would Gemini's responses look like? *In chunk_a, make these changes. In chunk_r, make these changes, etc.*

If I have agentic workflows in which the agent automatically updates the documentation content, I have to hope that the AI leaves the conditional tags for, say, API B alone and focuses only on API A.

Overall, I think it's easier to fact check content when you have fully intact documents that you can easily pass to an AI. That is, if you have a single, whole document that you can point an AI tool and say, "Verify every statement in this doc against this API reference to see if it's factually accurate based on the elements and logic in the API," I think the verification effort will go more smoothly. 

Plus, what's really the downside now in having duplicate instances of highly similar content? Previously, keeping multiple copies of information in sync was prone to error and led to drift and inconsistencies. But my hunch is that AI is pretty good at syncing documents and handling update tasks across multiple files. For example, I could make a variety of changes to the docs for API A, get a file diff of the changelist committed, and use that file diff to provide instruction to Gemini to update API B in similar ways.

{% include ads.html %}

## My project to de-single-source some content

Based on the above rationale, I started a project to de-single-source my library content. (There are only about a dozen pages in the library, so it's not much content.) I duplicated my conceptual pages into each discrete doc set. Then I started adapting and modifying the content so that it was specific to each API. I made sure all the links pointed to the correct API reference content. 

My rule is that any time a code element is mentioned, it must be linked to its reference page. This verifies that the element exists and forces me to use the correct spelling and casing of the reference element. If I can't link the element to anything in the reference docs, it often means that the element isn't supported by that API (one of those small differences I noted earlier). As I encountered sections of the doc that only applied to the other API, I removed those sections from the existing doc. And vice versa.

After modifying the links and content, I then put the API reference material in context and asked Gemini to fact check all the assertions in the conceptual content against the reference content. I also passed in an [API quick reference tree diagram](/ai/prompt-eng-api-qrgs.html) to provide even clearer context about the API's structure and elements. 

Overall, this fact-checking approach works pretty well. It's not perfect, but I'm persuaded by a a couple of principles: 

1. The API reference is one of the best sources for fact checking a user guide (aka conceptual content) for an API. Admittedly, there are some details that can't be verified by the API reference, but I think the reference grounds everything in some factual basis. It's often the best source of truth available.

2. Linking every code element, while tedious, helps catch errors and inconsistencies. Being precise about code names in conceptual docs also helps the AI find and identify those elements when it verifies the details in the reference docs.

Overall, Gemini does a decent job in making sure the conceptual content aligns with the reference content. If the conceptual content mentions elements that don't exist in the reference, or which are defined in different ways than the reference content defines them, Gemini catches these errors. 

An engineering SME will still identify errors or problems in AI-vetted content, but this approach (verifying conceptual content against the reference content) works well. 

Overall, this approach prioritizes AI-verification workflows that promote factual accuracy over single-sourcing setups that reduce inconsistencies and tediousness. As our role evolves, one idea is that tech writers will become more heavily invested in making sure AI-assisted documentation is accurate, rather than efficiently chunked.

