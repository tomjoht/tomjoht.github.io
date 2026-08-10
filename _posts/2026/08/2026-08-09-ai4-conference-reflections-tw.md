---
title: "Reflections on Ai4 conference - some absences from a tech writer's POV"
permalink: /blog/ai4-conference-reflections-tw
date: 2026-08-09
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/ai4-conference-reflections-tw
description: "This week I attended <a href='https://ai4.io/'>Ai4</a>, promoted as the largest AI conference in North America. It was held at The Venetian in Las Vegas and lasted 3 days. The conference had more than 12,000 attendees (from 100 countries), 400 exhibitors/sponsors, 1,000 speakers, 700 sessions, keynotes from luminaries, and more. Needless to say, the sheer size of the conference was overwhelming. In this post, I'll share thoughts about the conference, focusing on a few key things:<ul><li>The overwhelming size of the conference</li><li>The focus on agents and near absence of skills talk </li> <li>The absence of any vendors tackling tech comm solutions  </li><li>Whether conferences are good places to learn</li></ul>"
image: bannerai4thumb2.png
linkedin: https://lnkd.in/p/gjZJgnij
---

* TOC
{:toc}

<figure><a href="https://ai4.io"><img style="max-width: 500px" src="{{site.media}}/bannerai44.jpg" alt="Ai4 conference" /></a><figcaption>Ai4 conference</figcaption></figure>

## Size of the conference

First, I have to comment on the overwhelming size of this conference. To get a sense of how many people this is, think about the last professional sporting event you attended. Remember when the game got out and the walkways were full of thick seas of people moving about? That's what it's like at this conference. The crowds of people were so offputting to one of my colleagues, he had to drive to the adjacent city of Paradise just to get some breathing space.

Anyway, I've never been to this large of a conference. I'm used to attending technical writing conferences, which are much, much smaller. For example, Write the Docs has around \~600 attendees. Even the STC conferences in their prime only had around \~1,000. 

The only place to hold such a massive conference is at a convention center. The Venetian is one such venue, combining a convention center (and its 20+ ballrooms) with a hotel. You basically live inside this convention center for a few days. We did venture out to Caesar's Palace to eat at their Bacchanal Buffet one evening, but given the heat in Las Vegas in August (it was over 105 degrees in the evening alone), we taxi'd over. BTW, the buffet there and our team dinner were the highlight of our trip. The buffet had endless varieties of food, cuisines, desserts, and drinks.

## Skills were missing from the agent-heavy discourse

The Ai4 conference itself mostly consisted of short, industry-focused sessions. Agents were the dominant theme, and it baffled me that skills (agentskills.io) were almost not mentioned at all. Near the end of the conference, I started to form a theory why almost no one mentioned skills. Some of the sessions I attended involved vendors. Some sessions were naturally designed to funnel you to their company as the solution. These sessions weren't flagged as vendor sessions; thus it was always disappointing to realize that the speaker I'd been listening to for 15 minutes was leading up to pitch his or her company's services. (For example, “Everyone Has AI. Why Are Some Companies Winning?” led to a pitch for SorenAI.) This happened about 5-6 times from the 20 or so sessions I attended.

Many of the companies in the exhibitor booths want to sell you enterprise agents. They hope to come to your business, build an agent for a specific use case based on your company's data, apply any guardrails and governance for the agent, and so on. In fact, governance, risk and compliance was one of the primary themes, based on research someone did [coding all 700 sessions](https://www.linkedin.com/pulse/i-coded-all-700-session-topics-ai4-2026-here-what-results-brian-ray-rbifc/). The question I kept asking myself is why not use a general purpose agent coupled with a SKILL.md for a specific use case, such as a documentation scenario like automating release notes.

<figure><a href="https://enaible.aible.com/aible-customers"><img src="{{site.media}}/ai4_agents_lit4.png" alt="Literature from the conference about agents" /></a><figcaption>Literature from the conference about agents</figcaption></figure>

The reason? My perspective might be a bit bold and naive/uninformed, but I think the SKILLs \+ general purpose agent approach was unrepresented because it doesn't fit the vendor model. You don't need a vendor if you're an employee at a company building skill files and feeding these skills to general purpose agents (Claude, Gemini, ChatGPT) that can access a monorepo and tools. As a vendor, it's more profitable to fine tune a model and build a custom agent, then add governance.

This observation might be a little unfair. SKILLs are somewhat new, and many conference pitches were probably submitted long ago. Plus, a trade show conference naturally attracts vendors, who bring their own services and solutions to conversations, without intentionally trying to avoid more open solutions.

There was a parallel theme that surfaced in one of the keynotes (particularly the main one with Geoff Hinton, Fei Fei Li, and Andrew Ng): open source models versus proprietary models, and which model is preferable. Because the skills specification follows an open specification standard (agentskills.io), it also falls within the open source / non-proprietary genre. A SKILL file is entirely transportable from one platform to another. You can run the same skill using Gemini, Claude, or ChatGPT. There's no vendor lock-in, no way to keep people on your skills platform. 

<figure><img src="{{site.media}}/ai4_keynote_debates4.png" alt="Keynote debates with Geoffrey Hinton, Fei Fei Li, and Andrew Ng" /><figcaption>Keynote debates with Geoffrey Hinton, Fei Fei Li, and Andrew Ng</figcaption></figure>

The only vendor I've found that's selling Skills-related services is [Agentman](https://agentman.ai/) — it builds on the spec and allows you to create and add skills. As far as I can tell, the skills themselves aren't locked in at all. Specific agents, on the other hand, have much more lock-in with proprietary platforms/infrastructure, with services to monitor and check your agents.

## An absence of AI documentation solutions

I was also puzzled by another absence: Among 400 vendors/exhibitors, not a single vendor had a solution for documentation. I asked one vendor that built agents why not, and they paused and looked surprised, as they had clearly not considered this use case previously. The vendor said that their technical writer (I was excited that they knew their tech writer!) mostly used in-house tools and SKILLs and maybe didn't need the more robust, specialized agents. She wasn't entirely sure.

<figure><img src="{{site.media}}/ai4_conf_vendors4.jpg" alt="No vendors providing automated tech comm solutions" /><figcaption>No vendors providing automated tech comm solutions</figcaption></figure>

I confess I was glad to see an absence of AI/agentic solutions for technical documentation. I mean, at the industry's largest AI conference, no one pitched any solution to tackle this problem? Doesn't documentation (having a source of truth) play a significant role in an agent's accuracy and factuality? An LLM that doesn't have access or training on accurate documentation will hallucinate more regularly.

I interpret the absence of agentic solutions for documentation a few ways:

* Maybe documentation isn't a problem that automated solutions can solve.  
* Maybe the trade show's key audience doesn't involve tech writing / documentation people. I didn't meet a single tech writer there besides my colleagues, so no vendors wasted their time trying to reach a non-existent audience. There are plenty of AI vendors for docs, such as Mintlify, Promptless, Paligo, and many more (existing companies often now include AI integrations and features). But these companies didn't make an appearance at Ai4.  
* Documentation (tech comm) is too small/niche to act as a target for AI companies. When people start calculating the number of reachable tech writers for their products, they often realize that this is a niche market with limited profitability. I still remember how Mike Hamilton from Madcap Flare would travel from STC chapter to chapter, reaching sometimes only a dozen people per event.  
* Perhaps some of the agentic solutions are general enough that they could be trained to solve documentation scenarios. That might be why a company pitches agents in general rather than focusing their pitch on a specific *application* of the agents. Agents might be trainable for a wide variety of situations, including writing documentation.

I highly doubt that last scenario. Only basic documentation tasks like fixing grammar, links, or formatting is something that can be fully automated. Anything complex will likely require a human in the loop, which might put the scenario outside the target agent space. This returns us back to the problem I raised earlier about agents versus skills. Would you trust an agent to automatically write docs based on an incoming request? Such a scenario would be impractical. There are about a dozen reasons why doc issues aren't actionable as soon as they're filed. For example:

- The requests often precede the availability of the feature.  
- The requests are vague and don't explain many ambiguous points about the feature.  
- The request requires much more context than is present in the doc issue alone.   
- The requests don't separate out large projects from tiny tasks.  
- Some requests need more support and approval from specific people before documentation should be written.

If an agent were to automatically start developing content based on anything that came in, presenting me with a changelist to review, it might just waste a lot of my time. 

I'm not saying that some automation routines aren't possible. But here's the problem: the only doc issues that I would trust with an automated process are so basic (fixing grammar/spelling issues, broken links, syntax issues, etc.) that they aren't anything that would move the needle. I could also prompt a skill to run against an entire directory with the same instructions. In fact, you can run skills based on certain triggers and events as well, depending on your platform and infrastructure. 

To make a long story short, documentation is far from a solved problem that an automated agent, trained on your company's data, can handle without steering and review from a human in the loop.

Regardless of their relevance, browsing the number of AI vendors/exhibitors was intimidating. I don't think 75% of the companies existed 3 years ago. The number of startups and new companies — all with slick looking marketing materials, names, demos, etc. — that seemingly sprouted up out of nowhere suggests high risks for the larger behemoth companies. These small companies can move so much faster, code up a solution outside of any bureaucracy, and launch a product in a few months. If this pace keeps up, I don't know how larger companies will be able to stay in the game. I'm afraid to go to a tech writing conference and see a similar phenomenon with AI tool vendors, because I think for C Suites, they will easily swallow the idea that documentation can be automated.

{% include ads.html %}

## Would I recommend the conference?

Overall, as a tech writer I wouldn't go to this conference again because it didn't align enough with my tech comm interests. Our team went because we could receive company funding to attend an AI-specific conference, but the sessions at these conferences don't target a tech writer's world nearly enough to be worthwhile. They're still interesting and many are relevant in the broader sense, for sure. Many sessions clearly have experts and solid methodology. I'm just saying it's not all that relevant to the tech writer's world and the development of documentation. 

Additionally, the conference is simply too large to have any meaningful connections and interactions with people you don't know. It feels like a sea of people (like a big school of minnows) swimming furiously from one pool/ballroom to the next. Great to experience this one time, but I don't need to repeat.

## Do you go to conferences to learn?

One last comment. I think many people go to conferences with the idea of “learning” something. However, the idea that people will learn how to use AI effectively at such a conference seems unrealistic. I chose to attend one special roundtable discussion that required an RSVP to attend, which limited the attendance to about 30 people. One person mentioned that they're not using AI at all but are expected to be using it all day long. I thought, if that's your purpose, you aren't going to walk away from this conference with any actual practical strategies. If you really want to learn AI techniques and strategies, you probably want more of a workshop-style event. 

Sometimes I think I could learn more on my own than at a conference. I don't respond well to sitting down and getting a firehose of information blasted at me for 3 days straight. That's not really how people learn. Imagine trying to teach someone how to drive by lecturing at them for 3 days straight. Learning requires practice, experimentation, self-directed curiosity, discussions, feedback, and more. You need space and time between absorbing new info so you can try it out, experiment, and do some learning activities. Just sitting and listening doesn't work as a way to learn. This is why conferences seem to miss the mark. They pitch themselves as learning events but this is not how people learn. 

What conferences do, however, is give you big ideas to think about, like the ones I've been playing around with in this post: skills versus agents, open sources versus proprietary, tech comm solutions versus industry solutions, and so on. 

Additionally, if you attend the event with your team, it can be morale boosting and purposeful. A team event on its own can lack structure and purpose, but when packaged around an industry event, there's a lot more to discuss and build upon. I had some great conversations with my colleagues that I haven't shared here. For example, during one lunch, I got to peer inside one colleague's mind about the utility and possible fool's errand of being a 10x writer. How do you know the 10x content is actually needed content, that it's solving real problems instead of just being noise? he said.

## Conclusion

With hundreds of sessions, I spent hours each day just deciding which sessions to attend. Seriously, each day had around 200 sessions, and figuring out which to attend was challenging. Fortunately, Ai4 provides digital recordings of the talks about a month after the event. I hope I'll enjoy the digital versions, as I can layer in the talks during my commute and other times. I might change my mind about the relevance of some sessions, and I might discover some sessions to be more relevant than I initially thought (including those I didn't attend). 

However, coming back to the title of the conference: “Ai4.” The intent behind the “4” is to be cross-domain, so it's *AI for ___________* (you fill in the blank - AI for software engineers, AI for founders, AI for cybersecurity professionals, etc.). Is it also “AI for technical writers?” Not so much.



