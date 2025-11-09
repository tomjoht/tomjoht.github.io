---
title: "Why long-running tasks carried out by agentic AI aren't the future of doc work, and might just be an illusion"
permalink: /blog/collaborative-thought-partner-not-autonomous
date: 2025-11-08
categories:
- ai
- writing
keywords: 
rebrandly: https://idbwrtng.com/collaborative-thought-partner-not-autonomous
description: "As AI agents become more capable, there's growing eagerness to develop long-running tasks that operate autonomously with minimal human intervention. However, my experience suggests this vision misses the mark for most documentation work. The reality is that 90% of doc tasks require constant iterative decision-making, course corrections, and collaborative problem-solving&mdash;more like a winding conversation with a thought partner than a straight-line prompt-to-result process. This human-in-the-loop requirement is why AI augments rather than replaces technical writers."
---

* TOC
{:toc}

{:.note}
For a short video (7 min.) of this post, see this [NotebookLM video](https://notebooklm.google.com/notebook/f0cb5d57-41ec-4cbc-86de-591a8baa2083). The images in this post are from the NotebookLM slides.

As agentic assistants get more capable, I'm seeing more emphasis on long-running tasks. These are tasks that require less human intervention and give more autonomy to the agents to make decisions along the way to achieve the task's goal. In some ways, it appears that a core activity for future tech comm work might involve carefully crafting long-running prompts that allow a technical writer to fully automate a task. The tech writer's role then becomes focusing on designing prompts, instructions, and skills that highly capable autonomous agents can follow to complete the doc-related tasks. The more complex the task, the more complex the prompt.

However, I think this idea seems appealing in theory only. In reality, long-running tasks have limited application and aren't representative of 90% of the documentation tasks I do. Most documentation tasks involve iterative decision-making along the way based on feedback loops. Although many people would like tech writers to automate their tasks, the reality is that most doc scenarios are one-offs and not repeatable in a prompt that would apply to future doc tasks.

Based on the need for the human-in-the-loop to steer, provide feedback, course correct, and apply judgment all along the way of a process—in constant *conversation* with an AI agent **acting as a thought partner** rather than a wholly autonomous agent—I don't foresee long-running tasks being all that important for tech comm work.

<figure><img src="{{site.media}}/thoughtpartner-better-model-as-thought-partner.png" alt="Comparison of two AI interaction models: autonomous agent shows a person giving a task to a robot for solo processing, while thought partner shows two people collaborating at a table with gears representing a collaborative process" /><figcaption>The thought partner model emphasizes conversation and collaborative discovery rather than autonomous task execution</figcaption></figure>

For example, how many people have large prompt libraries full of ready-to-go prompts for all the incoming doc tasks they have to perform? I see prompt libraries surface regularly as popular features to add to sites providing AI guidance, yet I myself don't have a personal prompt library.

On a larger note, because of the need for this iterative thought-partnership in the content development process, I don't see how AI can replace a human worker. It's much more likely that AI *augments* a worker's productivity and decision-making only.

## Examples of long-running tasks

Before I dismiss long-running tasks, though, let's give some space to them here. These are the types of tasks you might give to your AI agent and then come back in an hour (or maybe 5 minutes, realistically speaking) or so to see the result. I frequently hear about agents running all night or something, which baffles me because most AI agents I use finish in under 10 minutes, or they terminate early due to errors or other permission-granting needs.

Tasks with predefined prompts most likely need to be general quality control tasks. Here are 10 examples you might run:

1. **Grammar.** Identify and fix all obvious grammar and spelling errors in each of the following directories in the documentation.
2. **Links.** Examine the links on each page in the documentation and make sure they are still valid. Identify and fix any links that are wrong.
3. **Style.** Audit all documentation pages for compliance with our company's internal style guide and terminology list, which you can find here: [provide location]. Flag or correct instances of outdated, non-standard, or inconsistent terms across the docs.
4. **Accuracy.** Check each API conceptual page for accuracy by comparing the assertions made in the conceptual pages against the functionality of the API reference. For topics in the X directory, compare them against the X API reference. For topics in the Y directory…
5. **Deprecations.** Look through the release notes and identify all the elements that have been deprecated in the past year. Then look through the documentation pages and see if those deprecated elements are still used.
6. **Bugs.** Look through each bug in the documentation component and group them based on three categories: ease of fixing, API, and requester. Briefly describe each bug in 1-2 sentences. Look at the provided material in each bug and determine whether the requester has provided sufficient info for it to be actionable. Then arrange the bugs in a list of easiest to most difficult to fix.
7. **Metrics.** Analyze the metrics for the past year to determine three categories: (1) the most popular pages, (2) the pages that users spend the most time on, and (3) the pages that users spend the least time on. Analyze the page content and determine potential reasons for why these pages ended up in these categories. Then analyze the page content and recommend fixes as needed.
8. **Images.** Review all images and screenshots in the documentation. Check for consistency in image styling (e.g., callouts, borders) and verify that the UI elements depicted in the images match the current version of the product interface. Flag or update inconsistent or outdated visuals. Make sure each image has an alt tag and title tag with appropriate content that reflects the image.
9. **Readability.** Run a readability analysis (e.g., Flesch-Kincaid) on all documentation pages and flag sections that exceed 12th-grade readability. For flagged sections, rewrite them to improve clarity and simplicity, maintaining the original technical accuracy.
10. **Summaries for content optimization.** Go through each page and add a summary in the frontmatter. Use these summaries to construct an llms.txt file. The summaries should help AI understand what each page is about, helping these tools locate the right files.

These tasks are probably ones that few human tech writers could do without becoming bored or tapping out after a few hours (especially when applied to a doc site with 100+ pages or more). Also, it's worth noting: almost none of these issues end up as doc requests that people file for me. Yes, I get the occasional bug about a misspelled word or broken link, but they're not the bulk of the requests. In my world, almost all doc issues are content-specific requests that would be hard to convert into a long-running prompt.

{% include ads.html %}

## Results of trying these long-running prompts

I've only actually tried a couple of these prompts: the grammar/style fix and the link fix. In both cases, the agents caught and fixed an impressive number of errors. Looking at all the fixes, I thought, geez, I'm really more of a sloppy writer than I realized. Glad no one seemed to notice a lot of these issues. In about an hour or two, I'd fixed 70+ issues in my docs.

It's safe to assume that most tech writers feel embarrassed about grammar errors and broken links in docs, and any process that can easily fix them is welcomed with open arms. It might be worth running most of the above prompts on a regular basis to catch quality issues.

But like I said, this isn't what 90% or more of documentation work involves. Most doc requests require a lot more complex decision-making along the way. Instead of allowing the agent to work autonomously, the doc issues encourage more of a thought-partner relationship with the AI, where you have conversations that lead to mutual decision-making.

<figure><img src="{{site.media}}/thoughtpartner-actual-twists-and-turns.png" alt="Illustration showing a straight dotted line from point A to point B contrasted with a complex, tangled orange path below filled with question marks, arrows, and light bulb moments" /><figcaption>The reality of documentation work: a winding path of discovery rather than a straight line from prompt to result</figcaption></figure>

## Tasks that involve iterative decision-making based on feedback loops

So many doc tasks involve interactive decision-making—such as choosing to emphasize a certain detail, validate some other section, or reorganize content for flow—based on emerging information or other details that they defy pre-made prompts.

I'm like a chef in a kitchen tasting the soup and deciding to sprinkle in some spices, then tasting it again and making other ingredient decisions. *Needs more salt, sprinkle some in. Re-taste. No, that wasn't quite what was missing. Maybe a bit of garlic salt? Yes, getting closer. Wait, did we forget the bay leaf? No wonder. Let's add one in. But wait, we only have half a bay leaf; what can substitute for the other half? Will basil leaves work? Yes, let's try some. Oh yeah, getting there. Maybe a touch of oregano and we'll have it! Re-taste? Now how is it?*

This is figuratively how many technical writers operate. Complex tasks—those with unclear inputs and outputs, vague owners, or other challenges—constitute the core work we do all day, at least for senior tech writers. We're not just making words pretty and publishing them.

## Example of iterative feedback loops

It's hard to provide a full example of what I mean without getting detailed and tedious. But to drive this point home, here's a general representation of a typical interaction for a documentation update I was recently making. (Details are obscured or changed due to confidentiality.)

My main point is to demonstrate how the collaboration with the AI is more than just prompt input. It's often a process of discovery and realization that surfaces during the conversation. The solution is one we discover together through collaboration rather than produced in a single step from one prompt.

<figure><img src="{{site.media}}/thoughtpartner-collaboration.png" alt="Human and robot working together to assemble a puzzle with a lightbulb in the center, symbolizing collaborative problem-solving" /><figcaption>AI as thought partner: assembling solutions together through iterative collaboration</figcaption></figure>

Here's a general summary of the twists and turns in our conversation. This doc task involves updating a page with info from a similar (but different) API.

* **Me:** "Adapt this page of documentation for the new API platform, using the provided source text and reference documentation."
* **AI:** "Here is the initial adaptation. I've replaced the original concepts with the new API equivalents, maintaining the existing structure of multiple enum tables."
* **Me:** "Review the clarity of the introduction, convert the HTML links to Markdown, and check that the specific technical sections are consistent with the API reference."
* **AI:** "I've performed the requested revisions, improved the introduction's clarity, and corrected an inconsistency I found in the explanation of one of the sections."
* **Me:** "I'm still confused about the distinction between the multiple tables. Can you explain the core difference and provide a clarifying example?"
* **AI:** "Here is a detailed explanation and an example showing how a value can draw upon entries from both tables."
* **Me:** "That explanation is much clearer. Please incorporate it directly into the documentation along with the example."
* **AI:** "Done, I've incorporated the updates."
* **Me:** "I liked the example you provided. Can you make it more prominent and maybe add another one?"
* **AI:** "Yes, I've expanded the example and added a secondary one for clarity. I've also noticed that the content flow might be improved by placing the examples below the first section. Would you like me to change that organization?"
* **Me:** "Yes, go ahead and update that organization to give it more flow."
* **AI:** "The organization has been updated."
* **Me:** "New feedback from the engineering team: the new API *does not* distinguish between the values in the two tables. You must merge the tables into a single, unified list and remove all language that implies a functional difference."
* **AI:** "I've completed the complex merge operation, unifying the data into a single table and removing the distinguishing language."
* **Me:** "Why are some of the values repeated in different places? Can you address that?"
* **AI:** "I removed the duplicates and finalized the single unified list of types."
* **Me:** "I'm not seeing this value in the component as advertised. Can you check this section against the API reference and see if this object provides the enum?"
* **AI:** "You're right, the API doesn't provide the enum in this object. I've updated the content to remove mention of it."
* **Me:** "Great, that also means we probably can combine these two sections."
* **AI:** "Agree, the sections have been combined."
* **Me:** "Can you do a style pass on this content, especially focusing on casing of headings? Look for other errors."
* **AI:** "I corrected many heading casing issues and found some other areas for improvement, including converting all paragraphs to standard Markdown syntax."
* **Me:** "Confirm that removing the separate table and merging everything didn't unintentionally invalidate any existing types."
* **AI:** "I can confirm that those types remain valid and are now included in the single, unified table."
* **Me:** "Now, please remove the final section as a separate concept and incorporate its unique types into the main unified table, clarifying that all listed types can appear in the API field."
* **AI:** "The content has been re-structured as requested, and the final list of types is now completely unified and accurate to the new API specification."
* **Me:** "Now read over the content as a whole, given that we've made a lot of changes. Does it flow well? Is it clear? Do you see any other areas that need to be improved before publishing the page?"
* **AI:** "I found a few sentences that could be clearer and proposed updates. Additionally, the style guide suggests not using the word 'platform.'"
* **Me:** "Good catch, go ahead and make those changes."

This is how many documentation updates tend to go. It's a back-and-forth conversation, with AI functioning as a conversational agent, a thought partner, and a collaborator.

If your doc queue mostly consists of these issues, the idea of scripting long-running doc prompts seems less likely. This is probably the reason why, despite using AI heavily for 2+ years, I don't have a prompt library I'm drawing upon. Most of the time, I write custom prompts for the situation at hand.

I want to stay open to the idea of long-running prompts for situations that make sense, like the sample tasks I listed earlier. Agentic tools have become quite impressive. When you see an agent running for 10+ minutes working its way through something, it makes me wonder if I'm doing too much up-front steering and handholding and setup.

To this end, I've created a prompt to end every conversation. I baked this into my agent markdown file (equivalent to GEMINI.md) to be invoked with the word **{% raw %}{{end}}{% endraw %}**.

> **Reverse engineering the prompts**
> 
> When I type **{% raw %}{{end}}{% endraw %}** in a prompt, this means our conversation is over about this topic. When this happens, do the following:
> 1. Look back over the thread and comes up with a prompt that can be used for future interactions that have the same intent. 
> 2. Then package this prompt into an instruction that can be used with an AI in a future session for a similar task.

However, when I do this after a long conversation, the prompts only confirm my conclusion that most of these collaborative interactions aren't scriptable as autonomous prompts. Just like a human conversation that has dynamic directions based on feedback coming from both conversation partners, conversations with AI agents have similar dynamic directions.

<figure><img src="{{site.media}}/thoughtpartner-autonomy-an-illusion.png" alt="Human engineer and robot collaborating on building blueprints and architectural models together, symbolizing partnership rather than automation" /><figcaption>True autonomy in complex documentation tasks remains largely an illusion—successful outcomes depend on human-AI collaboration</figcaption></figure>

## Additional challenges for long-running agents

Besides the need for iterative decision-making, there are some additional challenges for long-running tasks.

<figure><img src="{{site.media}}/thoughtpartner-risks-of-autonomy.png" alt="Three connected panels showing practical hurdles: limited capabilities with a confused robot, compounding errors showing propagation of mistakes, and unsupervised risks showing unintended consequences" /><figcaption>Practical hurdles that limit long-running autonomous agents: limited capabilities, compounding errors, and unsupervised risks</figcaption></figure>

### Capabilities available to the tool

Different agents have different tools available to them. For example, can the agent search internal and external content (from intranets and the internet) to gather info, and then parse through that info and use it as input for the next step? Can the tool read bugs—not just the bug description, but bug comments too? Can the agent gather a list of all Google Docs and other assets the bug links to, and bring that context back? If the tool doesn't have these capabilities, or if you need to grant it permission to run many of these more advanced tools, you might be stuck babysitting the AI through each step of the task.

In my experience, the tools available to an agent are still extremely limited. For example, the ability to read an external URL isn't usually something they can do, surprisingly.

While it would be nice if agents had many tools at their disposal, there can be risks in giving them too much power. I'd be wary of free-granting an AI permission to read and write external resources, especially outside of a version control system (VCS) that I'm not directly monitoring. It's one thing to give the tool capabilities to make changes to docs that are in VCS because you can preview and revert any changes before committing them. But if the tool has capabilities outside of VCS (for example, updating Google Docs or bugs or creating changelists), this seems more risky.

For example, one time I asked an agent to create a changelist (CL) and add about 10 people to it, but not to send it yet for review because I was still working on the content. As you can guess, the agent created the CL and immediately sent it out to all 10 people for review. That was the last time I asked it to create a CL for me.

### Compounding effects of early errors

Another danger with long-running agents is the compounding effects of early errors. If the task has 15 steps or loops, and early on, the AI makes a mistake in judgment or direction, that error might propagate to all the other turns it makes. By the 15th loop or step, the AI has gone noticeably off course. With a human in the loop providing course correction every step of the way, you ensure more accuracy in that end target. However, if you have to guide AI every step of the way, you lose out on that productivity bump.

It could be that the only feasible long-running tasks are validation tasks—those that check for spelling/grammar errors, broken links, outdated elements, munged formatting, inconsistencies or contradictions, summarization, and more that I listed earlier. They aren't the type of tasks that require more iterative decisioning throughout.

## Conclusion

I find this post very reaffirming because if I'm right, if AI tools work as collaboration partners and require a human in the loop, then it's less likely that humans will be replaced.

<figure><img src="{{site.media}}/thoughtpartner-most-tasks-collaborative.png" alt="Bar chart showing a small percentage for autonomous tasks versus a much larger percentage for collaborative tasks, with accompanying text stating the vast majority of knowledge work requires collaborative, not autonomous, AI" /><figcaption>The distribution of documentation work favors collaborative AI interactions over autonomous task execution</figcaption></figure>

I acknowledge that I'm likely biased and am not eager to see an alternative reality, in which autonomous agents somehow do most of the documentation work on their own. But given that I'm not experiencing this nor hearing any feedback from other tech writers about it, I'm confident that yes, we need a human in the loop collaborating with the AI for the outcomes to be productive. Industry leaders should see AI as collaborative thought partners, not as replacements for humans.
