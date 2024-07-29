---
title: "Gathering source material for context input"
permalink: ai/prompt-engineering-source-material-context.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-07-28
rebrandly: https://idbwrtng.com/prompt-engineering-source-material-context
---

One of the most successful strategies for using AI is to pass in an abundance of source material that can augument and inform the AI's responses. In this tutorial, I cover strategies for gathering this material, including what types of documents to look for, optimal ordering, pitfalls to look out for such as outdated or slanted information, and more.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

{% if site.format == "web" %}
## Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/Q2pdyHO4yag" title="Gather source material to prepare for prompt inputs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
{% endif %}

## Introduction

In a previous article, [Populating documentation templates with AI](/ai/prompt-engineering-populating-documentation-templates.html), I mentioned the strategy of passing in source material before the prompt. This gives the LLM a body of knowledge to draw upon, making its answers much more accurate and useful. With an ever-increasing token limit for LLMs, we can now start including much more context in our prompts. For example, you can gather hundreds of pages of source material and pass this into an AI chat session to ground the output in a source of factual, relevant details.

However, so far I haven't explored best practices for presenting this source material to the LLM. If the time-tested principle of "garbage in, garbage out" holds true for LLMs, how can we optimize the source material so that it's most beneficial to the chat session? In this post, I'll list some considerations for gathering up source material and feeding it into an LLM.


## The importance of source material

Before I dive into source material best practices, let me address a couple of objections I commonly hear about using LLMs with documentation. One objection is that AI tools can't possibly write documentation when the information doesn't exist. Indeed, tech writers are usually creating how-to guides and documentation for new products, new APIs, new features, etc. There isn't an existing user guide where the information already lives. 

Actually, a lot of source material does exist, just not in the form of official documentation. Consider the many one-pagers, product definitions, business analysis documents, engineering design documents, internal team sites and notes, meeting notes, code walkthroughs and demos, reference documentation, and source code that probably contains much of the answers and details that form part of the documentation. All of this material can be leveraged in prompting scenarios to inform AI tools, reducing hallucination in outputs.

For example, suppose you're creating a user guide for an API. No user guide exists, right? Yes, but most likely you have reference output (such as a Javadoc or other reference). You probably have an engineering design and product definition document. You probably have notes from a meeting with engineers about the product. Put all of this together and feed it into an AI, especially guiding it to follow a template, and suddenly you have a first draft of documentation that isn't full of wild hallucination.

## Retrieval Augmented Generation (RAG)

In discussions about providing source material as contextual input, I should briefly mention "RAG." RAG stands for "retrieval augmented generation" and refers to supplementing LLM training data with additional, real-time information added in. If you have ChatGPT 4, when you make a query like, "What's the latest news in Haiti?" the AI briefly searches the web, gathers the results, and uses that freshly gathered information to supplement other information in its training data. Behind the scenes, AI interfaces often have APIs acting under the hood to go out and retrieve information. 

As another example, you could ask "What's the weather like tomorrow? I'm planning to bike to work. Services underneath then gather the information from other sources about the weather and augment the LLM's training data with this recent information.

While RAG is usually a programmatic augmentation of an existing LLM's training data, the source material technique I'm describing in this article is a manual implementation of the same idea. The LLM has been trained on a great many things, but probably not the project or feature you're documenting, which was just designed and coded within the past couple of months and is confidential and proprietary to your company. That's why you have to manually gather the source material and use it to supplement an LLM's knowledge. 

## Best practices for source material

Now let's get into best practices for source material. The following points aren't in a particular order.

### Prefer quality over quantity

Is it better to have a smaller, more refined and curated body of documents rather than amassing every possible document you can find? When I'm in gather mode, I glance at the document and make a quick judgment about whether it would actually be helpful or not. Remember that each document you include could potentially mislead the LLM's answers and output. My preference is to be selective. If something looks irrelevant, such as database schema model discussion for the API that has no bearing on the developer's usage of the API, I omit it. More noise creates more work for the AI to sort through to find the signal. Be selective and carefully hand pick the documents you want to include.

If an engineering design document includes a lengthy discussion about alternative approaches (that were never implemented), remove these parts. If there are long, literal meeting transcripts that you've already cleaned up with AI, discard the literal transcripts and just keep the AI-written transcripts. 

It's not hard to create scripts that programmatically scrape content from every page in a directory, or every page in a list of URLs. But this bypasses the hand-picked selection and might lead to a lot of garbage content in the source material. 

### Be aware of source material bias and focus

By "bias" here, I'm referring more to unintended emphases and focus areas rather than racial or gender stereotypes. In internal project documents, the content typically focuses on the features the teams need to build. The focus on these new features might distort the focus of what the documentation should focus on. 

For example, suppose a team leverages an existing API and repurposes it in another context. In this new context, they need to add some new features to the API and maybe switch its output format a bit. Thus all the project documentation focuses on these new features and the new out format.

However, it might not be correct to focus the product documentation on the newly added features and format. Instead, the team might want the core characteristics of the API to be the main emphasis. Be aware that source material can emphasize certain angles that might not be what the documentation should emphasize.

### Load large amounts of information in chunks

How do you load 100-200 pages into an LLM session? It's important to understand that the LLM's context window probably differs from the input threshold. The context window might be 100,000+ tokens or more, while the maximum tokens you can send in any one prompt might be 30,000 tokens. It depends on how the AI interface is coded and what the LLM model can support. In other words, APIs might indicate a context window maximum, but programmatically using the API might be different than using the same service in an existing chat interface.

When I need to load in a lengthy context, I break the material into chunks. I use a prompt like this:

<div class="chat">
<p>I'm going to ask for your help with a writing task, but first I want to load in a lot of {Source material} for you to draw upon. The <span class="pVar">{Source material}</span> is extensive, so I need to load it into several chunks rather than all at once. Sit tight while I load the information into the context window here. I don't want you to do anything yet. Just acknowledge that you received the source material. Here's the first chunk:</p>

<p><span class="pVar">{Source material - chunk 1}</span></p>

<p>And so on...</p>
</div>

This approach tends to work well. 

### Save context-loaded sessions for later

After you create a chat session with hundreds of thousands of tokens of context loaded into the session, save the chat session. Usually there's a "share chat" link in AI interfaces. If you bookmark the shared link, you can often step back into that session at any time, and you won't need to reload all the source material again. It will be like stepping into a custom AI that's been augmented with all your specialized information.

Different chat interfaces have different ways of saving and sharing the interaction. In fact, instead of simply loading the {Source material} into the chat session, the AI might allow you to load it into a permanent preamble for the chat, similar to the custom GPT approach. This simply passes in the context up front (but behind the scenes) before the chat session. I haven't tested whether the LLM's responses are better with this approach rather than just pasting the source material directly into the beginning of the session.

### Order content from basic to advanced

Is there a preferred order for the source material? In general, consider putting basic information first and more advanced information later. For example, start with high-level product overviews (one-pagers), kickoff slide information, etc., then maybe reference content, and then the rest of the content. Although I'm not sure, I think order can impact the intelligibility of content by the LLM. 

For example, consider how it would work with a human. You'd want to share basic material with someone first so they can understand concepts, terms, and basic ideas first before pushing more advanced material their way. The advanced material might not make sense before the introductory material, just like you need to take Algebra and Geometry before you try to learn Advanced Calculus. 

With this in mind, I try to put one-pagers, high-level information first, and kickoff documents first, then reference material, and then more advanced information.

Consider also that as you start making progress in the documentation project, each document you finish and get reviewed can become part of the source material. Therefore it makes sense to tackle this progression of information in a documentation project in a similar way:

* Start with generating the reference material.
* Write the overviews.
* Add in user guide topics.
* Add some code tutorials.

Each information deliverable can build on the one before it, allowing you lay the foundation to tackle the more advanced topics.

{% include ads.html %}

### Changelist diffs -- a hidden goldmine for source material

One of the best sources of information are changelist diffs that engineers commit. These can be a hidden source of information that you might skip over unknowingly. For example, let's say you're documenting a new feature. You see that an engineer committed a changelist for the feature that involves about a dozen files, either added, edited, or removed. You can grab the file diff for the commit, feed this into AI for a readable summary, and then add this to your source material. See [Using file diffs for better release notes in reference docs](/ai/prompt-engineering-release-notes-reference-docs.html) for more details.

The file diff will get you a more accurate representation of the code elements actually used. You can then use this file diff in [error checking](/ai/prompt-engineering-error-checking.html). Many internal documents may have preliminary or tentative code names and samples, which could mislead the AI as it writes the documentation. The file diff can provide a more definitive output.

### Fill in the gaps with meeting notes

Chances are, the source material you gather won't have all the information. This is where you go out and manually gather that information by meeting with engineers. Record, transcript, and clean up the transcriptions with AI, then feed them into your body of source material, preferably near the beginning. Remember that one of the key functions tech writers play is with information gathering. We pull information out of engineers' heads. See [Creating high-fidelity, thematically organized notes from engineering meetings using AI](https://idratherbewriting.com/ai/prompt-engineering-summarizing-meeting-notes.html).

If you have a clear sense of information gaps, your meetings with engineers could round out the source material with more complete coverage.

### Loading in app source code?

One scenario I haven't explored yet is how to load an entire codebase. Do you upload a zip file containing all the files in an application? Do you put file names and separators into a long list of files? Suppose you have a sample app that shows how to use various APIs, but that sample app contains dozens of files in various hierarchical folders. How do you simply upload it into the AI in a way that it can understand?

You could create a tree diagram of the file structure, with names for each node. Then use file names and separators for all the files in a document. This could probably be done programmatically with a simple script. 

This is a topic I'll explore in a future post. Much depends on the AI tool you're using, whether you can even upload a zip file or not, and so on. What becomes lost in bulk upload?

### Formatting — rendered vs. source?

Speaking of file structure, is it better to upload the rendered output or source? The source might include a lot of noise with HTML tags, but those tags can also communicate structure and hierarchy. On the other hand, in my experience, simply copying and pasting documents into one long Google Doc, and then pasting that Google Doc into a text input window that strips all formatting, tends to work surprisingly well. Perhaps headings and bullets can be inferred from line breaks. 

At any rate, whether the source formatting helps or hinders the LLM's processing and interpretation of content is something to explore later.

I don't know, but I'll be tackling this scenario soon. 

## Conclusion

I tried to provide best practices for source material in this article. Whenever I have a writing project. I'm always on the lookout for project-related documents that might be useful. In my doc plan, I usually collect these links and continue adding to them. You never know when a document might contain a goldmine of information that an LLM can leverage as you write documentation.

