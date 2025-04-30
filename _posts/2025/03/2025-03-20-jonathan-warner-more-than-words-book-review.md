---
title: "Book review of Jonathan Warner's book <i>More Than Words: How to think about writing in the age of AI</i>"
permalink: /blog/jonathan-warner-more-than-words-book-review
date: 2025-03-20
categories:
- ai
- writing
- ai-book-club
keywords: 
rebrandly: https://idbwrtng.com/jonathan-warner-more-than-words-book-review
description: "Jonathan Warner's book <a href='https://www.amazon.com/More-Than-Words-Think-Writing/dp/1541605500'><i>More Than Words: How to Think about Writing in the Age of AI</i></a> is a spirited defense about the value and humanity of writing without AI at a time when AI promises to replace many writing activities. Warner argues that writing involves thinking and feeling, and as we grapple with ways to identify, express, and articulate our ideas in writing, it's an experience that changes who we are."
---

* TOC
{:toc}

## Writing as a tool for thinking

Warner writes, "Writing is thinking. Writing involves both the expression and exploration of an idea, meaning that even as we're trying to capture the idea on the page, the idea may change based on our attempts to capture it. Removing thinking from writing renders an act *not* writing" (11). Because writing involves thinking and reflecting, our engagement in writing changes us. Warner says, "If writing is thinking &mdash; and it is &mdash; then it must be viewed as an act of our own becoming" (73).

Many of the arguments in Warner's book will resonate with anyone who sees value in writing, especially if you studied or taught writing or humanities subjects. I've always felt that writing is a tool for thinking, and the best essays are those that show the mind in motion, thinking through difficult problems in Montaignesque ways.

However, reading Warner's book from the perspective of a *technical writer* was much more challenging. At times, I wondered how to assess my use of AI at work. When I'm performing the tasks of a technical writer, am I actually "writing"? Warner's view of writing seems mostly focused on expressive writing, the kind a student, essayist, academic, columnist, or book author would engage in. There's not much treatment about writing that falls outside these boundaries. As such, I was left trying to figure out how AI fits into the writing of technical documentation. 

## Technical writing example to examine

Because specific scenarios help clarify abstracts, let's start with this example: the technical writing task of preparing release notes for some new fields in an API. These release notes might be 500 words or so, describing the new fields, some deprecated fields, indicating some bugs and maybe some documentation updates. This kind of writing isn't expressive. I'm not thinking through ideas and finding arguments, nor am I confronting an emotion. The writing is perfunctory and perfectly capable of being replaced by AI, without much care by anyone. 

Release notes don't have a byline; they don't have a voice. They don't contain an arguable assertion. About the only value they possess is their readability. The technical writer's job isn't to express an idea. It's usually to translate some engineering gobbley-gook into human-understandable sentences that can be understood by global English speakers. If you've achieved that clarity, task done.

Is this completed task, then, *writing*? Am I using my brain to think through something? Am I reflecting or feeling anything? If I'm not thinking, then what am I doing and why am I being paid so much? 

## Different types of thinking

Perhaps just as there are different types of writing, there are different types of thinking. The thinking part of technical writing is more of a comprehension activity: Do you understand what [X] is? That does require thinking, however, because even when using AI to generate an output, you still have to assess the output and answer that same question: Is this what [X] really is? Is this how [X] works? Is this accurate? (Replace [X] with something really complicated, like distortion coefficients in extrinsic data collection.)

For example, last week, while fixing what I felt was a poor explanation from engineers about a geo-spatial field, I had to learn the difference between *ellipsoids* and *geoids*. Apparently, we used the former, but the latter might be more accurate, though less standardized and hence less consistent. As I studied these differences and improved the field explanation, was I "thinking"? Yes, but not in a reflective way towards an expressive argument. I was operating more within an analytical, explanatory mode.

Also, the engineer who had to decide between using ellipsoids or geoids in the API also had to think through the situation. He or she had to consider what approach users might prefer, their use cases, the tradeoffs of using ellipsoids instead of geoids, and which made more sense for the API. This is also thinking.

Coming back to Warner's main argument: By outsourcing this writing to AI, which then generates a clear description of the fields or maybe posits the right approach to the engineer for the API, are we removing ourselves from the human activity of thinking and feeling and expressing? To an extent, sure. But it's more the case that we're thinking *with* AI, using AI as a tool for accelerating and augmenting our thinking process. Is this necessarily bad? I don't think Warner would argue that it is, so long as we don't abdicate our thinking processes entirely to AI. Instead, AI might allow us to devote our thinking cycles to more advanced tasks.

{% include ads.html %}

## Freeing up time to engage in deeper tasks

If AI allows us to generate release notes in a more efficient, streamlined way such that we can focus on deeper documentation tasks, like providing an extended conceptual explanation of a topic, then this seems like a good trade. This would align with Warner's calculator argument &mdash; he says we allow students to use calculators so that they can focus on more advanced math. If they had to work out each long division problem by hand, they'd never have enough time to get to Calculus.

Warner also points out that with his own reading habits, he will sometimes use AI to generate summaries of content that he's happy to skim, while freeing up more time for his deeply immersive reading outside of AI summarization. Not everything is worth printing out and reading at your kitchen table with pen and highlighter in hand. If it's not worth a deep read, then leveraging AI to crunch through the information is more acceptable.

The problem is that we often don't take that next step of immersion in a more complex task. If AI becomes a shortcut to getting our work done early, and we skip the deeper engagement time, we end up stuck in a loop of ever-increasing dependence on AI. Each time we omit the more immersive engagement with problems, we become less knowledgeable about our products, more reliant on SMEs to review and correct the output, and increasingly just an interface between AI tools and experts. This backs technical writers into a corner of low value where our longevity is threatened by replacement.

## Warner's thoughts on using AI with technical documentation

By the end of Warner's book I was still trying to square the anti-AI arguments for writing with use of AI in technical writing. So I decided to ask Warner what his views are on using AI with technical documentation. 

Tom: 

> What's your perspective on the use of AI tools to write technical documentation? Most of the writing covered in your book focuses on essays, articles, books, and such. But what about user guides and other technical how-to material? Do you feel that the same arguments for not using AI tools when writing also apply to writing technical documentation?

Warner:

> It's a good question, and the answer is "it depends."
> 
> A good rule of thumb is that where thinking is an important part of delivering the desired product, outsourcing it to the automation of an LLM carries risks that might not be worth the reward of increased speed and efficiency. 
> 
> The LLM will always hallucinate. It's inherent to how the technology works. We also have to be mindful that writing the technical documentation is also an opportunity to evaluate the things that's being documented. This process can identify and mitigate problems as a kind of check. 
> 
> The other challenge is that we know LLM-created documentation will need to be checked by human expertise, and we have to be mindful of how that expertise is developed &mdash; by engaging in the writing practice of producing technical documentation. If the people who are in charge of checking the outputs haven't developed the ability to create these things themselves they won't be able to spot the errors. It would be like me trying to work as an editor without ever having tried to write in the genre I'm editing. 
> 
> There's a real risk to what I call "voluntary deskilling" where we begin to outsource these things to LLMs and lose touch with the ability to evaluate those products. This is already happening in coding.
> 
> Now, there's some instances where I can think of uses that wouldn't trouble me. If I needed a straight text summary of a data table without an interpretation or findings, I would experiment with letting an LLM do it, checking how often it was hallucinating to see if it were really saving me time. 
> 
> In most of these things, "it depends" is always going to be the answer, but that's what makes these questions interesting!
> 
> I hope that's helpful.

First of all, how cool is it to get a detailed reply from an author whose book I was just reading! I also liked his "it depends" ambivalence and some points he makes here, especially about "voluntary deskilling." I think this might be my key takeaway. Is our use of AI making us less skilled? Coming back to the ellipsoid versus the geoid example. AI's revised explanation of the field incorporated brief definitions of both, the tradeoffs, and justification for why we're using ellipsoid. By outsourcing this clarification to AI, I've let my own writing skills atrophy a bit. For this task, instead of a writer, I've become more of a reviewer and approver. 

But even as a reviewer and approver, are my thinking wheels still turning? I ask myself, does AI's output generally align with what I've been reading about the topic? Is there a logical fluidity to this definition? If I'm mostly sure, great. I'll accept the output and move on, relying on the SME do the final verification. There's still some thinking and evaluating and decision-making going on.

But does reassignment of roles from writer to reviewer and approver voluntarily deskill me with each output, such that by doing this for several years, I might entirely lose the ability to clarify complicated concepts as a writer or to fully understand how to parse through source information and articulate it in simple ways, as a writer can skillfully do? 

Without a doubt, I've forgotten how to do long division. So following the same logic, the less writing I do, the more likely it is that my writing skills will atrophy. This is part of the ways AI threatens society, with a gradually increasing dependence on AI and continual deskilling.

And yet, to reject AI tools while embracing a more manual way isn't a solution either. It's the equivalent to going back to pen and paper instead of computers. Our output will be drastically reduced, and we'll soon be replaced because our labor is too slow and expensive, and not much better than when docs are written with AI (if at all). 

## The solution: focus freed-up time on complex, thought-intensive tasks

I think the only solution is to focus our freed-up time on those complex tasks that are beyond the simple push-button outputs of AI, as I argued in [Countering AGI with superintelligent docs?](https://idratherbewriting.com/blog/superintelligent-docs) If we focus on those complex problems we're trying to solve, the wicked problems in our organization, while allowing AI to knock out the smaller, more mindless bugs here and there, I think we can preserve our tech-writer value and our critical thinking skills. In short, we have to move on to the Calculus of our documentation tasks. Not just providing updates here and there, but refactoring content models, identifying trends through bug analysis, or tackling big-picture workflows. 

Focusing at times on these complex problems and other times outsourcing thinking to AI models aligns with what Warner refers to as embracing a "biliterate brain." With a biliterate brain, one brain mode is used for fast skimming and reading articles online, and another brain mode is used for deep, immersive engagement in long-form content.

## Deliberating on approaches

Now let's take this argument one step further and look at another way we think about documentation problems. In my [Countering AGI with superintelligent docs?](https://idratherbewriting.com/blog/superintelligent-docs) post, I described possibly dedicating myself to documenting all the elements that form a map, which would be a gargantuan task. Near the end of last week, I set about doing that task. I gathered up a lot of code comments and docs about some map attributes, printed them out, and sat down to read them, giving myself a 90-minute timer on the deep reading task. However, by the time I finished the reading, I became convinced that we didn't need mountains of information about these attributes if users weren't asking these questions. We would essentially be burying users in details they neither wanted nor needed to know.

This got me contemplating an age-old documentation problem between minimalist and maximalist approaches. With the *minimalist*, MVP (minimum viable product) approaches to documentation, you provide a basic set of docs and then iterate with additional details as needed. In contrast, with a *maximalist* approach, you provide comprehensive, detailed documentation from the start, regardless of whether users want all those details. 

I can't say many tech writers adopt the maximalist approach, especially since most software is built using the minimalist approach, developing the product in tandem with continual user feedback to steer and guide the engineers' work.

However, by adopting a minimalist approach, it potentially leads to a scenario where a thousand small bug fixes end up achieving a larger more comprehensive documentation output, only shaped around actual user needs rather than some uber-comprehensive, deductive treatise on every attribute in the documentation. And here's the kicker: Couldn't these thousand tiny bugs be dealt with using AI to quickly chew through these bugs? 

With this approach, the user paints the shape of that more comprehensive documentation through all the bugs they file; the structure and shape of the documentation emerges like a work of pointillism. But with this approach &mdash; focusing on a thousand tiny bugs as the core work of documentation &mdash; where's the engagement on the deep, complex problems? If I knock out 10 bugs a day that mostly involve trivial fixes of adding a paragraph here, clarifying a definition there, removing an outdated term in another place, etc., none of these bugs constitutes deep work (in the Cal Newport sense of the term). They aren't the advanced Calculus space that I argued tech writers should go to find value. Instead, each of these bugs is easily outsourced to a quick fix with AI. But in the end, the thousand tiny quick fixes leads to a comprehensive, impressively detailed result.

## Conclusion

As you can see in a meta way, even thinking about the right approach for documentation, apart from the documentation artifact I end up producing, is a form of thinking. And this is my larger point, more than the specific logic of my actual argument. Deciding on the approach is a form of thinking that technical writers engage in. Even when we use AI tools to streamline documentation, it doesn't mean we're removing ourselves from thinking and reflection. As long as we're still engaging somewhere, I think Warner would approve. In this way, we use AI tools to augment and amplify the scope of our thinking, not reduce it.
