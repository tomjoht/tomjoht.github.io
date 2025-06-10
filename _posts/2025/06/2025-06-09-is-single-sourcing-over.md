---
title: "Is single sourcing over?"
permalink: /blog/is-single-sourcing-over
date: 2025-06-09
categories:
- academics-and-practitioners
- ai
keywords: 
rebrandly: https://idbwrtng.com/is-single-sourcing-over
description: ""
published: false
---

* TOC
{:toc}

{% include ads.html %}

I think single sourcing might not be as relevant in the age of AI as before. The TLDR is that you need a complete set of documentation to more easily fact-check it against the reference content, and single-sourcing complicates that model.

I'll need to unpack this a bit, and to do that, I'll have to explain some things in more detail than people might have patience for. Here's the scenario that changed my mind about single-sourcing. I have two sets of docs for two different APIs -- API A and API B. Both APIs supposedly used the same underlying data model, so one day (a couple of years ago) I decided to create a central library where users could read about these data concepts, which would apply regardless of the API they were using, because the data model was supposedly the same.

Well, it turned out that the data model wasn't quite the same. There were enough small differences here and there to frustrate the project. Not only differences in the API language, but also a lack of feature parity. I also couldn't easily link to elements, because links would force me to choose which API reference to link to (A or B). Finally, the library was siloed from the regular documentation, creating a less usable experience particularly with the changing navigation.

I realize this isn't conventional single sourcing. A typical single sourcing approach would probably involve pushing the common content into discrete instances, based on a single source. (Instead, I consolidated the content into a single source of material and asked different audiences to come to that single source.)

Anyway, this is all pretty confusing to explain, but my larger point is that I realized one day that it's much easier to fact check content when you have fully intact documents that you can easily pass to an AI. For example, in this case, I had about a dozen different files covering data concepts. In order to fact check them against the API reference, which is my starter plan for verifying content, the content needed to be present. It couldn't be a series of includes, all pulled from distant locations. And it couldn't be vague content that didn't match the reference (for example, in this article, nouns are used, like `Something`, but I want you to check against a language-based API that uses more verbs, like `getSomething`.)

So I embarked on a project to de-single-source the content. I duplicated the pages into each discrete doc set. Then I started adapting and modifying the content so that it was specific to that API. I started by making sure all the links pointed to the correct API reference content. My rule is that any time a code element is mentioned, it must be linked to its reference page. This verifies that the element exists and forces me to use the correct spelling and casing.

If I can't link the element to anything in the reference docs, it often means that the element isn't supported by that API (one of those small differences I noted earlier). 

After modifying the links and content, I then put the API reference material in context and ask Gemini to fact check all the assertions in the conceptual content against the reference content. I also pass in an API quick reference tree diagram. Overall, it works pretty well. It's not perfect, but I'm persuaded by a few things: 

1. The API reference is one of the best sources for fact checking user guide (aka conceptual) content in an API. There are many details that can't be verified by the API reference, but I think the reference grounds everything in some factual basis. 

2. Linking every code element, while tedious, helps catch a lot of errors and inconsistencies. Being precise about code names also helps the AI find and identify those elements when it verifies the details in the reference docs.

Overall, Gemini is pretty good at making sure the conceptual content aligns with the reference content. If the conceptual content mentions elements that don't exist in the reference, or which are defined in different ways than the reference content defines them, Gemini can catch these errors. 

(BTW, I've decided to start saying "Gemini" instead of AI because I am in fact using Gemini, and "AI" is so broad, its meaning might be vague.)

An engineering SME will still catch many errors in AI-vetted content, but this approach is decent. 

Now back to single-sourcing. One reason we adopt single sourcing is to avoid duplicate content. But AI is a powerful tool, and you can use it to duplicate topics, adapting them to the new API. You can compare similar versions of the same document and identify where they differ. And more. Previously, trying to maintain separate docs was a pain because so much manual labor was required. But AI tools reduce that level of tediousness and make it much more practical to keep separate, highly similar but slightly different instances of content.

