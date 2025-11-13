---
title: "The difficulty of tracking and interpreting AI usage labels on docs"
permalink: /blog/track-ai-usage-dilemmas
date: 2025-11-12
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/track-ai-usage-dilemmas
description: "Tracking and communicating AI usage in docs turns out to be not only challenging technically, but also potentially full of interpretive pitfalls. There seems to be a double-edged sword at work. On the one hand, we want to track the degree to which AI is being used in doc work so we can quantify, measure, and evaluate the impact of AI. On the other hand, if a tech writer calls out that they used AI for a documentation changelist, it might falsely create the impression that AI did all the work, reducing the value of including the human at all. In this post, I'll explore these dilemmas."
published: false
---

* TOC
{:toc}

*Spoiler alert: The conclusion doesn't include any definitive solutions. It instead focuses on expanding discussions about the tradeoffs.*

{:.note}
For a short video (7 min.) of this post, see this [NotebookLM video](https://notebooklm.google.com/notebook/68ee2761-a08b-40ac-8a9f-1db116632be2). The images in this post are from the NotebookLM slides.


## Reasons to track AI usage

First, let's talk about the need to track AI usage. I'd like to track AI usage so that I can answer some basic questions: 

*Is AI speeding up the time it takes me to write docs? If so, by how much?* Being able to answer this question seems important to justifying the enormous spend in AI happening right now. Occasionally I run across tech writer critics of AI, and although I have an intuitive sense that AI is helping me be more productive, I don't have solid data to rely on. There are plenty of naysayers who argue that they spend just as much time fixing errors from AI as they might save time using AI. Who's right and who's wrong?

There are some studies that point to productivity gains. For example, in [Navigating the Jagged Technological Frontier,](https://mitsloan.mit.edu/sites/default/files/2023-10/SSRN-id4573321.pdf), researchers gave users tasks like conceptualizing and developing a new footwear product, and also using data and notes to make a recommendation. In cases where AI is appropriate, the participants improved the quality by 40% and completed tasks 25% faster. But in areas where AI isn't effective, the output worsened &mdash; those participants scored 19% worse in a quality and correctness measure. The study's findings don't just emphasize time savings from AI, but the nuances of knowing when to use AI and when to use your human skills.

But given the variety of documentation scenarios&mdash;the different skills and domain expertise levels of the writers, the varieties of tools (some of which might be much more suitable than others), the models (which fluctuate every month), time constraints (under the gun for releases), reviewers (some are stringent, others nonchalant)&mdash;all these factors might skew the results one way or another, so much that it's probably impossible to arrive at any conclusion that argues that AI improves documentation by a certain quality score and speeds up task completion by a specific amount. It's all intuitive guessing. As illuminating as studies like this are, it would be great to see more studies focused on technical documentation. 

Similar to the MIT study, a McKinsey study focusing on software development found that generative AI can boost productivity. Developers using generative AI tools completed *coding tasks* up to twice as fast, with time savings in areas like code documentation (cut in half) and writing new code (cut by nearly half). Again, this study doesn't focus on writing docs, but it's probably closer than the previous one. 

Importantly, the research found that code quality was *marginally better* when developers actively collaborated with the tools. This suggests that the technology is best used to augment human effort rather than replace it (something I argued at length in my previous post on [long-running tasks](https://idratherbewriting.com/blog/collaborative-thought-partner-not-autonomous)). However, the study also noted that time savings shrank significantly for highly complex tasks and among less experienced developers. (See [Unleashing developer productivity with generative AI](https://www.mckinsey.com/capabilities/tech-and-ai/our-insights/unleashing-developer-productivity-with-generative-ai) for more details.)

I work on tech docs all day. Why are more definitive, in-house metrics so elusive? Why can't a group of AI-focused tech writers make a persuasive argument company-wide that draws upon actual data that tech writers in that company have culled, analyzed, and vetted? Alas, it seems that we must rely on external studies like the ones mentioned.

{% include ads.html %}

## Identifying AI-written content improves the review

There's another reason to track AI usage. Calling out AI usage in a changelist (or pull request) can help alert reviewers that they should be extra careful in their review. Knowing that someone used AI to generate content can be valuable context. As a reviewer, I might be more apt to look suspiciously at confident-sounding statements. Since I want the reviewer to carefully validate the content (errors are never good in docs), I'll accept the potentially negative bias from the AI label rather than risk a cursory review and higher risk of errors slipping into production.

Within corporations, there's a strong encouragement to use AI, so adding an "AI used" label isn't generally seen as "cheating" or skirting quality like it might be interpreted elsewhere (such as in academia). However, there is an undeniable bias that gets injected whenever you flag something as AI-written, no matter if you're in an academic or corporate context. In the worst case, the bias is something like this: *Oh, this was written by AI? I'll expect total incoherent crap, I guess.* The AI-generated label really can sour readers right from the start, thanks to all the AI slop floating around.

This perceived bias isn't just a feeling; research from Neiman Journalism Lab confirms it, but with a twist. They looked at the effect of how adding AI-generated labels to news affected readers. No surprise, 80% of readers wanted news organizations to disclose AI-generation on the articles, but when news organizations added the label, it lowered the reader's trust in the article. (See  [Most readers want publishers to label AI-generated articles &mdash; but trust outlets less when they do](https://www.niemanlab.org/2023/12/most-readers-want-publishers-to-label-ai-generated-articles-but-trust-outlets-less-when-they-do/).)

Interestingly, the lowered trust was negated *when the articles included links to all the sources used*. It was reassuraing to see this detail about sources, becasue it actually confirmed the effectiveness of a technique I've been using. When I write API docs, every time I mention an API element (a method, parameter, etc.), I link the element to its reference docs. I started doing this initially to avoid hallucination &mdash; if I can't find the element in the docs, it might not exist. Adding the links is my validation technique. Sometimes pages can have 30+ links pointing to reference docs.

Inadvertently, these links have actually strengthened the ethos of my documentation content. The AI-produced content looks more authoritative and trustworthy with the links. (Granted, each link presents a jumping off point that might discourage readability, but I'm not worried about this because I don't mind if users jump around.) Do my link-saturated API docs reverse any soured bias from an AI usage label? Readers might see the label but then also see links to the API reference material and shrug off any concerns about inaccuracy.

So far, it seems that flagging content as AI-generated/assisted can help in tracking metrics and won't result in reader bias against the content. Sounds good, right? Not so fast.


## Problems with identifying AI usage

Let's look more deeply at problems that could arise from using the AI label on content. The Nieman research found that for those unfamiliar with how news is written and produced, the AI-generated label didn't have that much impact compared to those more savvy about journalism practices. In other words, the label bothered other journalists a lot more than non-journalists. Applying this to docs, this implies the bias might be worse among fellow tech writers who are more likely to view the label as "cheating" or a shortcut.

Does this also mean that CEOs and other leaders who have little understanding of documentation work produced by tech writers won't be bothered by the "AI usage" labels on tech docs?

Trust isn't central to my concerns here; rather, valuation of the human element in AI-generated content is. The [Nieman research](https://www.niemanlab.org/2023/12/most-readers-want-publishers-to-label-ai-generated-articles-but-trust-outlets-less-when-they-do/) doesn't tell us whether the readers might be more prone to make interpretive leaps about humans not being necessary to produce docs. Readers might not be bothered by the label while also believing that tech writers are an unnecessary relic of past processes, and are ready to be shed so that other, non-tech-writer workers can use AI tools to achieve the same results.

I want to avoid errantly communicating up the leadership chain that AI is doing my job, rather than me. For example, if a senior leader (who might only have limited understanding of the tech writing role) sees a label on a changelist that says "AI-generated" or similar, with no other qualifiers, they might assume that the tech writer's input was minimal; AI did this work.

This label could promote the following erroneous conclusion:

1. Because this changelist has an AI-generated label, I assume AI created the content.
2. If AI is creating this content, why am I paying a tech writer here? I should instead be buying more AI chips.
3. Conclusion: Let's reroute \$\$ to AI chips instead of tech writer salaries.

This conclusion is dangerously misleading and false. In worst case scenarios, it could make it easier for leaders to lay off tech writers, as with the recent Amazon layoffs. The justification: "We will need fewer people doing some of the jobs that are being done today," says CEO Andy Jassey. (See [Amazon to Cut 14,000 White-Collar Jobs](https://www.nytimes.com/2024/10/27/technology/amazon-layoffs.html).)

As I argued in [Why long-running tasks autonomously carried out by agentic AI aren't the future of doc work, and might just be an illusion](https://idratherbewriting.com/blog/collaborative-thought-partner-not-autonomous), tech writers use AI more as a **collaborative thought partner** rather than providing AI with predefined prompts that agents carry out autonomously. If you look at the corresponding [comment thread on Linkedin](https://www.linkedin.com/posts/tomjoht_why-long-running-tasks-autonomously-carried-activity-7393657802839355392--DYP/), other tech writers unanimously agree.

In the Jagged Frontier article, this thought partner concept is often described using the 'Centaur' metaphor, drawing from Garry Kasparov's chess finding that a human-machine collaboration process could outperform a strong computer alone. Kasparov explains: "Weak human plus machine plus better process was superior to a strong computer alone and, more remarkably, superior to a strong human plus machine plus inferior process." (See [Effective Generative AI: The Human-Algorithm Centaur](https://hdsr.mitpress.mit.edu/pub/3rvlzjtw/release/3)). The value isn't in the human or the AI, but in the *process* of collaboration, which is a "synthesis of human-provided strategic direction and AI-driven analysis."

I've also explored this idea in my post [Plurality of AI attitudes and experiences](https://idratherbewriting.com/blog/plurality-of-ai-attitudes-experiences). The key is knowing how to navigate the "jagged technological frontier"&mdash;knowing when to apply AI (where it excels) and when not to (where it fails). Successful users adopt a Centaur approach, strategically dividing tasks between human and machine. (Some also use a "Cyborg" approach, which is a deeper, more granular co-creation.) 

**This strategic collaboration is what's lost in a simple "AI-generated" label.**

(Some try to formalize this distinction with terms like "AI-in-the-Loop" (AITL) for human-led work versus "Human-in-the-Loop" (HITL) for AI-led work, but I'm not a huge fan of these labels either.)

What might be a more appropriate way to identify AI usage while still communicating the idea that a human heavily steered, directed, edited, and led the output to the shape that it finally took? Perhaps something more narrative, like "I collaborated with AI for 20% of the content here…."? This creates a long epilogue to any article that might be like a magician revealing their secret techniques.

There's no easy answer on how to attribute AI usage. This dilemma also plays out on my blog. How much can I use AI before I need to add a tagline somewhere noting that the content was AI-assisted? For example, if I use AI for brainstorming, general organization, proofreading, identifying logic gaps, splicing in quotes, and more, should I identify the content as AI generated / AI assisted / AI consulted?

If I add a note that says I used AI, will readers immediately conclude that AI did *all* the work? How do I represent the human-in-the-loop factor so that others will understand the human design work that goes into a post?

In fact, I have used AI in this post. I wrote an initial draft of my thoughts, then plugged it into Gemini Deep Research to expand my thinking with more research. I used AI to suggest which research might be most relevant to the article, and selected which articles I thought were a good fit. I allowed AI to insert the research into my article. Then I reworked the insertions. I read or reread the articles and used Gemini to ensure my reworked interpretations were accurate. I stumbled upon additional articles and included them, and used Gemini to summarize them in places or check the accuracy of my summaries. I had Gemini do some proofreading as well. Would that kind of explanation in an epilogue satisfy readers? At the end of the day, it's the final content that matters, right? If something is only AI slop due to the label, and not the actual quality, then we've moved entirely into the reader response realm. Leo Laporte even calls it "bigoted" to form a conclusion about content being AI slop before actually consuming it. (See [Intelligent Machines 839 transcript](https://twit.tv/posts/transcripts/intelligent-machines-839-transcript).)

Further, how do you rank the influence of AI? If I ask AI to generate a counterargument to this post, and then use that counterargument to address some logical gaps and strengthen my argument, isn't this a deeper use of AI than simply guiding AI to generate some language that articulates concepts that I roughly communicate to it? It seems like using AI as a thought partner &mdash; but then not attributing AI &mdash; is more socially acceptable than using AI to help articulate language, even if all the ideas originated from you.

In short, deciding on a label that appropriately identifies the AI usage while still attributing and acknowledging the human input and design of the content is no easy matter, and is full of interpretive pitfalls about AI doing more or less work than it deserves.

I've come to realize that there's underrated skill and savvy in knowing how to use and manipulate AI tools to achieve documentation goals. Sure, some tasks might be simple, like proofreading a document for obvious grammar errors. But suppose you have a new feature that's launching, and you have a swath of different documents and sources to draw upon. The path from A (no content) to Z (final content) might involve 20+ conversations with AI tools pursuing different paths, directions, and validations. I provided a sample of the dynamic conversations that take shape in [Example of iterative feedback loops](https://www.linkedin.com/posts/tomjoht_why-long-running-tasks-autonomously-carried-activity-7393657802839355392--DYP/) in the same post I referenced earlier. The skill to interact with AI successfully in this situation shouldn't be underestimated. AI fluency might be equivalent to knowing a programming language.

When one tech writer complains about how AI doesn't help them, that it just leads to more work, errors they have to fix, etc., this makes me wonder what their approach is. Yes, it could be that AI is just tripping over itself and hallucinating left and right. Or it could be an "operator error." It's hard to know because I occasionally run into the same frustrations but have many more successes than others. It might help if writers more freely shared their conversation histories with each other.

Attaching an AI label to content doesn't acknowledge the skill of the human input. There's a lot that goes into content production that might be entirely based on the human-led approach, and that is likely dismissed when you attach the AI usage label. I've built up AI fluency skills over the past two years, but when I add "AI-generated" to my content, my human-led guidance of the AI through the dark waters to polished docs is undermined. Instead, the takeaway is, "Oh, AI generated this?"


## Nuanced labels and rubrics also fail

If we start using labels on the pull requests or changelists we create, perhaps the labels could be more nuanced in identifying the human input. Something like this:

`HUMAN_TO_AI=80/20`

This label isn't immediately obvious and can't be interpreted at a glance. That's part of the point. This label reduces the likelihood that someone reads it and concludes that AI did all the work. It also both acknowledges and emphasizes the human input, while still allowing authors to recognize the input of AI.

However, this label *screams* that the writer is trying to promote their human involvement in the process, as if trying to make the case from the label alone. It looks whiny, as if shouting *hey, this wasn't all AI buddy.*

Further, it presents a false precision about the human to AI ratio. This ratio (80/20) is a conceptual trap because it can't capture the difference between a deeper use (like generating a counterargument) and a shallow one (like proofreading). Suppose you use AI to generate a script that produces an output (such as a script to produce reference docs that include some post-processing magic). What part of that is human versus AI? How do you clarify the various inputs, from brainstorming to organizing information, validating the info, addressing areas of emphasis and hierarchy, and more. This ratio might sound precise, but it's a ballpark guess at best. It probably shouldn't be quantified with such precision but be more like T-shirt sizes. But what would that look like? HUMAN_TO_AI=XL/S. You might as well write in another language.

Others might argue for using a more complex framework that would sort and rank AI usage across different categories. For example, maybe use a "Centaur attribution matrix" that, rather than using a ratio, classifies the *role* AI played (for example, "AI as Tool," "AI as Consultant," or "AI as Drafter") across different workflow stages.

This seems a bit overkill to me, almost requiring more work to identify the different parts of the writing process than is feasible. I'm not sure a complex rubric like this actually solves the problem or would satisfy all my questions. In many ways, the rubric seems like the brainchild of a college composition instructor who is grading essays along 5 categories with different choices in each. And when did writers ever find value in getting feedback in a rubric of check boxes?

## Conclusion

Overall, this obsession with labels might just be a distraction. Perhaps the metrics might speak for themselves. If you're consistently delivering accurate, high-quality content and demonstrating high productivity, those might be the only metrics that matter&mdash;not a label that attempts (and fails) to capture the complex, human-led processes behind it.


## Works Cited


Dell'Acqua, F., et al. "[Navigating the Jagged Technological Frontier: Field Experimental Evidence of the Effects of AI on Knowledge Worker Productivity and Quality](https://mitsloan.mit.edu/sites/default/files/2023-10/SSRN-id4573321.pdf)." *MIT Sloan School of Management*, 2023.

"Amazon to Cut 14,000 White-Collar Jobs." *The New York Times*, 27 Oct. 2024, [https://www.nytimes.com/2024/10/27/technology/amazon-layoffs.html](https://www.nytimes.com/2024/10/27/technology/amazon-layoffs.html).

Johnson, Tom. "[Comment thread on 'Why long-running tasks autonomously carried out by agentic AI...'](https://www.linkedin.com/posts/tomjoht_why-long-running-tasks-autonomously-carried-activity-7393657802839355392--DYP/)." *LinkedIn*.

Johnson, Tom. "[Plurality of AI attitudes and experiences](https://idratherbewriting.com/blog/plurality-of-ai-attitudes-experiences)." *idratherbewriting.com*.

Johnson, Tom. "[Why long-running tasks autonomously carried out by agentic AI aren't the future of doc work, and might just be an illusion](https://idratherbewriting.com/blog/collaborative-thought-partner-not-autonomous)." *idratherbewriting.com*.

McKinsey & Company. "[Unleashing developer productivity with generative AI](https://www.mckinsey.com/capabilities/tech-and-ai/our-insights/unleashing-developer-productivity-with-generative-ai)." *McKinsey.com*.

Saghafian, S., and L. Idan. "[Effective Generative AI: The Human-Algorithm Centaur](https://scholar.harvard.edu/sites/scholar.harvard.edu/files/saghafian/files/centaurspaper.pdf)." *Harvard University*.

Schmidt, C. "[Most readers want publishers to label AI-generated articles &mdash; but trust outlets less when they do](https://www.niemanlab.org/2023/12/most-readers-want-publishers-to-label-ai-generated-articles-but-trust-outlets-less-when-they-do/)." *Nieman Journalism Lab*.

"Intelligent Machines 839 transcript." *TWiT.tv*, [https://twit.tv/posts/transcripts/intelligent-machines-839-transcript](https://twit.tv/posts/transcripts/intelligent-machines-839-transcript).
