---
title: "A three-phase path to reinventing the tech comm career"
permalink: /blog/path-to-reinventing-tech-comm-career
date: 2026-11-15
categories:
- ai
keywords: tech comm career, role reinvention, agent skills, agent readability, share of model, AI chat log analysis, Gemini 3.8 Flash, Gemini 4 Argon, Gemini 4 Carbon, MCP servers, RAG, product skills, developer experience, documentation strategy, technical writing
rebrandly: https://idbwrtng.com/path-to-reinventing-tech-comm-career
description: "As agent skills, tools, and frontier models have matured this year, I've been able to compress five days of routine documentation work into one. However, simply doing the traditional tech writer job faster leads to an isolated dead end of covering more and more teams alone. Instead, I argue for a three-phase path to reinventing the tech writer role: use agent skills to compress routine workloads, spend the freed-up time optimizing docs for agent readability, and use agent friction logs to help shape the product itself and win share of model."
image: reinventing-tech-comm-alien-agent-docs-thumb.jpg
---

* TOC
{:toc}

Recently, something pretty interesting has happened at work. As I started out the year, I had a goal of [developing agent skills to tackle repeatable workflows, mainly release notes writing](/blog/internal-skills-release-docs). If I could develop agent skills to help automate the work, it would free up my bandwidth in compounding ways, since repeatable skills routinely cut into your time (rather than one-off tasks). 

## How skills, tools, and models came together

Eight months into the year, I noticed a few changes. First, the agent skills I developed started to really mature, and the early iterations I went through became more of a past detail. Each iteration through the skill didn't yield a bunch of improvements and fixes. 

Some other things happened too. Our tools seemed to settle on a model that worked. Previously, we kept evolving tools from one thing to another, as it seemed like different teams were releasing different tools every few months. We'd skip from one to another so frequently that it was a bit of a joke. If you didn't like the current tools, you could wait until next month and they'd change. But then the tool teams nailed it, and they stopped switching things around so much. The tools matured and became highly functional.

Additionally, the models started to get really good. Google seemed to stagnate in model development for a few months. Then after some releases, the models got really capable. I remember that starting with [Gemini 3.8 Flash](https://blog.google/innovation-and-ai/models-and-research/gemini-models/3-8-flash-and-3-8-flash-cyber/), the models leveled up in capability. Then we got access to Claude, and levels increased even further. Now with [Gemini 4 Argon](https://blog.google/innovation-and-ai/models-and-research/gemini-models/introducing-gemini-4-argon/) and [Carbon](https://blog.google/innovation-and-ai/models-and-research/gemini-models/introducing-gemini-4-carbon/), the models are so ridiculously capable it's scary. The high-performing frontier model combined with a mature agent harness in our IDE has made accomplishing work much easier. 

If that weren't enough, tools became much more connected. I can search our issue tracking system directly from our IDE-integrated AI sidepane, as well as all changelists and code. The code monolith, unified bug and changelist systems, plus extensions and integrations with Google Workspace (Docs, Sheets, Gmail) and other systems have made the tools extremely capable of discovering the needed contexts for problem solving.

All of this has come together to make my agent skills so much more capable. What used to take days is now something I run in a semi-automated skill. For example, the release notes skills for some of my products used to have 12 separate steps. After each step, I instructed the skill to stop so I could verify its output before continuing on. Now I've removed the frequent stops and just have AI complete all 12 steps in one go. 

I've built [many other skills that run on automated loops](/blog/building-machines-skills-for-tech-comm-workflows). For example, I have a skill that looks at all code commits engineers are staging for the directories I support. The sidecar skill examines their changes and suggests any edits for language and clarity. My inbox is a stream of changelist updates, and I open them up, look at the drafted replies, and 9 times out of 10 hit accept. This "shift-left" strategy helps me catch errors before they become baked into the reference documentation.

## Compressing five days of work into one

<figure><img style="max-width: 650px" src="{{site.media}}/reinventing-tech-comm-five-days-to-one.jpg" alt="Compressing five days of documentation work into one day using agent skills" /><figcaption>Agent skills compress five days of recurring documentation workloads into one, freeing up the rest of the week for higher-value work.</figcaption></figure>

A couple of months ago, I was pulled into other work for my team. For the past several years, I've been on an island working in the automotive division, which has all docs behind access controls configured for partners. This has excluded me from many AI integrations and infrastructure, making me feel like my docs are pre-AI. Due to some resource shifts, I ended up being pulled into the Google Maps Platform docs, in charge of the AI documentation platform strategy. All of a sudden, I was working on both GMP docs and automotive docs at the same time.

I thought I'd be stretched thin, but in reality, I realized that I could do all the automotive work that would normally take 5 days in just 1 day. Beyond the many agent skills I'd developed to automate workflows, I did cut corners a bit more. I stopped expanding my knowledge of the automotive domains, I had AI respond to and integrate changelist comments from reviewers, and I paused any innovations or restructurings in the docs. In other words, I adopted more of a keep-the-lights-on (KTLO) approach with the docs, while still producing docs for all releases (including new features, updates, bug fixes, etc.). Right now, I'm figuring out how to optimize docs for agents on the GMP docs, and I plan to bring that same knowledge back to the automotive docs once we can incorporate more AI infrastructure there.

{% include ads.html %}

## Carving out a niche in agent readability

As I focused on the Google Maps Platform docs, I started carving out a new niche: agent readability. I threw myself headlong into implementing best practices for agent accessibility. You saw this in some of my recent posts focusing on various topics, like [avoiding JS click-to-load content](/blog/make-documentation-agent-friendly), [communicating semantics in styling](/blog/identify-semantics-in-styling-agents), [verifying that the content in Markdown mirrors matches the HTML view](/blog/identify-semantics-in-styling-agents#comparing-the-human-view-and-the-agent-view), [fixing pseudo headings for chunking](/blog/chunking-content-for-mcp-ingestion-agent-readability), [splitting pages that extend past 50k characters](/blog/make-documentation-agent-friendly#long-pages-and-truncation), and [more](/blog/agent-readability-deprecated-content-page-notes). 

I also incorporated a [continuous agent usability lab by analyzing log files](/blog/improvement-feedback-loop-docs) to identify agent frictions. Where were agents running into issues? How do agents behave? Do they read our product skills (or just download them)? How frequently do our product skills trigger? What's our pipeline for generating those skills, and how do we influence their inputs? Are agents making calls to our RAG via MCP? What are they retrieving, and what does that look like? This sort of thing.

Interestingly, although I didn't plan it this way, I carved out my own niche in this new space. I wouldn't dive into any specific documentation product domain (such as environment APIs, JS APIs, 3D APIs, etc.). Instead, I found a niche with agent readability. I want to help our agents succeed on the first try, without having to struggle in endless loops, implement poor coding practices (e.g., hardcoded API keys, or malformed code), etc. 

I've realized that focusing on agent readability is a new, emerging focus within tech comm. This is essentially what [Dachary Carey's blog](https://dacharycarey.com) is about. I've been leading up to a larger epiphany that has come into focus. I want to focus 2027 on designing docs for agents. This is an area so few technical writers (and those outside of tech comm) understand. Documentation is powering so many of these agent interactions, from feeding [product skills](/ai/product-skills.html) to serving up RAG content (chunked) through MCP. 

## Writing for agents, not just working faster

<figure><img style="max-width: 650px" src="{{site.media}}/reinventing-tech-comm-alien-agent-docs.jpg" alt="Designing structured documentation for AI agents as alien intelligences" /><figcaption>Human readers are becoming the minority as AI agents become the primary consumers of technical documentation.</figcaption></figure>

Since the beginning, tech comm has focused on writing for an audience. We've gone through human-centered design and task-centered design patterns for tech comm, shaping content around the user's business goals and reading patterns. For example, Mark Baker's *Every Page Is Page One* recommends structuring docs around the idea that readers can define their starting point anywhere in your docs, so your content should be modular, with many links to related articles as well. This is all structured around human readers.

If we're shaping design decisions around an audience, we have to recognize that human readers are now becoming the minority in terms of readers. Agents are outnumbering humans in traffic online. (For supporting data, see Cloudflare's [The Internet has a second audience](https://blog.cloudflare.com/agentic-web), Mintlify's [2026 State of Knowledge highlights](https://www.mintlify.com/blog/the-state-of-knowledge-2026-highlights), Fern's [State of Docs](https://buildwithfern.com/post/state-of-docs), and my [podcast with Ethan Palm on agent traffic](/blog/podcast-ethan-palm-agent-traffic).) Granted, humans are often directing those agents with specific tasks and information retrieval goals, but the agent is still doing the reading and analyzing of content.

The next chapter of tech comm will be this: designing docs for agents. This is how we survive the AI transformation. If I can do 5 days of normal documentation work in 1 day due to the agent skills (combined with powerful models and tools), then the existing role of tech comm will need to expand in other ways. I thought that maybe engineering would accelerate in parallel and push out 5X as much code to document, but that's not happening. Tech writing seems to be able to scale much faster than engineering code (which requires testing, validation, multi-stage review, etc.). I mean, there's a whole software development lifecycle for code, but you can write and publish docs for a new feature in an hour.

If we continue just performing our same role but more efficiently, there's only one end for the tech writer: he or she becomes more and more solitary, expanding further across product areas. You might support 10 teams now, and in the future, it'll be 15, and then 20, and before you know it, tech writers will cover vast swaths of documentation. Tech writers will be isolated lone wolves, interfacing virtually to support releases from teams they've never even met. Much of their work will involve reviewing and accepting the docs that engineering teams write. That's a sad end to the tech writer story.

I propose a shift in direction. From my vantage point, it's the only logical shift to the profession. We are no longer writing just for humans. We're now writing for agents. We need to become experts in agent behavior, in understanding how agents find, discover, retrieve, and consume information, from docs to product skills to other sources. 

One of the most interesting shifts will come from [log analysis of agent activities](/blog/ai-strategy-to-fix-docs-based-logs). If you can get access to log data about how agents are using your product (even if you have to manually recreate the agent journeys from your favorite IDE or platform), those logs will point to frictions and other issues that will lead to nearly endless bug queues.

## Winning share of model

It doesn't stop there. Optimizing information sources for agents is only phase 2. There's actually a phase that comes after it. Let me explain.

As soon as you start digging into agent logs, you'll find something startling: many times, agents don't use your tools or platform, even when they're tasked with a scenario that could include them. For example, when someone asks an agent to create a store locator map as part of their website, what mapping platform does the agent choose? Guess what? Many times, it's not your company's product. Therefore, the next phase of tech comm will be to help see that agents choose your product. This is called winning share of model. 

For another scenario, suppose you work for ACME, a company that sells rabbit traps. ACME is one of many companies selling rabbit traps. Wile E. Coyote opens up his coding editor and asks Claude, Gemini, or ChatGPT to build a custom rabbit trap to be printed on a 3D printer. To ACME's horror, they find that Claude builds plans using a free competitor to ACME called ZIGGY instead. Your job now becomes this: win share of model for these sessions. In other words, get the model to recommend ACME instead of ZIGGY.

At first, this seems like it might involve black-hat SEO techniques to trick the model into recommending ACME. Think about all the black-hat techniques SEO strategists have implemented to boost Google rankings. Keyword stuffing, link schemes, paid keyword-rich posts (with no advertiser flags), content farms, multiple domains referring to each other, backlink replacements, and so on. 

That's not the game to play. We're not working with a static algorithm. These agents are much more intelligent, remember. They're recommending a product not because someone used [concept injection](/blog/ai-book-club-co-existence-mollick) to suggest the product to their thinking/conversations. They're recommending a product because it's likely the right solution for the many variables the user presents. They're also recommending the product based on vast troves of training data, which will be very hard to change.

## Earning share of model by shaping the product

<figure><img style="max-width: 650px" src="{{site.media}}/reinventing-tech-comm-share-of-model.jpg" alt="Improving the product based on agent friction logs to win share of model" /><figcaption>Winning share of model means fixing product frictions surfaced in agent logs so models choose your product on its merits.</figcaption></figure>

Perhaps the only way we win the model is by legitimately earning the win: by improving our products such that the model agrees that they're the most usable, relevant, superior choice across the market. Here is where the tech writer digs into logs and other agent-brain-decision-making turns in order to understand product frictions and roadblocks. Then the tech writer files bugs to product teams guiding them on how to shape their product for agent selection. 

Some of the product shaping might mean creating free tiers for different audiences. It could mean simplifying the process for provisioning API keys. It could mean adding more features like needed JS libraries that address product gaps. 

In fact, one agent friction I ran into explicitly identified a gap with a JS API, and as I filed the bug with a JS SME, he said it would be easy to add the feature to the SDK. I took up the challenge and had AI add it, and it's now a feature in the product. I suspect this kind of product shaping and evolution will help tech writers develop a new kind of value within an organization. I'm not completely sure how receptive PMs will be, and product roadmaps move much slower than docs, though teams generally welcome feedback and tend to listen once they hear the same friction enough times.

## Conclusion

In conclusion, I've argued for a three-phase approach to role reinvention:

1. Develop agent skills to compress your current documentation workloads into one day instead of five.
2. Use the other four days to focus on improving agent readability.
3. Use the same insight into agent friction to improve your product, thereby winning share of model.

What do you think? Do you agree with these directions? These themes are what you'll see me explore heavily now and into 2027.