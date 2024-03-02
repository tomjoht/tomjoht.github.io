---
title:  "Creating high-fidelity, thematically organized notes from engineering meetings using AI"
permalink: ai/prompt-engineering-summarizing-meeting-notes.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-02-17
---
{% comment %}
{% include coffeeshopbook.html %}
{% endcomment %}

Before you can use AI tools to generate accurate, relevant content, you need to gather up a source of credible information from which the AI can draw from. For example, if you were to simply ask Gemini, ChatGPT, or another generative AI tool to write an API overview for Product ACME, a proprietary application not even online, without providing a lot of source material about ACME, you can imagine how the output will go &mdash; the AI tools will hallucinate wildly or might refuse the task altogether. 

AI tools produce the best output when you supply copious input. When you can gather up one-pagers, product definition papers, engineering designs, and other collateral about the product, AI tools can use this input to produce more intelligible outputs. However, many times this source material isn't available. Or if it's available, it might not be fully accurate (some papers might explore various approaches never implemented, for example). Chances are, you'll need to meet with engineers to gather a lot more information about the product, even it's to clarify and validate information in the source material you've gathered.

When you meet with engineers, they often provide a firehose of information, adding so many details and explanations that it can be overwhelming. Tech writers might record the meetings so re-listen later, or to transcribe them, but the automated transcripts can be chaotic, hard to read, fragmented, and so on. Additionally, transcribing the material manually can take forever.

Fortunately, with the right techniques, you can use AI tools to create a high fidelity, thematically organized writeup about the meeting, with an accuracy that some engineers have told me is "scarily good," "fantastic," and "impressive." I've been using this technique for about a dozen meetings as I've gathered information from numerous teams about a large SDK that I'm documenting. Having a large body of accurate notes from these meetings is a gold mine to feed into AI tools to help with the later generation of documentation.

These notes can also be a way to amplify your visibility across teams, since the high fidelity version of the meeting is often of interest to other stakeholders. I've split this process of summarizing and broadcasting meeting notes up into 4 steps.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Step 1: Transcribe the meeting with AI

Transcribe the meeting using the AI tools available to you. I use Google Meet for meetings, and there's an option to transcribe the meetings. (Here's more info on the [required tiers to transcribe meetings in Google Meet](https://support.google.com/meet/answer/12849897).) Recording the meetings is also an option, but I'd rather just have the transcription as I think it's much more consumable, and you won't have to deal with video files later.

After the meeting ends, Google Meet sends you the transcribed meeting as a Google Doc. As a literal transcription of the meeting, it's not that useful at this point. If you've ever tried reading a verbatim transcription of a meeting, it's dreadful, disorganized, jarring, and repetitive.

## Step 2: Get a readable summary of the meeting

Now it's time for AI to work its magic on the transcript. In this step, you paste the transcript into an AI tool and first ask for a list of themes from the meeting. Then from those themes, you initiate a series of follow-up prompts for more detail about each theme.

You might be thinking, why stagger the prompts like this? I can just ask for a summary in one prompt. No, that method provides a truncated summary that omits much of the rich detail from the meeting. The secret to getting high fidelity / rich detail is to ask for it in individual prompts. This technique follows the same approach you would use in [task decomposition](prompt-engineering-task-decomposition.html). You start by asking for a high-level list of themes, then expand into each one in more custom ways. 

<div class="chat">
<p>You are an AI assistant tasked with creating a detailed and actionable summary from the provided meeting transcription, indicated with <span class="pVar">{Transcript}</span>.</p>

<p>First, analyze the entire <span class="pVar">{Transcript}</span> to identify the major themes or topics discussed. Generate a list of themes and list them.</p>
</div>

The AI provides a list of themes. Then based on the first theme:

<div class="chat">
<p> For theme 1, provide detailed notes from the <span class="pVar">{Transcript}</span>. Include direct quotes and expand on any acronyms. Focus on capturing all the relevant details discussed during the meeting related to this theme, formatted for easy readability with bullet points, numbered lists, and clear hierarchies of information. Avoid truncation or summary but instead strive for as much detail as possible, articulated in grammatically correct English.</p>
</div>

The AI responds. After the response:

<div class="chat">
<p>Now do the same for theme 2.</p>
</div>

After the response:

<div class="chat">
<p>Now do the same for theme 3.</p>
</div>

... and so on. After all themes are complete, create the action items:

<div class="chat">
<p>Now create a list of all action items, decisions, and their corresponding owners or deadlines. If no specific person was assigned, determine the most relevant person to be responsible.</p>
</div>


After you proceed through all the themes, compile the responses together into one long summary. You now have a highly readable version of the meeting. Yes, it might contain more detail than most people want to read. But remember that this is source material for writing documentation later on. You might not get to this topic for a number of weeks after the interview. When you do, you'll want to have as much detail as possible. 

Also, apart from actually reading the content for later recall, richer detail will provide better source input when you task an AI to do write some documentation later.

You might find the multiple prompts approach here a bit tedious. Couldn't you just ask for the summary in the same prompt? You could, but then the summary will probably be 500 words instead of 2,500 words. LLMs have a max token output that varies depending on the tool but might be around 600 words. If you don't break up the prompts, you end up with truncated, shortened meeting summaries that lack the rich detail you need for writing documentation.

## Step 3: Fix any glaring errors in the summary

Before sending out the AI-written transcript to meeting participants, you'll want to read it over once and correct any obvious errors. Here's what I usually fix:

* If a participant joins from a meeting room (for example, "Central Command" meeting room), the transcript will say "Central Command" instead of the person speaking in that meeting room. Change meeting rooms to people's names where feasible.
* Names might be spelled phonetically rather than accurately.
* Links to documents, often pasted into meeting chats, don't find their way into the AI-cleaned-up transcript. Add the links.
* Action items can be a bit too robust and often need to be paired back.

Don't spend too much time editing the transcript. Be sure to put "(AI-written)" after the meeting transcript title. This acknowledgement provides a disclaimer in case something is wrong; it also provides a bit of intrigue.

## Step 4: Share the meeting notes

After you've compiled the transcript and fixed any obvious errors, share it with the meeting participants. People are usually interested to see how AI captured the meeting anyway, and they'll often share it with others. You could also broadcast the notes to a larger audience on your own, if appropriate. I like to think that meeting notes should provide the needed level of detail for people outside the meeting to understand the discussion in an easy-to-read way.

If you want to crank up your visibility, share the meeting notes with everyone mentioned in the meeting, even if they weren't present. And possibly with team aliases as well. This will amplify your visibility in massive ways, if you want that for your group.

Sending meeting notes to participants is like sending micro-newsletters to a highly targeted audience. The sender becomes much more visible, and this visibility translates into more familiarity with you and your role. People might suddenly realize that you're working on important documentation, gathering needed details, interacting with stakeholders, and more. 

Yes, this is how documentation gets written (tech writers extract information from SMEs), but non-tech-writers might not realize this. They might think someone simply hands you already-written documentation to publish, or they might not think about how documentation gets produced at all. Now suddenly your work is visible and promoted. This visibility might be important when budgets tighten and high-up leaders wonder who to lay off.

Finally, imagine how AI-written notes could transform a workplace. Many meetings might be relevant to you as a tech writer (for products you're documenting), but attending all potentially relevant meetings would attenuate your productivity as you struggle to distinguish signal from noise. If you had detailed meeting notes for each meeting, you could scan through multiple meeting notes in a few minutes to see if there are any documentation-related action items. There's nothing worse than being trapped in a long meeting that's not really relevant to your projects. Putting AI-written meeting notes into practice might ignite a cultural change around meeting notes that benefits technical writers.

<hr />

{% include ads.html %}

<h3>Some notes on a failed experiment</h3>

I want to describe an experiment that mostly failed with regards to meeting notes. In experimenting with meeting notes prompts, I was curious whether I could use a "for" loop with the LLM's responses in order to maximize the output tokens with each go around. 

Knowing that AIs have a max token output per response, I decided to break up the AI's response after each meeting theme by requiring me to type "Continue." I wondered if this would allow me to get the maximum token output with each response. I wasn't sure whether the AI stores up the first response in memory and then just divides it across each paused response, or if the AI goes back to the transcript each time to get richer, more accurate detail for each theme. Here's the prompt.

<div class="chat">
<p>You are an AI assistant tasked with creating a detailed and actionable summary from the provided meeting transcription, indicated with <span class="pVar">{Transcript}</span>.</p>

<p>First, analyze the entire <span class="pVar">{Transcript}</span> to identify the major themes or topics discussed. Generate a list of themes.</p>

<p>For each identified theme in the list of themes, provide detailed notes from the <span class="pVar">{Transcript}</span>. Include direct quotes and expand on any acronyms. Focus on capturing all the relevant details discussed during the meeting related to this theme, formatted for easy readability with bullet points, numbered lists, and clear hierarchies of information. Avoid truncation or summary but instead strive for as much detail as possible, articulated in grammatically correct English.</p>

<p>After describing a theme, pause and say, “Continue on to the next theme?”</p>

<p>Wait for user input:</p>

<ul>
<li>If the user says “yes” or “continue”, proceed to describe the next theme.</li>
<li>If the user says anything else, pause and wait for further instructions.</li>
</ul>

<p>Repeat this process for each theme until all themes have been documented.</p>

<p>After the themes are complete, create a list of all action items, decisions, and their corresponding owners or deadlines. If no specific person was assigned, determine the most relevant person to be responsible.</p>

<p> <span class="pVar">{Transcript}</span></p>

<p>[paste the transcript here]</p>
</div>

Despite my high hopes for this technique, it didn't work. In other words, the total meeting summary was about the same length as a prompt that asks for the summary all at once. I'm not sure why. One possible reason could be that most current LLM models aren't designed for iterative prompting flows like this. They're more optimized to take in a full prompt, process it, and return the best answer they can generate in a single shot based on that prompt and their training data. Perhaps trying to introduce an unnatural feedback loop likely went against the core design principles and assumptions these models were built upon? I'm not sure.

<hr/>

*This content was AI-assisted.*

## Related posts

* [Visualizing APIs with tree diagrams, partly generated with AI](/blog/task-decomposition-tree-diagram-example)