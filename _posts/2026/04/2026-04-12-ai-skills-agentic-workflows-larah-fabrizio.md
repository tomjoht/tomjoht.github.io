---
title: "Podcast: How valuable are agent skills? Conversation with Larah Vasquez and Fabrizio Ferri-Benedetti"
permalink: /blog/ai-skills-agentic-workflows-larah-fabrizio
date: 2026-04-12
categories:
- ai
- podcasts
keywords: Larah Vasquez, Fabrizio Ferri-Benedetti, AI skills, agentic engineering, Claude Code, Tailscale, local LLMs, Qwen, technical writing
rebrandly: https://idbwrtng.com/ai-skills-agentic-workflows-larah-fabrizio
description: "In this podcast, I chat with <a href='https://mcnuggies.dev'>Larah Vasquez</a> and <a href='https://passo.uno/'>Fabrizio Ferri-Benedetti</a> about using skills to extend AI capabilities, the future of agentic engineering, local models like Qwen and Gemma, and whether the tech writer role is shifting into automation architecture. We get into the memory problem in LLMs (and why some of us actually prefer the no memory to extended memory), the progression from prompt engineering to context engineering to compound engineering to orchestrating whole agent systems, and how skills are quietly forcing engineers to write down knowledge they'd never documented before."
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/larahfabrizioaiapril2026.mp3
podcast_file_size: 62.9
podcast_duration: "01:05:03"
podcast_length: 62442309 
image: podcastthumblarahfabapril2026thumb.png
---

* TOC
{:toc}

## Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/L18_7I2A8h4" title="How valuable are agent skills? Conversation with Larah Vasquez and Fabrizio Ferri-Benedetti" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Audio-only version

{% include audio.html %}

## Resources

* [mcnuggies - Home](https://mcnuggies.dev/) (Larah Vasquez &mdash; guest website)
* [mcnuggies - Blog](https://mcnuggies.dev/blog-feed) (Larah Vasquez &mdash; guest blog)
* [Passo.uno :: Technical Writing, AI & Docs Engineering :: Fabrizio Ferri-Benedetti](https://passo.uno) (Fabrizio Ferri-Benedetti &mdash; guest website)
* [GitHub - armstrongl/code-docs: An LLM and human friendly docs framework for code repositories · GitHub](https://github.com/armstrongl/code-docs) (Larah Vasquez)
* [Overview - Agent Skills](https://agentskills.io/home) (Agent Skills spec)
* [Extend Claude with skills - Claude Code Docs](https://code.claude.com/docs/en/skills) (Anthropic)
* [Gemma &mdash; Google DeepMind](https://deepmind.google/models/gemma/) (Open Source models from Google Deep Mind)
* [Vale: Your style, our editor](https://vale.sh/) (Vale linter)
* [Larah Vasquez on LinkedIn](https://www.linkedin.com/in/larahvasquez)

## Topics covered in this podcast

Here's a list of topics we talked about. (Note: AI-generated.)

- **Local LLMs and open models** &mdash; Running local LLMs like Alibaba's Qwen and Google's Gemma is becoming more vital to avoid API reliance, downtime, and cost — especially after Anthropic narrowed third-party API access and left OpenClaw users scrambling for alternatives.
- **AI tooling strategies** &mdash; Organizations are assessing different tiers of AI tools for specific tasks to optimize performance, token usage, and compute — for example, not wasting Opus on a typo check.
- **Automating style guides** &mdash; Generative AI can reverse-engineer documentation assets, such as automatically generating Vale rules from an existing style guide site instead of hand-authoring them.
- **Why AI output starts bad by default** &mdash; Generic AI writing improves substantially only when grounded in high-quality signals, templates, and constraints authored by humans — the case for keeping writers in the loop.
- **Model personality vs. memory** &mdash; There are real trade-offs between models that remember everything and models that come fresh to each session; sometimes you want the memory, but often you want no memory at all.
- **The memory problem** &mdash; Long-term memory in LLMs is still unsolved — memory.md files get corrupted, and agents end up rereading their own sticky notes like the protagonist of *Memento*.
- **Compound engineering** &mdash; A brainstorm → plan → work → compound loop where agents write lessons learned back to disk to improve over time — powerful, but extremely token-hungry.
- **Token constraints and efficiency** &mdash; Running AI workflows demands careful context management; unchecked configurations pollute the context window and blow through tokens fast.
- **Skills and MCP servers together** &mdash; Thin skills that call out to an MCP server for doc content tend to outperform heavy skills with everything inlined, and they're easier to keep current because the source of truth stays in the docs.
- **Subagents and worktrees** &mdash; Running skills in isolated subagents or Git worktrees lets you parallelize work and save the main context window for orchestration.
- **Agentic engineering** &mdash; The progression from prompt engineering to context engineering to compound engineering to orchestrating whole systems of specialized agents working together.
- **Skills as living artifacts** &mdash; Good skills get better over time by asking the agent what snagged after each run and amending the instructions — a controllable, versioned alternative to opaque model memory.
- **Skills redefining tech writing** &mdash; Building skills forces product teams to write down rigorous, step-by-step knowledge they'd previously kept in their heads.
- **Do more, or do the same with less?** &mdash; The honest question about AI productivity gains: shrink the team to buy more GPUs, or keep the team and finally tackle the infinite docs backlog.
- **Elevating to automation architect** &mdash; The core of tech writing is shifting from authoring prose to orchestrating systems; writers who can script, configure, and curate agent workflows are becoming more indispensable, not less.

{% include ads.html %}

## Narrative essay version of the conversation

*If the podcast were an article, this is what it would read like. (Note: AI-generated.)*

*This version was generated with Claude 4.6 Opus extended*:

### The Tech Writer as Architect

**Why "skills" are quietly rewiring what documentation is — and who gets to do it**

The most interesting thing happening in technical writing right now isn't a new authoring tool or a better static site generator. It's the quiet, strange fact that engineers everywhere are suddenly being forced to write documentation they never would have written before — not for humans, but for the language models sitting next to them in the editor. And the people who know how to shape that writing well are, predictably, the same people the industry has spent a decade telling to be worried about their jobs.

The backdrop is a field moving fast enough to feel untethered. Anthropic recently narrowed third-party API access, stranding a wave of users of a popular open-source Claude wrapper and sending them scrambling toward local models running on their own hardware — Qwen on a MacBook, Gemma on a Pixel, quantized builds traded like vintages. Gas prices and energy bills now feel quietly linked to whether the next generation of assistants will even be affordable to run at scale. Apple, conspicuous in its silence, is probably playing a longer game: AI shipped natively on every device, accessed through the SDK, subsidy-proof. Meanwhile, the vocabulary of the work keeps molting. Prompt engineering gave way to context engineering, which gave way to compound engineering, which is now giving way to agentic engineering — orchestrating whole systems of specialized agents, each with its own job.

Inside this churn sits the latest object of fascination: *skills*. A skill is a small, structured package of instructions that an AI agent loads on demand — a way of teaching a model how to do a specific thing in your specific environment without bloating its context window. One practitioner has built close to two hundred of them for a single docs team: skills for authoring, for linting, for generating alt text, for detecting drift between code and documentation, for impersonating a confused user testing a tutorial. Another has open-sourced skills that teach developers how to use the product itself, quietly repackaging the documentation as something an agent can act on rather than something a human has to read.

The obvious objection is that this is just documentation with extra steps — the same content, reformatted, with front matter. But something subtler is happening. Skills that stay thin and call out to an MCP server for the actual doc content tend to outperform skills that try to cram everything in, and they're easier to keep fresh because the source of truth stays where it always was. That small architectural choice has a large implication: the documentation itself becomes the substrate that every agent in the company runs on. And when engineers start building skills, they discover they have to write down things they'd always kept in their heads. The skill is a forcing function. It turns tacit knowledge into artifact. Tech writers have been begging for that for twenty years.

Which brings up the discomfort. If a tech writer's skill can teach anyone — a PM, an engineer, an AI agent — how to write a release note in the house style, isn't the writer automating themselves out of a role? The honest answer seems to be: only if you wanted the old role. The work is shifting upward, toward architecture and curation. Someone has to decide which skills exist, how they compose, when to use the elephant that remembers everything and when to use the goldfish that comes to every problem fresh. Someone has to notice that a skill is silently degrading model performance because it was written badly. Someone has to keep the house style coherent across two hundred agents that all claim to be following it. That someone looks a lot like a senior technical writer with new tools.

The tension worth sitting with is memory. Long-term memory in these systems is still broken — corrupted context files, Memento-style sticky notes the model reads every morning and half-believes. Some writers want memory badly; others, having watched a model bias itself into defending yesterday's wrong answer, prefer the amnesia. Skills are partly an answer to that: memory you curate deliberately, in markdown, versioned and reviewed, rather than memory the model builds on its own while you weren't looking. Whether that's a stable equilibrium or a transitional hack is genuinely unclear. The likely next step is bigger packages — skills plus a fine-tuned model plus long-term memory plus a personality, bundled as a branded agent you hand to a new hire on day one.

The quiet irony is that every writer who has gone deep on this is busier than ever. Efficiency gains in this field don't shrink the queue; they expand the definition of what's worth doing. The backlog was always infinite. What changes is whether you spend the next decade typing release notes or designing the systems that write them — and whether, when someone asks what a technical writer does, the honest answer starts to sound a lot more like *architect*.

---

*This version was generated with Gemini 3.1 (high):*

**Orchestrating the Machine: The Shift from Writer to Automation Architect**

The defining tension of the AI era might just be our entitlement to seamless performance. We’ve grown accustomed to having world-class intelligence at our fingertips, and when models lag, or API providers quietly shift their offerings mid-sentence, it breaks an essential illusion. It feels less like an intermittent service disruption and more like an assistant abruptly leaving the room. This volatility is shifting how organizations and individuals approach their toolkits, driving a pronounced pivot toward local, specialized models and highly orchestrated engineering patterns.

At the center of this shift is the realization that broad, unfettered AI is computationally expensive, often shallow, and shockingly fast at losing its thread of logic. Unrestrained generative AI tends to explore a vast breadth of disjointed ideas without truly anchoring itself to systemic depth. The most compelling solution isn't necessarily a larger model; instead, it is found in injecting high-quality human signals. When grounded in pre-existing expert materials&mdash;whether that’s a dense style guide, comprehensive system architecture, or carefully authored procedural templates&mdash;AI sheds its superficiality and becomes a surgical instrument. The need for a human in the loop has transformed the task into maintaining a precise feedback cycle, ensuring the system remains on tracks that humans purposefully build.

This need for focus has sparked an evolution in how we structure workflows, moving past clunky, monolithic API integration in favor of modular "skills" and agentic frameworks. The Model Context Protocol (MCP) served as a powerful unifying bridge, acting as an API for LLMs. But when evaluating raw token context, feeding massive libraries through an MCP server can max out limits in seconds. Enter skills: lightweight, token-efficient instruction sets that function as automated blueprints. By distilling workflows&mdash;such as automatically extracting Vale rules from live documents or running continuous drift detection algorithms between code and documentation&mdash;organizations can deploy highly optimized sub-agents to tackle discreet problems independently, avoiding bloated context windows completely.

But with modular efficiency comes a profound shift in organizational responsibility and individual contribution boundaries. It raises an uncomfortable yet vital question: if anyone can deploy a robust AI skill, do we risk crowdsourcing expert tasks at the cost of the experts themselves? The reality on the ground suggests something entirely different. Developing, deploying, and refining these automated workflows is creating new, more sophisticated forms of documentation that never previously existed. Those who step into this gap are not finding themselves obsolete; they are stepping up into the roles of system-wide curators and automation architects. 

The profession that was built around decoding dense backend systems into readable text is evolving out of necessity. As we move away from simple prompt engineering into complex compound and agentic engineering, the true value lies not in writing the output, but in writing the system itself. Technical communicators and engineers alike are learning to wield an orchestration layer, discovering that adapting swiftly to orchestrate machine workloads keeps them at the critical, irreplaceable center of the organization.

<figure><a href="https://youtu.be/L18_7I2A8h4"><img src="{{site.media}}/podcastthumblarahfabapril2026.png" alt="Will AI skills and agentic workflows replace tech writers? A conversation with Larah Vasquez and Fabrizio Ferri-Benedetti" /></a><figcaption>How valuable are agent skills? Conversation with Larah Vasquez and Fabrizio Ferri-Benedetti</figcaption></figure>

## Transcript

The following is a near verbatim transcript of the podcast.

**Tom** (00:01) <br>
Welcome to another podcast with Fabrizio Ferri Benedetti, me, Tom Johnson, and our guest today, Larah Vasquez. And we are going to be talking as always about the intersection of documentation and AI and all the kind of trends, issues, challenges we're facing as we grapple with AI and tech writing, documentation, content strategy. info architecture, whatever you want to call what we do. before we jump into things, let me just introduce, Larah a little bit. It's like Sarah with an L so L A R A H. It's a cool name. It's unique. I like it. And, she works out of Austin for Tailscale and is a frequent, participant on the Slack.

**Tom** (01:00) <br>
Channel for write the docs in the AI sub channel and others. So, you may have run across her posts. She's, she's active on GitHub, really insightful, doing interesting stuff, has a lot of knowledge. And we thought, this would be a great person to get on our podcast. And Fabrizio, you know, Fabrizio from Passo Uno, that's his website, Passo Uno, step one.

**Tom** (01:28) <br>
And he is based in Spain and working for Elastic. I'm out of Seattle, work at Google. just as a general disclaimer, our opinions are our own. They're not our company's. I just mentioned that to give us some context. What we talk about is all just our own perspectives on docs. So welcome, Larah and Fabrizio.

**Tom** (01:55) <br>
Do you have any just welcome info for people that you want to say? Any news, any excitement over in your areas of the world? It's okay.

**Fabrizio** (02:09) <br>
Well, I I'm just happy overall that we still have a planet, you know, given recent news. that's, you know, quite frankly, that's quite reassuring. Yeah, I don't know, that life is good. Yeah.

**Larah** (02:16) <br>
You

**Tom** (02:25) <br>
What are the gas prices like in Spain? What's gas prices like in what are gas prices like in Spain right now?

**Larah** (02:26) <br>
Interesting times.

**Fabrizio** (02:29) <br>
Sorry. I don't know, they're actually quite okay for now, to the point that French people are crossing the border just to fill their tanks. So that's the situation. The French are filling their cars with gas from Italy and Spain. So that's the thing with borders. Interesting times indeed.

**Tom** (02:52) <br>
Hmm. Wow. Well, it costs here in Seattle around 575, 599 a gallon. I don't know how much that is in liters. I'm sorry to, I have no idea how that converts, but what is it in us? Yeah. Is that, is that about

**Fabrizio** (03:13) <br>
Yeah, I know, that's...

**Larah** (03:17) <br>
It's hovering around $4 now. So not nearly as bad as in Seattle, but we are an oil producing state, so that might have something to do with it.

**Tom** (03:26) <br>
I was filling up my...

**Fabrizio** (03:27) <br>
The good thing

**Larah** (03:27) <br>
We

**Fabrizio** (03:27) <br>
About

**Larah** (03:27) <br>
Have it E.B. so.

**Fabrizio** (03:28) <br>
Spain is that we invested a lot, well, we, I the country, invested a lot in renewable energy. And some days, like 100 % of the production is entirely renewable. I think that the closest in the US is California in terms of renewable energy production. And so that's good. That really put us in a good spot. But I do wonder if, you know, with the rising energy prices, how's that going to affect AI growth? Because it's quite energy intensive. So we'll see.

**Tom** (04:07) <br>
Well, when I was f-

**Larah** (04:08) <br>
Really hoping that it's going to push us, I was gonna say, I'm really hoping that it's gonna push us to be more innovative about adopting renewable energy resources faster, just as there's demand for more use of AI, because right now fossil fuels and non-renewable energy just isn't cutting it.

**Tom** (04:11) <br>
No, no, go ahead, go ahead. It will drive us more towards electric vehicles, perhaps, and ride into the hands of China because their electric vehicles are like a third the price. What's that like it in Spain? Sorry. I know this is a little bit of a tangent, but Fabrizio in Spain, do you see a lot of Chinese EVs on the road?

**Larah** (04:42) <br>
Probably, yeah.

**Fabrizio** (04:52) <br>
Yeah, yeah, yeah. I think majority of sales in most of Europe right now is from China. So I hope they have like tech riders over there also to write the manuals for the cars. I actually never dug into it, but sometimes I wonder about like what the profession looked like over there. But yeah, the other thing that I've seen is a shift towards like, well, know, open clock. Have you heard about it? Have you used it or tried it?

**Tom** (05:28) <br>
I have not, I've seen that you've been using it.

**Fabrizio** (05:31) <br>
Yeah. Yeah. I set up my own lab at home and apparently, Anthropic essentially closed the pipe for third party usage of their API like that, know, their accounts. And all the most OpenClaw users were relying on, on cloud models on Anthropic. And so now there's like, people is like running crazy. trying to get the lightest, most efficient local model. And I think really that's the future. Having a local LLM running on your machine, also in terms of energy consumption. I don't know if we'll ever get to the point where we put our own solar panels on the balcony just to get that extra energy for our home LLM or whatever. They're getting more efficient. And one of the things I tried this weekend, which I really liked, is the Gemma 4 model that Google released for Android. There's this beta app. so I have this Google Pixel 10 Pro, it's at top of the line right now. And it runs quite smoothly. Of course, the bigger the model, becomes unusable. It's so slow. But it's really great, it's really promising to see where we're heading with the local models. don't know if you, have you played, well of course I would ask you Tom if you have a local model on your Google machine, but I don't know if you can disclose that.

**Tom** (07:12) <br>
I do not. do not. Larah, do you have, have you played with OpenClaw like Fabrizio has?

**Larah** (07:21) <br>
I actually have not played with OpenClaw yet. It's one of the few things that I haven't played around with yet. There's been a lot of negativity around it. And now I saw that I can't use it with my cloud subscription, which is kind of a bummer. Like some opinions on that, but I do get it. But I have played around more with local models, especially since Anthropic cut a lot of their usages back. And also there's been problems with the API downtime.

**Larah** (07:51) <br>
And they've been like better than I thought they would be. Like I was running a Qwen model the other day on my MacBook and it ran really well.

**Fabrizio** (07:56) <br>
Yeah. Hmm. Just a good, yeah.

**Tom** (08:01) <br>
What is a Qwen model? I haven't heard of that.

**Larah** (08:06) <br>
That's Alibaba's AI model. Yeah.

**Fabrizio** (08:13) <br>
And then, you know, it's like, have to be, it's almost like wines, you know, like a fine wine. You have to be like a connoisseur of, oh, this is quantized. Okay. Or this is, you know, 40 billion, 40 million parameters, no, something lighter, please. And yeah, you have like this, you know, this bodega with the vintage. And, but yeah, it's, you know, it's still kind of unexplored for most people, I would say, local models. And, but they're, they're really getting better.

**Larah** (08:23) <br>
You Yeah, I've stayed away from it because I thought they weren't that very good, but I was pretty satisfied.

**Tom** (08:45) <br>
Actually this I have noticed like there, is an increased awareness about which model I'm using and like, if I can't get access to the best model, I get upset. You know, it's like I've become entitled and expect that I just have access to the best model. when I, when they, that, that rug is pulled out from under me. It's like, yeah, I'm really annoyed. yeah.

**Tom** (09:16) <br>
There was kind of a shift in the models we were using internally. it was, yeah, a lot of people were upset about things, but the space is moving so fast. It's like, can be using one model one day and then you open up your editor and like that model is not available. A different model is available and it's just like constant innovation. And, it's not always seeming like it progresses forward. So when it doesn't progress forward, that's when it gets really annoying.

**Fabrizio** (09:22) <br>
Yeah. Yeah, but it's, yeah, but it's, really one of those things that, we are, you know, at work, I'm thinking about like, an AI tooling strategy. So we are thinking about like the tiers, the kind of tools you're going to use and for what. And Larah has done some very interesting work recently there. And the model of course is part of that calculation, you know, like, like what model I'm going to use and for what task. Like it's overkill to use something like Opus for something like typos, for example, and it's also slower. So there's always that calculation there. And also like, where are you going to run the process? Like, is it going to be in a CI pipeline? It's going to be locally as a skill, maybe both. And it could be both, right? And like you can do the local editing and then the same as you compile things in a, when you, when you open up your locally, you know, can do both things, but Larah tell us about you created these repo with tones of interesting ideas for, things that, you know, AI doing automatic things and automation, like tell us like, How did you get there and what did you get from it?

**Larah** (11:01) <br>
So you're talking about like the AI project ideas? Oh, okay. Yeah. So we're having a Hack Week at Tailskill next week. And usually the docs teams, in my experience, don't get to fully participate in Hack Week, like other teams like support. But luckily our new product leaders are awesome and they are basically requiring us to participate in Hack Week, which I think is awesome. But we didn't really have a lot of time to brainstorm and come up with ideas, especially the rest of my team.

**Larah** (11:31) <br>
I wanted to put something together that kind of helped spark ideas for everyone on the team so they could just really get the most out of Hack Week. And so I'm really, really ADHD. And so as I'm working, I'm constantly having ideas be like, oh, let's do this, let's do this, let's do this. And so I just kind of write those things down throughout the day just to kind of get them out of my head so I can focus. And so I actually had AI go through a big, long collection of ideas over the past like,

**Larah** (12:01) <br>
Four or five months and I had it like kind of work with me through them and interview me about what I thought about each one, then do research on tooling, either existing tools that we could use to achieve the result or things that have done something similar that we can maybe adapt. And I just kind of put together a list of, I think it was 71 ideas for other Tailscale employees, but I thought it might be useful for other people. So I kind of generified a lot of them and. together a smaller list and shared it with the Write the Docs community.

**Fabrizio** (12:30) <br>
Yeah. What's the most promising or interesting idea from that list? Like something that you would implement tomorrow.

**Larah** (12:39) <br>
I've actually been giving that a lot of thought because I have to decide today because it starts tomorrow.

**Larah** (12:47) <br>
I should have decided by now, but I haven't. I'm thinking that, well, what may...

**Fabrizio** (12:52) <br>
Or the top three, I don't know.

**Larah** (12:56) <br>
Thinking some of the, so it's more than kind of the calculus that goes into it is what's going to be interesting, what's going to have an impact, what's going to be useful afterwards. And also what can I actually achieve in a week? Cause there's also a lot of security guardrails and things. Yeah. Time too. But I was thinking something along the lines of expanding another repo that I had, it's called a roll bound.

**Fabrizio** (13:06) <br>
Hmm. Hmm. Right? Pressure.

**Larah** (13:23) <br>
So it basically generates a static site from Vale packages and gives you a style guide. So I want to do the reverse of that. And I want to generate Vale rules automatically from our existing style guide sites.

**Fabrizio** (13:23) <br>
Hmm. Nice.

**Larah** (13:41) <br>
So that seems like something that's achievable. It's not gonna have anyone upset on the security team. But there are also a lot of other things that we can do that I think we're gonna be blocked on, like basically creating a map between all of our code bases and our documentation to create a heat map between docs that are updated on a certain frequency versus the code areas that map to those doc areas.

**Larah** (14:07) <br>
Updated more often, like kind of just like a general drift detector.

**Fabrizio** (14:10) <br>
Mm-hmm. Nice.

**Tom** (14:13) <br>
Hey, this point about this style guide automation that you're trying to create reminds me of a point that you brought up earlier in our pre-podcast discussion about why AI-generated content is so poor initially by default. Can you talk more about that maybe? Like, are you trying to overcome kind of the initial output that AI has with better styling rules or is this completely unrelated?

**Larah** (14:49) <br>
Would say it's tangential. A lot of our style guide is handwritten because a lot of it was already existing. But I do try to use AI for almost everything to varying degrees of success. By default, without a lot of prompting and skills and guardrails and things like hooks, AI writes really terribly. It writes a lot. And it kind of seems to create these sort of...

**Larah** (15:19) <br>
I know, like they're almost continuous in the way that you get from point A to point B, but not quite. It's almost like it's distorted or there's the connections between ideas aren't quite there. And someone, I'm not sure who it was. think it was someone on the right, the docs was talking about this and they're saying that AI has a tendency to go more broad rather than go for depth. And I think that's a big part of it.

**Fabrizio** (15:27) <br>
Mm-hmm. Yeah. It's shallow. Yeah.

**Larah** (15:48) <br>
Yeah, it's very shallow, but it's good at exploring wide breaths of information and connecting a lot of information when you question it and direct it. But without that direction, it just is kind of diffuse and pointless a lot of times. It'll create a lot of content and then you have to review that and it's very time consuming. Or you can send it to someone else without reviewing, which is kind of rude.

**Fabrizio** (16:09) <br>
What I'm noticing is, no, I totally can relate to what you're talking, your experience there. What I've noticed is that as long as you provide some high quality signal that comes from a human being, and that can be a Vale rule or can be some pre-existing art like documents following the same content type. maybe it's templates, it's a style guide, it's a skill, whatever, but done by humans, which means signal doesn't mean noise, you know, and I think the distinction is important there. Then the output, the quality of the output improves dramatically. Still not, may still not be perfect, but it really gets better. And that to me signals like the need of a human in the loop at all times, you know, to be there and... And maybe just prod the yellow lamb as if it was cattle. don't know, but there has to be a human in the loop somewhere. And not just as a reviewer or approver, but even as an initiator or as someone who keeps feeding the boiler with some coal or whatever.

**Tom** (17:26) <br>
Feeding the boiler.

**Fabrizio** (17:27) <br>
Lots of metaphors there, sorry.

**Larah** (17:27) <br>
Like I love it. I love it. But yeah, you have to kind of steer it back on track because it will get off the rails quite easily and it's variable. So I don't know if you're part of the the cloud AI and different subreddits for AIs. They've kind of taken a hit in performance lately. so that's kind of a thing with models is like as they as demand grows and people are switching from open AI to Anthropic, I think that their data centers and compute has

**Fabrizio** (17:35) <br>
Hmm. No.

**Larah** (17:56) <br>
Struggled to keep up. And so the performance of their models has really gone downhill. So even if you've had a lot of success giving a model autonomy in the past, might not always be the case. It might change.

**Fabrizio** (18:08) <br>
But I wonder if we'd rather stay faithful to models. Because I've seen people saying, I'm getting much better results now with GPT-54. But the personality, I don't really like the personality. it's like, gosh, now we have to deal with an entirely different artificial being with different way of outputting stuff. don't know. Have you found that, in your explorations?

**Larah** (18:38) <br>
Personality of the model.

**Fabrizio** (18:41) <br>
Yeah, like what's your feeling? is the model gonna, are two different models from two different vendors gonna follow instructions differently? And I found that.

**Larah** (18:53) <br>
I'll let Tom in so he sounds like he said something say.

**Tom** (18:55) <br>
Um, well, the biggest sort of character trait I see in models is the sycophancy element where if you say something or like you have an idea, you're trying to get feedback and the model says that is a brilliant observation or something. Honestly, I swear half the time I'm like, it is a brilliant observation. Thank you for confirming this. And then I'm like, I'm going, am I just falling into this trap? But like, I think.

**Fabrizio** (19:03) <br>
Yeah. He

**Tom** (19:22) <br>
Didn't open AI try to like reduce some of that syco fancy like they had turned up the dial to try to get people that like the models better at one point and then they got their hand slapped for it and so on. But I don't know. I'm not so against that. don't really. Here's a problem with the whole like character thing or whatever you call the personality is that I have to restart the session so much because like I want to wipe clean the context.

**Tom** (19:51) <br>
I don't really see a lot of like personality in things. And I've also told, the model there or the aid, the, in my agent.md file, my, in this case, like my Gemini dot markdown file that provides high level instruction. say, want it just the facts kind of answer in a lot of cases. I want it to be, I I don't really want to see a lot of adjectives or adverbs and I don't want to see a.

**Tom** (20:18) <br>
I put a long list of cliche verbs and adverbs and words that like leverage and crucial and delve. it's like, no, just get rid of that. And maybe that has helped.

**Fabrizio** (20:24) <br>
Yeah. I have a question for both of you. Well, personality maybe, we don't care that much, but what about long-term memory? Because that's a problem currently not solved. They tried, like OpenClaw had this memory MD file. And I can tell you, the experience was one of the best I've got in terms of... you know, like a continuous conversation with the LLM and it would remember things from maybe two weeks ago. But then it had like some, that memory got corrupted a lot. And so the problem is not solved and LLMs cannot learn unless they are retrained. But would you, would you like to have them like learn things for good? I would, I know I would.

**Larah** (21:21) <br>
Absolutely. I would love that. Actually, I've been trying to experiment with how to solve that in my just like day-to-day use of LLMs lately. But it's interesting. I didn't know that the memory.md file came from OpenColumn. Maybe they were the ones that originally introduced it, but Claude Code has adopted that now. So they do have a memory.md file and it's helped a little bit. There are also a bunch of different tools and services you can use for like storing LLM memories and databases that it can query.

**Fabrizio** (21:27) <br>
Hmm. Yeah. Yeah. They're okay.

**Larah** (21:51) <br>
A lot of times they'll have like semantic embeddings to kind of improve performance. A lot of it will reduce your token usage. I also use a plugin system called Compound Engineering. Have you guys heard of that one?

**Fabrizio** (21:51) <br>
Hmm. Yeah. Yeah. I don't know, tell us about it.

**Larah** (22:06) <br>
So the idea is that it's a flow that starts with brainstorming, goes into planning, then work. And then the final stage is the compounding stage. So it basically does what other people have discussed in your podcast, like Manny, the reflect stage. So you compound the knowledge and it writes to a basically a markdown document in a file, in a location where it knows to read and be like, oh, here's the issues I encountered.

**Larah** (22:33) <br>
Here are the solution. Here's what I need to remember for next time. So the idea is that over time, your agentic systems compound and get better and better and better. But it can only happen to a certain point because, I mean, as you've all both probably noticed, as you load the context with more information, performance does degrade. So as you compound that knowledge, it's loading more into the context.

**Fabrizio** (22:37) <br>
Okay. It's, it reminds me of that. don't remember. Do you remember that movie from 2000, memento where there was this guy who had like, amnesia and you know, he wrote down notes, posted notes and they, you know, things on his body. And every time he wake, he woke up, like he had to reread all the context. So I feel like LLMs work like this. Like they have to reread all the notes and it's a mess.

**Larah** (23:20) <br>
Yeah. Yes. Yeah.

**Tom** (23:23) <br>
I've been, I've been doing, something to try to counter that, but first let me weigh in on the whole memory thing because I think I take a different position. I don't really want the, the LLM to remember that much because I feel like it biases its own judgment. If I've been working through a problem and it thinks it fixed it. And then I say, Hey, you know, does it, does it all look good? Is it accurate? And so I go, yep. Yep. It's all good. But if I start a brand new session and I say something like, Hey, I have a.

**Tom** (23:53) <br>
Deep intuition that there's some mistakes in this content, you know, can you check it? Then it probably finds them, you know, it's like, want the, I want the new session, not, not to be biased from things. There was an internal engineer who used a metaphor of an elephant and a goldfish and the goldfish meaning doesn't have much memory at all. It's like a new session and the elephant meaning it's got a lot of memory.

**Tom** (24:19) <br>
And there are times when you want the elephant and other times you want the goldfish. more often than not, I want the goldfish. So, but here's the thing I've been doing to give it. Yeah. good.

**Fabrizio** (24:19) <br>
Right. Hmm. It's interesting because it's, yeah. I mean, it's kind of like how we approach these tools. I because we don't want like too much personality. We don't want too much memory. And I wonder if that's because we don't really want them to be that human or to resemble humans. That's probably, there's something there, I guess.

**Tom** (24:49) <br>
Well, the way that I'm getting around trying to have the benefits of memory is by creating skill files for my own processes that I'm doing. I create release docs for several products every couple of weeks. And I have...

**Fabrizio** (24:59) <br>
Bye.

**Tom** (25:05) <br>
Like I have skill files that I've developed for these that have like 10 steps each. And every time I run through it, I asked the AI, Hey, did you run into any problems? You know, any frictions? If so, can you update the skill file with like better instructions so that next time around we won't run into that issue. And I've been doing this now many iterations and it's gotten a lot better. and my process has improved.

**Tom** (25:30) <br>
So it's like this balance. It has that memory, but one that I've carefully sort of guided it to have.

**Larah** (25:39) <br>
I actually couldn't agree more. Like after using compound engineering, which is a huge like boost if you're not using anything like that before trying it, but it consumes so much token, so many tokens. It's insane. It's so inefficient. I actually forked it to try to make it more token efficient, but skills are fantastic because they are actually incredibly token efficient. They only load the name of the skills and the description and whenever it reads the skill.

**Larah** (26:08) <br>
It doesn't load any of the bundled files unless absolutely needs to.

**Fabrizio** (26:12) <br>
Do you run those operations in subagents or just the main context?

**Tom** (26:19) <br>
I run.

**Larah** (26:19) <br>
Just, and, I'm not sure who you're asking or.

**Fabrizio** (26:25) <br>
No, you know, like apparently you have this option of like when you define a skill, you have the option of either running the skill within the main context of the CLT code, for example, or you can spin a subprocessor or subagent depending on the tool that have different names, which means that it's a different context window. So it saves them in context and then it reports back to the main context. But you consume way less tokens for specialized operations. I don't know if you do that.

**Tom** (26:57) <br>
I don't.

**Larah** (26:57) <br>
Yes, I actually prefer to do it in a separate context and a separate work tree. If like you can actually specify, I don't know about off skill files, but the Claude Code specification lets you specify working and using a skill in a work tree.

**Fabrizio** (27:00) <br>
Mmm. Nice. Maybe we should explain what work trees are, because I'm sure not many are familiar with it.

**Larah** (27:19) <br>
A work tree is basically a copy of a Git repo that you have locally, but it's that you copy the whole thing and usually it has like a dot prefix or like a different name. But the whole idea is that you can have multiple branches checked out locally for the same repo at the same time. So it's great for like isolating work when you have multiple agents working on multiple branches, things like that, or if it's just you, maybe you are working on a feature branch and you want to check out someone's PR to review it. It won't interrupt your workflow as much.

**Tom** (27:51) <br>
I think we call those internally like workspaces or something. I actually don't work with Git at all except for my blog. my work, none of our stuff, like it's all behind the scenes. I'm sure like it's based on Git, but like we don't actually do the Git commands and so on because of other.

**Fabrizio** (28:08) <br>
Yeah, it's funny. There was someone on Hacker News the other day showing a tool they created to make Git easier to use. And commenters, well, in typical Hacker News fashion, where they were like, well, I mean, what do we need a tool to use Git easier now if LLMs handle all of it? And it's quite, I mean, it was quite a roast, but it's very true. Git was always the barrier to entry for like DOCSIS code sometimes, et cetera. But it's just so easy enough to just tell the LLM, well, know, fix this conflict and then push and open up ER. And sometimes I even asked to reply using the GH command line tool. So.

**Tom** (28:56) <br>
I have a question coming back to skills for both of you that we haven't really been able to resolve, but I feel like you've done a lot more with skills. So let me see. The question is more around external uses of skills. The skills that I've created are just for my own use for creating release documentation and others like processes I do. but you created, I know for Bricio at least you've created skills that go into your docs to be intended to be used by your developer users.

**Tom** (29:25) <br>
And I don't understand how that works because isn't it just like duplicating your existing documentation and just packaging it up into another format with some front matter? I don't really get it.

**Fabrizio** (29:40) <br>
Well, it depends. mean, if it's, and probably Larah can also speak to it, but in our case, what we created is skills that, if we're talking about that, there's two, there's two set of skills currently at Elastic that are open source. One are the skills to use the product and those are based on our documentation. So you could say is a way of repackaging or remixing the existing documentation and technical writers are. involved, they are in the loop, they are checking. We even implemented some agentic workflows that check the drift of these actions, of those actions compared to the docs, if there are docs updates. So when they, when, you know, when people talk of skills, what they really see are just a different breadth of docs. And then when it comes to the doc skills, there are the skills that the docs team use at Elastic. We open source them. We also have internal doc skills because it's like more internal knowledge. But for things like, for example, authoring documentation and all our documentation is open source, but most of it at least, anybody can use those skills to author the documentation. And those instructions are partly in the contribution guides that we have, but some are like more operational and more specific. So there's not really a... I mean, part, like a bit of redundancy is not bad actually there, but yeah, it really depends on the scope there. Larah, what are you doing there with skills? Like, are they also open?

**Larah** (31:20) <br>
I would love to open source Tailscale's, doc skills, because I've probably created close to 200 of them now for various purposes. But our docs are not open source, so the consensus is that we can't open source any of the skills yet, although we're considering open sourcing our docs. We'll see. But what I've noticed is that skills in general are forcing people to write the docs they never wrote before, because they have to, and it's kind of beautiful.

**Fabrizio** (31:26) <br>
Wow. Yeah. It is. It is.

**Tom** (31:47) <br>
When you say you have 200 skills, Larah, can you elaborate? Are these skills that do the tasks that your regular documentation describes, or are they related to authoring, or what?

**Larah** (32:02) <br>
Some of them are related to authoring. Some of them are related to testing documentation. like maybe impersonating a specific type of user. Some of them are, around basically doing a running CI, like CI test or linting, and fixing the output. Cause like you can fix a lot of linting errors like, like automate, like automatically, but some of them kind of require some thinking about them. And I think. LLMs are actually pretty good at that. I have a couple for doing things like generating image descriptions, like alt text. A couple for testing drift between specific topics and the code repos. Some for reporting what's changed in a code base since I last checked with it. We have a couple of really fast moving products that I'm responsible for and no communication. So it kind of does like a really nice get blame output and tells me everything that's happened, who wrote it, links me to PR, the commit messages, things like that. Skills for everything, I've kind of.

**Fabrizio** (33:08) <br>
Guys. But there has to be like a very long tail of skills that you don't use that much or maybe you seldom use, right? And one of the things that frustrates me about skills is that there's no way, at least that I know, of like checking their usage. know, like I even thought of putting something into a skills that phone home, you know, like a ping somewhere or, you know, load up this file and we'll know, you know, but that would look fishy. And I think... It kind of is, you know, because it's telemetry. But have you solved that problem? Because I see a look in your face. Have you solved it?

**Larah** (33:46) <br>
I have not solved that. haven't even thought to do that. That's a really good idea, but I know how I would solve it. So I mostly use Claude Code. I've only recently switched more into Codex and Copilot just to kind of venture out. you can, most coding agents, can have arbitrary code, the exqueue after specific types of hooks. So for example, like let's say after you start a session, after the coding agent uses a specific tool, like a write tool.

**Larah** (34:16) <br>
Or the skill loading tool, can execute arbitrary script or command and you can actually use that to log whenever it uses or reads a script, a specific skill. So that's actually a really cool idea.

**Tom** (34:27) <br>
Do a lot of.

**Fabrizio** (34:27) <br>
Interesting. where would you send that data though? Because it's like, people feels like that it's... If you get a skill from somewhere, double check it because you could do like fishy stuff and they might feel wary if there's like a command that calls something or does like a cural call somewhere. You know what I mean?

**Larah** (34:50) <br>
Yeah, it would have to be something that people opt into because these hooks are generally configured, locally, but a lot of organizations will provision employees use of Claude Code. like, have to have these hooks, these plugins, these, whatever. I probably sent it to a database and show it in an application. I don't know how familiar you guys are with a Tailscale. We recently released a product called aperture, which basically is a, it's an AI tool for to.

**Fabrizio** (34:53) <br>
Mm-hmm. Yep. yeah, internally for sure, yeah. Hmm. Mm-hmm.

**Larah** (35:19) <br>
Kind of watch adoption of AI. logs all the skills, all the prompts, all the communications, tool usages, costs associated with each one. lets you have a single API key for each provider that you share throughout the telnet without actually having to share API keys. But I bet you that they can add a way to track when specific skills are used by a name. So that's a cool idea. I like that.

**Fabrizio** (35:25) <br>
Nice. Mm-hmm. Okay, something to dig in.

**Tom** (35:47) <br>
So for the many skills that you've created, Larah, do you know that a lot of other people are using them? Like we're talking about tracking and the challenges here, but just what's your sense? Do other engineers, other writers use your skills that you created or is it mostly just you using your skills?

**Larah** (36:07) <br>
It's mostly just me. I'm really sad about it, but I've really been one of only ones being adamantly adopting AI in the company right now. And I think that's the point of this hack week. It's an AI hack week or trying to get everyone to do more with AI, but I probably the fourth highest user, highest adopter of AI in the company under like the CTO and the CEO and some really zealous engineers.

**Larah** (36:34) <br>
So yeah, I'd love to see people use the word, contribute more, but it's just.

**Tom** (36:39) <br>
Thinking about the skills that I, that I use that I did not create at my work. And honestly, part of me doesn't want the AI to just start picking up on some other skill that somebody else defined. And like, I don't even know what it's doing. And all of a sudden it's like doing a process that I didn't intend just because some keywords may be overlapped. But there is one skill that I do use. It's called the skill creator, which has been great because it just like understands the whole agent skills spec.

**Tom** (37:09) <br>
And, like it knows what's allowed in the front matter and how to create them. I'm like, Hey, just create a skill for this. Make it do that. And it formats it perfectly and like gets it all set. So in that regard, I really appreciate that skill, but all my other skills and I only have like six that I've made. So I feel like I'm, I'm not really, not really, I guess, making as many skills as I should, but. The six that I have created, they're highly customized to my own needs and I can't imagine other people really using them, but maybe.

**Fabrizio** (37:43) <br>
Yeah. It's interesting that you mentioned the skill creator Meta skill. Like I see lots of potential in Meta skills and one of these skills that we created at Elastic, I made it actually. And there's kind of a, well, it's not a trap, but there's something there that helped the Docs team because what we put into that skill creator skill is that any skill you create,

**Fabrizio** (38:13) <br>
If it refers to documentation, it has to call our MCP server. You know, like whenever you call docs or you want to retrieve documentation, et cetera, you know, when you create a scale based on things we do first search the docs. And we do that through the MCP server. And it's the MCP server is really one of the best things we have done. I know that some folks are already saying that MCP is dead, whatever.

**Fabrizio** (38:41) <br>
I think MCP are just like APIs for LLMs. And having the ability of performing semantic searches in our docs with the MCP server, it has become like the knowledge layer that everything else, every other AI tool is using. So skills are using it, new CLI tools are gonna use them, agentic workflows can also call MCP servers to do things. So we kind of solved the problem of the memory of the documentation through that.

**Tom** (39:13) <br>
Wait, you said something that caught my attention. You said some people say that MCP is dead. I had not heard this, so can you elaborate?

**Fabrizio** (39:22) <br>
Yeah. Well, I see, I see Lear nodding. Maybe you can, you can tell.

**Larah** (39:28) <br>
Yeah. So there was nothing really special about MCP except that it just got people creating integrations and standardized the way LLMs use things. So it was basically API for LLMs. And I think it was fantastic. There's nothing special about it except that it kind of unified people on a standard. But now people are starting to realize that you can actually be a lot more token efficient through other means. So if you ever analyze your context usage through whatever coding agent you use, if you have a lot of MCP servers, it takes up a lot of your context just by default loading the descriptions of every single tool the MCP server has access to. And there are ways to make that better. It just depends on how people design the MCP server, but I don't think they're going anywhere. Like it's, yeah.

**Fabrizio** (40:15) <br>
Yeah, yeah, we need to like, it's, course, they're not the solution to everything because every time something new comes up in the iWord, well, even outside of the iWord in tech in general, it's like, yeah, we're going to use MCP for everything. It's not like that. it's, and the same will happen with skills. Like we will probably see like a more focused usage as we become like more, more experts at it. So yeah.

**Tom** (40:41) <br>
Sorry Fabrice, you said, what is the I word? What is that?

**Larah** (40:42) <br>
Think good.

**Fabrizio** (40:49) <br>
The world of AI. Again, AI, No, not the information architecture, the artificial... No, no, no, it's 7 p.m. here.

**Tom** (40:51) <br>
The AI sorry, I thought you said the I I'm sorry I was just like My brain is just like the I word I'm like Yeah, the AI. Yeah my bad. I'm get

**Larah** (40:58) <br>
I was like, I missed something.

**Tom** (41:07) <br>
I'm getting old my yeah, my comprehension is going down you know, I spent I spent like I Was driving this morning and like I was

**Fabrizio** (41:10) <br>
No worries, no worries. doesn't hurt to... yeah.

**Tom** (41:18) <br>
Fiddling around with the cruise control in my Jetta and there's this one acronym that bothers me that I couldn't figure out what it is. It says CNL and I push it and I was like, what the hell does this refer to? It refers to the word cancel. I had to like search it. anyway, sorry, Larry, you were gonna say something about Fabrizo back on track. So go ahead.

**Fabrizio** (41:32) <br>
Hahahaha Yeah.

**Larah** (41:40) <br>
I don't actually know that that CNL thing kind of threw me off. That's not what I would have thought.

**Tom** (41:45) <br>
Okay, well, okay, coming back to the token usage. So I've got a funny anecdote. We have this API that we developed that basically, or this MCP server that taps into all of our documentation. And I was testing it out just as like playing around with it.

**Fabrizio** (41:45) <br>
Hahahaha! Hmm.

**Tom** (42:04) <br>
And after one call, like suddenly my quota on token usage was completely maxed out and I was like, this must be a bug. I'm like, no, it actually passes a lot of tokens behind the scenes. And I was like, you gotta be freaking kidding me. So yeah, I can see why, why people may say that like MCP is dead. If it, if like using, using it passes like all of the tokens of your docs, that can't be like a feasible sort of solution for things.

**Larah** (42:33) <br>
There are definitely ways to design them that are a lot more token efficient, they're all, if you're careless with how you design them. And I think a lot of people are, if you just look at a random MCP server, someone published on the internet, you can install it and it will use a lot of tokens and they're expensive. But I think one of the cool things about the introduction of skills is that it made people shift away from using MCP servers for just written instructions. like MCP servers are great for things like APIs or like code, but now script. Now skills, if it's written instructions and you can even embed scripts and skills, it's a lot more token efficient way to get that type of result. Can't replace them CP servers, but it can in some instances.

**Tom** (43:14) <br>
This reminds me, Larah, of one of these repos you were working on, or code-docs, that seems to be trying to solve this problem. Can you talk more about that?

**Larah** (43:29) <br>
Yeah, so I put this together because I was talking to my husband about their engineering team and how they've been kind of reluctant to adopt AI and they have docs in the repo like most people do under a docs folder. But the problem is when you use an LLM, and it goes to see what docs are available, a lot of times it'll sample it randomly, it'll load the whole talk into context, all types of things like that.

**Larah** (43:58) <br>
And so I was thinking about it I was like, well, if you apply kind of the progressive disclosure model that skills use where you have a description model, like a, a front matter description, the name of the skill, and you tell the agent LLM whenever to use it, then it'll make it a lot more efficient working in your code base without installing any skills. And so what the system does is it goes through all of your existing docs in your docs folder. It adds AI generated front matter descriptions telling it like, hey, load this one, whatever. You you probably want to go in and make sure that's correct. And then it adds all of those to an agent.md file and it updates it periodically whenever your docs change. So they're always up to date.

**Fabrizio** (44:44) <br>
Try Stink.

**Tom** (44:44) <br>
Cool. Did they use it? Has it been implemented by the group you intended it for? Not yet? Okay.

**Larah** (44:54) <br>
No, but I've been using it for one of my repos, Napoleon Dynamite, which is basically just an AI asset manager for deploying skills and sub-agents and stuff. And it's worked pretty well, honestly.

**Tom** (45:07) <br>
Hey, I have another skill related question going back to something you said Fabrizio a little bit earlier. You said when people use a certain skill like... Requires them to query the MCP server that has the docs. Are you saying that you have a, a skill that is built around people creating documentation that would, in the same way that I mentioned the skill creator that skill that automatically kind of formats things and follows a specification for the agent skills. And I find that really useful. Do you have a documentation skill that guides engineers, PMs who say, Hey, I want to create a doc about this, blah, blah. Here's a brain. dump or dock dump of all this info and your documentation skills structures with best practices around documentation. Is that one you've got?

**Fabrizio** (45:55) <br>
Yeah, yeah, yeah, have several and every skill that we have that helps them create documentation, whenever it has to rely on additional knowledge, it can just, you know, call the MCP server. And I prefer that approach. Like we even had some internal tests where it turned out that skills that were linking to the documentation, but were like kind of light in terms of tokens. performed better or worst case the same as skills with everything just dumped into the skill itself, you know, like very long skills with all the documentation. And they are even easier to keep up to date because it's the docs that we keep up to date. So the skill just has to retrieve them. And with the MCP server is easier. Of course, the next step would be to call the MarDown version. We serve MarDown versions of our documentation. The worst case really is to just provide an absolute URL and have it scrape the HTML code. That's like a kind of a killer in terms of context window. But yeah, so the MCP is always there. If you want to know how we do it, just search for these keywords of these docs.

**Tom** (47:16) <br>
My larger question is whether, larger question here, do you think that creating all these skills, mean, Larah, you've created like 200, and Fabrizio, you have countless ones as well.

**Larah** (47:17) <br>
I actually love that.

**Tom** (47:30) <br>
If there, if many of them are related to how to write author documentation and so on, are we making our own skills, like externalized and, kind of reducing the need for technical writers? Because now people can kind of take and absorb our skills on how we might craft documentation and not need our help anymore.

**Larah** (47:57) <br>
That is an interesting question. It's a hard one to answer. I've been using the skills for myself for a while and I didn't, I wasn't sharing them with the rest of the company. They haven't used them anyway for a while because I have the same fear, but I've kind of come to the conclusion that times are changing and the skills that we need to survive in the post AI economy are different than the ones that we needed before all of this was introduced. It's kind of,

**Fabrizio** (47:57) <br>
Lera, yeah.

**Larah** (48:26) <br>
Forced me to take more of an orchestration role, think higher level. And so in order to scale our ability, we will be able to scale our ability to do more, but the skill set won't be the same if you're going to thrive.

**Fabrizio** (48:40) <br>
Yeah, like I agree. I agree. Totally agree. I think we're going towards the direction of being like architects and curators at like more high level. And in general, I would say there are two ways of looking at this. You either say, well, with skills, we can do the same work with less people, or more wisely, you can say we can do more work with the same people. We, and we don't have to reduce the team. And which I think is the wiser approach because there's, mean, documentation is a never ending effort and we all have, we all have like a huge backlog always. And I think in terms of efficiency, we just want to have better docs. We want to focus on things that really bring value. And we, if we can have skills or agent workflows help us deal with, you know, with the chores, with the business as usual stuff. I mean, that's, that's better. So. Again, it depends on the approach. Like if people want to reduce teams because they want to buy more GPUs for whatever project, I mean, it's up to them, but then they shouldn't be surprised if they see the docs like getting worse.

**Tom** (49:49) <br>
Okay, this is leading up to the sort of big question. Are skills reducing your workload? You mentioned that two different scenarios can happen. You can take on more work, you can reduce work. But like in your own realm, are you getting busier or are you getting less busy? Both of you.

**Larah** (50:13) <br>
Can do a lot more and I've been a lot busier. I have just, there's no shortage of work. So as I free up time, there's just more work. Has that been your experience?

**Fabrizio** (50:13) <br>
You start later. Yeah. I think it echoes my experience because I think we are in a phase right now where we have, especially if you are the AI practitioner in the team, my role is shifting towards architecting systems and skills and automation. And that's probably going to be never ending, know, like agent workflows and such. But I think that then other people who's not doing this. is already benefiting from that. we had a colleague that literally, we have these office hours that I set up for documentation at work. And this writer came to us and said, you know, these docs changes you're seeing, would have taken like a month before. And using LLM, it just took a couple of days, you know, and now she's creating skills and doing that sort of stuff. So. But yeah, then we have to differentiate because I think Larah and I are the tinkerers profile and that, you know, we have always, I mean, we've always been busy. was AI, it's AI now, AI now, but before it was static side generators, it was scripts, was you name it, linters. So the tool type of writer is always going to be busy just with a different kind of tool, you know.

**Tom** (51:45) <br>
Felt like I, so in the last couple of weeks, I went through a period where I was insanely busy. I mean, I was even working on, on the weekends busy, which is something I didn't usually do, but I'm like, the releases got, I wanted to catch up and it was driving me nuts. Cause I'm like, no doubt there's a burnout period at some point, but then I finally dug myself out of the hole and I'm like back to normal. So I'm all good. And so on Friday, I was like, I want to spend some quality time increasing my knowledge of certain tools.

**Fabrizio** (51:53) <br>
Yeah. Yeah. Yeah. Yeah. Mm-hmm.

**Tom** (52:14) <br>
And I realized it's actually really hard. Like I was digging through chat rooms. I'm like, I have, most people are complaining about this or all. didn't know about that little tiny widget there, but in general, you mentioned that you and Larah are tinkerers. know Larah, you've got, I don't know how many, GitHub repos for different experiments you've done, but, what's your process for just wanting to learn if you want to, you want to. up level your knowledge of something in AI. What are you doing? What are you building a project? Are you reading something? Are you going through chat rooms?

**Fabrizio** (52:53) <br>
Lyra?

**Larah** (52:55) <br>
Okay, I'll go first. It really varies. I've been trying to nail this down. A lot of times it'll start with me reading about what other people have done, about how something works, and I'll kind of go down a rabbit hole. I'll be reading research papers, all sorts of things, and then I'll start experimenting with it. And then usually I have a obsidian journal where I'm just like, I write a lot. lot of times it's nothing that would ever be useful to anyone, but I'll write what I think is the case. And then I'll go through and I'll, I'll learn by seeing where I'm wrong and I'll adjust it and things like that. And I've actually been using AI to help me learn a lot. I'll, I'll have it interview or interrogate me, kind of drill into my ideas. Second guess, my assumptions make me drill deeper. And I found that to be really beneficial also whenever I'm kind of like struggling with an idea or I'm interested in a very specific area, I'll help it search. have it help me search the web for people who are maybe diggering into similar problems. I'll get a lot of inspiration that way. I don't just, really varies.

**Fabrizio** (53:58) <br>
Yeah. Yeah. I, again, similar experience. think it is a combination of three things. One is like, being kind of in the loop. So there's, there's a big fear of missing out in this field. So I'm in channels, either at work or at South of work, where I see engineers trying new things. And whenever they mentioned something, I start looking into it, you know, like I don't wait. second thing is, is like lots of. experimentation, you know, there's a bit of osmosis there. Like maybe someone has a repo internally that tries something. So I just clone it and I try to adapt it to my use case. So again, it's, it really reminds me like computing the, in the old age where, where you copy the floppy disk with some code and then, know, just try your thing there. And third, yes, AI helped me build more AI stuff. And it's kind of like a lab helper, you know.

**Tom** (55:00) <br>
Interesting. Yeah and your favorite channels Fabrizio and Larah. I know I see you on write the Doc slack AI channel and I see I Think I see both of you on LinkedIn and I know you've got a blue sky for Brio blue skies, I sort of like just stopped using Twitter after it migrated over to whatever X and just I got tired of that whole platform. But what are your favorite channels for kind of staying in the loop as you say?

**Fabrizio** (55:29) <br>
Yeah. Yeah. hacker news i know it's you know you have to be careful there sometimes i comment in there but careful in the sense of like if you comment you know be mindful because they're gonna bite you but in general it's it's very high quality stuff very fresh stuff it's really a good source of information these days

**Tom** (55:39) <br>
Hacker News

**Tom** (56:00) <br>
Larah, what's your favorite channel for staying plugged in?

**Larah** (56:05) <br>
Also, hacker news, I have subscribed to a lot of different blogs of people who are just kind of really active in the space. There a of people on Substack who are like all over every new thing that pops up in the industry that's been cool. There's a lot of just kind of like forums, Discord communities, also subreddits, like all over the place, like you can waste all day.

**Fabrizio** (56:16) <br>
Yeah. Yeah. Well, we all follow Simon Willis and his Pelican experiments. Yeah, I follow him on Blue Sky too, and it's a way of getting his news. I'm just a little mad at him because one day he said something about redmi powered something, like skills or whatever. And I was like, it's documentation. It's not a redmi. But anyway.

**Larah** (56:35) <br>
Yes.

**Fabrizio** (56:55) <br>
I like being there and sometimes I try to interact with those folks like with the influencers, et cetera, because sometimes they kind of overlook the fact that what they're talking about is documentation. So it's nice that if we are there and we interact and remind folks about what we do, I'm a very vocal guy, but I think everybody can throw their opinions, comment there and just say, well, what you're talking about is docs, actually.

**Tom** (57:26) <br>
Hey, I have kind of a final question here. just says I'm thinking about things. And by the way, it's awesome to have two of the top minds in this AI space, AI doc space here, kind of collaborating, getting, getting this sort of intersection of thought. We've been talking a lot about skills. And it does seem like skills are sort of the latest fad in, in AI, you know, at one point it was like, Oh, the LLMS dot TXT file was like the big rage. And then it's like MCP servers and like, I don't know. Uh, you briefly talked about open cloth, but I don't know that doesn't really qualify in the same category of all these like trends that we've been talking about with docs, but now does it? Okay. Well, let me, let me get up to my question though.

**Fabrizio** (58:11) <br>
Well, it kind of does, yeah.

**Tom** (58:16) <br>
So now my question is, are skills a fad that will fizzle in a few months time, or do you think that skills are the way that technical writers become highly valuable as we learn to create skills that then empower people around us as well as ourselves? Is this like the thing that tech writers should latch onto and really learn well and become expert at?

**Fabrizio** (58:44) <br>
Yeah. May I go first? I think skills are just the beginning. And my prediction, my impression after having seen OpenClaw, even if OpenClaw goes away, I think the direction is packaging probably like skills will become part of something bigger where you have like a personality, you have long-term memory, you have like the whole complete package of like a full agent. that can do something and is even like kind of branded, maybe even with a fine-tune model underneath. So we're going to have like, let's say tomorrow you could create even your own such package using, I'm going to select these editorial skills and I'm going to pick these fine-tune local model that is trained on writing documentation and with these long-term memory and with these MCP servers. And this is going to be my helper. know, right now I feel everything is too molecular. I think the direction is probably going towards a user experience and nobody really has thought about user experience of these things or maybe they're still doing it. But I think we're the direction we're going is towards like something that acts as that, which is kind of transparent, like skills are underneath, but you don't know until you You you peek under the hood. That's my kind of my prediction there.

**Larah** (1:00:18) <br>
I wonder what you think transparency will look like in the future.

**Fabrizio** (1:00:23) <br>
Well, a bit like, actually I think I'm so puzzled by Apple's silence with AI. And I think they're probably, I hope they're building something that I like that I described. And I think transparency will look like a macOS app where you don't see the files unless you go to settings or you open the app package in the Finder, know, something like that.

**Larah** (1:00:53) <br>
Actually think that Apple has been really, really smart about this. Everyone's been trying to build their own AI that people use via API or whatever, but they have it natively in every device that they ship. So developers can access it through Swift, their SDKs. And so that's going to become more and more important, especially as AI becomes cost prohibitive. And it will, it's being subsidized now. So things are going to change. I think they are going to end up coming out on top.

**Fabrizio** (1:00:56) <br>
Yes. Indeed.

**Tom** (1:01:25) <br>
Larah, what's your take on the whole importance of skills? Is this like the thing that tech writers should really focus on and learn? Is it here to stay?

**Larah** (1:01:35) <br>
I really can't say I agree with that Fabrizio and I think that they're just the beginning. They're just, they're just the latest iteration and trying to find out how to make these systems work for us where even companies that build them are still finding out how to work with them better and evolve them. But I think, I think tech writers should adopt skills. They should learn them. I think that it's going to benefit every tech writer if they learn how to use them and create them and what position themselves as the people to be writing these skills because they should, they should be the ones writing them. I've seen a lot of terrible skills and they do decrease LLM performance if they're not done well. But in general, think the general trajectory of kind of like how these fads have been evolving is it started off with kind of like prompt engineering, then it went to context engineering, and then it was compound engineering. And now I think it's agentic engineering, which is kind of orchestrating entire systems. And so it's all folding together. I don't know what the next phase will be. I'm just learning how to orchestrate these systems. But it's been really cool to watch everything evolve so quickly in real time.

**Fabrizio** (1:02:46) <br>
Indeed.

**Tom** (1:02:50) <br>
Know just from the skills that I've made, I've developed kind of a lot more respect for the whole skill building process. think, as you say, like some skills that are bad, like they don't help, it takes a lot of time and thought to create a skill for a complex process that actually works well. And if... I can learn to do that. Like it's a huge win. I'm just, I'm still trying to perfect these skills that I've got for release docs. And it's a lot, it's a lot of stuff going on, but, like I'm pretty proud of some, some of the workflows I've got going. And I know that like, if I can develop the skill of this automation engineering skill building kind of stuff and get good at it, then hopefully I won't feel like I'm falling behind, but like keeping up with.

**Fabrizio** (1:03:41) <br>
The only thing that everybody needs to remember is that even if the skill is good, who operates the skill is equally important. So, yeah.

**Tom** (1:03:52) <br>
Yeah. Yeah. Yeah. All right. Well, hey, thank you so much for Bricio and Larah. this has been a great hour long conversation. Really appreciate your time and thought and just like your energy and enthusiasm in this space, you're definitely like some of the pillars of this AI leadership, going on. So thank you so much for, for, for that and for coming on this show. And if you want to find, if you want to follow Fabrizio, His website is paso.uno. And Larah, I know you've got a site. Do you want to share how people can kind of follow you?

**Larah** (1:04:31) <br>
Yeah, it's a mcnuggies.dev. And that's my blog. I actually share it with my husband, but yeah, we just started it, but I'm going to start posting more blog posts there soon.

**Tom** (1:04:37) <br>
Yeah. I like it, I like it, okay. And you've got a lot of GitHub experiments going on as well. So look around for these different spaces. I'll try to list some links in the show notes. Thanks again for listening and hope to see you online in all these channels we talked about.

**Fabrizio** (1:04:58) <br>
Thank you.

**Larah** (1:05:00) <br>
Bye.

