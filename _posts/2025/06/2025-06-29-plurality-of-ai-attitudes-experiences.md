---
title: "Why attitudes and experiences differ so much with regards to AI among technical writers"
permalink: /blog/plurality-of-ai-attitudes-experiences
date: 2025-06-29
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/plurality-of-ai-attitudes-experiences
description: "Technical writers' attitudes toward AI can be all over the map, from enthusiastic early adoption to cautiously optimistic to complete rejection. In this post, I try to unpack the reasons that lead some writers to believe what they do about AI. Using research from several articles, I look at AI's <i>jagged frontier,</i>, the impact of domain expertise, and interaction modes as ways of understanding the influences that lead to different attitudes."
podcast_link: "https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/reasons-for-diverse-ai-views.mp3"
podcast_file_size: 6.7
podcast_duration: "10:34"
podcast_length: 6514104
image: experiencesaidifferthumb.png
---

* TOC
{:toc}

If you'd like to listen to this post as a NotebookLM podcast, you can listen here:

<div class="audioControls">
<p><b>Listen here:</b></p>
<p><audio controls="" src="https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/reasons-for-diverse-ai-views.mp3" type="audio/mpeg"></audio></p>
</div>

## Plurality of AI attitudes and experiences

I interact with a lot of technical writers&mdash;at work, online through my blog, at conferences, and in meetup events. In almost every conversation, the topic of AI surfaces. And this is where, as I'm sure you've experienced, dividing lines emerge. Some people are turned off by the saturation of the topic. Others are eager to absorb all the information they can. Some are just dabbling; others are so expert they could be consultants. Few topics feel as polarizing as AI, probably because it has the potential to eliminate, transform, or augment our profession.

My observation about this spectrum of strong views isn't just anecdotal. I recently ran a survey at work to gauge attitudes and frictions around AI, and I observed similar patterns in the diversity of responses. As I tried to interpret the results, it got me thinking: Why do writers' experiences and attitudes vary so much when it comes to AI? Why is one person impressed by what AI can do, while another can't stand it? Why does one writer find that AI increases his or her productivity by 50%, while another says AI impacts their efficiency negatively (presumably because it creates many errors which they now have to fix)? In this article, I'll examine several research articles that provide interesting lenses to interpret the spectrum of AI-related views and experiences.

<figure><img src="{{site.media}}/twexperiencesdifferai.png" alt="Different experiences with AI" /><figcaption>Why do some writers have success with AI, while others don't?</figcaption></figure>

## Finding the "jagged frontier"

The researchers in [Navigating the Technological Frontier](https://www.hbs.edu/ris/Publication%20Files/24-013_d9b45b68-9e74-42d6-a1c6-c72fb70c7282.pdf) introduce the concept of a "jagged technological frontier"&mdash;some tasks are "inside the frontier" (where AI performs well), while others that seem similar are "outside the frontier" (where AI struggles). Successful AI users are discerning about where to apply AI. They understand this jagged frontier and know the scenarios where AI excels versus where it fails. 

Additionally, rather than giving up when they encounter tasks outside the frontier, the successful users change how they collaborate, adopting one of two modes:

* **Centaur approach**: They strategically divide tasks between human and machine. For example, a technical writer might use AI to generate a first draft of release notes based on a changelog, then manually review and add more context about the reasons behind the changes (which might not be apparent in the changelogs), and finally use AI to check for consistency in terminology and formatting across the document.
* **Cyborg approach**: This involves a more deep integration with AI, where the writer and the tool become intertwined at a granular, sub-task level. It's less about delegating and more about a continuous, rapid co-creation process that can blur the lines between human and machine output. For instance, a writer might start with a rough draft of API documentation, then engage in an iterative dialogue with AI to clarify ambiguous explanations, suggest better examples, and shape more user-friendly descriptions of complex technical concepts.

In other words, a key skill in using AI isn't just prompting, but knowing *how* and *when* to collaborate with AI based on where you are on that jagged frontier.

I've had many conversations that reinforce this point. One time, one of my colleagues expressed frustration with AI's ability to help her make changes to a document. When I got the details of the tasks she was trying to do (rearrange includes and provide better transitions between them), it was clear that AI wouldn't do well, since the includes weren't present in the actual document. AI didn't have the needed context to perform the task.

{% include ads.html %}

## Domain expertise

Now let's look at another facet that contributes to experience with AI: one's level of domain expertise. In [Applying AI to Rebuild Middle Class Jobs](https://www.nber.org/system/files/working_papers/w32140/w32140.pdf), economist David Autor argues that AI's potential isn't to replace us, but to complement and extend our expertise. However, this requires at least some domain familiarity to be successful.

In the article, Autor makes an analogy about home repair. He imagines trying to fix a fuse box using a YouTube video. An expert electrician can use an AI or video as a guide, but they have the foundational knowledge to adapt when the wiring in the wall doesn't match the instructions. A novice like me, however, is lost and risks severe shock or electrical fire.

Autor's analogy actually reminds me of a recent project where I had to repair drywall after a leak in our garage. To do the drywall repair, I actually had to cap off a couple of electrical outlets. I had no idea what I was doing and was scared to be working with anything electrical. I used AI to walk me through the process, from twisting on the caps to "pigtailing" the grounding terminal wire. It was stressful for a novice.

That said, I was able to follow the instructions and complete my task, even as a novice. This likely worked because my task was simple and self-contained&mdash;capping off outlets is much easier than replacing an electrical panel. This made me realize that Autor's argument about domain expertise is even more nuanced than I've summarized: it's not just that you need some subject matter expertise to allow AI to augment your skills. The *type* of tasks also matters. For simple tasks, you can probably get by without any domain expertise.

Even so, his larger point is still valid: AI can augment your skills, provided you have some level of initial competence. In documentation contexts, a writer with domain knowledge might use AI as an accelerant but knows when the output is flawed or needs a nudge in the right direction. A writer without that expertise is stuck with the default. It helps that I've been working within the same domain (Google Maps APIs in cars) for 5 years, as I've accumulated enough awareness of the domain to recognize when AI outputs are on target and when they need massaging.

Bringing this back to interpreting the spectrum of AI views, it could be that pessimists are operating in contexts where they lack enough domain expertise to do the kind of iterating and modifying of AI outputs necessary for the right outcome. They might be stuck with the default and then humiliated when SMEs review the content and find many issues with it.

## The expert's dilemma

Now let's look at yet another study, this one research from Microsoft. In [The Impact of Generative AI on Critical Thinking](https://www.microsoft.com/en-us/research/publication/the-impact-of-generative-ai-on-critical-thinking-self-reported-reductions-in-cognitive-effort-and-confidence-effects-from-a-survey-of-knowledge-workers/), the researchers argue that users with high self-confidence in a task apply *more* critical thinking to AI's output. They push back and engage skeptically with AI. However, users with high confidence in the AI's abilities apply *less* critical thinking.

You'll see that this initially seems to contradict Autor's article, which argued that some domain expertise is necessary to steer AI toward productive outcomes. In this example, the users have *advanced* levels of domain expertise, and it's allowing them to spot AI's flaws and gaps. With this increased awareness of AI's problematic output, the users become more critical and pessimistic about the output altogether. Their expertise bursts the hype bubble and they actively challenge each assertion in AI's output.

This heightened critical mindset is of course a good thing. But it might also be paralyzing. These users might decide AI's error rate is too high in some cases, so they reject AI in most scenarios, dismissing its reliability even if the reality is that errors only appear infrequently.

## Putting it all together

Putting this all together, let's summarize the complexity of factors that could determine someone's views about AI.

* **Pessimists** could be novices in a domain, trying to use AI for tasks outside the frontier and getting frustrated. Or they might be experts, whose critical eye immediately sees the flaws.
* **Enthusiasts** might be in that sweet spot of competence&mdash;knowledgeable enough to steer the AI effectively, but not so expert they're paralyzed by its imperfections. They've found the tasks inside the frontier.
* **Enthusiasts** might also incorporate a different interaction strategy: at times acting like centaurs to switch between human and machine modes, or like cyborgs to actively co-create with the tool. Pessimists might see the initial flawed output and reject the whole process, or might not have enough domain expertise to engage in co-creation.

There's no single reason for the differing attitudes. Instead, the plurality of views reflects an interplay of experience, expertise, and context. In short, it's not a phenomenon with a simple answer.

## Actionable takeaways

No matter where you fall in these camps, here are some actionable takeaways that I'm trying to apply to my own work:

1. **Identify the right tasks for AI by navigating its jagged frontier.** In [AI and APIs: What works, what doesn't](https://idratherbewriting.com/ai/docapis_ai_what_works_and_doesnt.html), I explored scenarios where AI works well. These situations are those that include classification, definition, summarization, and above all else, pattern-matching. Because my initial explorations of AI focused on understanding the areas where AI excels, I naturally gravitated to tasks within the frontier and therefore had more success. This might explain why I landed in the enthusiast camp.
2. **Use your expertise as a critical lens.** It's important to develop subject matter expertise for the topics you're using AI with. I'm often printing out long documents at work and reading them to make sure I have domain awareness and familiarity. Otherwise, I wouldn't be able to easily tell when AI's output goes off the rails. It's easy to lose the ability to read long-form content as we become accustomed to immediate answers and responses. I also still participate in [book clubs](/ai-book-club) to maintain my reading skills.
3. **Adopt a centaur or cyborg mindset to actively collaborate.** Don't be a passive recipient of AI output. Think about your interaction strategy. A *centaur* approach means dividing the work into human and machine parts. For example: have the AI outline a tutorial, then you write the core steps, and finally give it back to the AI to check grammar and clarity. A *cyborg* approach is more integrated: you might write a draft and then engage in a dialogue with the AI, asking it to challenge your assumptions, suggest alternative phrasings, and co-create the content. Both approaches put you in the director's chair.

## Works Cited

Autor, David. ["Applying AI to Rebuild Middle Class Jobs."](https://www.nber.org/system/files/working_papers/w32140/w32140.pdf) NBER Working Paper Series, no. 32140, National Bureau of Economic Research, Feb. 2024.

Dell'Acqua, Fabrizio, et al. ["Navigating the Jagged Technological Frontier: Field Experimental Evidence of the Effects of AI on Knowledge Worker Productivity and Quality."](https://www.hbs.edu/ris/Publication%20Files/24-013_d9b45b68-9e74-42d6-a1c6-c72fb70c7282.pdf) Harvard Business School Working Paper, no. 24-013, 22 Sept. 2023.

Lee, Hao-Ping (Hank), et al. ["The Impact of Generative AI on Critical Thinking: Self-Reported Reductions in Cognitive Effort and Confidence Effects From a Survey of Knowledge Workers."](https://www.microsoft.com/en-us/research/publication/the-impact-of-generative-ai-on-critical-thinking-self-reported-reductions-in-cognitive-effort-and-confidence-effects-from-a-survey-of-knowledge-workers/) CHI Conference on Human Factors in Computing Systems, 2025.
