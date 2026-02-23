---
title: "The Emerging Picture of a Changed Profession: Cyborg Technical Writers — Augmented, Not Replaced, by AI"
permalink: /blog/cyborg-model-emerging-talk
date: 2026-02-19
categories:
- ai
- technical-writing
- writing
keywords: 
rebrandly: https://idbwrtng.com/cyborg-model-emerging-talk
description: "I'm giving a presentation at Louisiana Tech University on March 30, 2026, on what I'm calling the cyborg model of technical writing. The tldr is that I feel the emerging model for tech writing isn't one in which AI replaces tech writers; instead, it's one in which AI <i>augments</i> tech writers. Tech writers interact with AI in a continuous back-and-forth, iterative process, representing the cyborg model."
image: thecyborgwriternapkinthumb.jpg
---

* TOC
{:toc}

## Presentation details

I'm heading out to Louisiana Tech University on March 30, 2026, to speak to students and faculty there. My presentation is as follows: 

> **The Emerging Picture of a Changed Profession: Cyborg Technical Writers — Augmented, Not Replaced, by AI**
> 
> At the height of AI's hype cycle, there was a sense that, given the pace of accelerating improvement, it wouldn't be long before AI fully assumed the technical writer role. However, even as AI has ramped up from hallucinating bot to capable content generator, full end-to-end automation remains elusive. Automating a single complex process (among many that a role performs) often falls short due to uncorrected missteps along the way or looks like a fragile Rube Goldberg machine, only working in perfect and limited circumstances.
> 
> Instead of tech writers being replaced by automation, the picture that's emerging in 2026 is one of a hybrid role — a cyborg technical writer. Daniela Amodei, co-founder of Anthropic, says, “I continue to believe that humans plus AI together actually create more meaningful work, more challenging work, more interesting work, high-productivity jobs.” In this cyborg model, the writer and machine engage in a continuous back-and-forth—a partnership that leverages the machine's analytical processing and pattern recognition while relying on human steering, review, and verification. In short, the tech writer isn't being replaced by AI, but rather augmented by AI as a co-partner in developing documentation.
> 
> Because of the trends toward augmentation over replacement, technical writers should look to work closely with AI tools to improve the integration. There are at least 10 principles that tech writers can use to augment their roles with AI, working as cyborg technical writers. The principles go far beyond simply operating the machine.

That's what I plan to focus on, but how did I arrive at this? Let me elaborate a bit.

## Reasons for arguing for the cyborg model {#reasons}

Ever since I was invited to speak to students and faculty (at the request of Kirk St. Amant, who teaches at Louisiana Tech), I've been mulling over what I should say. I mean, if you were invited to go into a university and help students and faculty understand today's workplace and what skills and concepts students would need to know to succeed, what would you say? 

After deliberation for a few months, I realized what I wanted to say: the model that's emerging is a cyborg model of technical writing, a humans + AI combination. This is in contrast to the many articles, which now seem to come at an even faster pace, saying that AI will replace human labor. I realize there's a lot of opinion on this debate, but I have a strong argument for why the model is humans + AI (cyborgs) rather than replacement: almost no tech writers at my work have automated complex processes using AI. And in my own use of AI over the past few years, the model that's emerged is clearly a close intertwining of machine and human interaction to produce content. 

<figure><img src="{{site.media}}/thecyborgwriternapkin.png" alt="The cyborg technical writer" ><figcaption>The cyborg technical writer</figcaption></figure>

In my experience, AI can only automate granular subtasks within a larger process. The idea that you could replace a human tech writer with an agent is unlikely because the agent can't reliably resolve a complex bug across a large system on its own, much less tackle more sophisticated projects and processes that tech writers do. Unpacking the details of example after example would probably be worthwhile here, but I'll save that energy for another day.

Because I'm not seeing automation of full processes, I find myself a bit frustrated at conversations about replacement. I feel they're not grounded in current reality. The other day I was listening to Hard Fork's episode [‘Something Big Is Happening' + A.I. Rocks the Romance Novel Industry + One Good Thing](https://www.nytimes.com/2026/02/13/podcasts/something-big-is-happening-ai-rocks-the-romance-novel-industry-one-good-thing.html?showTranscript=1). I usually love listening to these hosts, but in this episode, except for a few brief acknowledgments about the uncertainty of future trajectories, the hosts seem to go fully along with the idea that human replacement is on the short horizon. It's unsurprising that they're focusing on software engineers rather than journalists and podcasters being replaced. Isn't it easier to imagine how someone else's job can be automated, but not your own?

But this is what I can't understand: How can the replacement model be viable when automating a single complex process from end-to-end isn't being done, despite many trying? I've sunk a lot of time into trying to automate release notes. I write more than 100 release notes for various products each year. I have a process for automating parts of the release notes, which I described in [Using file diffs for better release notes in reference docs](/ai/prompt-engineering-release-notes-reference-docs.html). I initially tried to create a combination of scripts and prompts that would automate nearly everything, but it failed. One issue is that problems near the start of an instruction, if not caught, corrupt later iterations. You need a human in the loop to verify and check and fix things at each step along the way.

Consider last week's example. I have a script that gathers file diffs for all changed files in the release. From those changes, an instruction file prompts an AI to create summaries. But what happens if some of the file diffs are incorrect because engineers committed a change to a release stage that they later rolled back? For example, perhaps they removed a release stage label that said a feature was "Launched" in the proto comments, but then decided not to actually launch said feature, but to keep it in preview.

The automated release notes miss this rollback and promote the idea that the feature launched. Little issues like this happen in nearly every release. It might not be an incorrect release stage, but a thousand other problems.

We're at the same point with automation right now as autonomous cars. Autonomous driving is only possible on well-traveled, predictable roads with little variation or surprise, on routes that have been mapped and re-mapped, test-driven and re-driven, and constantly monitored. In the tech writer role, there are some repeatable tasks that are like well-traveled roads (for example, a weekly report), but more often, we tech writers find ourselves going down many new roads each day, each with their own unexpected twists, turns, and bumps. That unpredictability makes automation difficult, requiring frequent human steering and input to avoid crashing.

Until more tech workers have automated complex processes end-to-end, I'd like for the industry to more readily acknowledge a different model that better describes reality: the cyborg model. This cyborg metaphor comes from a research paper called [The Jagged Edge](https://www.hbs.edu/ris/Publication%20Files/24-013_d9b45b68-9e74-42d6-a1c6-c72fb70c7282.pdf), which I referenced in my [book review of Co-Intelligence](/blog/book-review-co-intelligence-mollick) and explained in my post [Why attitudes and experiences differ so much with regards to AI among technical writers](/blog/plurality-of-ai-attitudes-experiences). In short, the cyborg model is humans + AI working together. The machine augments, rather than replaces, the human, and vice versa. This cyborg model describes nearly every tech writer who uses AI: there's a frequent back-and-forth collaboration to produce content.

This frequent back-and-forth collaboration is exactly the message I want to share with students and faculty: humans aren't being replaced (at least not yet).

The question students and faculty should consider is how to use those machines effectively to augment the work. Leveraging the machine is a huge topic: it's not a push-button process. In fact, I argue that augmenting your work with AI machines requires a sophisticated understanding of models and their behavior, strategic thinking and problem-solving, systems thinking, automation engineering, and more. There are many tech writers who fail with AI and can't figure out how the tools work, how to integrate AI into their workflows, how to become the 3x tech writer using them. If students want to succeed in the workplace, they have to figure out how to better integrate with machines to achieve the cyborg workflow.