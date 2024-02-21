---
title:  "Summarizing meeting notes and amplifying visibility (prompt engineering)"
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

One of the easiest ways to use AI tools is summarizing meeting notes. While this seems on the surface to be secretarial in nature, it's not. When you tag people in meeting notes and broadcast the notes to larger lists of people (for example, all those who skipped the meeting, to those who were mentioned in the meeting, etc.), the notes can amplify your visibility and communication about the documentation projects you're working on. I've split this process of summarizing and broadcasting meeting notes up into 5 steps.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Step 1: Transcribe the meeting with AI

Transcribe the meeting using the AI tools available to you. I use Google Meet for meetings, and there's an option to transcribe the meetings. (Here's more info on the [required tiers to transcribe meetings in Google Meet](https://support.google.com/meet/answer/12849897).) Recording the meetings is also an option, but I'd rather just have the transcription as I think it's much more consumable, and you won't have to deal with video files later.

After the meeting ends, Google Meet sends you the transcribed meeting as a Google Doc. As a literal transcription of the meeting, it's not that useful at this point. If you've ever tried reading a verbatim transcription of a meeting, it's dreadful, disorganized, jarring, and repetitive.

## Step 2: Get a readable summary of the meeting

Now it's time for AI to work its magic on the transcript. In this step, paste the transcript into an AI tool and ask for a grammatically correct, readable version that preserves the rich detail of the meeting. Choose an AI model that has a high input maximum and a high output maximum.

When formulating your summary prompt, you have two main options:

* **All-at-once response**: Ask the AI to provide the summary all at once. This provides the shortest response.
* **Question-by-question response**: Manually ask the AI to describe each meeting theme question by question. This provides a verbose, sometimes repetitive response.

The length and quality of the responses varies tremendously between these two techniques. In my tests, the responses for the questino-by-question technique can be around 4x as long as the all-at-once response.

In my experience, when I ask AI for a summary, the general training of most AIs is to provide an overly shortened version of the meeting &mdash; one that leaves out many rich details that can be useful. I want to preserve as much of the detail as possible from the meetings, organized by theme to be readable so that this information can be useful for documentation purposes later on.

### All-at-once response

This technique results in the shortest response. If you want a more condensed summary of the meeting, this is the way to go. The following prompt is more articulate than it needs to be. Even if you simply ask for a grammatically correct, readable version of the meeting, the response will probably be decent. 

Keep in mind that all AI interfaces have a maximum token output for responses. For example, even if an AI tool has a huge context window, the output might be a fraction of the context. You can't upload a 200-page novel and ask an AI to write a 200-page response to a prompt about the novel. Chances are, the max token output length will be about 1,000 tokens or twice that if you're lucky. 

(If you're wondering why the AI's responses are always so short/summarized, look at the AI's max token output, which could be different from the model's output if interacting with the model through an API. That is, an LLM might support higher outputs when you interact with it programmatically through an API rather than through a web interface on an API server. The server itself might perform some logic and processing.)

Here's a prompt you can use for meeting notes:

<div class="chat">
<p>You are an AI assistant tasked with creating a detailed and actionable summary from the provided meeting transcription, indicated with <span class="pVar">{Transcript}</span>.</p>

<p>First, analyze the entire <span class="pVar">{Transcript}</span> to identify the major themes or topics discussed. Generate a list of themes.</p>

<p>For each identified theme in the list of themes, provide detailed notes from the <span class="pVar">{Transcript}</span>. Include direct quotes and expand on any acronyms. Focus on capturing all the relevant details discussed during the meeting related to this theme, formatted for easy readability with bullet points, numbered lists, and clear hierarchies of information. Avoid truncation or summary but instead strive for as much detail as possible, articulated in grammatically correct English.</p>

<p>Repeat this process for each theme until all themes have been documented.</p>

<p>After the themes are complete, create a list of all action items, decisions, and their corresponding owners or deadlines. If no specific person was assigned, determine the most relevant person to be responsible.</p>

<p><span class="pVar">{Transcript}</span></p>

<p>[paste the transcript here]</p>
</div>

By the way, when you find a meeting notes prompt you like, save it somewhere. The key to continuing to summarize notes depends on adopting a fast, lightweight process. It shouldn't take you more than 10 minutes after the meeting to clean up the notes. Also, keep the instruction about direct quotes in the response. These quotes will liven up the meeting notes.

In formulating your prompt, you might also provide instructions about the length of the response. For example, if generating a summary for a meeting, perhaps you want a summary that's no more than 10 sentences. Some AI tools do better if you constrain the output by the number of sentences rather than the number of tokens or words. You can also provide instructions such as formatting the summary as 10 bullet points, which works well. You could also ask the AI to generate its maximum output tokens in its response.

Whether an AI can follow this instruction is also questionable. Some LLM models disregard this instruction and just sort of provide the response they want to write. LLMs undergo "instruction training" that teaches them to follow user-specific instructions. (Think of a dog at training school, learning to heel. Dogs that have been instruction-trained will heel.)

### Question-by-question responses

The question-by-question technique returns the most verbose response, with as much detail as possible, though you might find the response could be tightened and made more succinct. This is really a fascinating technique because it follows the same approach you would use in [task decomposition](prompt-engineering-task-decomposition.html). You start by asking for a high-level list of themes, then expand into each one in more custom ways. 

Right from the start, you can filter out content you don't want. If you don't want meeting notes about "Vacation spots" or something, you can simply skip over that theme as you proceed with later prompt questions asking for more detail about each theme.

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

## Step 3: Fix any glaring errors in the summary

Before sending out the AI-written transcript, you'll want to read it over once and correct any obvious errors. Here's what I usually fix:

* If a participant joins from a meeting room (for example, "Central Command" meeting room), the transcript will say "Central Command" instead of the person speaking in that meeting room.
* Names might be spelled phonetically rather than accurately.
* Links to documents, often pasted into meeting chats, don't find their way into the AI-cleaned-up transcript.
* Action items can be a bit too robust and often need to be paired back.
* If someone said something during the meeting they wouldn't want broadcast, omit it. AI transcriptions can capture much more detail than people might realize, assuming that no human would record this detail in a transcript.

Don't spend too much time editing the transcript. Be sure to put "(AI-written)" after the meeting transcript title. This acknowledgement provides a disclaimer in case something is wrong; it also provides a bit of intrigue.

## Step 4: Include action items

Meetings usually have some action items. Recording these action items and following up on them ensures &mdash; in the minds of each participant &mdash; that you take the meeting seriously. It makes participants feel the meeting has been productive if you follow through with the actual action items. 

Consider creating bugs for each action item and assign them owners in the Google Doc (if you're using Google Docs for meetings). Each meeting should usually include a review of the previous meeting's action items. If you're not generating action items from meetings, nor completing the action items generated, what's the point of the meeting?

By the way, there isn't an AI-automated step here, but if you can find a way to programmatically convert action items into bugs in your issue tracking tool, that could be a good move. 

## Step 5: Broadcast the meeting notes

Now comes the fun, uncomfortable part. Gather up a list of meeting recipients. This should include all people who are on the meeting invite (but who probably didn't all come), people discussed or referenced in the meeting (wouldn't you be curious to see notes of a meeting you were discussed in?), and of course the actual meeting attendees. Then copy the meeting notes into an email, as well as reference the Google Doc where they're stored, and send it out to them.

Sending meeting notes to participants is like sending micro-newsletters to a highly targeted audience. The sender becomes much more visible, and this visibility translates into more familiarity with you and your role. People might suddenly realize that you're working on important documentation, gathering needed details, interacting with stakeholders, and more. 

Yes, this is how documentation gets written (tech writers extract information from SMEs), but non-tech-writers might not realize this. They might think someone simply hands you already-written documentation to publish, or they might not think about how documentation gets produced at all. Now suddenly your work is visible and promoted. This visibility might be important when budgets tighten and high-up leaders wonder who to lay off.

Finally, imagine how AI-written notes could transform a workplace. Many meetings might be relevant to you as a tech writer (for products you're documenting), but attending all potentially relevant meetings would attenuate your productivity as you struggle to distinguish signal from noise. If you had detailed meeting notes for each meeting, you could scan through multiple meeting notes in a few minutes to see if there are any documentation-related action items. There's nothing worse than being trapped in a long meeting that's not really relevant to your projects. Putting AI-written meeting notes into practice might ignite a cultural change around meeting notes that benefits technical writers.

<hr />

{% include ads.html %}

<h3>An experiment that mostly failed</h3>

I want to describe an experiment that mostly failed with regards to meeting notes. In experimenting with meeting notes prompts, I was curious whether I could use a "for" loop with the LLM's responses in order to maximize the output tokens with each go around. 

To be more specific, knowing that AIs have a max token output per response, I decided to break up the AI's response after each meeting theme by requiring me to type "Continue." I wondered if this would allow me to get the maximum token output with each response. I wasn't sure whether the AI stores up the first response in memory and then just divides it across each paused response, or if the AI goes back to the transcript each time to get richer, more accurate detail for each theme. Here's the prompt.

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

Despite my high hopes for this technique, it didn't work. I'm not sure why. One possible reason could be that most current LLM models aren't designed for iterative prompting flows like this. They're more optimized to take in a full prompt, process it, and return the best answer they can generate in a single shot based on that prompt and their training data. Perhaps trying to introduce an unnatural feedback loop likely went against the core design principles and assumptions these models were built upon? I'm not sure.

<hr/>

*This content was AI-assisted.*

## Related posts

* [Visualizing APIs with tree diagrams, partly generated with AI](/blog/task-decomposition-tree-diagram-example)