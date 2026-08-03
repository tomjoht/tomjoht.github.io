---
title: "Orchestrating docs instead of writing them yourself — podcast with Sarah Deaton of Anthropic"
permalink: /blog/podcast-deaton-anthropic-tw-automation
date: 2026-08-02
categories:
- ai
- podcasts
keywords: Sarah Deaton, Anthropic, Claude Code docs, docs automation, agent skills, product skills, doc forensics, AI assistant analytics, Mintlify, prompt caching, technical writing, release notes automation
rebrandly: https://idbwrtng.com/podcast-deaton-anthropic-tw-automation
description: "In this podcast, co-host <a href='https://passo.uno'>Fabrizio Ferri-Benedetti</a> and I chat with <a href='https://sdeaton.com'>Sarah Deaton</a>, a technical writer at Anthropic who works on the Claude Code docs, about what documentation work looks like when much of it is automated. We discuss orchestrating docs through skills and agents rather than writing them, mining AI assistant conversations for doc gaps, running forensics on every false claim that reaches the docs, new metrics like time-to-correction and steers per PR, the fences that keep AI-generated docs honest, and how she closed more than a hundred pull requests in a single day."
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/deaton-anthropic-100prs-in-a-day.mp3
podcast_file_size: 41.5
podcast_duration: "01:07:24"
podcast_length: 41020065
image: deatonepisodepicthumb.jpg
---

Note: These shownotes are AI-generated.

* TOC
{:toc}

<iframe width="560" height="315" src="https://www.youtube.com/embed/4IM15AgdevE" title="Orchestrating docs instead of writing them yourself — podcast with Sarah Deaton of Anthropic" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Audio-only version

{% include audio.html %}

## Links mentioned

* [Blog posts - Sarah Deaton](https://sdeaton.com) (Sarah Deaton's site)
* [Sarah Deaton on LinkedIn](https://www.linkedin.com/in/sarahstringerdeaton/)
* [Passo.uno :: Technical Writing, AI & Docs Engineering :: Fabrizio Ferri-Benedetti](https://passo.uno) (Fabrizio Ferri-Benedetti &mdash; co-host website)
* [Claude Code docs](https://code.claude.com/docs) (the docs Sarah works on, built on Mintlify)
* [Claude Platform docs](https://platform.claude.com/docs) (the models and API docs, built into the Claude console)
* [Claude Code in Slack](https://code.claude.com/docs/en/slack) (Claude Tag — the Slack integration Sarah uses for triage and forensics)
* [Extend Claude with skills](https://code.claude.com/docs/en/skills) (Claude Code docs)
* [Hooks reference](https://code.claude.com/docs/en/hooks) (Claude Code docs — includes the hook for redacting text before it reaches the user)
* [Prompt caching](https://platform.claude.com/docs/en/build-with-claude/prompt-caching) (Claude Platform docs — the cache TTL behavior behind cache hit rate)
* [Manage costs effectively](https://code.claude.com/docs/en/costs) (Claude Code docs)
* [Assistant](https://mintlify.com/docs/ai/assistant) (Mintlify — the AI assistant whose conversation logs Sarah mines)
* [Product skills](https://idratherbewriting.com/ai/product-skills.html) (Tom Johnson, I'd Rather Be Writing)
* [Mining users' AI chat sessions: gaps and forensics](https://idratherbewriting.com/ai/product-skills-chat-analysis.html) (Tom Johnson, I'd Rather Be Writing)
* [Developing internal skills for recurring documentation processes like release notes](https://idratherbewriting.com/blog/internal-skills-release-docs) (Tom Johnson, I'd Rather Be Writing)
* [New habits for tech writers in the age of LLMs](https://passo.uno/new-habits-tech-writers-ai-age/) (Fabrizio Ferri-Benedetti, passo.uno)

## Topics covered in this podcast

Here's a list of topics we talked about.

- **Technical writers at an AI company — plural, but a small plural** — An AI-first company still employing people with the title "technical writer" reads as a good sign for the profession, but the headcount is lower than it would be without AI. One writer covers a product that ships daily, another covers the platform docs, with contract help for the SDK docs and one open role.

- **Orchestrating docs instead of typing them** — Almost nothing that lands on the page gets typed by a human anymore. The work splits roughly evenly between Claude in Slack and the CLI, with reviews deliberately done in GitHub so every "I don't like this sentence" is trackable and can feed back into a skill rather than disappearing into a chat window.

- **Drafting skills that start with a persona brief** — The most valuable part of a drafting skill isn't the style rules; it's forcing an answer to why the doc exists and who it's for. Without that, both humans and models default to describing the feature instead of helping someone reach an end goal.

- **Writing for agents when a human is still at the end of the chain** — Even when most traffic is non-human, there's a person consuming whatever the agent tells them. The goal is a top-notch experience for the increasingly rare human visitor, plus assurance that the human on the other side of an agent gets accurate answers rather than gap-filling guesses.

- **Mining AI assistant conversations for doc gaps** — Docs platforms now expose anonymized assistant conversations: what users asked, which page or code sample they asked from, how many turns the conversation took, and where the answers went wrong. The levers in response include tuning the assistant, adding frontmatter keywords, or writing the missing doc — cross-checked against GitHub issues before acting on any single report.

- **Shipping product skills so agents get your product right** — If users live in coding agents and never visit your doc site, shipping a skill is how you keep the model on the path you want. Otherwise the model picks its own route: source code first if it's there, then web fetches against a docs domain it half-remembers from training.

- **Agent-proof prose: leave no room for interpretation, and make the reader the actor** — Explaining why something happens, not just that it happens, keeps models from inventing causes. Labels matter too: an assistant kept reporting an "example value" column as the default because the number looked like one. The related style obsession is that the reader — or Claude — should be the actor in every sentence, not the settings file.

- **Doc forensics and the metrics that come with it** — Every false claim, whether written by a human, drafted by a model, or asserted by the assistant, gets traced back to its origin and added to a pitfalls corpus that a verify-docs-PR skill checks against. The accompanying metrics are unusual for docs work: time from an incorrect claim being introduced to being corrected, and the number of steers required per docs PR.

- **AI fences for the AI sheep** — A human still pushes merge on everything, and trusted-actor rules in GitHub enforce it. Around that sit automated code review on every PR, sandboxed sessions with allowlisted networks, redaction hooks, and an aspiration for deterministic tests that tie assertions in the docs to assertions in the source code.

- **Clearing 100 PRs in a single day, and the daily release pipeline** — During a company shutdown week, a backlog went from over 200 open PRs to under 100 in one day. Normal days bring ten to twenty PRs from stakeholders, persona-walking bots, and a daily release job that churns for two hours across engineer-written docs changes, changelog entries, and diffs between release versions.

{% include ads.html %}

## Narrative essay version of the conversation

*If the podcast were an article, this is what it would read like.*

**When the bottleneck stops being the words**

During a company shutdown week, with nobody shipping and the release pipeline finally quiet, one technical writer closed or merged more than a hundred pull requests in a single day. The goal was to get an open PR count from over 200 down under 100, and it worked. What makes the number worth pausing on isn't its size but the fact that essentially none of those pull requests were typed by the person merging them.

This is what documentation work increasingly looks like at the front edge of AI adoption, and the shape of it is worth describing precisely, because "AI writes the docs now" gets the arrangement backwards. Producing words has become the cheap part. What remains scarce is accountability for whether those words are true, and that hasn't moved at all. It has simply been concentrated into one person who spends the day steering, reviewing, and merging rather than drafting.

The steering happens through layers of codified judgment. A drafting skill doesn't open with style rules; it opens with a persona brief. Who is this page for, how do they arrive at it, and what should they be able to do when they leave? That sounds like introductory tech writing pedagogy, and it is, but it turns out to be the highest leverage instruction anyone can give a model. Without it, an agent will describe the feature competently, fluently, and uselessly, because describing the software is what you get when nobody specifies a goal. Humans do the same thing under deadline. The difference is that a model does it at scale and never notices.

Review works along the same lines. Comments go into GitHub rather than into a chat window, not because GitHub is a pleasant place to leave notes but because it's trackable, and every "I don't like this sentence" becomes evidence that can be folded back into a skill. That closes a loop most documentation teams leave open. Corrections stop being one-off annoyances and become a dataset, which makes them measurable, and one metric worth stealing is the number of steers required per docs PR, meaning the count of times a human had to intervene on a draft, tracked daily with the explicit goal of driving it toward zero.

The other metric is more radical: the time between an incorrect claim entering the docs and that claim being corrected. Behind it sits a forensics practice in which every false statement that reaches the docs, whether written by a human, drafted by a model, or asserted by the doc site's AI assistant, gets traced back to its origin. How did it get there? Why did it get there? How do we stop it from happening again? The answers accumulate into a pitfalls document that a verification skill checks each docs PR against, and any new failure that skill catches gets routed back into the corpus. The root causes turn out to be mundane and familiar: a value set in one file and overwritten in another, a feature gated behind a flag that only some customers have, a parameter whose meaning was misunderstood. These are the same mistakes writers have always made. What's new is treating them as a system to be hardened rather than as individual errors to feel bad about.

Instrumentation is what makes any of this possible, and here the practice depends on something most writers don't have. When a doc site's AI assistant logs anonymized conversations, you can see the question a user asked, the page or code sample they asked it from, whether the exchange ran six turns or one, and exactly where the answer went wrong. That's the analytics dream traditional search logs only gestured at, and it surfaces failures no style guide anticipates. One assistant kept reporting a parameter's example value as its default value, because the table had a column with a number in it and nothing in the surrounding text made that distinction survive a machine skim. The remedy isn't better prose so much as better anchoring: labeling values next to the thing someone will ask about, stating why an error occurs rather than merely that it occurs, and leaving no room for a model to fill a gap with something plausible.

All of which leads to the uncomfortable part, which is that automating the drafting doesn't reduce risk so much as relocate it. If a model can generate a hundred pull requests, someone has to be confident enough to merge them, and that someone is a single human with a merge button and a trusted actor rule requiring their approval. The fences around that turn out to be recursive: automated code review on every PR, sandboxed sessions restricted to allowlisted networks, redaction hooks, a set of AI fences built to contain the AI sheep. Deterministic checks, the kind that would tie an assertion in the docs to a test in the source code, remain aspirational. Everyone wants them and nobody has finished building them, so in the meantime the guardrail is one person's judgment, which doesn't scale the way generation does.

The more interesting question is what all that reclaimed capacity is actually for. Right now most of it goes to keeping up with daily releases, triaged feedback, and a backlog of pages someone has wanted to rewrite for months. But if documentation work no longer bottlenecks on producing text, the obvious next move isn't producing more text. It's building the things static pages never could be, like interactive components, in-product education, and experiences tailored to what a specific reader is trying to accomplish. That work sits in the blurry zone between docs, education, and product, and it makes the case for hiring more writers rather than fewer, which is precisely the opposite of what most companies are currently concluding.

<figure><a href="https://youtu.be/4IM15AgdevE"><img src="{{site.media}}/deatonepisodepic.jpg" alt="Orchestrating docs instead of writing them yourself — podcast with Sarah Deaton of Anthropic" /></a><figcaption>Orchestrating docs instead of writing them yourself — podcast with Sarah Deaton of Anthropic</figcaption></figure>

## Transcript

**Tom** (00:02) <br>
Welcome to another podcast. I'm your host, Tom Johnson, and Fabrizio is also your host, from passo.uno. And we are joined today with Sarah Deaton, a tech writer in San Francisco working at Anthropic, previously at — let's see, where else were you? Twilio for four years. So a lot of great companies. And we're going to talk about AI and documentation, the intersection where things get really interesting. So welcome, Sarah. Would you like to just introduce yourself a little bit? I don't know, tell us something about you that I didn't already mention.

**Sarah** (00:44) <br>
Yeah, I think you kind of hit the big things. I studied psychology and French in college, so this is a weird pivot from where I thought I would be, but I'm loving it, loving the space.

**Fabrizio** (00:56) <br>
Nice. Well, another psychology major here, so psychology high five here.

**Sarah** (01:04) <br>
Yeah. I feel like it's a good solid background for the "I have no idea what I'm going to do with this, but there are lots of things" path.

**Tom** (01:15) <br>
Well, you do have an interesting background. In addition to your psychology and French, you were also a software engineer for a time and then you switched into being a tech writer. Tell us about that.

**Sarah** (01:26) <br>
Yeah. Right after college, I taught English in France for a year, and then I worked in a retreat center in New Mexico in a town of 200 people for three years — again having no clue what I was doing, but enjoying the time. And being in a place with no technology at all, where everything was still landlines and paper, I started seeing ways that I wanted to integrate technology into processes to make them more efficient. I ultimately went to a place of, I would like to build the software that does this and learn about customizing software. So I did a software engineering bootcamp in San Francisco, and then worked in software for a couple of years. But the thing that was always most interesting was that learning process, and teaching other people how to build things and feel empowered with building. So it transitioned from doing the day-to-day software engineering work myself to trying to teach other people about it, and building the curriculum and the docs content and everything that helped people do their own work in software.

**Tom** (02:37) <br>
Nice, nice. So since you work at Anthropic, where AI is very much the center of everything there, I'm sure a lot of people have curious questions they ask you. When you meet a writer at a conference, another tech writer, and you tell them, "Hey, yeah, I work at Anthropic," what do they often ask you?

**Sarah** (03:00) <br>
Yeah, it's interesting because you had given a couple of top-of-mind questions, and I feel like I actually get a lot of just process and tooling questions — what kind of things do you use? But I don't get a lot of the questions of, why are you there, or what are you doing? It's a lot more like, what's your setup look like, or do you use Claude Code — more about tooling and process.

**Tom** (03:28) <br>
Well, a lot of people that I run into, when the topic of Anthropic comes up, say that the mere fact that this AI company has technical writers, plural, right, is a good sign for the profession — that even the most AI-centric, advanced company still has technical writers. Is that a contradiction in your mind, or is that just how it will be in the ongoing future?

**Sarah** (04:01) <br>
Yeah, no, I definitely still think technical writers are important. I will say we have maybe fewer than we would without AI. So I'm the only technical writer on Claude Code. We've got one other technical writer on the platform docs, and we now have this new docs domain, claude.com/docs, which we are just starting to look for a person to hire for. So we've got me and one other full-time person as technical writers, and we just actually brought on someone to do contract work as well for the Agent SDK docs, which is under Claude Code docs as well but I have been neglecting — so super excited about that. So we do have plural writers, but low numbers of plural. So yeah, it's an interesting one.

**Fabrizio** (04:59) <br>
It's definitely great to see that Anthropic employs writers with that job title, you know, they're not calling them anything fancy like context engineer, whatever — just writers. And so I recently read, I think it was in the Anthropic blog, about how the Claude Code team develops Claude Code. And they use Claude Tag, I think it's called — so it's the Slack integration — and it's like seventy-five percent of all the commits come from just interactions on Slack, etc. And I wonder, does it work in a similar way for you when it comes to docs? Do you interact a lot with Claude during your day to day?

**Sarah** (05:49) <br>
Yes. So I am a hundred percent — everything is Claude. And I would say it's maybe like a fifty-fifty split of Claude Tag, so Claude in Slack, and the CLI. So in writing docs, it's more like orchestrating the processes around docs. I rarely, if ever, am typing words that will end up on the page. If anything, I am leaving suggestions in GitHub. I do all of my reviews with Claude through GitHub, or I try to, so that everything's trackable. So every comment I make of "I didn't like this" can then feed back into a skill or something. So that's the closest I get to writing the actual docs — applying suggestions in GitHub. And then the rest is CLI steering or in Slack.

**Fabrizio** (06:47) <br>
Speaking of steering, you mentioned skills. One of the things I'm trying to do at my work is codifying the knowledge of writers — you know, the style guide, the things we do, etc. — into a body of knowledge that can be used either in agentic workflows or in skills. So what is working best for you in terms of, I want Claude to review docs in a certain way, or I want Claude to support me in a certain way? What's your favorite way of steering Claude?

**Sarah** (07:22) <br>
Yeah, it's a challenging one. I feel like everyone in this space is like, software engineering — you can just write software for me, but I spend twenty minutes trying to get a sentence right sometimes. Like what's going on here? So yeah, great question. I have so many different ways of approaching it and trying to codify this knowledge of how to write, how to review, how to look for the right things.

**Fabrizio** (07:55) <br>
Well, basically it's like, for example, there are folks out there writing like a super long skill with an entire style guide in it. And as far as I know, best practices these days are just like, trust the model's knowledge, keep your skills lean, etc. If you had to move to another workstation at work, what's in your bag? A set of lean skills, maybe some CLAUDE.md files? I don't know.

**Sarah** (08:23) <br>
Yeah, I definitely would have a CLAUDE.md with the major things to know about it and kind of my non-negotiables of, these are the things that I most care about in a review. My heaviest hitters, I guess, in terms of skills, are — I have one for drafting docs. When I start drafting, it works through, first, I need a persona brief. I need to understand why we're writing the doc. That's the biggest thing, honestly, is telling Claude why we're writing and for whom. And it helps me too, because oftentimes it just feels like otherwise we're just describing the feature with no goal in mind. I'm just documenting it to describe the technology instead of actually having a user in mind who I'm trying to help toward an end goal. So the drafting skill always starts with a persona brief. Who are we writing for? How do they find the page? What are they supposed to get out of the page? So I would port that over, and that has my voice skills and everything as well kind of nestled in there. And then the review skills that I would port over — definitely coherence checks, accuracy. Like, if I make a change on this page, does that then make these four other pages invalid or have contradictions?

**Fabrizio** (09:41) <br>
Interesting. For coherence, do you use MCP servers or something? Because for example we do. We found it super useful to have a semantic search tied to an MCP to check the entire corpus of docs. Or do you just provide some URLs? What is it for you?

**Sarah** (09:57) <br>
This is all in GitHub, so this is all internal to the repository already. So it's just looking at plain text. I probably could do something fancier, but I don't know enough about that.

**Tom** (10:19) <br>
I think it's interesting that you have this planning skill where you identify the persona that you're writing for, or the user you're writing for, which is a very user-centric approach to tech writing. But if you look at metrics on what's coming to doc sites, Cloudflare and Mintlify published studies indicating that something like fifty-five, fifty-seven percent of users are non-human agents. So in your planning, are you also planning for this agent audience, which is more common than the human?

**Sarah** (10:57) <br>
Yeah, I think at the end of the agent, there's still a human consuming whatever the agent is going to tell them. So if a human is coming to look at my docs, which is rarer and rarer, I want it to be a top-notch experience for them. So I'm still kind of thinking first about the human who's reading the docs and making that a good experience. And then secondarily, I do want to make sure that any human who is consuming the docs via an agent that's telling them answers from it is also served. And going through — so we're on Mintlify for our doc site and we're using their AI assistant. So we can see all of the information, the questions that people are asking and the answers that the AI agent is giving. And I can see when it's wrong, and really dig into how did it get this wrong if the information is on the page. So that is a big focus. Ultimately a human is still ending up with this information. The agent isn't just going to be an agent.

**Fabrizio** (11:59) <br>
There's always an underlying purpose, right?

**Sarah** (12:03) <br>
So I'm still trying to figure out, at the end of the day, even if an agent is visiting, how do they end up telling the user something wrong? Or how do I make sure that they have the right information? And still focusing it as a jobs-to-be-done thing, or really focusing on what does the reader need to do or observe, is the really important thing. Because otherwise, again, we're just describing software and the agent has to fill in the gaps of, okay, you say the setting is here, but what does the user actually have to do? If you say the settings file lives here, but not that you need to create the file, the agent might say the settings file just exists there, or you don't have to do something. I feel like I'm rambling, but yeah.

**Tom** (12:47) <br>
No, it's super interesting. Hold on. You caught my attention really strongly when you mentioned that you use Mintlify so you can see the questions and the answers and whether users are getting the information they want, which I would love to be able to see that kind of info. And I was like, well, how are the Claude docs set up? I see a box that says "what do you want to build?" And if I search that, am I searching general Claude, or is this like a custom agent in your docs?

**Sarah** (13:20) <br>
Okay, so there are a couple of sites actually. Which one are you on? Because there's claude.com/docs.

**Tom** (13:25) <br>
I just went to platform.claude.com/docs.

**Sarah** (13:29) <br>
Okay, yes. So that one is the platform docs, which talks about the models and the APIs. That's actually not on Mintlify. That's built into our console platform. So you can authenticate with the console and the authentication carries across the docs. I'm actually not on that product, so I'm unfamiliar with that one. But if you go to code.claude.com/docs, that's definitely Mintlify. That's the one that I'm working on.

**Tom** (14:00) <br>
Okay. So tell me about the search there. How does that hook into things?

**Sarah** (14:06) <br>
Yeah, okay, let me pull that up too. Okay, so there's a search at the top. You can search and just pull up regular semantic search, or you can ask the assistant. And then the assistant — this is actually all Mintlify. It's some knowledge base that has access to our docs. You can actually see it grepping around when you ask it a question, and what docs it pulls up that way. You can just see what it found when I was asking the question. And you can ask the assistant on a certain page, you can ask the assistant from a code sample too. So you get that information on the other end of, this user had this question on this page, or this user had this question relating to this particular code snippet. And you can also see, this conversation had like six turns in it, or this conversation just had one turn and then they didn't come back. You get a lot of super useful information out of it.

**Tom** (15:12) <br>
Wow. That's so cool.

**Sarah** (15:13) <br>
Anonymized, but yeah — I don't have information about who, which is good.

**Tom** (15:17) <br>
Okay. So sorry, next follow-up question on that. So let's say you get a bunch of logs and you have, I don't know, twenty different takeaways where docs could be better here, or they didn't find this information. Maybe a lot of fringe cases, people are asking about things. For example, I just asked, I said, how do I get Claude to appear in the side pane of my editor? And it said, which editor are you using? VS Code, JetBrains IDE, Claude desktop, or web? Neither. I'm using Antigravity, right? So now you're going to see that log, perhaps. What are you going to do about it?

**Sarah** (15:56) <br>
Yeah, I might need — well, there are a couple of different levers to pull. You can customize the assistant itself. So I could say, if someone talks about Antigravity, say we don't have specific support for that or something. Or I could add it to the docs — add a keyword to the docs, either as frontmatter, you can specify keywords that will come up in search. Like if someone types in the search box and I have Antigravity in the frontmatter of one of the pages, that'll link the page. Or I can actually write a doc about Antigravity. But I would also see, are there other people asking about this? I pull in from GitHub issues as well. Have people asked about this in GitHub? Is there additional feedback? So I might not take just your one suggestion.

**Tom** (16:46) <br>
Is your day becoming more of reviewing all these interactive results and deciding whether you should make improvements and so on? Is that what it's become? Or how much of a core part of your role is involved in this sort of situation?

**Sarah** (17:04) <br>
Yeah, I'd also be curious to hear about yours, because I imagine you also have tons of feedback, but happy to chat about mine. I will say it's not the main part of my day.

**Tom** (17:16) <br>
I don't have access to any kind of interaction logs. I can't see anything. And I think it's a privacy thing. I think people are very concerned about, hey, I don't want my info out there. What if it's embarrassing? What if they know who I am? Companies are very protective of user privacy, and I'm sure that's why I can't see it. But most writers want this kind of insight and info. And you can usually see search analytics on traditional, pre-AI sort of features — you know, what were the search terms and so on. Sorry, keep going. Or Fabrizio, I don't know if you have something you want to add or say about this.

**Fabrizio** (17:59) <br>
Yeah, it's similar in my case. I think the dream is to have some sort of documentation observability, fully anonymized, where you see maybe the journey of a user through product and docs alike. You know, like when you connect to a Google Drive doc and it gives you a funny animal name — you just need an anonymized ID and that's it. But that really is the dream, I think.

**Sarah** (18:31) <br>
Yeah, I would love to — I haven't spent any time on this, but it would be very cool to track someone's journey throughout. I think we only get the conversation in that one session, but being able to see, okay, this person came back to the docs, I can see their usage in Claude Code as well. We don't have any of that hooked up, but it would be so great just from the educational standpoint of what's really unblocking people, what are they able to build upon, what knowledge were they missing out on.

**Tom** (19:03) <br>
Are you also working on, as part of the docs that are in your domain, these Claude Code docs — do you also have product skills as one of your deliverables? You know, if I'm using Claude Code, do you create product skills that make Claude Code a lot smarter about Claude Code? That's sort of very meta, maybe not a good example, but you know what I mean.

**Sarah** (19:31) <br>
Yeah, no. I've tinkered around with skills. There are a lot of existing skills that are actually just engineer-driven that are really good for helping with Claude Code. I think because it is Claude Code, the engineers are putting in skills that they enjoy and that help them, so that other users can use them. There's a Claude Code guide subagent that links to the docs. That actually predates me, so I haven't had much to do with that. But there is a docs skill in Claude Code — or sorry, not a skill, it's a subagent. And I've done a couple of skills in the product that are not user-facing, like some UX copy skills, because sometimes I'll see an error message that doesn't make any sense to me, or a button that isn't descriptive enough or something.

**Tom** (20:32) <br>
Let me broaden the question and add a little bit more context. So let's say that I'm working for Acme API Company — I don't want to bring in all our specifics, right? So I'm working for Acme API Company, and I know that all my users are using either Claude Code or Cursor. They're never going to my Acme API docs. So I'm going to write some product skills that hopefully these agents can use to find all the kind of info about my Acme API. And I want Claude, and whatever Cursor is configured with, to read my product skills so that they can get accurate information about my Acme API. Do you think that is a trending concern and need for tech writers to address at many companies?

**Sarah** (21:21) <br>
Yes, yeah. I definitely think that skills are a great way to do that. If you are shipping a product and you want Claude to know specifics about it, have up-to-date information, just give it that skill for, this is where our doc site is, this is how to read our doc site, any particulars you need. I definitely think that shipping a skill is pretty core to guiding that experience, because otherwise the model can kind of choose whichever path it wants to with your docs. So just give it the path that you want it to take.

**Tom** (21:58) <br>
Do you have any visibility into how many different companies are shipping their skills to try to get into Claude's brain?

**Sarah** (22:08) <br>
That would all be public. I actually haven't looked at this. That would be something I would ask Ethan at Mintlify, who's been looking into this a lot. But I believe they would all be in some skills repository. You can have a plugin, you can ship it with your documentation. But I don't actually have any insight or visibility into how often they go to doc sites or something. Do you all have — sorry.

**Tom** (22:41) <br>
No, no, keep going, keep going.

**Sarah** (22:42) <br>
I was going to say, I imagine, Fabrizio, you have these things that you've built out for your product?

**Fabrizio** (22:51) <br>
So we do have both product skills and docs skills. And we have a number of mechanisms, especially to make sure that the product skills do not drift away significantly from the docs. So we have an agentic workflow that runs every week and checks the drift. You know, has any of these skills drifted significantly from the docs? And it runs the link and coherence check. That's important. My recommendation these days is becoming more and more to keep the skills very lean and linked to the docs, because otherwise — I don't know if you follow that pattern also, Sarah.

**Sarah** (23:31) <br>
Yeah, I was going to ask, so when you're looking for drift, you are encoding something about the product and not just saying, here are the docs?

**Fabrizio** (23:39) <br>
Right. There's always a significant overlap between a product skill and the docs. There's a part that is genuinely specific to the procedure that you're trying to do, that might or might not — maybe should go to the docs. Sometimes we wonder, right? But it's very specific and very interactive, because it's kind of different. It's like an interactive doc of sorts. It's like an executable doc, if you want. But the reference bits are the ones that I'd rather have as links to the docs, you know what I mean? And I wonder if Claude then prefers to do lots of web fetches to get those docs, or if it prefers to have everything local. In your experience, what works best there?

**Sarah** (24:29) <br>
Yeah, just in my tinkering, or what I've observed — this is my very unscientific look at it — usually if the source code is there, if you have the SDK or something pulled in, it's going to look in the source code first. And then if it can't find the answer, it will do a web fetch with the docs domain that it knows, if it's a well-known company that's in its training data. But if you have a skill that's in the repo too that's pointing it, it'll follow that. If it doesn't have a skill, then it will just do some web fetches to find the information. But I think it's always source code first. If the source code is there, it's just going to look there.

**Fabrizio** (25:11) <br>
Yeah. Even better if it's products that have an open source solution that has the docs within the code repo. That works very well, I heard.

**Sarah** (25:23) <br>
Yes, definitely. As long as there's no drift there too, because then it's confusing. It's the whole, docs say this and code says this — you know, perennial issue.

**Tom** (25:35) <br>
Hey, you know, we've been talking a lot about product skills and the design and so on, and the leanness or detail and how they work. And that's one way to cater docs to the agent experience. I'm wondering if you have any other things you've done that try to make your docs more agent friendly beyond product skills. I mean, all I hear about nowadays is product skills, skills, skills, skills. And last year, the last two years, it was like MCP servers, MCP, MCP. A while ago it was llms.txt files, you know. So now we're on skills, and people have definitely seen a lift to eval scores with skills, so they work. But what else? What other kinds of things do people do to make their docs more agent focused?

**Sarah** (26:29) <br>
Yeah, that's a great question.

**Fabrizio** (26:34) <br>
Let's maybe talk about this, Sarah. Remember when we had that conversation about how agents talk between themselves? And I did this experiment with text compression and semantic rewriting, trying to get a terser doc that an LLM consumed. And the results were quite surprising. For non-novel technologies, for things that are in the training data, which is a lot of things, writing less works as well as writing super long instructions. So I don't know — if you're just talking about saving tokens, and in this economy I think it's quite important to do that, that seems like a direction. What do you think?

**Sarah** (27:18) <br>
Yeah, I have zero answers. I can just chat about what I've thought about. Part of it is writing docs that agents can work from. I'm looking at it from the place of, where do agents keep getting the questions wrong? And the biggest thing for me is just leaving no room for interpretation. It's stating why something is happening and not just that it does happen, because if you don't say why, Claude can make up an answer for why. Like in a troubleshooting entry — you get this error message. Why do you get this error message? Claude could make up that you get that error message because XYZ, when that's not the case, and then go down a path there. Having really clear callouts for things like default behaviors versus examples. In one of the Claude Code docs, there's a table that has a parameter name, and then a column for the description, just the prose description, and then a column for an example, an example value. And the AI assistant kept answering the default value as the example value, because it just saw a column with a number in it, or a value, and it was like, well, that's probably the default. It didn't read the header that said this is an example. So it's anchoring text and making it really clear when an agent is in the middle of a big prose dump — making labels next to the thing that someone's going to be asking about.

**Fabrizio** (29:10) <br>
Now you sound like a psychologist.

**Sarah** (29:13) <br>
It is a lot of, how did it get this, why did it get this. Forensic. I have another process going every time there's a wrong claim that's introduced in the docs, or that's given by an AI assistant, or that is written as part of a draft. I send it to Claude Tag, and I have this whole forensics thing going of, trace every single false claim. How did it get there? Why did it get there? How do we stop that from happening? And I've got a whole pitfalls doc of, these are the places we've gotten this wrong. So I am trying to do, how do we squash this? My North Star is that the docs are a hundred percent accurate at any given time. And we're not there yet, but.

**Tom** (29:56) <br>
Wow. That seems really cool. I love that doc forensics kind of exploration. Just curious, can you give us an example of what are some of the root causes for Claude getting things wrong?

**Sarah** (30:11) <br>
Yeah. And I will say too, I have been very wrong before, before AI also. So it's a lot of similar things of, I have totally misunderstood the meaning of a parameter and written the docs that way, and then gone back and been like, oh my gosh, this was totally wrong. But things that Claude has gotten wrong — sometimes it's that it doesn't trace the pathway completely. So if it's looking at the source code, it might see this value is set here, but then it doesn't see that in another file, maybe it's overwritten. Or early on, some things that I've hopefully squashed, like feature flagging. This is on for a certain level of customers, but not everyone. So that's something that until I codified what are all the places that feature flags are set and the different levels, it would sometimes escape that, and say this feature's available for everyone when it's only for certain people.

**Tom** (31:09) <br>
Do you have a forensic skill, something like an internal authoring skill that probes all these areas and tries to find the causes and so on?

**Sarah** (31:19) <br>
Yeah, I have a skill called verify-docs-PR that has the pitfalls, has all the places that I know we've gotten wrong in the past, and it has these different pathways of where different things live in the source code that are verified. And it goes through and verifies a docs PR, and then if it finds anything was incorrect, it sends that trace to Slack to then reincorporate into our corpus of failures and figure out how do we harden this in the future.

**Tom** (31:54) <br>
Do you have any kind of metrics that you use with your docs? Do you have like, hey, we had X many false assertions that Claude made this month and we got it down, or we had this many user interactions that were successful versus unsuccessful? What do you look at?

**Sarah** (32:13) <br>
Yeah, I am working on building that out. So we've got the traditional metrics like page views and all that. But I have a Claude Tag channel for each of my big pillars that I'm pushing towards. So one is, the docs are a hundred percent accurate at any given time. And for that the metrics are like time from incorrect claim introduced to corrected. And that's been going down, so that's nice — for the claims that we found. There might be some incorrect claims we haven't found. So time from introduction to correction. Another big one is, I would ultimately love it if I could just have AI write the docs for me and they are a hundred percent my style guide and my voice, and I don't have to make any corrections. So I've got one going for the number of steers I have to take on each docs PR, and trying to get that down with skills. So every time I say I don't like this sentence, or I want to rewrite this, that goes into another Slack channel that is polling every day to see how many corrections I made on a PR, and we're trying to steer that number down.

**Fabrizio** (33:32) <br>
It's interesting because in my day to day, my approach is I'm very trustful of the LLM's output, and usually I prefer to just churn something out and then review later, or have mechanisms that self-heal the docs. But I know that in some other areas these might not be acceptable, because there might be something critical that you don't want to leak out, etc. So I was wondering — we have this new role as tech writers as the gatekeepers of AI and the guardians of not just the taste but also security. It does feel stressful, right? And I was looking at the frontmatter reference of Claude skills. There's a path parameter that limits, for example, when a skill can be invoked, but I don't know if it also extends to the kind of things it can read. So I was wondering, what sort of fencing — you know, if Claude were a big sheep, what sort of fence, how do you build a fence for this big AI roaming around? If you build any. Maybe you don't build any fence at all.

**Sarah** (34:48) <br>
Yeah. Well, everything is still human reviewed. I'm still ultimately the one pushing merge on everything. So part of the fence is just the trusted actor setup in GitHub. You have to have an approval from a human to merge it in. And so that's honestly the biggest one. And then I'm not perfect, so things definitely have slipped. So we have a lot of other stuff, like Claude Code code review that's running on every PR. It's a lot of AI fences for the AI sheep.

**Fabrizio** (35:29) <br>
Also maybe some deterministic checks, I guess. Like simple ones.

**Sarah** (35:33) <br>
Yeah, definitely deterministic checks. And I do want to add more testing in. So that's part of my coverage — that's just another thing in the long list of things that we all want to get to and haven't fully gotten there yet. But I would like to have more deterministic testing of, this assertion that I'm making here in the docs is actually tested here in the source code. And that's a goal. It's not a current happening.

**Fabrizio** (36:08) <br>
Yeah, or some forbidden words. Like, you know, "load bearing."

**Sarah** (36:14) <br>
Yes. Exactly. The load bearing. It's all load bearing.

**Fabrizio** (36:19) <br>
You know that there's been this trend going on on Hacker News and other places this last week, where you just put in the base prompt of Claude or any AI, "always write using Simplified Technical English," and it works wonders. It's way better than the caveman style. But anyway, I digress.

**Sarah** (36:38) <br>
You just have to tell Claude how you want it to write and it will adapt, more or less. I'm trying to think if there's anything else. We've got the style guide — I feel bad for the em dash, but it's definitely like, no em dashes allowed.

**Fabrizio** (36:57) <br>
I really like the approach that GitHub is following with agentic workflows, because they have a very strong security model where essentially they run the agentic session in a flow where there's a firewall that checks the networking. For example, it doesn't allow the agent to reach servers that it's not allowed to reach. And also it has a safe output block where essentially it redacts anything that seems sensitive using another AI subprocess. So I really like that system.

**Sarah** (37:38) <br>
Yeah. And Claude — you know, I'll spout all the products that I use — but Claude Tag does have that as well, where you can set the trusted networks that you want it to be able to go to. Otherwise it's operating in a sandbox, so it can't reach anything you don't tell it it can reach. And there's a hook that was added recently to Claude Code that allows you to also do some redaction in the text before it reaches the end user. I forget what that hook is called, but there is a hook now for that as well.

**Fabrizio** (38:14) <br>
Nice. Claude hooks are super interesting.

**Tom** (38:17) <br>
Hey, Sarah, you've mentioned Claude Tag a number of times. And honestly, I'm only very superficially familiar with it. Can you explain more about it? I don't know if Fabrizio uses it, but I just want you to give us the 101 on Claude Tag here.

**Fabrizio** (38:34) <br>
I'm using it, yeah.

**Sarah** (38:39) <br>
Yeah, and I would love to hear your use cases as well. But it is essentially Claude in Slack. And there was a previous Claude in Slack version where it could do things like create PRs for you, it could respond to questions, but this one I guess just enhances the experience. So you can invite Claude to a Slack channel — any Slack channel. So let's say I've got a docs feedback Slack channel. I invite Claude there and I tell Claude, anytime someone has feedback, review the feedback and then see if it needs a PR and then put up a PR for me, or something like that. So then humans are interacting in the channel and someone says, the docs here are wrong, and Claude will just immediately take that and look in the source code, verify if it's actually incorrect, or maybe the user was interpreting it incorrectly, and then it will go create the PR and then other people could steer it. So it's a cool multiplayer experience. The reporter could say, actually that's not what I was thinking. And then I can chime in and say, well, this is what I know is happening over here.

**Fabrizio** (39:54) <br>
One of the most interesting things I've seen Claude Tag do is that it follows up. Like it remembers from previous conversations and issues, and then if somebody else asks about it, it jumps in and tries to be helpful. Sometimes it tries to be too helpful, so you have to tune it a bit. Claude Tag accepts, I think, per-channel rules. So that's very convenient, right?

**Sarah** (40:20) <br>
Yep. Yeah, it has that channel memory of, okay, I know we're working on this. This person wants me to do things this way, this person wants me to do it another way. It can store memories. It has access to your connections as well. So you can connect it to GitHub and GrowthBook and BigQuery. So I can say, how is this page's feedback doing in Mintlify? And so I've got a Claude Tag channel that's just triaging feedback. So getting back to your question of, is my day just looking at this feedback and tuning the docs — Claude is watching that feedback, putting up PRs for me. And so I review it and I say, okay, yes, this seems right, or no, that seems wrong. But the self-healing is great in that respect, because it's looking for reports of things wrong, and as soon as a user reports it, it can just put up a fix.

**Tom** (41:18) <br>
Curiosity here. So how many PRs — pull requests — are you pushing every week? Like, is this a stream of these? Are these like hundreds of PRs? Are these just a few? How much content are you generating in this process?

**Sarah** (41:38) <br>
Yeah, good question. So the whole company was shut down this past week, which was great. We all got a break. But as part of that, it was my goal to get my PR count from over 200 to under 100. So I merged or closed a hundred-something PRs on Tuesday.

**Tom** (42:04) <br>
My goodness. You closed a hundred PRs in one day?

**Sarah** (42:07) <br>
Yes. So that was my massive day, because no one was shipping anything and I could just focus on the backlog that I'd been wanting to groom.

**Fabrizio** (42:14) <br>
Well, you know this is going to be the headline of the interview, you know?

**Sarah** (42:18) <br>
I know that was one day. That was a single day. It was my big vacation goal and I accomplished it.

**Fabrizio** (42:26) <br>
Congrats.

**Sarah** (42:27) <br>
Thank you. That was a single day, but in terms of volume day-to-day, I want to say I'm getting maybe ten to twenty PRs a day, from stakeholders, from the triaging bots that are going around. I've got a couple of different ones. I've got ones that walk through the docs as different personas every week to see, okay, does the UI still work this way? Does this make sense if I'm a Windows user? Do these instructions still all work on Windows? Or I'm an IT admin — are my questions answered here? So I get a couple of PRs from those. And then the Claude Code team releases every day. So I get a release PR every day, and that's usually massive. That's honestly a lot of my day, the daily release process, which is why on vacation I was able to actually get to the rest of my backlog.

**Tom** (43:42) <br>
So you mentioned the release process. And this also dominates a lot of my attention in my documentation. Do you have little bots that go and check the whole corpus of your docs to see if, hey, this release, does it merit me changing anything else that people probably didn't even know about? Some parameter, now it's deprecated. It was mentioned in some old code sample on some page that is deep in our hierarchy. What kind of automation do you have around that?

**Sarah** (44:16) <br>
Yeah, that's the biggest monster that I've been trying to chase down. So it is a lot of subagents that go and verify all this information. We've got a couple of different layers of signal. Sometimes engineers will write docs with their changes, and then that's the clear signal that this is something we want to document. So I pull in any docs changes that an engineer has written. There's also the changelog that goes out. So that's kind of the next highest signal — we want to document this feature because there's a public-facing changelog entry about it. And then I do also diff just the code between the two release versions to see, did something user-facing change that there isn't a docs PR already for, or that isn't in the changelog? So it's taking all of those different signals, and it churns for like two hours looking through the source code and the docs PRs and combining everything into one release PR. These are all the different things that changed, and the docs changes that need to happen. And then I comb through that and do a lot of voice stuff. I'm still trying to hone — my biggest obsession right now is the reader is the actor, and the docs need to tell the reader what they need to do instead of describing a settings file as the actor, or a configuration as the actor.

**Tom** (45:47) <br>
Hold on. You've got to unpack this more. Your biggest obsession is the reader is the actor? Tell me about this.

**Sarah** (45:54) <br>
This is just my style thing that I can't get codified yet. But it's just — I am the reader and I'm reading the docs. Tell me what I need to do or what I'm observing. Don't tell me the settings file flips this thing. Tell me what I'm supposed to do with the settings file. And so it's mainly just reframing all these things.

**Fabrizio** (46:22) <br>
Yeah, I think — if I get it right, and because I wrote about this — you picture the doc as something tied to a user reaction, something that a user wants to do or wants to achieve, not like the type of content. Because I don't care if it's reference, I don't care if it's how-to, that's cookie-cutter categorization. It's more about the end user intent. Like, is it satisfied by the doc, right?

**Sarah** (46:53) <br>
Yeah, yeah. And it's for every sentence that I'm describing — don't just describe the feature as the main character of the sentence. The reader is always the main character and they need to be taking an action or observing something. Claude can also be an actor, because Claude can be doing things. But yeah, this is just my super pedantic, I just need this — this is the style thing that I'm obsessed with right now.

**Tom** (47:23) <br>
It sounds very similar to just task-based documentation, like going in with the mindset that users are trying to do something and writing around those tasks.

**Sarah** (47:34) <br>
Yeah, definitely. None of this is new or groundbreaking. It's just my "stop using passive voice, stop saying a hook is going to do this for you and say you need to enable the hook to do this thing for you instead." It's very much my way of describing things that are very known already in tech writing, and I just haven't figured out how to get Claude there.

**Fabrizio** (48:06) <br>
So speaking of switching to workflow and ways of work — I do lots of development work these days, more than writing, for docs infrastructure and stuff like that. And when I use Claude, I use plan mode a lot for complex stuff, and I rely on complex models, heavy models, for the planning part. And then I prefer to use the lightest possible model, like even Haiku sometimes, to do some other things. Do you also do this for writing? And I don't know if you have an answer, but I wonder what's your general purpose favorite model among Claudes?

**Sarah** (48:49) <br>
Yes. I am very lucky in this respect because I have unlimited tokens.

**Fabrizio** (48:56) <br>
That's the dream.

**Sarah** (48:57) <br>
I am biased. So I do prefer Fable for a lot of work. But I've been playing around with the advisor — have you checked that out at all? Where you can set, in Claude Code, you can be working with maybe a less capable model but set the advisor to be a higher one, if it needs to check something. Sonnet 5 I've also been liking for certain writing tasks. But I kind of do set Fable and go a lot of times, because I am very lucky to have those tokens.

**Tom** (49:42) <br>
Just curious, do you have any sense of how many tokens you burn every week? Is there any kind of awareness like, hey, I burned through 450 million tokens this week, or whatever?

**Sarah** (49:56) <br>
Yes, we can see those numbers. And it's kind of spread out all over the place, so I actually can't remember combined what they are. I haven't looked in a while. But you can see it — I think Claude in Slack uses a lot of my tokens because I'm having all these conversations. Something I care more about right now is cache hit rate. I'm really on cache hit rate.

**Tom** (50:22) <br>
What is cache hit rate?

**Sarah** (50:24) <br>
So there's a cache when you're using Claude Code. Every time you send a message, it's sending the entire history of your messages to the API. So if I've been chatting for an hour, I've got 200, 300,000 tokens or something in context, and I'm sending that on every single message, because the model needs to have that whole chat history in order to reconstruct what's going on. The cache is keeping all of that. The API has all of the previous messages in its cache, if it hasn't been too long since you last chatted, so that it doesn't need to read the entire history of the conversation cold. It's reading instead from the cache, which is a lot cheaper. And on subscription plans, like on Pro or on Max, the cache TTL, the time to live, is an hour. So if I've had a really long conversation with Claude and then I send another message two hours later, it's no longer a cache hit. It has to read the entire history again cold and reprocess every single message. And that just burns through a ton more tokens. It's something that, if you really want to optimize costs, look into that — looking at your prompt caching, reasons for cache breaks. That's something that you can really tune around. So look at what your TTL is on your prompt cache. You might want to compact or something if you're going to be away from the computer for a long time. We have some docs on this in Claude Code, but it's another lever a lot of people maybe don't realize that they can pull to work with token efficiency.

**Fabrizio** (52:26) <br>
I think the default is like one hour, right?

**Sarah** (52:30) <br>
Yes, default is an hour, unless you're on API tokens or a third party like Bedrock. And in that case it's five minutes.

**Fabrizio** (52:35) <br>
Five minutes, wow. Okay.

**Tom** (52:43) <br>
Hey, I don't know if we covered this earlier, I may have missed it, but have you described your setup? What IDE do you prefer? And do you always work in the terminal with Claude Code, or do you have the Claude extension and have the side pane going? What's your preferred way of working with AI and docs tools?

**Sarah** (53:05) <br>
Yeah, it's changed a lot. I'm also curious what yours are, to compare the setups. But I was previously using VS Code, and now I don't really write anymore. So it's all the CLI for a lot of my heavy steering work. If I'm actively iterating on a doc, I'm doing it in the CLI. And then if I am more reviewing a doc and just have a couple of comments that I want Claude to address, I'll do it all in GitHub, and leave my notes just like I'm reviewing anyone's PR. I just go through, and this one happens to be written by me or written by a bot, and I'll leave all my comments in GitHub and then have it go through and iterate. And then Claude Tag as well is another huge one. I used to work on the desktop more often, and also in Claude Code on the web. But Claude Tag is Claude Code on the web — it's using a Claude Code on the web session under the hood.

**Fabrizio** (54:13) <br>
Well, in theory, if you use the slash-remote command in Claude Code and Claude Tag, nothing prevents you from working while you're taking a walk.

**Sarah** (54:23) <br>
Yes — which, there should be breaks. I would encourage breaks. But Slack is great. You can do Claude Code remote, and set up remote control so that you can steer your local machine while you're on a walk. Or I will do a lot of Slack when I'm coming into the office. One thing I really like is I'll say, hey Claude Tag, I'm about to commute home, so I've got fifty minutes. Can you just give me a list of all the quick PRs that I can look through? And then I'll do that.

**Fabrizio** (54:56) <br>
I was planning to create a skill that reminds me to take breaks. I don't know if that's a thing, but.

**Sarah** (55:03) <br>
That is great. I was thinking like a — what is that, the Pomodoro timer? Like the skill is, shut down my computer or something. Force me, don't respond to anything.

**Fabrizio** (55:16) <br>
So for what it's worth, I use a very similar setup. I also use Claude Code a lot. Most of the things I do, I do them from the terminal. But I'm also using these days — there are several apps out there, a lot of them actually, to orchestrate and manage multiple sessions. My favorite is one called Harder, but there are others like Superset, etc. And it's very nice because instead of opening lots of terminal tabs, you just have the sessions always there in a menu. So that's quite convenient.

**Tom** (55:45) <br>
And I feel antiquated because I don't like working in the terminal. I like having this side pane in my — we don't have Visual Studio Code, but it's like Antigravity. They're all highly similar because they're derivative. Anyway, I like to have it in the side pane and manage chats that way, and sessions. I've tried in the terminal, it just doesn't seem as visually pleasing to me. And also when my AI makes changes to content, I love to see more of a visual diff of things and kind of know what it's changing. Sometimes the terminal just writes to disk and I'm like, I don't even know what it changed. I have to look through and maybe look at snapshots in version control to see. But yeah, I like to see more of, hey, this is the red, the old stuff we took away, and this is the green stuff we added.

**Sarah** (56:44) <br>
It is nice. The Claude desktop app and remote do also have that diff view, which is nice, because sometimes you do just want to know, what did actually change here?

**Fabrizio** (57:03) <br>
I have this last question. I would have a million questions really, but my last question, Sarah, is: for writers who are out there planning to continue working as tech writers, given your experience, if there were two to three things you would recommend that they learn to gear up, what would those be?

**Sarah** (57:32) <br>
Yeah, that's a great question. I think learning how to steer a model more, through skills, through plugins, through any kind of customization layers you can, is something that I would really emphasize. And in that, getting opinions about what makes good writing. If you haven't already, develop your own style guide. Don't just take whatever the model is suggesting. Defining for yourself what's the most important thing, and then learning how to make a model follow that, I think is really worthwhile. So for a personal blog — if you're just getting started and you don't have actual docs that you're contributing to — define for a personal blog what you care about. And you can have AI tinker with some blog posts or something and see how close you get to your vision. That's the biggest one that I feel like gets people running faster when they get started with AI and docs.

**Fabrizio** (58:58) <br>
So we could kind of summarize it as, lose the fear and experiment. It's a bit like the message.

**Sarah** (59:05) <br>
Yes. I would definitely say — and I feel like no one's using it the exact same way. One of the things that I love is that my attention can go where my interests are and I can really dive into that. And there are so many ways to make the docs a good experience, and there are so many ways we can use AI for that, that it's a lot of passion driven for me right now. So find what's interesting to you. I don't think there's a set way that you have to do it. Just start tinkering. I think I was mentioning before we started recording that something like a year and a half ago, I was very anti-AI in my writing. I was like, this isn't real and I don't like this at all. And it was just that I hadn't played with it. I had been forced to use some really clunky tools that didn't work for me. And then once I took the opportunity to sit down and see how they could fit into my workflows, it all changed.

**Fabrizio** (01:00:06) <br>
Yeah. And then, well, unlimited tokens really help, right? I have this colleague at work, he's an engineer, and he says that for his next job, he doesn't care about compensation, he just wants unlimited tokens. And I was like, wow, the man is hooked.

**Sarah** (01:00:25) <br>
Exactly. Well, sometimes I wonder — there are people who really encourage you to use a ton of tokens for whatever you're doing, but then I'm like, I've got to be doing something super wrong if my token count is really high. I'm more on the side of, let's figure out how to work efficiently with the cache and limit a little bit. But it is nice to have the buffer.

**Tom** (01:00:49) <br>
It's really interesting to hear your evolution, where a year and a half ago you just weren't as pro-AI because of the tools and the experience. I feel like more and more, the people I meet, whether writers or not, their views on AI are shaped on sort of a conversion experience around AI. If you've had that conversion experience where you've been in a scenario where AI blew your mind because it was doing something that you could not even conceive that it could do, and it worked really well for you, it's a turning point. And some people haven't had that. My wife, my kids, they have not had an AI conversion experience. And many, many tech writers as well, who are just like, yeah, I don't use AI for this — still curmudgeonly about it. But it is cool. I think there must be a genre. I can trace my conversion moments to a few different experiences where I was just in awe of something.

**Fabrizio** (01:01:56) <br>
Like seeing the light, yeah.

**Tom** (01:02:00) <br>
For me, I was working on a blog post and I was trying to compare Bakhtin with model collapse and something else. And I was reading a text for hours and it was really hard to understand. I uploaded it into — I can't remember which AI tool, some AI tool — and it totally was articulating it, spinning circles, making connections. And I was like, oh my God, my sloppy wet brain is so not going to win any kind of analytical intelligence race with these tools. And so I'm like, I want to definitely just use them to their full advantage. I feel like as tech writers, there's so much more that we could be doing. And this is a — sorry, this is a weird comment, I don't know if I want to make this — but you're doing a lot of advanced things, but you're also one of a very small number of people working as tech writers at your company. What would it be like if you had two to three times as many writers? Would you be able to do stuff that you never dreamed of? Work on new types of deliverables, things that you've always wanted to, rather than sort of being stretched thinner and just like, we can get by with four writers and we can do it all if they're a hundred percent focused on everything.

**Sarah** (01:03:24) <br>
Yeah. The idea of so many more writers — I think you could do some really crazy stuff. A lot of what I'm doing is just keeping up with releases, but I have a huge backlog of docs that I want to rewrite based on user feedback, based on my own. I came into this and they were in a shape I didn't quite like, and I still haven't gotten to the place of updating them. So some of it would just be that the docs could look nicer. But can you even reimagine the docs experience? Like building more in-product educational experiences, building more interactive web pages — just reimagining what it looks like to be a human interacting with the docs. It doesn't have to be static anymore, because it's really easy now to have Claude build an interactive component on the web page. And this is getting into, what's the role of an education team or a product team? The boundaries are blurring. But I would love to play around with that space more of, how do we just deliver this information in the most efficient, tailored way? Is it just that users should use Claude Code and ask in their own personal chats, how does this work?

**Tom** (01:04:43) <br>
I definitely want to see more companies do that, to reimagine the docs and to really elevate the potential of what docs can be, so that other companies don't look at AI as a way to get more done with fewer tech writers — you know, just keeping the same quality level, but now we've got like 50% fewer tech writers. That's not inspiring. I want somebody to do something where other companies say, oh my gosh, we need that. For many years it's always been, look at Stripe's docs, or look at these fancy docs, can you do it like that? And then when you tell people, yeah, Stripe has like fifteen tech writers or something, they're like, what? But anyway, getting to that point of reimagining docs — definitely a vision to hold to.

**Sarah** (01:05:33) <br>
Yeah, I am excited. Just a couple of model releases away, right? Then we'll be living in this future world.

**Tom** (01:05:44) <br>
Well, we've been chatting for a good hour and that's about all the time we wanted to spend. But Sarah, if people want to follow you, can they go to your blog, to LinkedIn? Do you want to tell us where they should go?

**Sarah** (01:05:56) <br>
Yes. Very outdated things — I'm hoping to do more. But I am on LinkedIn, I believe it's just Sarah Deaton. And I do have a blog that's also outdated. It's just sdeaton.com, s-d-e-a-t-o-n. And I've got some posts that I will eventually put out. How do you all find time with your work? I want to be like you.

**Fabrizio** (01:06:21) <br>
So I have this subagent that writes my blog. No, that's — I'm joking. I don't know. Tom and I, I think, are addicted to blogging, but I don't know.

**Sarah** (01:06:31) <br>
It's great. Well, you are my goal. You're my North Star for my agent.

**Tom** (01:06:37) <br>
Fabrizio, if people want to find you, tell them where they can read more about you.

**Fabrizio** (01:06:41) <br>
Well, of course I'm always on passo.uno, that's where you can find me. That's me, I'm there.

**Tom** (01:06:49) <br>
Yeah, and you're a regular blog writer and poster. You're very active in Slack, in the Write the Docs Slack, on LinkedIn. I see you all over. I also see Sarah in Slack and other places. You can follow me at idratherbewriting.com. And I'm not as active on Slack as I would hope to be. I want to get more in there, but time is always fleeting. Anyway, thanks again for listening. And hope to see you on the next episode.

**Fabrizio** (01:07:21) <br>
Thank you everybody. Ciao.

**Sarah** (01:07:22) <br>
Thank you.
