---
title: "From engineer interviews to written draft, with chain of thought reasoning"
permalink: ai/prompt-engineering-iterative-chain-of-thought.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-11-02
rebrandly: https://idbwrtng.com/prompt-engineering-iterative-cot
---

In this prompt engineering series, I've often focused on a specific technique one at a time, but in this tutorial, I'll show how multiple techniques can work together successfully, such as the following:

* The interview and transcript as a way to gather information
* Amplifying the rich detail of meeting notes by going section by section
* Proceeding through chain of thought reasoning steps
* Iterating on drafts to focus on a specific improvement
* Role playing, often switching between editorial and writer hats

By describing my process I've used here, hopefully it will give you a sense of how to use AI as a tool to steer through a writing task.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## The scenario

An engineer reaches out to tell me about upcoming changes to an API. Due to a partner-reported issue, they're adding new elements, including methods, an ID, and boolean values to the API. My task is to create documentation that explains how these new elements work and the reasoning behind the changes. In essence, I'll be delivering a conceptual document that clarifies a complex aspect of API usage.


## The meeting

I know the concept will be confusing because the engineer wants to meet with me to explain it. An easy update could have been communicated in a brief paragraph within a bug report or note in email. Instead, the engineer blocks off a half hour on my calendar in a conference room and plans to use pens and a whiteboard to explain the concept.

My first step is to record and transcribe this meeting. (Even in-person meetings that don't require video conferencing can easily be recorded.) During the meeting, I ask the engineer multiple clarifying questions. She talks through her diagram scribbles on the whiteboard, and I confirm my understanding of the labels. 

Engaging the engineer in a half-hour discussion is a great way to gather the necessary information. This approach works better than simply gathering internal documents because it results in source material that's more focused on what the documentation should communicate rather than including a lot of noise from internal documents that describe possibly extraneous details and discussion targeted to internal project teams. (See [Creating high-fidelity, thematically organized notes from engineering meetings using AI](/ai/prompt-engineering-summarizing-meeting-notes.html) for more info here.)


## Clean up the transcript

After the meeting, I submit the transcript to an AI tool and ask for grammar and clarity improvements — in short, to make it readable. Initially, the AI condenses the meeting notes, so I have to specifically instruct the AI to retain the rich, comprehensive detail. 

As I explained in [Gathering source material for context input](/ai/prompt-engineering-source-material-context.html), a key technique for working with AI tools is to provide them with abundant, relevant, and accurate source content. (This is basically the RAG technique, or retrieval augmented generation.) The more accurate my source content is, the higher the quality of the AI's output. Garbage in, garbage out.


## Convert the meeting notes into documentation

Now that I have refined, clean-up meeting notes, I need to transform them into documentation. This means shifting the perspective from an engineer explaining a concept to a direct explanation of the API's functionality.

Rather than submitting the entire transcript at once into an AI tool, I work section by section (as explained in [Task decomposition](/ai/prompt-engineering-task-decomposition.html)). I input a section and prompt the AI to rewrite it in a style suitable for API documentation, targeting a developer audience. This section-by-section approach prevents the AI from condensing or omitting important details. It also allows me to address any issues early on, preventing them from recurring later.

In one paragraph, the AI uses technical jargon without defining it. I provide a concise definition and ask the AI to clarify the term, then to rewrite that section. Hopefully future section rewrites will flag jargon and try to define it. 


## Expand with diagrams

I provide each diagram (the whiteboard pics from the engineering meeting) to the AI individually, clarifying any unclear handwriting, and request that it describe the diagrams within the context of the other meeting notes. I then incorporate these diagrams and their explanations into the draft. I feel it's better to isolate each of these diagrams in my prompts so that the AI won't be overwhelmed with too much information or provide a cursory treatment of the content. Treating each diagram separately also lets me look through and evaluate the explanation more carefully.


## Supplement the meeting notes with other internal documents 

The engineer has an internal document containing supplementary details. However, I know that some of this information focuses on engineering design and internal pros and cons of different approaches, which isn't directly relevant to the documentation. I instruct the AI to integrate any relevant details from this document to enhance the existing draft.


## Revise the first draft as a whole

Having compiled a first draft, I ask the AI to review the entire document and eliminate any redundancies or address organizational concerns. This acts as the editorial phase of focusing on the broader structure, aka the big rocks, before focusing on the finer details / little rocks.


## Identify confusing areas and clarify with examples

To refine the draft, I ask that the AI pinpoint areas that are particularly complex or confusing. For those areas, I ask the AI to provide examples to enhance clarity. Initially, it misinterprets my request for examples as a request for *code* examples. (I'm wary of any code samples here because I haven't provided the full API documentation in this context session.) I clarify that conceptual examples are also acceptable. After it identifies a list of areas needing examples, I tell it to go ahead and revise the draft to incorporate the examples.

{% include ads.html %}

## Check for editorial improvements

I prompt the AI to review the article and pinpoint any weaknesses or areas for enhancement. Usually when I ask AI tools for feedback for improvement, the AI generates a list of suggestions. I suspect this is because AI tools are designed to be helpful, and offering constructive suggestions is part of being helpful.

After the AI provides its suggestions, I review them and then instruct the AI to revise the draft accordingly, incorporating the recommended improvements. This is a way to continually improve the drafts.

Notice that I've separated this task ((1) first suggest the improvements, then (2) make the improvements) into two distinct steps, as it seems to help AI tools with the thought process. Although I haven't measured this empirically, it appears that breaking down the reasoning steps is beneficial — this is what chain of thought reasoning is all about. Initially, the AI assumes the role of an editor, critically evaluating the document and identifying areas for improvement. Next, it transitions back into the role of a writer, implementing those improvements. The more you can decompose complex processes and thinking into discrete steps, I think the outcome will be better.


## Check for factual accuracy

At this stage, I want to make sure the draft accurately reflects the information in the source documents. So I paste the original transcript and internal document into the AI tool and ask it to fact check the documentation draft. The AI identifies a few discrepancies, and I approve the suggested changes to the draft.


## Continually refine the content

After checking the document for factual accuracy, I continue to refine the content. I read through the document with a careful eye, making changes to language (often removing adjectives) and expanding detail in places. I make some adjustments to try to clarify concepts, change paragraphs into lists, other lists into tables, and so on. I use AI to help smooth out some of my changes and to convert the lists into tables where it would be clearer.


## Link the code elements

Once I have a good draft, I link the code elements to their reference documentation. This ensures that the code elements are spelled correctly and that they exist. Because some elements are new, I have to tell the AI to ignore linking them until they are released.


## Create the diagrams

Now I need to transform the whiteboard diagrams into a format suitable for the documentation. The current diagrams consist of simple, hand-drawn lines depicting cars traveling on and off the designated path. While AI-generated ASCII text diagrams would be ideal if they were more visually intelligible, they aren't. So I use a graphics program (Illustrator) to create the simple diagrams. Anyone can draw some lines on a graph and add labels to them, but this part takes me a couple of hours, even as simple as the graphics are.

## Confirm the diagram explanations

After incorporating the diagrams and explanations into the draft, I generate a PDF (so that the images can appear in the right context of the text in the article) and ask AI to review the diagrams and their explanation. AI has a few suggestions to improve clarity, and I incorporate them.


## Next steps

At this point in the document, I need to review the content with the engineer. I load up the new document in our publishing system and send out a changelist for review, crossing my fingers that the engineer won't have too many changes.


## Conclusion and my larger point

I've outlined each step of my process to illustrate the iterative nature of working with AI tools, which become like power tools in the hands of skilled writers. Simply asking the AI to generate a final draft of the documentation based only on the original meeting transcript would likely lead to a poor result, prompting the writer to mistakenly conclude that AI tools are unsuitable for documentation tasks like this. But by using an approach that involves multiple processes and iterative drafts, the AI tools produce a more intelligent outcome.

Some might argue that this extensive iterative process — with its numerous drafts, prompts, and reviews — negates the time-saving benefits of using AI tools. Why not just write it yourself from scratch? However, I still think writing the draft from scratch would be more time-consuming and be less accurate. Although it seems like a lot of iterative steps, remember that the AI performs each step in a matter of seconds. Additionally, writing sentences from scratch consumes a lot of mental effort, whereas using AI tools is a more mechanical task with only judgement and editorial acumen needed. For instance, I could likely watch a football game or a TV show while guiding the AI through these steps. In contrast, drafting the content manually would likely exhaust me within two hours.

As I've been working with AI through various documentation scenarios, I've grown more comfortable with processes. I know that gathering source material is key, and that recorded one-on-one meetings with engineers produce some of the most beneficial input for AI tools. Using this approach, I was able to finish a conceptual document in about a day. Even if the content has less voice and energy than content I would write manually, I can't help but think that a library of conceptual explanations covering a variety of topics will be more appealing than the one or two conceptual docs I would have time to manually write.
