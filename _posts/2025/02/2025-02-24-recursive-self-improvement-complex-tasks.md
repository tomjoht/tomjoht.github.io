---
title: "Fixing bugs without thinking, Recursive Self-Improvement, and the shift towards more complex tech comm tasks"
permalink: /blog/recursive-self-improvement-complex-tasks
date: 2025-02-24
categories:
- ai
- writing
keywords: 
rebrandly: https://idbwrtng.com/recursive-self-improvement-complex-tasks
description: "This post includes a mix of various thoughts on AI, including fixing bugs without thinking, competitive pressures to adopt AI workflows, risks of atrophied critical thinking, recursive self improvement, and the shift toward more complex tech comm tasks. There's not necessarily an argument throughline here, just various thoughts and perspectives on AI topics in my tech comm world."
---

* TOC
{:toc}

## Fixing bugs without thinking

With AI tools built directly into your authoring tool or IDE (such as VS Code), fixing simple doc bugs can become a mechanical, click-button task. Here's the approach to fixing simple doc bugs:

1. In VS Studio Code (or similar), go to the page with the bug in question so that the IDE has it in context.
2. Paste the bug description/request into your IDE's AI and then ask, “what's the user request here, and what update needs to be made?”
3. Review the changes to see if they align with the bug.

My thoughts on this approach:

* It sort of turns off the critical thinking parts of your brain, kind of like GPS turns off your wayfinding capabilities, but you can refocus that outsourced brainpower on other tasks.
* AI does the heavy lifting of interpreting the doc bug in the page's context. Doing this manually is usually more of a strain than people realize. When someone files a bug against a page (typically a small one), the user has the page context and topic fresh in their mind, so they might make cursory references to different aspects of the page that are harder to identify for a tech writer who is coming to that page fresh, having been focused elsewhere on other topics for weeks or months prior. AI can explain the user's request in greater detail, allowing the tech writer to review and confirm that the interpretation and fix seem right.
* These bugs (small fixes) account for a large chunk of the bug overhead that clogs up components in issue tracking systems, especially for public APIs. Reducing this bug overhead could allow us to focus on more significant tech comm efforts.

### Risks of atrophied critical thinking

There's a risk that fixing bugs in a mechanical way, with little thought, might atrophy the critical faculties of our brains. Recent research from Microsoft confirms that those who rely more on AI use fewer critical faculties to analyze, challenge, and probe texts. See [The Impact of Generative AI on Critical Thinking: Self-Reported Reductions in Cognitive Effort and Confidence Effects From a Survey of Knowledge Workers](https://www.microsoft.com/en-us/research/uploads/prod/2025/01/lee_2025_ai_critical_thinking_survey.pdf). Here's a good summary from [Slashdot](https://slashdot.org/story/25/02/14/2320203/microsoft-study-finds-relying-on-ai-kills-your-critical-thinking-skills):

> The researchers tapped 319 knowledge workers &mdash; a person whose job involves handling data or information &mdash; and asked them to self-report details of how they use generative AI tools in the workplace. The participants were asked to report tasks that they were asked to do, how they used AI tools to complete them, how confident they were in the AI's ability to do the task, their ability to evaluate that output, and how confident they were in their own ability to complete the same task without any AI assistance.
>
> Over the course of the study, a pattern revealed itself: the more confident the worker was in the AI's capability to complete the task, the more often they could feel themselves letting their hands off the wheel. The participants reported a "perceived enaction of critical thinking" when they felt like they could rely on the AI tool, presenting the potential for over-reliance on the technology without examination. This was especially true for lower-stakes tasks, the study found, as people tended to be less critical. While it's very human to have your eyes glaze over for a simple task, the researchers warned that this could portend to concerns about "long-term reliance and diminished independent problem-solving."
> 
> By contrast, when the workers had less confidence in the ability of AI to complete the assigned task, the more they found themselves engaging in their critical thinking skills. In turn, they typically reported more confidence in their ability to evaluate what the AI produced and improve upon it on their own. Another noteworthy finding of the study: users who had access to generative AI tools tended to produce "a less diverse set of outcomes for the same task" compared to those without.

Each time you fix a bug or perform another task, how much do you risk atrophying your critical thinking skills as a trade for the quick, easy generation of seemingly accurate content?

This past week, I used AI to generate code examples for three APIs as well as for Mercator projections &mdash; topics that were above my technical level. I offloaded the review tasks to engineers (who I'd asked for this content months ago but which they never delivered). I created the AI-generated content directly into a changelist request to jumpstart the bug fix and ensure the content wouldn't be forgotten. (Bugs can be more easily disregarded than a pending changelist to review, especially since engineers tend to keep their changelist dashboards tidy and looked after.) 

But with this technique, I have to wonder, am I cheating myself of the benefit of more immersive engagement with my critical faculties?

Partly, like most tech writers, I have a lot of bugs on my plate, and I want to get through as many of them as possible. Ideally, I want to get to a state of *Bug Zero* (analogous to Inbox Zero), where I've caught up to all the outstanding doc tasks for a product and can then tackle each incoming bug rapidly, like filling an order at a fast food restaurant. It could take me weeks or longer to manually write content for some pending bugs, and even then, it wouldn't likely be as good. The AI-generation process isn't so different from getting code samples written by engineers that we tech writers then copy and paste into the documentation.

In some ways, using AI feels like cheating, but how different is it from other tasks that we offload to other systems (calculators, GPS, car maintenance) while we focus our mental efforts and bandwidth elsewhere? It's not as if I'm abandoning my critical faculties to AI while I catch up on TikTok. I'm instead accelerating my pace with other tasks, covering more ground. I want to focus on high-level conceptual documentation, making sure we have good coverage. I also find that I'm reading more books and writing longer, more thoughtful blog posts in the evenings, perhaps because I have more bandwidth available due to the AI shortcuts at work.

### Outcomes of mechanical bug fixing

That said, I'm still a bit mixed about the whole endeavor. Any process that degrades our mental faculties instead of building should give us pause and concern. Is it in our long-term interests as technical writers to use AI tools? This will likely result in several outcomes:

* **Expectations about pace.** We'll be expected to cover more doc bugs faster. Maybe instead of scenarios where several tech writers supported products, there will just be one tech writer, working alongside AI tools and relying on engineers to review content for accuracy.
* **Tech writers will support more teams and work in a more isolated way.** We won't need as many meetings with engineers to gather and interpret information, as much of this can be done using AI tools to get to a first draft that's good enough to send out for review. Tech writers will mostly work alone in an isolated way, though still on-site due to the emphasis on return to work. We'll work alone in a crowd.
* **We'll become more alienated from the products of our labor (a Marxist idea).** Since our documentation isn't an output of our own mental labor, painstakingly built out word by word from great effort, it becomes less meaningful to us. We'll feel more apathetic toward it (more so than before).
* **Code itself will become increasingly more complex and opaque.** Code will become more sophisticated and advanced as it's created by machines that consider more sophisticated scenarios and techniques. External developers using APIs will use AI to write the code, thereby eliminating the need for code samples in the first place.

{% include ads.html %}

### Do we even have a choice about whether to use AI tools?

In discussions about whether to use AI, I've presented the idea as if a tech writer could choose to use manual processes and ignore AI together. Do you have a choice in the matter?

If we don't use AI, we might be replaced by someone who will. What company would prefer a tech writer who fixes 5 bugs by hand to one who fixes 25 bugs using AI in the same timeframe, with a "good enough" quality level? We've already seen how DeepSeek AI, considered on par with ChatGPT's quality, almost displaced more expensive models overnight due to the dramatically reduced cost. What company wouldn't jump at this chance if the cost per doc bug could be reduced by $20 to $1 through AI? Doing tasks more manually might be a matter of intellectual pride, but we'll be extinct unless we evolve.

In Nick Bostrum's *Superintelligence*, he talks about different pathways toward superintelligence, one of them being the usually repugnant program of biological engineering to favor selecting desired enhancements (in this case, intelligence). Even an ethically shunned program like this might become the norm if others begin doing it. Bostrum writes,

> Once the example has been set [about the feasibility of bio-engineering intelligence], and the results start to show, holdouts will have strong incentives to follow suit. Nations would face the prospect of becoming cognitive backwaters and losing out in economic, scientific, military, and prestige contests with competitors that embrace the new human enhancement technologies. (52)

Once a group of AI-prone tech writers accelerate their pace, others will likely be forced to follow to stay competitive.

## The solution: undertake complex tasks

Fortunately, I think there's a good alternative to the dismal picture of brain-dead tech writers pressing buttons on AI machines and passing the content to SMEs for review. That alternative is to focus on what AI algorithms can't do (at least not with a few button clicks). In this revised approach, tech writers offload the simple tasks to AI tools to fix while focusing their real time and energy on more complex, ambitious tasks that are beyond the straightforward capabilities of AI tools.

When I say beyond AI capabilities, I still mean AI tools might *assist* or *augment* tech writers in the work; it's just that the tasks aren't as simple as the mechanical tasks of fixing doc bugs that I described earlier ("what's the issue? what's the fix?").

For example, when I set about creating [complex tree diagrams showing all elements in an API](/ai/prompt-engineering-task-decomposition.html), this was a new kind of documentation that hadn't been done before at my company. It became an instant hit and one that proved challenging to maintain and grow and fix, but still worthwhile. (In fact, in a chat with a product manager last week, he wondered if our tree diagram page wasn't the most popular page in our documentation.)

If we focused more on these sophisticated tasks (beyond click-button AI), I think tech writers could have a brighter future. Of course, I used AI to help build the tree diagram, with its hundreds of branches and links, but it's not something an AI could build without heavy human steering and direction from me. Additionally, AI tools tend to specialize only in what's the most likely thing, in predictable outcomes, not what hasn't been thought or done before.

While this tree diagram project is one example of success, I suspect tech writers need to be hitting home runs regularly, constantly pushing documentation boundaries and thinking more expansively about what can be done. Some other possibilities:

* **Getting started guides and tutorials for working with APIs.** These are high-quality deliverables that often get brushed aside in favor of more bare-bones documentation needs &mdash; how-to's, concepts, and reference topics. The getting started tutorial, if ever written, requires a fully working product and a tech writer who knows the story from A to Z.
* **Source code error checking for missing or incorrectly tagged documentation**. Not many tech writers I know even produce the reference content, but there's much we could do here, from making sure all elements are documented in the source to verifying that links (and Javadoc link syntax) are correct, required/optional tags are present, the language is grammatical, that there are appropriate cross-references to the conceptual docs, and more.
* **Synchronization with marketing pages.** The perennial problem of syncing  documentation with marketing pages is a task I often sigh at and move on. (In fact, my group doesn't even have marketing pages for some of the products, only marketing slide decks.) What if the documentation could provide articulate, engaging, and technical versions of these same marketing pages and concepts?
* **Building out doc generation scripts.** These scripts piggyback on the reference docs but takes them a step further. What if we develop scripts that build and deploy reference documentation, including any post-generation tweaks or adjustments, verification checks, automated bugs assigned, and analysis of warning logs, making the documentation generation process streamlined and information-rich?

These are just a few examples, but you get the idea here. We have to focus on these higher value documentation tasks if we're going to survive as a profession. If we instead linger in the mechanical fixes to the doc bugs that people note here and there, which nickel and dime our attention span and exhaust our bandwidth, we'll soon be replaced by AI tools that perform these tasks for us. These tasks can't be seen as the sum of what we do.

## Recursive Self Improvement

Let's move on to another AI idea that's been getting more attention. One promising technique with prompt engineering is to ask AI for ideas on improving a draft. For example, after Gemini/Claude/ChatGPT/Llama/DeepSeek finishes a draft of something, in the same session, ask it to play an editorial role and analyze the draft to identify areas for improvement. For example, a prompt like this: "Now play the role of an editor. Analyze the existing draft and identify ways that it can be improved."

AI tools can demonstrate an interesting ability to switch roles and identify areas for improvement. You can then tell the AI to incorporate the suggested improvements. 

It's a bit odd that the AI doesn't incorporate the techniques from the get-go, but a manual, human writing process proceeds in the same way: you write a draft, then maybe let it sit a day or two and read it. Now you have ideas on how to improve it. These ideas weren't visible to you in the initial draft writing but are now apparent as you look it over later. AI seems to work somewhat similarly (on the surface).

However, given that there's little pain and effort involved in putting AI through this editorial iteration, what if you were to continue iterating through a draft not just a few times but 20 or more? Could the AI identify small ways to improve a draft such that by the 20th iteration, you achieve an impressive level of quality?

I recently tried this technique when writing a book review. I fed the AI a ton of notes, quotes, thoughts, and other ideas, had it write a draft, and then asked it to iterate through successive self-identified edits for 20 rounds. The result? Not that exciting. I found several immediate limitations:

* In the same AI session, the AI typically won't keep identifying areas for improvement for the same content. You may get 2 to 3 rounds of fixes, but after that, the AI settles on a finalized state for the draft.
* However, clear the session or plop the draft into another AI tool (switch between Gemini, Claude, and ChatGPT between drafts, for example), and you'll start the whole editorial Ferris wheel all over again. So basically, to go 20 rounds of improving content, you have to toggle between various AI tools.
* What's really going on here? How can an AI session always come up with potential fixes when you're new to the session but not if you maintain the same session? Are they real fixes, or are they just checkboxes in some hidden rubric the AI is cycling through? I'm not sure.

Another more promising technique is to insert a human in the loop. Instead of having the AI self-identify areas for improvement, you wear the editor's hat and identify those areas for improvement with each iteration. The only problem is that this requires you to read and evaluate each draft &mdash; which, if you have to do, requires a lot of time and effort, such that writing it yourself might be easier. The task becomes akin to getting your young child to successfully mow your lawn &mdash; something that's much easier to do yourself.

The best use of AI, I found, is to prompt it to integrate various in-text citations from a list of supplied quotations to support the arguments that you write. This way, AI isn't contamining your essay with its *blah, general* language and comments. It's incorporating other voices.

## Recursive Self Improvement

Continuing on with this idea of multiple iterations, let's take the idea further. In AI lingo, there's something called "Recursive Self Improvement" (RSI) that refers to the ability of an AI to improve itself, to write its own code, and improve itself at an accelerated rate. When AI can achieve RSI, it might pass a "crossover" point where it moves past average intelligence to achieve superintelligence.

Max Woolf explores a similar question in [Can LLMs write better code if you keep asking them to “write better code”?](https://minimaxir.com/2025/01/write-better-code/) Applying an AI-generated trend with images to "Make it more ____", he does the same with code. He phrases the question of his experiment as follows:

> If code can indeed be improved simply through iterative prompting, such as asking the LLM to "make the code better" &mdash; even though it's very silly &mdash; it would be a massive productivity increase. And if that's the case, what happens if you iterate on the code too much?

His post gets technical in analyzing the Python code that the LLM writes. He then compares this "make it more" technique (in this case, "write better code") with a contrasting technique: more explicit guidance via prompt engineering. In other words, he compares it to providing more upfront human steering in the code he wants the AI to write (rather than just telling AI to "write better code"). Overall, he found the following:

> In all, asking an LLM to "write code better" does indeed make the code better, depending on your definition of better. Through the use of the generic iterative prompts, the code did objectively improve from the base examples, both in terms of additional features and speed. Prompt engineering improved the performance of the code much more rapidly and consistently, but was more likely to introduce subtle bugs as LLMs are not optimized to generate high-performance code. As with any use of LLMs, your mileage may vary, and in the end it requires a human touch to fix the inevitable issues no matter how often AI hypesters cite LLMs as magic.

In short, although the technique has some positive outcomes, AI tools aren't at the point where they can successfully self improve and keep improving in significant ways. He notes that the AI output can present you with ideas you might not have considered yourself.

In my experience doing the same with a book review, I found that the situation to be  analogous to teaching first-year students to write argumentative essays. As a composition teacher, I used to add an abundance of comments on student essays explaining how to improve the content (for example, provide better evidence, clarify your logic here, improve your transitions between ideas, etc.). Then, students would submit second and third drafts of the essay, each time incorporating my feedback.

However, the second and third drafts weren't much better. After a while, I concluded that students are at a specific skill level, and while there's some wiggle room within that level, it's not feasible to expect them to level up between drafts. Telling a student to clarify their logic won't magically enable the student to produce a crisp and ordered argument in their next draft &mdash; their general writing level just isn't there yet.

I suspect it's the same for AI &mdash; you can get some improvement to help wiggle up 5% quality improvements or so, but AI's aren't at the recursive self-improvement level yet, and probably thankfully so, as this would signal a crossover point leading to the singularity.

## Why AI still sucks for more creative writing

During my book review experiment with the iterative prompting, I had some other thoughts on why AI fails for more creative writing. (Creating writing can include a nonfiction book review in a blog post, not just fiction or poetry.) 

* **Atrophy of articulation.** The core element of writing is a cognitive task in which you carefully and thoughtfully formulate word combinations based on ideas you're trying to articulate (clarify, sharpen, tease out, etc.), which become a first draft. That process of articulating an often fuzzy idea into language is what it means to write. After that initial draft, editing and shaping those ideas is much less taxing. Using AI tools, you might offload that initial task of articulating some vague idea into language to AI. But if you do, it will weaken and atrophy that ability to communicate ideas into language, making you increasingly dependent on AI.
* **Intellectual motion.** There's often a motion that starts in your head when you're writing; the mental flywheel starts turning due to the process of articulation, and even in the back of your mind, you're still thinking about topics and working them out in your head. You might suddenly have epiphanies because your mind is in motion. That kind of intellectual motion doesn't happen if you offload that task to an AI to work an idea out.
* **Not how I would say it.** When AI does write for you, the words might initially seem to express an idea you hoped to articulate, but the language and wording aren't yours. Reading the AI draft, you might think, I would never say that, or That doesn't sound like how I feel or write. That's not me. As such, there's an alienation of labor and a loss of value in a very Marxist way. The product becomes less interesting and valuable to us because it isn't ours; it's not our labor. As a result, we write less.
* **Spark of discovery.** There isn't a spark of discovery that happens with AI-generated content. When writing an essay, you usually begin to see your thoughts in concrete form for the first time, which clarifies and sharpens your ideas. You start shaping them into more defined arguments. Usually, at some point, a spark of discovery happens. (This is something noted in a book on writing &mdash; can't remember the title &mdash; and I've always remembered it.) An essay is flat if you don't have this spark of discovery. The thrill of writing separates a knowledge dump from an exploration of an idea (following Montaigne's original meaning of "essay"). This kind of exploratory writing is what I find most invigorating and rewarding about writing &mdash; when I'm wrestling with something and using writing as a tool of inquiry. But if I'm not wrestling with it, but instead using AI to wrestle with the idea, then writing becomes more of a flat knowledge dump. There's no real buildup and climax to the writing. A good story follows an arc of wrestling with an idea, eventually leading to an epiphany that presents a resolution or turning point in the struggle.
* **Grammarly's AI fixes.** One AI tool that I do like is Grammarly's editor. It now has more AI features that will rewrite individual sentences. But it goes sentence by sentence in a granular way, allowing you to accept or reject each change. It also often explains why it's making the change (such as to be more active or sound more confident). It's much better than simply feeding an entire essay into Gemini or ChatGPT, getting a "fixed" version, and then wondering what changes were made. The content still feels like it's yours after incorporating the suggested changes.
* **Documentation content.** For documentation content, so many of the same elements aren't present. There's no critical thinking, spark of discovery, personal voice, ideas churning in the back of your mind, etc. This is perhaps why I've always been able to work all day doing technical writing and still have creative energy for my blog in the evenings and weekends &mdash; there are different muscles being engaged.

## Shift toward thinking models

Let's end on some AI news. After the DeepSeek upheaval the other week, it seems that some AI tools are shifting from a focus on foundation models to real-time thinking logic in the app. See these two articles:

* ["Why AI Spending Isn't Slowing Down"](https://www.wsj.com/tech/ai/ai-chatgpt-chips-infrastructure-openai-81cf4d40) (Wall Street Journal, by Christopher Mims, Feb 212, 2025). Big tech is shifting from developing foundation models, which can easily be replicated, distilled, copied, etc., to thinking models (that is, apps and interfaces to the models), which use a ton of computing power in the session to do real-time thinking. Nvidia chips are still critical for this.

* [OpenAI is an App Company Now](https://www.bigtechnology.com/p/openai-is-an-app-company-now) (Big Technology, by Alex Kantrowitz, Jan 31, 2025)
