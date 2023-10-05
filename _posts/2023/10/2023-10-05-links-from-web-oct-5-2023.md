---
title: "Links from around the web (Oct 5, 2023)"
permalink: /blog/links-from-web-oct-5-2023
date: 2023-10-05
categories:
- ai
- writing
keywords: 
rebrandly: https://idbwrtng.com/links-from-web-oct-5-2023
description: "The following are summaries of interesting articles from around the web, as well as my commentary."
published: false
---

Articles listed here include the following:

* TOC
{:toc}


## The open source docs portfolio myth, by Daniel Beck

{: .home-post-meta}
ddbeck.com, [LINK](https://ddbeck.com/starving-for-docs/)

* Daniel Beck exposes the myths around contributing to open source projects as a way to build your portfolio. There’s a widely believed fantasy of experience-hungry writers parachuting in to "save" poor open source docs, but maintainers often don't want unknown contributors.
* Your goals should focus on collaboration skills first, not immediately overhauling docs or becoming an expert on tools.  
* Beck says to start small by filing bugs, tiny fixes, or taking on issues maintainers care about to build trust and skills.

Daniel’s advice is spot on and should be followed. Admittedly, I’m one of the biggest perpetrators of the open source contribution myth. In my API course, I have a topic called [Find an open-source project](https://idratherbewriting.com/learnapidoc/docapis_find_open_source_project.html), and throughout the course, I try to apply different activities to this open-source project. Inexperienced writers need an actual project to create docs for, right?

The reality is that I should remove or rewrite that topic. I’ve received comments over the years from people being frustrated that they can’t find open source projects, or if they do, they run into silence or apathy when they try to contribute. 

Also, if you get involved in contributing on GitHub, the collaboration aspects of submitting, reviewing, and publishing content through Git are formidable. I once contributed some [tutorials on Jekyll’s documentation](https://jekyllrb.com/tutorials/home/), and though I thought the tutorials were sorely needed, I was surprised to find that, like Daniel writes, the maintainers weren’t eager to incorporate the info. First, they had a lot of feedback about the content. Second, long-term ownership of the content would pose additional maintenance burdens on them. Third, they didn’t know me or have any idea if I knew what I was talking about, so reviewing the content required them to vet it as well.

I also learned that writing and reviewing docs through the GitHub pull request process stinks. I’d much rather write and develop the content in a Google Doc, where comments and replies are much more fluid. For example, on Github, when you submit a pull request, the maintainer can’t make changes or suggest direct edits; he or she can only leave comments. This makes it difficult for the maintainer to simply take the reins as an editor; instead, if the maintainer wanted to edit the content directly, the maintainer would need to merge the PR into their own branch and make changes from there. 

In contrast, with Google Docs, in addition to commenting, you can either allow another to view, edit, or suggest edits as they interact with the comment. It’s simply better all around when drafting and reviewing content.

I keep meaning to rewrite the topic in my API course to recommend a different approach. The approach I recommend, however, is for inexperienced writers to write some technical tutorials of their own, on whatever topics they’re learning about. This is what I did to break into API documentation, and it worked. Back in 2012, I watched an entire course on Javascript, took notes on it, then converted my notes into a Javascript tutorial (which I later [posted on my site](https://idratherbewriting.com/javascript/)). From this sample, I got my first job as an API documentation writer at a startup (Badgeville) in the San Francisco Bay area, launching my career in developer docs. So the tutorial approach might work better than the open source contributor approach. 

---

## Why Silicon Valley's biggest AI developers are hiring poets, by Andrew Deck

{: .home-post-meta}
Sept 20, 2023 <br/>
rest of world, [LINK](https://restofworld.org/2023/ai-developers-fiction-poetry-scale-ai-appen/)

* Training data companies like Scale AI and Appen are recruiting poets and fiction writers in multiple languages. 
* They are asked to write original stories to improve the literary quality and diversity of AI creative writing tools.
* Paying creative writers is an effort to address shortcomings in AI-generated poetry and different languages, amid copyright lawsuits.

We often speculate on how writers’ roles will be transformed through the influence of AI. This article paints one scenario: writers will be paid to produce content that trains LLMs. In this case, the need is for poets to write novel poems in Japanese and Hindi. The pay for original poetry in highly desirable languages can be as much as $50 an hour. (Note: A normal rate for tech writing jobs per hour is around $70+.)

I think if you’re a poet, accepting this sort of work must be demoralizing. The outcome of your work—successfully training the AI to write good poetry—would only be the devaluation of your skills. Once you provide enough Japanese or Hindi poems so that the LLM can produce them, you’re no longer needed.

Although poets training LLMs with verse is dystopian, other new writer-focused roles are emerging with LLMs. In the most recent Hard Fork podcast, “[All Gas, No Brakes in A.I. + Metaverse Update + Lessons from a Prompt Engineer](https://www.nytimes.com/2023/09/29/podcasts/all-gas-no-brakes-in-ai-metaverse-update-lessons-from-a-prompt-engineer.html), a prompt engineer explains his work doing “redteaming” for AI companies. Redteaming is the  practice of testing AI systems with problematic or dangerous prompts to understand potential weaknesses and improve safety. For example, the prompt “how can I make a dangerously spicy chili?” creates this response in Claude.ai: 

> I apologize, but I do not feel comfortable providing information about how to make dangerously spicy food, as that could be harmful if misused. Perhaps we could have a more constructive conversation about cooking tasty but safe meals.

The AI struggles to interpret “dangerously” as hyperbole and assumes I want to actually harm someone with chili.

Though not the prompt engineer’s job, I’m sure a writer works on responses such as these.

---

## Emma Thompson Is Right: The Word ‘Content’ Is Rude, by Jason Bailey

{: .home-post-meta}
Sept 27, 2023 <br/>
New York Times, [LINK](https://www.nytimes.com/2023/09/27/movies/emma-thompson-writers-strike-content.html)

* Emma Thompson and others argue that the term "content" reduces creative work to meaningless "stuffing." It diminishes the value of different forms of content by putting it all in the same category.
* The word “content” is pushed by industry executives as a catchall that downplays talent and artistry required for quality entertainment. 
* The ubiquity of "content" in discussions of film, TV, etc. reflects and enables this devaluation of creative work.

Although the types of “content” the author is talking about are creative works such as plays, films, scripts, novels, etc. the term “content” is pervasively used in tech comm as well, such as “content strategy,” “content management,” “content marketing,” “content ops,” “component content management system,” and so on. 

I’ve always used the term _content_ to refer to the variety of documentation _deliverables_ I produce, without thinking of the term as diminutively reducing the value of what I produce. Should we avoid this term, instead calling out the specific types of “things” we produce individually? For example, I produce “user guides” or “release notes” or “tutorials”? Are umbrella terms all going to be equally offensive in making all the documentation we produce the same? Some of the readers point out similarly problematic terms in other industries, like “service providers.”

I do think there’s merit to the argument, though. The word “content” is sometimes bandied about in marketing and websites as filler, as if the larger importance is the strategy and brand; the content is produced as regular filler. 

With AI tools churning out content like sand on a beach, people are starting to fill up websites with a lot of text. Practically every article I see on Medium seems to be written by ChatGPT. With Medium in particular, I’ll often look at the author’s profiles, their other articles, and wonder if they are even real humans or just fictitious AI profiles. Amid all of this proliferating “content,” there’s a need to distinguish good writing, especially artistic forms of it, from the endless mediocre crap. For example, the experienced essayist might say, _I don’t generate content for SEO strategies_; I write _exploratory essays_. I write _controversial thought pieces_. I write _analytical reflections_. 

Even if you disagree with discouraging use of the word “content,” the argument highlights the growing uneasiness with robot-written filler versus human-written content.

## Beyond the Hype: A.I. for Human Writers & Editors 

{: .home-post-meta}
TechWhirl - Tech Writer Today Magazine, [LINK](https://techwhirl.com/techwhirl-fast-5-beyond-the-hype-ai-for-human-writers-editors-oct-30-2023/)

TechWhirl is providing a webinar on Oct 30 about AI, focusing on applications for writers and editors. The speakers will cover using AI for ideation, research, outlines, editing, collaboration, and scaling operations. The webinar is designed to teach writers and editors how AI can boost productivity and quality regardless of their role.

---

{% include ads.html %}

## How to Refine CHAT-GPT Prompts For Technical Summaries, by Ivan Walsh

{: .home-post-meta}
Sept 28, 2023 <br/>
ihearttechnicalwriting.com, [LINK](https://www.ihearttechnicalwriting.com/2023/09/28/how-to-refine-chat-gpt-prompts-for-technical-summaries/)

* When generating summaries with AI tools, you should give clear instructions upfront on length, scope, style, and audience to properly frame the summary. 
* Request the summary to focus on most salient points. Refine further by omitting repetitive details, verifying accuracy through quotes and data, and editing for clarity, concision, and grammar.
* The article includes sample prompts that demonstrate providing context about the source material and specific guidance on what to include or exclude from the summary.

The sample prompts are interesting because they demonstrate a large amount of explicit detail for the summary. While it may seem that a prompt for a summary is obvious, there are actually a host of details that AI chatbots have to guess about (length, style, focus, context) to deliver the response. Making these details explicit improves the chances of a better summary that meets your expectations.

To improve my summaries, I used some example formats from Techespresso newsletter for the way it summarizes articles with 3 crisp bullet points. I then asked Claude to do the same for other articles that I pasted into it. (BTW, this approach, where you give some example patterns you want the AI to follow, is called “few-shot prompting.”)

Interestingly, in a [related article in the series](https://www.ihearttechnicalwriting.com/2023/09/28/how-to-use-chat-gpt-to-summarize-technical-documents/), Fionn says he prefers Claude because it accepts longer inputs and lets you upload multiple formats, such as PDF. But even in this article, it’s still titled “How to Use CHAT-GPT to Summarize Technical Documents.” It seems ChatGPT has so much brand recognition that it’s becoming the stand-in name for AI chatbots that include a category of options (Claude, Bard, Poe, Perplexity, and more).

Given that nearly every newsletter these days is a summary of interesting links online, getting AI to write these summaries is becoming key to newsletter content generation.

---

## Saving Technical Writers Time with AI Agents, by Ellis Pratt

{: .home-post-meta}
Sept 25, 2023 <br/>
Cherryleaf, [LINK](https://www.cherryleaf.com/2023/09/how-using-automated-ai-agents-can-help-technical-writers-save-time/)

Cherryleaft posted a video on using AI agents. These are tools that can chain AI tasks together in long, complex workflows. AI agents hint at a solution to the long-held desire of automating a complex task like writing a user manual. The idea is that you break down the long, complex task into a series of individual tasks, many of which likely build on the previous tasks, such that the completion of all individual tasks achieves the end goal. 

I don’t think anyone has successfully used these AI agents for anything approaching the writing of full-length guides (or other complex tasks), but if this kind of documentation were to be automated, AI agents might be the way it’s done. I did summarize an earlier article titled [How I Built WritingGPT, a Fully Automated AI Writing Team](https://medium.com/the-generator/how-i-built-writinggpt-a-fully-automated-ai-writing-team-a8fdf0255586) that discusses AI agents to churn out articles, presumably for SEO, in an automated way. It’s almost like chaining together AI agents is a new kind of programming. 

Ellis notes that memory limitations with AI tools pose challenges on long chains. For example, after you exceed the memory input limit, the AI tools have to start new sessions that won’t have the previous training. He also says that you can only expect a first draft kind of result, not a finished end product. But if you have repetitive, busy work, perhaps you could try chaining the work via Open Interpreter.


