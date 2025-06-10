---
title: "Rethinking single-Sourcing in the age of AI: Why separate doc sets might be better for fact checking with AI"
permalink: /blog/is-single-sourcing-over
date: 2025-06-09
categories:
- academics-and-practitioners
- ai
keywords: 
rebrandly: https://idbwrtng.com/is-single-sourcing-over
description: "With AI tools at our disposal, single-sourcing might be less relevant than before. To use AI for fact checking, AI tools might do better with a complete, self-contained set of documentation to check against a reference. Single-sourcing, with its conditional and fragmented content, complicates this model."
published: false
---

* TOC
{:toc}

{% include ads.html %}

## How single sourcing makes AI verification problematic

Let me explain a scenario that reshaped my thinking on single-sourcing. I have two sets of docs for two different APIs &mdash; API A and API B. Both APIs supposedly used the same underlying data model. A couple of years ago, I decided to create a central library (like a wikipedia of the data model) where users could read about these data concepts, which would mostly apply regardless of the API they were using, because the data model was supposedly the same.

Well, it turned out that the data model wasn't quite the same across the APIs. There were enough small differences here and there to frustrate the project. Not only differences in the API language (Java vs. REST, which led to differences between nouns, such as `SomeElement` and verbs, such as `getSomeElement`), but also a lack of feature parity. 

I also couldn't easily link the mentioned elements to their documentation, because links would force me to choose whether to link to API A or API B.

Additionally, the library pages were siloed from the API's documentation, creating a less usable experience due to the changing navigation. For example, one minute the user would be reading a data concept with one sidebar, and as soon as they clicked a reference element, it would switch them back into the API reference sidebar.

I realize this isn't conventional single sourcing. A typical single sourcing approach would probably involve pushing the common content into discrete instances, based on a single source. (Instead, I consolidated the content into a single source of material and asked different audiences to come to that single source.) A CCMS would even slice up all the pieces into small chunks and allow me to assemble them onto a page in more of a cafeteria-style. With this approach, my concepts page would have all kinds of conditional language like this:

```jinja
{% raw %} 
{% if instance == "API_A" %}
// show this...
}

{% if instance == "API_B" %}
// show this...
}
{% endraw %}
```

With {% raw %} `{% setvar instance == "API_A" %} or {% setvar instance == "API_B" %}{% endraw %}` on the target page.

I didn't implement that approach because I would have had so many conditional tags, it would have been challenging to edit. (I once heard a well-known CCMS person say that it doesn't make sense to implement conditional tags at the paragraph or sentence level, only at the page level.)

While this approach can work, here's now the problem. Let's say I want to fact check Concept 1 against API A to see if everything is accurate. To do this, I start by priming the AI session with the reference documentation as the source of truth. (I'm using Google's Gemini for this, and I'll refer to it by name since it sounds odd to say "AI" every time.) Then I add Concept 1 topic into the context and ask Gemini to verify every assertion in the conceptual documentation against the reference.

This is where the single-sourcing model breaks down for AI verification. The content is littered with conditional tags. While one could theoretically prime the AI to process the content for a specific instance (e.g., "process this for API_A and ignore API_B conditionals"), this approach seems susceptible to error. It adds a complex layer of instruction that can easily be misinterpreted. The AI would need to not only understand the content but also correctly parse the surrounding conditional logic. 

It would be even more challenging to pass in the source, which would just be a series of include tags.

Further, if I have agentic workflows in which the agent automatically updates the documentation content, I have to hope that the AI leaves the conditional tags for API B alone and focuses only on API A.

Additionally, the content will be much easier to verify if all the terms used match the API reference. (Imagine starting out each prompt like this: *In this article, nouns are used, like `Something`, but I want you to check against a language-based API that uses more verbs, like `getSomething`.*)

Overall, I think it's much easier to fact check content when you have fully intact documents that you can easily pass to an AI. Plus, what's really the downside now in *not* single sourcing content? Previously, keeping multiple copies of information in sync was prone to error and tedious. But my hunch is that AI is pretty good at syncing documents and handling update tasks across multiple files.

So I started a project to de-single-source the library content. I duplicated my conceptual pages into each discrete doc set. Then I started adapting and modifying the content so that it was specific to that API. I started making sure all the links pointed to the correct API reference content. My rule is that any time a code element is mentioned, it must be linked to its reference page. This verifies that the element exists and forces me to use the correct spelling and casing of the reference element.

If I can't link the element to anything in the reference docs, it often means that the element isn't supported by that API (one of those small differences I noted earlier). 

After modifying the links and content, I then put the API reference material in context and asked Gemini to fact check all the assertions in the conceptual content against the reference content. I also passed in an API quick reference tree diagram to provide even clearer context about the API's structure and elements. 

Overall, this fact-checking approach works pretty well. It's not perfect, but I'm persuaded by a few things: 

1. The API reference is one of the best sources for fact checking a user guide (aka conceptual) for an API. Admittedly, there are some details that can't be verified by the API reference, but I think the reference grounds everything in some factual basis. It's often the best source of truth available.

2. Linking every code element, while tedious, helps catch errors and inconsistencies. Being precise about code names in conceptual docs also helps the AI find and identify those elements when it verifies the details in the reference docs.

Overall, Gemini does a decent job in making sure the conceptual content aligns with the reference content. If the conceptual content mentions elements that don't exist in the reference, or which are defined in different ways than the reference content defines them, Gemini catches these errors. 

An engineering SME will still catch many errors or problems in AI-vetted content, but this approach (verifying conceptual content against the reference content) works well.

### Re-evaluating the tradeoffs

Now, back to single-sourcing. The core promise of single-sourcing is efficiency: write once, use everywhere, and avoid the pain of maintaining duplicate content. But AI can handle the tedious task of keeping similar-but-separate documents in sync. 

For example, let's say you update a topic in the documentation for API A. Instead of manually making the same changes for API B, you could get a file diff of the changes and ask Gemini to apply the equivalent logical updates to the other document. This reduces the manual labor that previously made maintaining separate doc sets so error-prone.

### But isn't this a step backward?

A single-sourcing purist might still argue that this approach is a step backward, raising two valid concerns: scalability and the loss of a single source of truth.

**Scalability:** What if you have ten APIs, not just two? Duplicating and adapting content for ten doc sets seems unmanageable. However, the same AI tools that help with fact-checking can also automate the propagation of changes. One could build an agentic workflow that takes a change from one doc set (e.g., from a git diff) and intelligently applies it across all other instances. It's a different workflow, but not necessarily less scalable.

**Single source of truth:** With duplicated content, how do you prevent the versions from drifting apart into inconsistency? My argument is that the "source of truth" shifts from the *source content* to the *verification process*. The API reference documentation, combined with a rigorous, AI-powered fact-checking workflow, becomes the new anchor. The goal is no longer to have one canonical source file, but to have a reliable system for ensuring all published versions are accurate against the reference standard.

The advantage of maintaining separate doc sets, therefore, is enabling more robust verification. By providing the AI with a clean, complete, and context-specific document, you make the fact-checking process simpler and more reliable. This shift in methodology suggests a future where technical writers focus less on managing complex conditional logic and more on designing effective verification and maintenance workflows with AI.

