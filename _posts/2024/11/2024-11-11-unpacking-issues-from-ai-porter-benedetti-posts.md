---
title: "Unpacking the issues from AI &mdash; thoughts on Alan Porter's post Am I the AI Luddite? and Fabrizio Benedetti's How I'm using AI as a technical writer"
permalink: /blog/unpacking-issues-from-ai-porter-benedetti-posts
date: 2024-11-11
categories:
- ai
- writing
keywords: 
rebrandly: https://idbwrtng.com/unpacking-issues-from-ai-porter-benedetti-posts
description: "As <a href='https://lavacon.org/'>Lavacon</a> wrapped up last week, I've seen a few posts from attendees sharing their thoughts, including Alan Porter's <a href='https://thecontentpool.substack.com/p/im-i-the-ai-luddite'>Am I the AI Luddite?</a> and Fabrizio Benedetti's <a href='https://passo.uno/ai-tech-writer-examples/'>How I'm using AI as a technical writer</a>. Alan's post echoed some other sentiments I've heard from others in the industry expressing ambivalence about using AI. In fact, many of my colleagues share this ambivalence, unsure which scenarios warrant AI's use or whether it truly helps. Having been an AI proponent for more than a year now, I remain as convinced as ever about AI's usefulness in tech comm. But let me concede a few things."
---

* TOC
{:toc}

## Scenarios where AI is useful

I admit that for writing blog posts, AI isn't that helpful. In my post [My experience trying to write original, full-length human-sounding articles using Claude AI](/blog/writing-full-length-articles-with-claude-ai), I tried using AI to write blog posts but soon found it more problematic than helpful. If you know what you want to say/write, there's little need for AI, and you end up spending more time fixing the language (so that it sounds real, like you, etc) than it's worth. 

Additionally, in [Seeing invisible details and avoiding predictable, conditioned thought](/zamm/seeing-invisible-details-avoiding-predictable-thought.html), I argued that expressing ideas in raw, novel ways is part of the joy of language and what makes prose interesting to read. If you use language based on an algorithm literally intended to generate the most predictable patterns, you'll end up writing clichés. 

However, in my role as a technical writer, I find AI much more useful. This is because the written medium for tech comm is significantly different. For example, in contrast to more creative, personal content on a blog, documentation is much different:

* **Documentation is voiceless.** There's no personality or voice beyond a general sense of being clear, friendly, and straightforward.
* **Documentation uses plain speech.** Shorter sentences and unmistakable meaning is the norm in documentation.
* **Documentation is frequently highly technical and complex.** The content isn't something I already know.
* **Documentation has little personal investment.** At the end of the day, I'm not personally invested in the content, there's no byline, and the content will be outdated in a few years, if not sooner.

These factors make documentation much different from the creative content in a blog or book. Because of them, I find AI much more applicable. I'm convinced it speeds up content development significantly, reduces the effort needed to knock out documentation tasks, and helps me create content that's well-received. 

For example, consider the basic tech writing scenario. An API has some confusing elements related to data it returns. Engineers come to you for a doc that explains it. They point you to several internal engineering documents that explain some of the ideas. They meet with you to also explain how it works. You can basically feed all of this into an AI tool and get a first draft of the article within minutes. It might still need a lot of work, but it's much faster than starting from a blank page. 

Overall, I'm convinced that if you're not using AI as a technical writer, *you're living life in hard mode*. This will become apparent over the next year or two as AI becomes more common and integrated into authoring tools and workflows. Just the other week I received a peer bonus for an article that I mostly wrote with AI (as I described in [From engineer interviews to written draft, with chain of thought reasoning](/blog/prompt-eng-iterative-chain-of-thought)). I used the extra bandwidth time to manually create two attractive diagrams for the article.


## Divesting ourselves of our skills

Let's jump into some of the excellent points Alan makes in his article, starting with the risk of divesting ourselves of some of our best skills. Alan writes:

> What I do have issues with is the apparent blind adoption of Generative AI. Maybe it's because I am a writer at heart, that I don't understand the apparent rush to divest ourselves of the skill that made us human in the first place - the ability to share our personal knowledge and ideas.

This is a valid point. As I explained above, for content projects that involve sharing personal knowledge and ideas, I don't find AI all that helpful. But for tech comm projects at work, which usually involves articulating concepts and tasks from systems that engineers have built, AI cuts right through these tasks like butter.

I do worry, though, about becoming too reliant on AI. At some point, I might forget that I actually know how to write.


## Copyright issues

Alan also raises questions about copyright:

> If you are using a public OpenAI tool, like ChatGPT, the chances are that the content driving your output is based on stolen copyrighted content just scraped from an on-line source without the original owner's permission (I have found a couple of my own short stories where this has happened - so I may have a personal bias).

When I first started thinking about copyright issues, I wondered if my [API documentation course ](/learnapidoc) was included in all the training data of AI tools. I assumed it was, since I've never added any explicit no-use statements in my robots file. I went through a short phase where I felt cheated out of my content and upset. I considered password-protecting my site. The huge migration to Substack in the blogosphere reinforces the idea that others are also wary about their content being scraped.

I made a number of queries to AI tools that should have prompted regurgitation of my API content, but I never saw it. The AI training data is so immense, it's uncommon to see any one-to-one correlation with any specific site content. Obviously this is a sensitive issue and the NYTimes lawsuit against OpenAI points to some contrary evidence, but I could never see it with my own content, whether from my API course or blog. (Most recently, [a judge tossed another publishers' copyright suit against OpenAI](https://www.theregister.com/2024/11/08/openai_copyright_suit_dismissed/).)

At some point, I made a shift, not too unlike the shift that Leo Laporte, host of [This Week in Tech](https://twit.tv/shows/this-week-in-tech) podcast, made in turning from skeptic to proponent. I realized that the benefits I got back from AI tools outweighed any loss of my own content. There's a kind of social contract that I implicitly agreed to &mdash; sure, take my content, my thousands of pages of blogs and other info to train your models &mdash; and in return, I'll get a powerful tool for content development that will make me 2-3 times more productive. This quid pro quo eliminated the feelings of injustice I initially had.


## Environmental impact

Alan also raises an environmental point:

> The power needs and environmental impact of the huge data centers needed to power AI is currently catastrophic.

I also keep hearing about all the water needed to cool data centers, etc. Honestly, I don't have a strong understanding of this. Are we wrecking the climate to fuel systems that are largely used to create *AI slop* &mdash; the lightweight content spam, the plagiarized essays for students, the cookie-cutter images to decorate content? Given the conservatives in power next year, I doubt environmental concerns will overshadow business priorities, sadly. Will we see small nuclear facilities appearing over the map to power these massive computing systems? Probably.

{% include ads.html %}

## Solving actually business problems

Finally, Alan asks about solving actual business problems:

> If your company is using AI we should be asking what business problem they are trying to solve? I have yet to have anyone give me an answer for using Generative AI that made me go “oh yeah now I get it.” - In many cases what I get is something on the lines that a senior executive has told various functional groups that they need to find a place where AI can be used in the business. This is putting the cart before the horse. 

I already argued that writing documentation is a sweet spot for AI. On the other hand, there are many use cases that I'm much less excited about with AI. In the most recent Hard Fork episode, [What Trump means for Tech + AI made me basic + HatGPT!](https://www.nytimes.com/2024/11/08/podcasts/hardfork-trump-musk-tech.html), the hosts interviewed Kashmir Hill about a week in which she let AI make all the decisions in her life. The hosts say, “Basically, for a week, she turned over all decision-making in her life over to generative AI, including what to eat, what to wear, her schedule, her new haircut, everything.”

Kashmir explains:

> What was funny to me is, when I was interviewing experts about this, including people at OpenAI and at Anthropic, they seemed horrified that I would put my life and my family's life in the hands of their chatbots, which I just thought was interesting because I think that's what they're trying to build towards this general intelligence. And yet they're like, really? You did that?

My reaction? Sure, I might use AI to help make some decisions. But Kashmir's experiment seems like an example of using AI in unintended ways. Consider enacting a similar experiment 20 years earlier: blindly follow the first search result for every question, then declare search engines useless when the results are poor. It's kind of absurd. 

AI-surfaced answers should be seen as one resource among many that factor into your intelligent, personal decision making process. If AI doesn't seem to be a good fit to solve a problem, don't force it. (Then again, there's an art to prompt engineering to get the results that you want. What might not be seen as a good fit could, with a little adjustment, actually work quite well.)

Overall, AI continues to be a controversial subject &mdash; people are all over the map on it. I'm glad to see that it occupied a presence at Lavacon and provoked a lot of analysis among technical communicators. I have little doubt that AI will be integral in tech writing workflows in the future, so common that people will wonder how anyone did the job before AI. There will be a loss of some skills, for sure, but hopefully it will be offset with amplified knowledge and more bandwidth to focus on high-value tasks like diagrams.


## Passo.uno post on using AI

If you're looking for some concrete ideas about how to use AI, check out Fabrizio Benedetti's post on Passo.uno titled [How I'm using AI as a technical writer](https://passo.uno/ai-tech-writer-examples/). He gives a lot of easy to follow explanations about how he's using AI. In particular, I liked this section about tackling docs-as-code tooling/website issues:

> I've some experience as a coder, but I'd never fancy myself as a developer. Now, the life of a technical writer in a docs-as-code environment is full of coding adventures: whether you need to fix something in your site, or add a new UI component or feature, coding is the answer. LLMs are now the starting point of my coding quests, a helpful associate I can ask for opinions and for prototypes of an initial solution.

Amen to this! When AI tools first appeared on the scene, I immediately started tackling website-related issues with them, and wrote about them in posts such as this: [A script that creates a new Jekyll post and populates it with YAML frontmatter, and also makes a curl call to add a Rebrandly shortlink](/blog/create-script-to-auto-create-new-post-jekyll). I built other scripts to simplify creating newsletter template HTML to copy and paste into Mailjet, simplifying newsletter assembly. Docs-as-code is a situation ripe for scripts of all types. For more documentation-specific scripts, see [Creating scripts to automate doc build processes](/ai/prompt-engineering-doc-build-scripts.html) and [Using long-token contexts to quality check an entire API doc set](/ai/prompt-engineering-entire-doc-set-prompts.html). 

While Fabrizio concedes that many macro-like tasks can be offloaded to AI, he's hesitant to put more core content creation tasks into AI workflows. He explains:

> The output from LLMs is only as good as your queries and prompts; your prompts are good when you know how to formulate the right questions in the right way, which in turn requires experience and skill. In my case, LLMs have increased my productivity by removing tedious work at the margins. I'd never trust an LLM to do the core of my work, because they can't, but their ability to chew away at fastidious tasks and repetitive operations is the kind of über-macro I always dreamt of.

I admit that I sort of disagree. Today I sped through about half a dozen doc bugs using AI tools. They're really freaking good at content creation. You just have to feed them a lot of accurate source material, like I explained in [Gathering source material for context input](/ai/prompt-engineering-source-material-context.html). I gather up product definition documents, engineering designs, two-pagers, and other material and feed it in as context for my prompts. Many times, AI generates a draft that only requires minimal edits and adjustments. Today I was even thinking, will I have a job in two years? But I don't want to pursue that thought path right now, especially since others seem to be having such different experiences with these tools. I'm not sure if it's the sort of tasks I'm doing or my experience with [prompt engineering methods](/ai/prompt-engineering.html) that accounts for the difference.

