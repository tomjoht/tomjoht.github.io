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

One of the best and easiest ways to use AI tools is summarizing meeting notes. While this seems, on the surface, to be secretarial in nature, it's not. When you tag people in meeting notes and broadcast the notes to larger lists of people (for example, all those who skipped the meeting, those who were mentioned in the meeting, etc.), the notes can amplify your visibility and the documentation projects you're working on. I'll split this process up into 5 steps.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Step 1: Transcribe the meeting with AI

Transcribe the meeting using the AI tools available to you. I use Google Meet for meetings, and there's an option to transcribe the meetings.  (Here's more info on the [required tiers to transcribe meetings in Google Meet](https://support.google.com/meet/answer/12849897).) Recording the meetings is also an option, but I'd rather just have the transcription as I think it's much more consumable, and you won't have to deal with video files later.

After the meeting ends, Google Meet sends you the transcribed meeting as a Google Doc. As a literal transcription of the meeting, it's not that useful at this point. If you've ever tried reading a verbatim transcription of a meeting, it's dreadful, disorganized, jarring, fragmented, and chaotic.

## Step 2: Get a readable summary of the meeting

Now it's time for AI to work its magic on the transcript. In this step, paste it into an AI tool and ask for a grammatically correct, readable version that preserves the rich detail of the meeting. 

When formulating your summary prompt, you have several options:

* **All-at-once response**: Ask the AI to provide the summary all at once. This provides the shortest response.
* **Periodically-paused response**: Ask the AI to pause after describing each theme, requiring you to say continue to go to the next. This provides a medium-length response.
* **Question-by-question response**: Manually ask the AI to describe each theme one by one. This provides a verbose, sometimes repetitive response.

It might seem unintuitive for this to be the case, but the responses vary quite a bit for these three techniques.

I'm still testing the three techniques. In my most recent test, I used a video transcript of a 1.5-hour YouTube video (which makes transcripts available), and I adapted the prompt around summarizing the video transcript instead of a meeting transcript. The All-at-once response was 550 words, the Periodically-paused response was 990 words and the Question-by-question response was 3,750 words.

In my experience, when you ask for a summary, the general training of most AIs is to provide a shortened summary of the meeting &mdash; one that leaves out many rich details that can be useful. I want to preserve as much of the detail as possible from the meetings, organized by theme to be readable. However, the question-by-question response technique tends to be too verbose and repetitive. 

### All-at-once response

This technique results in the shortest response. If you want a more condensed summary of the meeting, this is the way to go. The following prompt is more articulate than it needs to be. Even if you simply ask for a grammatically correct, readable version of the meeting, the response will probably be decent. 

Keep in mind that all AI interfaces have a maximum token output for responses. For example, even if an AI tool has a huge context window, the output might be a fraction of the context. You can't upload a 200-page novel and ask AI to write a 200-page response to a prompt about the novel. Chances are, the max token output length will be about 1,000 tokens.

<div class="chat">
<p>You are an AI assistant tasked with creating a detailed and actionable summary from the provided meeting transcription, indicated with <span class="pVar">{Transcript}</span>.</p>

<p>First, analyze the entire <span class="pVar">{Transcript}</span> to identify the major themes or topics discussed. Generate a list of themes and list them.</p>

<p>For each identified theme in the list of themes, provide detailed notes from the <span class="pVar">{Transcript}</span>. Include direct quotes and expand on any acronyms. Focus on capturing all the relevant details discussed during the meeting related to this theme, formatted for easy readability with bullet points, numbered lists, and clear hierarchies of information. Avoid truncation or summary but instead strive for as much detail as possible, articulated in grammatically correct English.</p>

<p>Repeat this process for each theme until all themes have been documented.</p>

<p>After the themes are complete, create a list of all action items, decisions, and their corresponding owners or deadlines. If no specific person was assigned, determine the most relevant person to be responsible.</p>

<p><span class="pVar">{Transcript}</span></p>

<p>[paste the transcript here]</p>
</div>

By the way, when you find a meeting notes prompt you like, save it somewhere. The key to continuing to summarize notes depends on adopting a fast, lightweight process. It shouldn't take you more than 10 minutes post-meeting to clean up the notes.

### Periodic pausing during the response

This technique is a bit innovative and I haven't seen it elsewhere. Knowing that AIs have a max token output per response, I decided to break up the AI's response after each meeting theme by requiring me to type "Continue." I wondered if this would allow me to get the maximum token output with each response. I need to do more testing to fully evaluate this. I'm not sure if the AI stores up the first response in memory and then just divides it across each paused response, or if the AI goes back to the well each time to get richer, more accurate detail for each theme.

<div class="chat">
<p>You are an AI assistant tasked with creating a detailed and actionable summary from the provided meeting transcription, indicated with <span class="pVar">{Transcript}</span>.</p>

<p>First, analyze the entire <span class="pVar">{Transcript}</span> to identify the major themes or topics discussed. Generate a list of themes and list them.</p>

<p>For each identified theme in the list of themes, provide detailed notes from the <span class="pVar">{Transcript}</span>. Include direct quotes and expand on any acronyms. Focus on capturing all the relevant details discussed during the meeting related to this theme, formatted for easy readability with bullet points, numbered lists, and clear hierarchies of information. Avoid truncation or summary but instead strive for as much detail as possible, articulated in grammatically correct English.</p>

<p>After describing a theme, pause and say, “Continue on to the next theme”</p>

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

Whether an AI can follow this instruction is also questionable. Some LLM models disregard this instruction and provide the entire content in one response. LLMs undergo "instruction training" that teaches them to follow user-specific instructions. Think of a dog at training school, learning to heel. Dogs that have been instruction-trained will heel. 

Beyond using this "Continue" technique, you might also provide instructions about the length of the response. For example, if generating a summary for a documentation topic, perhaps you want a summary that's no more than two sentences. Some AI tools do better if you constrain the output by the number of sentences rather than the number of tokens or words. You can also provide instructions such as formatting the summary as 3 bullet points, which works well.

### Question-by-question responses

This last technique returns the most verbose response, with as much detail as possible, though you might find the response could be tightened and made much more succinct. This is really a fascinating technique because it models the same approach you would use in [task decomposition](prompt-engineering-task-decomposition.html). You start by asking for a high-level list of themes, then expand into each one. 

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

Before sending out the AI-written transcript, you'll want to read it over once and correct any obvious errors. Here's what I'm usually fixing:

* If someone joins a meeting from a meeting room (for example, "Central Command" meeting room), the transcript will say "Central Command" instead of the person speaking in that meeting room.
* Names might be spelled phonetically rather than accurately.
* Links to documents, often pasted into meeting chats, don't find their way into the AI-cleaned-up transcript.
* Action items can be a bit too robust and often need to be paired back.
* If someone said something during the meeting they wouldn't want broadcast, omit it. AI transcriptions can capture much more detail than people might realize, assuming that no human would record this detail in a transcript.

Don't spend too much time editing the transcript. Be sure to put "(AI-written)" after the meeting transcript title.

## Step 4: Include action items

Meetings usually have some action items. Recording these action items and following up on them ensures that you take the meeting seriously. It makes participants feel the meeting has been productive if you follow through with the actual action items. 

Consider creating bugs for each action item and assign them owners in the Google Doc (if you're using Google Docs for meetings). Each meeting should usually include a review of the previous meeting's action items. If you're not generating action items from meetings, nor completing the action items generated, what's the point of the meeting?

## Step 5: Broadcast the meeting notes

Now comes the fun, uncomfortable part. Gather up a list of meeting recipients. This should include all people who are on the meeting invite (but who probably didn't all come), people discussed or referenced in the meeting (wouldn't you be curious to see notes of a meeting you were discussed in?), and of course the actual meeting attendees. Then copy the meeting notes into an email, as well as reference the Google Doc where they're stored, and send it out to them.

Sending meeting notes to participants is like sending micro-newsletters to a highly targeted audience. The sender becomes much more visible, and this visibility translates into familiarity with you and your importance. People might suddenly realize that you're working on important documentation, gathering needed details, interacting with stakeholders, and more. 

Yes, this is how documentation gets written, but non-tech-writers might not realize this. They might think someone simply hands you already-written documentation to publish, or they might not think about how documentation gets produced at all. Now suddenly your work is visible and promoted. This visibility might be important when budgets tighten and high-up leaders wonder who to lay off.

Imagine how AI-written notes could transform a workplace. How many meetings could be relevant to you as a tech writer (for products you're documenting), but attending them all attenuates your productivity as you struggle to distinguish 1% signal from 99% noise? If you had detailed meeting notes for each meeting, you could simply scan through the gist of each meeting in a few minutes to see if there are any documentation-related action items.