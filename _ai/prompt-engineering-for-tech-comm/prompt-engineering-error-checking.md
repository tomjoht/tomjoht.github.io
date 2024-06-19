---
title: "Error checking the AI output"
permalink: ai/prompt-engineering-error-checking.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-03-02
rebrandly: https://idbwrtng.com/prompt-engineering-error-checking
---

{% comment %}
{% include coffeeshopbook.html %}
{% endcomment %}

In the [Populating documentation templates](/ai/prompt-engineering-populating-documentation-templates.html#accuracy_check) section, I mentioned an accuracy check after writing the first draft. In this article, I'll expand more on this technique, since reducing errors ("hallucination") remains one of the key challenges in using AI tools. It's the fear of hallucination, of putting your name on a document that has some bogus statements, code, or other details, which keeps many tech writers hesitant to use AI tools.

* TOC
{:toc}

## Accuracy prompt

As I explained in [Gathering source material for context input](/ai/prompt-engineering-source-material-context), one way to avoid errors in the output is to gather an abundance of source material as input or context for the AI. Source material could include project one-pagers, engineering designs, proposals, requirements, and more. Most companies have a software methodology process that requires certain documents to be produced as project managers and engineering teams take a feature from proposal to production. 

If you don't already have this large repository of source material, go and gather it. (In fact, if the AI wrote your content without the source material, it's probably so full of errors as to be worthless.) The team should help you track down all of these documents. 

## Gather the changelists

Besides source material, there's a trick you can use to catch gaps between the internal project documents and what engineers actually coded. For example, suppose your project documents include an engineering design document that describes the planned classes, one of which is `acmeBuilder`. However, when engineers actually implemented the feature, they realized that `acmeBuilder` wasn't the right name for the method, or that the company's API design guidelines required another term. Instead of `acmeBuilder`, they ended up using `buildAcme`. The early engineering doc that usees `acmeBuilder` will mislead the AI and result in errors in the output.

To get around this, gather up the changelists (commits) engineers submitted for the feature. (In fact, you should require engineers to provide all relevant changelists when they submit a doc ticket to you.) From these changelists, get a file diff following the approach described in [Using file diffs for better release notes in reference docs](/ai/prompt-engineering-release-notes-reference-docs.html). This approach involves using a form of the `git diff` command to get a list of all file changes submitted. 

Then pass this file diff output into an AI and ask for a readable summary. Voila, you now have a definitive list of the real classes, methods, fields, or other code elements used in the feature. This can be leveraged in your error checking. The prompt below includes a section for this changelist information.

## The prompt

Here's a prompt to get you started:

<div class="chat">
<div markdown="1">

You are an expert fact-checker. Your task is to ensure the accuracy of the documentation. The source material is the authoritative source of truth.

**Identify errors:** Carefully compare the documentation against source material. Look for the following types of errors: 

*  **Factual errors:** Any statements that contradict information in source material.
*  **Invented information (hallucinations):** Details or concepts not explicitly present in source material.
*  **Omissions:** Important information from source material missing from documentation.
*  **Logical inconsistencies:** Contradictions or internal inconsistencies within the documentation.

**Provide evidence:** For each error you identify, do the following:

*  Cite the specific section within documentation where the error occurs.
 *  If possible, provide a quotation from the source material that either refutes the error or highlights the missing information.
 *  Offer a possible correction or suggestion for improved accuracy. 

**Example to get you started:**

Let's say the documentation includes a statement like "The API supports real-time data streaming." If the source material makes no mention of real-time capabilities, this would be an error (likely a hallucination).

**Changelists: the real source of truth**

Much of the source material might contain outdated information that was used in early planning and design phases of the project. This information may have evolved as engineers started actually coding the features. For example, an early design doc may have referred to a new class as `acmeBuilder` but then later in the project, the engineers may have changed it to `buildAcme`. (This example is generic and not specific to this project.)

To avoid errors in your output, I'm providing you with a summary of the changelists submitted by the engineers for this feature. The changelist information provided might not be comprehensive for all the changes made -- these changelists are all that I could find. I've already processed the file diffs and created a readable summary of them. Use this changelist information in your fact checking to make sure that the code submitted matches the information in the documentation.

Here are the changelist summaries:

{CHANGELIST SUMMARIES}

[PASTE THE CHANGELIST SUMMARIES]

Here's the documentation I want you to error check:

{DOCUMENTATION}

[PASTE THE DOCUMENTATION]

Here's the source material

{SOURCE MATERIAL}

[PASTE THE SOURCE MATERIAL]
</div>
</div>

Note the following as you use this prompt.

### Is your LLM powerful enough to do this?

There's a lot of difference in LLM capabilities. Some AI models might be able to do this impressively well, while other LLMs might be much less capable. Less capable LLMs might invent errors, constantly forget the documentation, or simply not catch a lot of problems. Until you've played around with different models in these tasks, you might not realize how much they can vary. The best models will no doubt be the most expensive to run, hence more limited and less available.

### Section-by-section analysis

You could try to improve the LLM's capabilities by error-checking a section at a time rather than the whole document. This might reduce the scope of the analytical task in ways that allow the LLM to be more thorough and accurate. Going section by section has been one of my key insights into using LLMs. As I explained in [Creating high-fidelity, thematically organized notes from engineering meetings using AI](/ai/prompt-engineering-summarizing-meeting-notes.html), going theme by theme rather than summarizing all notes at once yields a completely different output quality. However, going section by section will be a lot more tedious.

### Be aware of gaps and bias in the source material

It's important to note that source material (consisting largely of internal documents) will likely have some gaping holes. Internal documents focus on filling gaps for missing features. The documents might provide more detail about internal architecture than you want to expose (the implementation details users don't need to know), and more. Don't assume that the source material actually has all the answers. Without all the answers, the fact-checking prompt won't have an authoritative body of material to check against.

### Using external material

If your documentation covers some general technologies with information on the web, you could expand your source material with external sources. For example, suppose you're explaining how to call your API in an Android app. Even though your docs primarily focus on your API, your docs might also mention Android details in the how-to's and other sections. Checking those details with external sources explaining those topics could be a good way to expand your accuracy checks and validate your content. However, keep in mind that most documentation focuses on its own API, not other technologies.

### Session context might need to be refreshed

Make sure your session context hasn't expired. Suppose you pasted all the source material up front, but then proceeded through a long draft with many rewrites, clarifications, and other back-and-forth exchanges. Will the AI tool still remember all the source material? 

You could include a needle-in-the-haystack test to check if it still remembers the content. Insert a small detail in the content. (For example, "Fun fact: the product manager has a dog named Ralph.") Then every so often, ask what the product manager's dog name is. When the AI no longer remembers, refresh the source material. (This is partly why I like to accumulate source material in a separate Google Doc&mdash;so I can easily repaste it into a session.)

### Iterative error checking

You could also proceed iteratively with the error checking, asking the AI to perform the error checking multiple times, in different sessions, and maybe with different LLMs models. You could experiment with different role plays, like, "You are a [some role]." Make some adjustments and see if the AI tool has a different response. There's an element of randomness and variation that make the outputs somewhat unpredictable, so using multiple iterations could be a logical technique for getting different results.

### Adversarial prompts

Another approach could be to antagonize the AI into an adversarial response. For example, ask the AI to assume an adversarial role in which it looks for logical gaps, missing sections, problematic assumptions, and other issues with your documentation. Ask the AI to present the counterarguments to your approach, challenge every assertion with a counterassertion, and identify an opposing viewpoint to the approach described here. Something like this: 

<div class="chat">
Instruction: Develop a well-reasoned argument from a completely different point of view than the one presented in this text. Explain why someone might disagree with the main thesis or approach. Be mindful of avoiding straw-man arguments and seek to offer a truly contrasting perspective.
Role: You will step into the shoes of someone with fundamentally different values, priorities, or assumptions from the author, presenting a convincing rebuttal.
</div>

To be honest here, sometimes I don't want this level of criticism, as it might reduce my confidence in the draft and require a lot more rework. But having a super-powerful AI play devil's advocate is a fun exercise.

## The challenge of error checking when you lack expertise

There's a real conundrum with error checking: if you're not an expert in the material, how will you know if the flagged errors are actually errors? If you're steering an AI tool without much knowledge of the topic yourself, and then relying entirely on human SMEs (subject matter experts) to vet the output, you'll be at a loss for evaluating the quality control checks. This can be especially true if your output includes code samples.

Like most documentation, having some sense of the subject matter is necessary. You don't want to end up just being an interface between the documentation and the LLM, and then an interface between the documentation and the SME. You want to maintain a sense of the subject matter yourself, as this will pay long-term dividends as you work on many different aspects of the documentation.

For example, you might be working on Document A right now. But the knowledge you learn from Document A might spill over into Documents B, C, and D. So it's in your best interest to ramp up and learn, absorb, and sharpen your knowledge with the subject covered in Document A as it will pay greater dividends in the other documentation tasks. Shortcuts in one document end up hampering your productivity elsewhere.

One of the most beneficial ways to use AI tools might not be for writing tasks, but rather to learn. If you can ramp up on the source material and subject domain using these tools, this learning could prime your faculties enough to make writing itself easy.

{% include ads.html %}

## Read the source material 

One of the best ways to evaluate your content is by reading the source material. Chances are you gathered up a lot of internal documents related to the project, which you may have only skimmed if even that before putting them into the AI machine. 

After you have a draft of content, however, you can go back and read the source material to compare the output against the source. This time, though, as you read the source, you'll already have a basic understanding and grounding in the topic. As such, it will be a lot easier to separate out important from unimportant details. This approach is the equivalent of reading Cliff's Notes before reading a Shakespeare play. (See this post for more details: [Two examples where high-level overviews are essential: Macbeth and Elon Musk](/trends/macbeth-and-musk-and-the-high-level-overview.html).) By grounding yourself in a basic understanding of the feature, you can more easily speed through the source material. (This approach can also bias you toward confirming the AI's interpretation of the source material, so be aware of this).

Reading through the source material is still time-consuming and tedious if you're documenting a large API. However, knowledge of the source material is probably key for working on the documentation anyway.

## Review the content with SMEs, but be careful

Of course you'll also need to do error checking by reviewing the material with someone who has a high degree of project knowledge (in other words, someone who is a "subject matter expert," aka SME). This might include the tech lead for the project, the engineers who coded the feature, and the product manager. 

However, be careful with rubber-stamp reviewers who approve your content but actually lack knowledge to verify it. These false reviewers might LGTM your doc ("Looks good to me!") without fully understanding everything. This short video demonstrates this phenomenon:

<iframe width="560" height="315" src="https://www.youtube.com/embed/rR4n-0KYeKQ?si=4dN7NYRp9E5QyBdz" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

For example, let's say you're writing a doc explaining how users do something really complex. You've used AI tools to navigate your way through this topic, and you generate a first draft and send it to SMEs for review. However, the SME's knowledge is so specialized, they only really know about 75% of what your doc covers. There are paragraphs and explanations here and there that are beyond the SME's domain expertise. Unless the SME flags these unknowns as "I don't know if this is true or not," there's a high chance that this AI-generated content makes its way to publication. 

The fact is, when people review content, they don't indicate if they're confirming and validating every sentence in your document. Especially if the AI-written content has an aura of confidence and seems correct, the reviewing engineer might just click approve. Someone who LGTMs your doc might implicitly be LGTM'ing the sections they know, or saying that they don't have any objections to the content.

Chasing down experts to vet every part of your document can be time-consuming. So even if you have AI do the heavy lifting with content development, you'll still hit slowdowns when you have to put content through the review process. It takes time to identify the SMEs, commit them to doing doc reviews, parse and unpack their comments (which are often opaque or half-articulated), incorporate the edits, review the edited content by the same SMEs, and then push to publication.

As we speak I have several docs in the review process, as I wait for SMEs to finish reading and annotating the content. I can't really to their heads, so although I *think* they're all-knowledgeable about the topic, it's probably not the case. The product manager probably has one perspective, the engineering lead another, the individual contributing engineers other expertise, and so on. Engineers are so specialized, they often don't understand much about topics outside their immediate focus.

Consider this analogy. Imagine your documentation is your hand, with 10 fingers. Because you're writing product documentation, you're covering a lot of ground. There are 10 different sections in your documentation, just like there are 10 fingers across your two hands. When you review the documentation, you find that each engineer only knows how one finger works on each hand. You ask one engineer to review the doc, but he or she only digs into one section because that's the only section they know, as it's what they coded. You have to corral the other engineers to review each of the other sections/fingers.

There's yet another challenge: the reality is that on any given team, only a few engineers are keen on reviewing documentation. Many others have cotton in their ears when it comes to document review requests. You can ping and prod them, and they will struggle to read beyond a paragraph. It could even take product managers days to review one page of documentation. 

In this review culture, sending a doc with a lot of AI-written sections has a high risk of moving straight past all of these review-reluctant engineers. As soon as that one engineer (the one who finished *To Kill a Mockingbird* in eighth grade and who still enjoys reading) gives you the LGTM, bam, you publish that documentation, and errors sneak into the output.

## Conclusion

I've been a bit snarky in this article, describing the challenges of SME review. AI tools bring the whole topic of SME review into sharp focus, requiring tech writers who can both tactfully and forcefully identify the right reviewers, and then cultivate effective review processes to quality check their content. Those review processes will never be as speedy as working with an AI tool.