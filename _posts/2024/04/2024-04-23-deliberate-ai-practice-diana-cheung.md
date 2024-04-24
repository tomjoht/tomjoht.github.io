---
title: "Get Better at Using Prompts With Deliberate Practice: One technical writer's little experiment — guest post by Diana Cheung"
permalink: /blog/deliberate-ai-practice-diana-cheung
date: 2024-04-23
categories:
- ai
keywords: technical writing, AI prompts, prompt engineering, deliberate practice, technical writer, technical documentation, API documentation, LLMs
rebrandly: https://idbwrtng.com/deliberate-ai-practice-diana-cheung
description: "In this guest post, <a href='#diana-cheung'>Diana Cheung</a> explores how to learn AI by using deliberate practice to enhance her prompting skills. As a deliberate practice effort, she emphasizes intentional, systematic practice rather than mindless repetition, similar to how one would learn coding or other skills. In this post, she shares her attempts at using Claude.ai to work through editorial improvements to a GitHub project's API documentation."
image: diana-text-suggestion-thumb.png
author: Diana Cheung
bio: false
---

* TOC
{:toc}

## Introduction

Have you dabbled in prompting, but haven't achieved [the 2x technical writing output as Tom](https://idratherbewriting.com/blog/ai-is-accelerating-me)? Well, me either, but here's what I am going to do about it.

For the past four months, I have taken a more active interest in learning prompting, generally about LLMs and prompt structures and specifically on how to apply it to technical writing. I'm following AI blogs, taking free online courses, and watching YouTube videos promising the perfect prompt formula.

Despite having learned and played around with various prompts, I haven't used them consistently in my actual technical writing workflows. Prompting hasn't been fully integrated into my process. It still doesn't feel second nature to me yet, so sometimes I forget to use it.

So how can I get better at incorporating the use of prompting in my technical writing processes and projects?

## Deliberate Practice

Taking a step back though, learning something new is challenging. It takes practice and time to make it your own. Just like when learning to code, reading and copying someone else's code won't make you a better programmer. You need to understand the fundamentals, practice, and make mistakes then learn from them. It's probably the same with prompting.

The concept of [deliberate practice](https://jamesclear.com/deliberate-practice-theory) is defined as purposeful and systematic practice, not just mindless repetitions. [Feedback](https://jamesclear.com/beginners-guide-deliberate-practice) is one main difference between deliberate practice and simple repetition. One way of receiving feedback is via measurement, such as tracking and evaluating your progress.

Deliberate practice can sound overly rigid and theoretical. There's also no standardized definition of what deliberate practice looks like for using prompting in technical writing. I interpret it as an approach that includes intention, experimentation, and iteration.

So for my next technical writing task or project, I'm planning to be more deliberate about using prompts in my workflow. I will brainstorm where and how to apply prompting in my process. I will see what works and doesn't work for me. Although I don't have quantitative measures, I can still gauge with qualitative observations.

## The Experiment

### The Technical Writing Assignment

I picked up a [GitHub issue](https://github.com/Redocly/redocly-cli/issues/1429) for an open-source API documentation tool.

<figure>
    <a href='https://github.com/Redocly/redocly-cli/issues/1429'><img style="max-width: 650px; border: 1px solid #dedede" src="{{site.media}}/diana-revisit-command-pages.png" /></a>
    <figcaption>Screenshot of GitHub issue description. <a href="https://github.com/Redocly/redocly-cli/issues/1429">Source: https://github.com/Redocly/redocly-cli/issues/1429</a></figcaption>
</figure>

It's a suitable issue to leverage AI and prompting as there are clearly defined requirements that need to be applied to multiple pages.

### Brainstorming

I brainstormed on how to use AI and prompting for each task requirement described in the issue.

* _"Meaningful introduction, explanation, and use case for each command."_
    * **Thoughts**: "Meaningful" seems subjective. Provide the source code of a command and ask AI to generate an introduction, explanation, and use case that are concise and helpful. Perform this task for one command manually first and then use it as an example in a prompt template.
* _"Show examples of each task or operation rather than each parameter or value."_
    * **Thoughts**: Find good examples (task/operation) and bad examples (parameter/value) to provide to AI. Then ask AI to detect instances of bad examples and suggest corrections.
* _"Use formatting wisely, consider which segments need to be copyable (use a code block), which do not (e.g. command output), and try to keep the use of admonitions to 2-3 per page. Be extra careful with tabs: a user should be able to pick a tab and read continuously through the document. If we make people click on each tab in turn, the tabs should be removed."_
    * _"Use formatting wisely."_
        * _"Consider which segments need to be copyable (use a code block), which do not (e.g. command output)."_
            * **Thoughts**: Not sure what replacement Markdown block to use that would still provide syntax formatting and highlighting.
    * _"Try to keep the use of admonitions to 2-3 per page."_
        * **Thoughts**: Ask AI to detect the number of admonitions per page and flag if it exceeds three.
    * _"Be extra careful with tabs: a user should be able to pick a tab and read continuously through the document. If we make people click on each tab in turn, the tabs should be removed."_
        * **Thoughts**: Not sure how to instruct AI on this requirement.
* _"Be consistent in heading levels and using active voice for task-based headings throughout."_
    * _"Be consistent in heading levels."_
        * **Thoughts**: Ask AI to list out the headings and levels, then check for inconsistencies.
    * _"Use active voice for task-based headings throughout."_
        * **Thoughts**: Ask AI to check headings (excluding Introduction, Usage, Options, Examples) for active voice and suggest corrections.
* _"Use informal but professional language, sometimes the puns can be difficult to tackle for our non-native English audience."_
    * _"Use informal but professional language."_
        * **Thoughts**: Ask AI to analyze the tone of existing documentation and offer suggestions for improvement.
    * _"Puns can be difficult to tackle for our non-native English audience."_
        * **Thoughts**: Ask AI to detect puns/idioms in existing documentation and offer replacement suggestions.
* _"Every code snippet must be preceded and followed by explanatory text."_
    * **Thoughts**: Perhaps ask AI to detect code snippets and any preceding and following text? If text is not present, ask AI to offer suggestions based on the content of the code snippet.

### Selecting Tasks

For my assignment, I selected a couple of tasks to leverage AI and prompting. It was too overwhelming to use prompting for all the tasks when I'm still in the early learning stage. It would take too much time and mental energy. Moreover, I didn't have any ideas on how to instruct AI on certain requirements, such as _"Be extra careful with tabs."_

For the selected tasks, I followed a simple process:

<ol>
  <li>Create prompts</li>
  <li>Run prompts</li>
  <li>Capture results</li>
  <li>Note observations</li>
</ol>

#### Task: <i>"Use informal but professional language."</i>

I crafted a prompt to detect the tone of the existing documentation and offer suggestions for sections not matching the desired tone of informal but professional. I fed the AI the preview command file.

<div class="chat">
<p>
You are an experienced technical writer with 20 years of experience. 
</p>
<p>
You will be provided a Markdown file <span class="pVar">{MD_FILE}</span> that is reference documentation for a CLI command.
</p>
<p>
The desired writing tone for <span class="pVar">{MD_FILE}</span> is <span class="pVar">{DESIRED_TONE}</span>.
</p>
<p>
You will perform the following actions:
</p>
<ol>
<li>Analyze the writing tone of <span class="pVar">{FILE}</span>. If you are unable to determine the writing tone, output "cannot determine".
</li>
<li>If the writing tone of <span class="pVar">{MD_FILE}</span> satisfies the <span class="pVar">{DESIRED_TONE}</span>, output "tone OK".
</li>
<li>Else identify the specific text snippets in <span class="pVar">{MD_FILE}</span> that do not match <span class="pVar">{DESIRED_TONE}</span> and provide suggestions to correct the text snippets to match <span class="pVar">{DESIRED_TONE}</span>. Format outputs as a table with headers: Text Snippet, Suggestion.
</li>
</ol>
<p>
MD_FILE: see attached file
</p>
<p>
DESIRED_TONE:
</p>
<p>
"""
</p>
<p>
Informal but professional.
</p>
<p>
"""
</p>
</div>

<figure>
  <img style="max-width: 650px; border: 1px solid #dedede" src="{{site.media}}/diana-analyzing-writing-tone.png" />
  <figcaption>Claude's response to the informal but professional tone prompt (accessed 4/17/2024). Source: Author</figcaption>
</figure>

I realized that describing tone is subjective and open to interpretation by both humans and AI. Claude analyzed the tone of the existing documentation to be formal and technical. The suggestion "Hey, just so you know …" seemed too informal to me. I edited the desired tone for the prompt to be formal and technical, but approachable. I also added specifics for the suggestions.

<div class="chat">
<p>
You are an experienced technical writer with 20 years of experience. 
</p>
<p>
You will be provided a Markdown file <span class="pVar">{MD_FILE}</span> that is reference documentation for a CLI command.
</p>
<p>
The desired writing tone for <span class="pVar">{MD_FILE}</span> is <span class="pVar">{DESIRED_TONE}</span>.
</p>
<p>
You will perform the following actions:
</p>
<p>
1. Analyze the writing tone of <span class="pVar">{FILE}</span>. If you are unable to determine the writing tone, output "cannot determine".
</p>
<p>
2. If the writing tone of <span class="pVar">{MD_FILE}</span> satisfies the <span class="pVar">{DESIRED_TONE}</span>, output "tone OK".
</p>
<p>
3. Else identify the specific text snippets in <span class="pVar">{MD_FILE}</span> that do not match <span class="pVar">{DESIRED_TONE}</span> and provide suggestions to correct the text snippets to match <span class="pVar">{DESIRED_TONE}</span>. Format outputs as a table with headers: Text Snippet, Suggestion. For the suggestions, avoid overusing the second person pronoun "you" and the first person pronoun "we". Also, try to use active voice for the suggestions.
</p>
<p>
MD_FILE: see attached file
</p>
<p>
DESIRED_TONE:
</p>
<p>
"""
</p>
<p>
Formal and technical, but approachable.
</p>
<p>
"""
</p>
</div>

<figure>
  <img style="max-width: 650px; border: 1px solid #dedede" src="{{site.media}}/diana-claude-response-edited-tone-prompt.png" />
  <figcaption>Claude's response to the edited tone prompt (accessed 4/17/2024). Source: Author</figcaption>
</figure>

The suggestions from the revised tone prompt better fit my expectations.

#### Task: <i>"Puns can be difficult to tackle for our non-native English audience."</i>

I built upon the revised tone prompt to look for puns, idioms, and other literary constructions in the existing documentation. I used the preview command file.

<div class="chat">
<p>
You are an experienced technical writer with 20 years of experience. 
</p>
<p>
You will be provided a Markdown file <span class="pVar">{MD_FILE}</span> that is reference documentation for a CLI command.
</p>
<p>
You will perform the following actions:
</p>
<ol>
<li>Analyze the writing in <span class="pVar">{MD_FILE}</span> and identify any English language puns, idioms, and other literary constructs that make the content difficult to understand for non-English natives. 
</li>
<li>If the writing in <span class="pVar">{MD_FILE}</span> does not contain any English language puns, idioms, and other literary constructs, output "none detected".
</li>
<li>Else identify the specific text snippets in <span class="pVar">{MD_FILE}</span> containing any English language puns, idioms, and other literary constructs and provide suggestions to correct the text snippets to not use them. Format outputs as a table with headers: Text Snippet, Suggestion. For the suggestions, avoid overusing the second person pronoun "you" and the first person pronoun "we". Also, try to use active voice for the suggestions. Moreover, the suggestions should have a tone that is <span class="pVar">{DESIRED_TONE}</span>.
</li>
</ol>
<p>
MD_FILE: see attached file
</p>
<p>
DESIRED_TONE:
</p>
<p>
"""
</p>
<p>
Formal and technical, but approachable.
</p>
<p>
"""
</p>
</div>

<figure>
  <img style="max-width: 650px; border: 1px solid #dedede" src="{{site.media}}/diana-claudes-response-to-puns.png" />
  <figcaption>Claude's response to the puns and idioms prompt (accessed 4/17/2024). Source: Author</figcaption>
</figure>

For more comprehensive testing of the prompt, I should create a test file containing puns, idioms, and other literary constructs. I made a note to do so later.

{% include ads.html %}

#### Task: <i>"Be consistent in heading levels."</i>

I created a prompt to detect the consistency in heading levels. For this prompt, I tested it with the join command file.

<figure>
  <a href='https://redocly.com/docs/cli/commands/join/'><img style="max-width: 650px; border: 1px solid #dedede" src="{{site.media}}/diana-join-documentation.png" /></a>
  <figcaption>A screenshot of the join command webpage. <a href="https://redocly.com/docs/cli/commands/join/">Source: https://redocly.com/docs/cli/commands/join/</a></figcaption>
</figure>

<div class="chat">
<p>
You are an experienced technical writer with 20 years of experience. 
</p>
<p>
You will be provided a Markdown file <span class="pVar">{MD_FILE}</span> that is reference documentation for a CLI command.
</p>
<p>
You will perform the following actions:
</p>
<ol>
<li>Analyze the writing in <span class="pVar">{MD_FILE}</span> and identify all headings.
</li>
<li>If the writing in <span class="pVar">{MD_FILE}</span> does not contain any heading, output "no heading detected".
</li>
<li>
Else identify the specific headings in <span class="pVar">{MD_FILE}</span> and their corresponding heading level, and determine whether the heading levels contain inconsistencies or skipped levels. If no inconsistencies or skipped levels are found, output "heading levels OK".
</li>
<li>
Else provide suggestions to correct the heading levels inconsistencies or skipped levels. Format outputs as a table with headers: Specific Heading, Current Heading Level, Suggested Heading Level.
</li>
</ol>
<p>MD_FILE: see attached file</p>
</div>

<figure>
  <img style="max-width: 650px; border: 1px solid #dedede" src="{{site.media}}/diana-claude-response-levels.png" />
  <figcaption>Claude's response to the heading levels prompt part 1 (accessed 4/18/2024). Source: Author</figcaption>
</figure>

<figure>
  <img style="max-width: 650px; border: 1px solid #dedede" src="{{site.media}}/diana-analyzing-heading-levels.png" />
  <figcaption>Claude's response to the heading levels prompt part 2 (accessed 4/18/2024). Source: Author</figcaption>
</figure>

I had to manually correct the AI that the Usage Level 3 heading should be a Level 2.
<figure>
  <img style="max-width: 650px; border: 1px solid #dedede" src="{{site.media}}/diana-heading-levels-inconsistencies.png" />
  <figcaption>Claude's response to the heading levels prompt after manual correction (accessed 4/18/2024). Source: Author</figcaption>
</figure>

While the AI gave some helpful suggestions, the output table didn't list all the entries or only entries requiring edits. The prompt isn't robust enough. I made a note to further improve it if I come across other relevant prompt examples. 

### Key Insights

After performing the little learning experiment, I made the following reflections:

* Resist the urge to go back to my usual ways. In the learning stage, AI prompting feels unwieldy and slow, so there's a big temptation to revert back to the old ways of doing things. The thought "It's faster to do it manually myself" comes up. I need to put in the effort upfront and accept the discomfort and slower pace. Moreover, it takes additional time to note down observations and action items. 
* I will add new steps of AI prompt brainstorming and experimentation to my technical writing process. When starting out, just picking a couple of tasks to leverage AI and prompting is more realistic and less overwhelming. Deliberate practice is an iterative process.
* The number of prompts can grow quickly. I need to find an easily accessible place to store and organize my prompts. Currently, I have a basic solution of storing the prompts in a Google doc with useful headings and descriptions. However, I will eventually need a more advanced tool, such as a prompt registry.

## Next Steps

So devise your own experiment to deliberately get better at prompting and infusing it into your technical writing process. Be open to updating your process, by adding steps for exploring how to use AI and prompting. Also, be ready to add in new tooling as you progress. Please share what experiment you plan to try.

<hr />

## About Diana Cheung {#diana-cheung}

<img src="{{site.media}}/diana-cheung.jpeg" alt="Diana Cheung" style="float: left; padding-right:10px; max-width:200px; padding-top:0px; margin-top:5px;" />Diana Cheung is an AI enthusiast and technical writer focused on the developer experience. She is an avid learner and has a soft spot for tea and meows. Follow her on [Medium](https://medium.com/@meetdianacheung) and [Linkedin](https://www.linkedin.com/in/meetdianacheung/)
<p>&nbsp;</p>



