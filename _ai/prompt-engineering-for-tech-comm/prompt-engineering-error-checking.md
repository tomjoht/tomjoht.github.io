---
title:  "Error checking the AI output"
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

In the [Populating documentation templates](/ai/prompt-engineering-populating-documentation-templates.html#accuracy_check) section, I mentioned an accuracy check after writing the first draft. In this article, I'll expand more on this technique, since reducing errors ("hallucination") remains one of the key challenges in using AI tools. It's the fear of hallucination, of putting your name on a document that has some bogus statements, code, or other details, which keeps many tech writers hesitant from using AI tools.

## Accuracy prompt

As I explained in [Gathering source material for context input](/ai/prompt-engineering-source-material-context), one way to avoid errors in the output is to gather an abundance of source material as input or context for the AI. This tends to work fairly well. Then after you've arrived at the first draft, use an error prompt like this:

<div class="chat">
<p>
You are an expert fact checker. Your task is to ensure the accuracy of the <span class="pVar">{Documentation}</span>. The <span class="pVar">{Source Material}</span> is the authoritative source of truth.
</p>

<p><strong>Identify Errors:</strong> Carefully compare the<span class="pVar">{Documentation}</span> against <span class="pVar">{Source Material}</span>. Look for the following types of errors:</p> 
<ul>
<li><strong>Factual Errors:</strong> Any statements that contradict information in <span class="pVar">{Source Material}</span>.</li>
<li><strong>Invented Information (Hallucinations):</strong> Details or concepts not explicitly present in <span class="pVar">{Source Material}</span>.</li>
<li><strong>Omissions:</strong> Important information from <span class="pVar">{Source Material}</span> missing from <span class="pVar">{Documentation}</span>.</li>
<li><strong>Logical inconsistencies:</strong> Contradictions or internal inconsistencies within the <span class="pVar">{Documentation}</span>.</li> 
</ul>

<p><strong>Provide evidence:</strong> For each error you identify, do the following:</p>
<ul>
<li>Cite the specific section within <span class="pVar">{Documentation}</span> where the error occurs.</li>
 <li>If possible, provide a quotation from the <span class="pVar">{Source Material}</span> that either refutes the error or highlights the missing information.</li>
 <li>Offer a possible correction or suggestion for improved accuracy.</li> 
</ul>

<p><strong>Consider external resources:</strong> If you're unsure whether something is accurate, consult reliable external sources [include a list of pre-approved sources here, if applicable].</p>

<p>
<strong>Example to get you started:</strong>
</p>
<p>
Let's say the <span class="pVar">{Documentation}</span> includes a statement like "The API supports real-time data streaming." If the <span class="pVar">{Source Material}</span> makes no mention of real-time capabilities, this would be an error (likely a hallucination).
</p>

<p>Here's the <span class="pVar">{Documentation}</span> </p>

<p>[Paste the documentation]</p>

<p>Here's the <span class="pVar">{Source Material}</span> </p>

<p>[Paste the source material]</p>
</div>

This prompt works surprisingly well, but there are a few details to note:

### Is your LLM powerful enough to do this?

There's a lot of difference in LLM capabilities. Some might be able to do this impressively well, while other LLMs might be much less capable. Less capable LLMs mights invent errors, constantly forget the documentation, or simply not catch a lot of problems. Until you've played around with different models in these tasks, you might not realize how much they can vary. The best models will no doubt be the most expensive to run, hence more limited and less available.

### Section by section analysis

You could try to improve the LLM's capabilities by error checking a section at a time rather than the whole document. This might reduce the scope of the analytical task in ways that allow the LLM to be more thorough and accurate. Going section by section has been one of my key insights in using LLMs. As I explained in [Creating high-fidelity, thematically organized notes from engineering meetings using AI](/ai/prompt-engineering-summarizing-meeting-notes.html), going theme by theme rather than summarizing all notes at once yields a completely different output quality.

### What the source material lacks

It's important to note that source material (consisting largely of internal documents) will likely have some gaping holes. Internal documents focus on coding for missing features. The documents might provide more detail about internal architecture than you want to expose (the implementation details users don't need to know), and more. Don't assume that the source material actually has all the answers.

### Using external material

If your documentation covers some general technologies with information on the web, you could expand your source material with external sources. For example, suppose you're explaining how to call your API in an Android app. While your docs focus on the API, you might also mention Android details in the how-to's and other details. Checking those details with external sources explaining those topics could be a good way to expand your accuracy checks and validate your content.

### Session context might need to be refreshed

Make sure your session context hasn't expired. Suppose you pasted all the source material up front, but then proceeded through a long draft with many rewrites, clarifications, and other back-and-forth exchanges. Will the AI tool still remember all the source material? 

You could include a needle-in-the-haystack test to check if it still remembers the content. Insert a small detail in the content. (For example, "Fun fact: the product manager has a dog named Ralph.") Then every so often, ask what the product manager's dog name is. When the AI no longer remembers, refresh the source material. (This is partly why I like to accumulate source material in a separate Google Doc&mdash;so I can easily repaste it into a session.)

### Iterative error checking

You could also proceed iteratively with the error checking, asking the AI to perform the error checking multiple times, in different sessions, and maybe with different LLMs models. You could experiment with different role plays, like, "You are a [some role]." Make some adjustments and see if the AI tool has a different response. There's an element of randomness and variation that makes the outputs somewhat unpredictable, so using multiple iterations could be a logical technique.

### Adversarial prompts

Another approach could be to antagonize the AI into an adversarial response. For example, ask the AI to assume an adversarial role in which it looks for logical gaps, missing sections, problematic assumptions, and other issues with your documentation. Find the counterarguments to this approach. Challenge every assertion with a counterassertion. Identify an opposing viewpoint to the approach described here. 

To be honest here, sometimes I don't want this level of criticism, as it might reduce my confidence in the draft and require a lot more rework. But having a super-powerful AI plays devil's advocate against your work is a fun exercise that might really give your docs a run for the money. 

## The challenge of error checking when you lack expertise

There's a real conundrum with error checking: if you're not an expert in the material, how will you know if the flagged errors are actually errors? If you're steering an AI tool in complete ignorance of the topic, and then relying entirely on human SMEs (subject matter experts) to vet the output, you'll be at a loss for doing quality control checks. Like most documentation, having some sense of the subject matter is necessary. You don't want to end up being an interface between the documentation and the LLM, and between the documentation and the SME. You want to maintain a sense of the subject matter yourself, as this will pay long-term dividends as you work on many different aspects of the documentation.

In other words, you might be working on Document A right now. But the knowledge you learn from Document A might spill over into Documents B, C, and D. So it behooves you to ramp up and learn, absorb, and sharpen your knowledge with the subject covered in Document A as it will pay greater dividends in the other documentation tasks. Shortcuts in one document end up hampering your productivity elsewhere.

One of the most beneficial ways to use AI tools might not be to have them write at all, but rather to learn. If you can ramp up on the source material and subject domain using these tools, this learning could prime your faculties enough to make writing itself easy.

## Be careful in reviewing AI-generated content with SMEs

You might be thinking, it's okay if there are errors in the content. I'll just review it with SMEs and they'll catch everything. However, reviewers might LGTM your doc ("Looks good to me!") without fully understanding everything. This short video demonstrates this phenomenon perfectly:

<iframe width="560" height="315" src="https://www.youtube.com/embed/rR4n-0KYeKQ?si=4dN7NYRp9E5QyBdz" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

For example, let's say you're writing a doc explaining how users do something really complex. You've used AI tools to navigate your way through this topic, and you generate a first draft and send it to SMEs for review. However, the SME's knowledge is so specialized, they only really know about 75% of what your doc covers. There are paragraphs and explanations here and there that are beyond the SME's domain expertise. Unless the SME flags these unknowns as "I don't know if this is true or not," there's a high chance that this AI-generated content makes its way to publication. 

The fact is, when people review content, they don't indicate if they're confirming and validating every sentence in your document. Especially if the AI-written content has an aura of confidence and seems correct (AI tools are great at this), the reviewing engineer might just click approve. 

Chasing down experts to vet every part of your document can be time consuming. So even if you have AI do the heavy lifting with content first-drafting, you'll still hit slowdowns when you have to put content through the review process. It takes time to identify the SMEs, commit them to doing doc reviews, parse and unpack their comments (which are often opaque or half-articulated), incorporate the edits, review the edited content by the same SMEs, and then push to publication.

As we speak I have 3 docs in the review process, as I wait for SMEs to finish reading and annotating the content. I can't really peak in their heads, so although I *think* they're all-knowledgeable about the topic, it's probably not the case. The product manager probably has one perspective, the engineering tech lead another, the individual contributing engineers other specializations, and so on. Engineers are so specialized, they often don't understand much about APIs they don't work on even if the APIs exist in the same SDK.

Consider this analogy. Imagine your documentation is your hand, with 10 fingers. Because you're writing product documentation, you're covering a lot of ground. There are 10 different sections in your documentation, just like there are 10 fingers across your two hands. When you review the documentation, you find that each engineer only knows how one finger works on each hand. You ask one engineer to review the doc, he or she only digs into one section because that's the only section they know, as it's what they coded. You have to corral the other enginers to review each of the other sections.

However, the reality is that on any given team, only a few engineers are keen on reviewing documentation. Many others have cotton in their ears when it comes to document review requests. You can ping and prod them, and they will struggle to read beyond a paragraph. It could even take product managers days to review one page of documentation. 

In this review culture, sending a doc with a lot of AI-written sections has a high risk of moving straight past all of these review-reluctant engineers. As soon as that one engineer (the one who finished *To Kill a Mockingbird* in eighth grade and who still enjoys reading, only maybe comic books instead now) gives you the LGTM, bam, you publish that documentation, and error sneak into the output.

## Conclusion

I've been unusually snarky in this article, describing the challenges of SME review. AI tools bring the whole topic of SME review into sharp focus, requiring tech writers who can both tactfully and forcefully identify the right reviewers, then cultivate the right review processes to get others to review content. Those review processes will never be as speedy as the AI's review.