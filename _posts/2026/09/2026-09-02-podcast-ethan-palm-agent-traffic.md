---
title: "Writing for an audience of agents — podcast with Ethan Palm from Mintlify"
permalink: /blog/podcast-ethan-palm-agent-traffic
date: 2026-09-02
categories:
- ai
- podcasts
keywords: Ethan Palm, Mintlify, agent traffic, documentation analytics, llms.txt, agentic docs, hidden directories, content negotiation, AI-generated content detection, Write the Docs, documentation platforms, skills, brain rot, docs metrics
rebrandly: https://idbwrtng.com/podcast-ethan-palm-agent-traffic
description: "In this podcast, co-host <a href='https://passo.uno'>Fabrizio Ferri-Benedetti</a> and I chat with <a href='https://mintlify.com'>Ethan Palm</a>, a technical writer and knowledge engineer at Mintlify, about what happens when nearly half your documentation traffic comes from AI agents. We discuss Mintlify's platform data on agent versus human traffic, hidden directories for agent-only content, the uncertain future of <code>llms.txt</code>, automated doc maintenance workflows where writing accounts for at most ten percent of the job, and the social atrophy that comes from reaching for a terminal prompt instead of a coworker."
image: ethanpodcaststillthumb.jpg
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/podcast-ethan-palm-mintlify-agent-traffic.mp3
podcast_file_size: 76.6
podcast_duration: "00:53:10"
podcast_length: 76573130
---

Note: These shownotes are AI-generated.

* TOC
{:toc}

<iframe width="560" height="315" src="https://www.youtube.com/embed/kHEk5GVMw9o" title="Writing for an audience of agents — podcast with Ethan Palm from Mintlify" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Audio-only version

{% include audio.html %}

## Links mentioned

* [What the data shows when docs meet LLMs](https://wtd2026.mintlify.app) (Ethan Palm — companion site for his Write the Docs 2026 talk)
* [Almost half your docs traffic is AI: time to understand the agent experience](https://www.mintlify.com/blog/ai-traffic) (Mintlify blog)
* [Mintlify documentation](https://mintlify.com/docs) (Mintlify — the platform Ethan works on)
* [Passo.uno :: Technical Writing, AI & Docs Engineering :: Fabrizio Ferri-Benedetti](https://passo.uno) (Fabrizio Ferri-Benedetti — co-host website)
* [Orchestrating docs instead of writing them yourself — podcast with Sarah Deaton of Anthropic](https://idratherbewriting.com/blog/podcast-deaton-anthropic-tw-automation) (Tom Johnson, I'd Rather Be Writing — the previous episode referenced in conversation)
* [Do LLMs write like humans? Variation in grammatical and rhetorical styles](https://www.pnas.org/doi/10.1073/pnas.2422455122) (Alex Reinhart, Michael Laudenbach, et al. — PNAS, 2025)
* [Nope](https://nope.net) (Project Nope — observatory for human-AI relationships)
* [The state of agent traffic in documentation (March 2026)](https://www.mintlify.com/blog/state-of-ai)
* [Ethan Palm on LinkedIn](https://www.linkedin.com/in/ethanpalm/)

*Note: Mintlify is one of the advertisers on my site, but this podcast isn't a sponsored podcast.*

## Topics covered in this podcast

Here's a list of topics we talked about.

- **Forty-five percent of doc traffic is agents** — Mintlify's aggregated platform data shows that roughly forty-five percent of traffic to developer documentation sites now comes from AI agents, with forty-five percent from humans and the remainder from traditional bots (see [The state of agent traffic in documentation (March 2026)](https://www.mintlify.com/blog/state-of-ai)). Disambiguating scrapers from genuine agents improved significantly in mid-2026, making recent numbers more reliable.

- **Writing for humans while serving agents** — Good docs for people remain important, but an asterisk is warranted: you should also do specific things for agents. Every commercial documentation platform is now building infrastructure to serve content as markdown for agent retrieval, because markdown currently appears to be the best format for machine consumption.

- **Hidden directories and content negotiation** — One approach to the dual-audience problem involves maintaining visually hidden directories that agents can discover through the sitemap and `llms.txt` but that human visitors never navigate to. These directories hold exhaustive reference content that would overwhelm a human reader but give agents the full product scope they need.

- **The uncertain status of llms.txt** — Practitioners want a definitive answer from frontier model providers on whether `llms.txt` matters. Either commit to the standard so everyone can invest in it, or declare it irrelevant so the community can stop guessing. The current ambiguity wastes time that could go toward other documentation strategies.

- **Automated workflows and the ten-percent writing ratio** — At Mintlify, a single writer covers the entire documentation set. Feature releases flow through automations that watch source code repositories and pull context from Linear, Notion, and internal knowledge bases to generate draft pull requests. Actual writing accounts for at most ten percent of the job; the rest is reviewing, steering, and merging.

- **Documentation forensics via AI chat analysis** — An agent reviews all AI assistant chat transcripts weekly, judging whether the conversation signals a documentation gap, user error, or product feedback. Edge-case questions that surface repeatedly get placed as stubs in a help center directory and can be promoted into full articles over time as volume warrants it.

- **Testing how answer engines represent your docs** — Mintlify works with a third-party platform to run thousands of queries against Claude, ChatGPT, and Gemini to understand how these answer engines surface documentation. Outdated config file names from old training data are a recurring artifact, underscoring the importance of maintaining backward compatibility and up-to-date content.

- **Analytics for a post-JavaScript world** — Traditional JavaScript-based analytics miss agent traffic entirely. Server-side hits are one alternative, but the field still lacks mature tooling. The comparison to early SEO keeps surfacing: everyone is trying to crack an algorithm no one has documented, and the model providers could help by being more transparent about how they weight and rank sources.

- **AI, brain rot, and social atrophy** — AI enables tackling problems that were previously out of reach, like writing SQL queries to analyze platform usage data without knowing SQL. But the same self-sufficiency risks making collaboration feel unnecessary, and the slot-machine feedback loop of prompting a model can subtly replace the social interaction of asking a coworker.

- **Handcrafted docs and the future of AI-written content** — Technical documentation is more receptive to agent-assisted writing than creative prose, but readers still want to know someone cared enough to verify the content. Research on grammatical variation in LLM output confirms that AI writing is detectable, and as AI-generated content proliferates, an appreciation for human-written, human-verified docs is likely to grow.

{% include ads.html %}

## Narrative essay version of the conversation

*If the podcast were an article, this is what it would read like.*

**Your other audience just arrived, and it doesn't have a browser**

Nearly half of the traffic reaching developer documentation sites today is not human. Mintlify's aggregated data across thousands of doc sites puts the split at roughly forty-five percent agents, forty-five percent humans, and ten percent traditional bots. The number alone is striking, but the timing is what matters: just a few months ago, the platform's own tooling could barely distinguish a scraper from an agent. Once that measurement improved, the trend didn't shift. It accelerated.

The obvious question is what to do about it, and the honest answer is that nobody knows yet. The conversation around agent-ready documentation is still in its early SEO era, where everyone is trying to reverse-engineer a set of rules that no authority has published. Model providers could settle the debate by endorsing a single standard for how documentation should be presented to agents. `llms.txt` is the closest thing to a candidate, but it exists in an awkward limbo: widely adopted enough that ignoring it feels risky, unconfirmed enough that investing heavily in it feels premature. What practitioners actually want is a definitive answer in either direction, because the cost of ambiguity is the time spent guessing.

In the absence of that answer, the pragmatic move is to build for both audiences at once. One emerging pattern involves maintaining a curated, human-friendly documentation site alongside hidden directories that agents can discover through the sitemap and through pointers embedded in every markdown page. These directories contain the exhaustive reference material that would bury a human reader but that an agent needs to understand the full scope of a product.

Content negotiation handles the routing: a human visitor sees the polished HTML version of a page, while an agent receives clean markdown with a directive pointing toward the comprehensive index. This is not quite a parallel documentation set so much as a parallel surface area over the same underlying content, and it lets a single writer maintain both without doubling the workload.

That single writer, in this case, covers the entire Mintlify documentation set alone. The ratio of writing to everything else has shifted so dramatically that actual typing now accounts for at most ten percent of the workday. Feature releases flow through automations that watch source code repositories, pull context from project management tools, and generate draft pull requests that land in a queue. Quality checks run on cron schedules rather than in response to individual merges, because continuous triggers create too much noise.

On Tuesdays, a localization check. On Wednesdays, a sweep of support tickets compared against existing documentation. When the AI assistant surfaces a conversation flagged as negative, an agent reviews it, decides whether the gap is real, and opens a pull request if warranted. The writer's role has become something closer to an editor with commit access, reviewing more than composing, steering more than drafting.

Documentation forensics is where the work gets interesting. Edge-case questions from users rarely merit a full article on first encounter, but they accumulate. A question about whether a component is a wrapper might seem irrelevant to the core documentation, but if it surfaces three times through the assistant and twice through support tickets, a stub goes into a help center directory where it can be discovered by search and by agents without cluttering the main navigation. Over time, stubs that prove their value get promoted into maintained articles. The approach is loose by traditional content-standards thinking, and deliberately so: it prioritizes getting accurate information into the corpus quickly over getting it into the perfect location slowly.

Analytics, meanwhile, are in a transitional state that feels familiar to anyone who lived through the early years of web measurement. JavaScript-based analytics miss agent traffic entirely, because agents do not execute page scripts. Server-side hits capture more, but the signal is noisy without better tooling to classify what each request actually represents. Mintlify works with a third-party platform to run thousands of queries against Claude, ChatGPT, and Gemini, monitoring what these answer engines return about their documentation. Old config file names from deprecated features still surface in model responses, preserved in training data like a fly in amber. Backward compatibility helps, but the lag between publishing a correction and seeing it reflected in model outputs is entirely outside the documentation team's control.

The less quantifiable side of this shift concerns what happens to the people doing the work. AI makes it possible to attempt problems that were previously out of reach. Pulling platform usage data with SQL queries you could never write without an agent is genuinely empowering, and it pushes the role in more analytical, more strategic directions. But the same self-sufficiency that lets you skip the SQL tutorial also lets you skip the conversation with a colleague who knows the data model. The instinct to reach for the terminal rather than for a coworker is strong, and it produces a subtle social atrophy that compounds in remote work environments where casual interaction already requires deliberate effort.

Technical documentation may be better positioned for AI-assisted production than most other forms of writing, because it relies less on metaphor, voice, and the subjective qualities that models handle poorly. But even in documentation, the question of whether someone actually verified the content matters. Research on grammatical variation in LLM output confirms what most careful readers already sense: you can tell when prose was machine-generated, and the tells are systematic rather than occasional.

As AI-generated content proliferates across the web and into training data, the value of human-verified documentation is likely to increase rather than decrease. One possibility raised in the conversation is that documentation teams will eventually need to show the pedigree of their content, walking readers through the quality controls and human oversight the way a manufacturer walks visitors through a factory floor. Whether that transparency becomes a competitive advantage or simply a baseline expectation remains to be seen.

<figure><a href="https://youtu.be/kHEk5GVMw9o"><img src="{{site.media}}/ethanpodcaststill.jpg" alt="Writing for an audience of agents — podcast with Ethan Palm from Mintlify" /></a><figcaption>Writing for an audience of agents — podcast with Ethan Palm from Mintlify</figcaption></figure>

## Transcript

**Tom** (00:01) <br>
Welcome to another podcast. I'm your host, Tom Johnson, and co-host Fabrizio Ferri-Benedetti. Today we have a guest with us, Ethan Palm. He is a tech writer at Mintlify based in San Francisco. We're going to talk about all things related to docs and AI. This is a continuing series where we're diving deep into this intersection and the best practices, trends, and issues as far as tech writers using AI to create docs and better experiences. Fabrizio, Ethan, do you want to just say hello? Maybe Ethan, tell us a little bit about yourself.

**Ethan** (00:41) <br>
Sure thing. Hello. It's kind of fun. I've read both your blogs for years, so I guess it's a longtime listener, first time caller sort of thing. But yeah, like Tom mentioned, I'm based in San Francisco. I work for Mintlify, where it was kind of a fun career change to work on a dev tool for writers. Prior to that, I was at GitHub for quite some time, after finishing my master's in rhetoric. And before that, I did a lot of writing-adjacent roles that you might not consider tech writing. But always very curious when I hear about people's paths, how they got to tech writing since, you know, we all did it in a different way.

**Fabrizio** (01:21) <br>
Indeed. Well, this is me, Fabrizio from Barcelona, as always. So glad that you're here, Ethan. I really enjoyed your Write the Docs talk. And the mini website you made, maybe we can link to it later, Tom, that accompanied the talk. So full of data, and really it reminded me how little data sometimes we use to make our point in tech writing and how important it's becoming. So kudos for that talk.

**Ethan** (01:52) <br>
Thank you. Yeah, and I guess just to give a quick recap for people who may not have seen it, I was sharing some aggregated platform data. Since Mintlify hosts thousands of documentation sites, most people have access to maybe one documentation site, your own. I wanted to be able to share that with the practitioners at Write the Docs and like Fabrizio mentioned, put together a little site so that you could peruse the data, because I know personally, seeing a slide with a number is not how I'm going to learn it. I need to be able to read it and come back to it later.

**Tom** (02:22) <br>
Sorry, where is that site? I have missed this somehow in notes or other things. Can you just tell us the link to that?

**Ethan** (02:29) <br>
Yeah. It's actually not on the show doc, so this is impromptu, but it's wtd2026.mintlify.app. Not a very creative URL.

**Tom** (02:51) <br>
Okay. "What the data shows when docs meet LLMs." Companion site for Ethan's Write the Docs 2026 talk. Cool. And this is — wait a minute. Hold on. You know what, Ethan? I feel like an idiot. I must have missed your presentation at Write the Docs. Somehow it slipped past me.

**Ethan** (03:21) <br>
Hey, that's okay. I will say there's a lot of great events at Write the Docs. It's tough to make time to see absolutely everything there.

**Fabrizio** (03:29) <br>
That happens. Ethan, would you say that the data, like the evidence you brought, has anything changed since you presented? Because things move so fast. Have you noticed any new pattern or anything new?

**Ethan** (03:43) <br>
Absolutely. This is mostly data looking until May of this year. And I can tell you one particular thing: at my work, our platform measures traffic from humans and then agents. In June we got way better at disambiguating what's a scraper versus what's an agent. So I would say anything that we've noticed since June is probably more accurate in terms of the agent versus human traffic breakdowns. The trend is very similar, just with many more agents going to sites now. But in terms of actually knowing what user agent corresponds to what, that's been one of the internal changes. I do think the general ideas of how people are using AI to write content seem similar. That's more personal — every practitioner is going to be approaching it slightly differently.

**Ethan** (04:41) <br>
But I do think skills are sort of getting their second round of juice. We had skills initially, kind of following up once we realized prompt engineering probably wasn't the way to really get the best outputs. And I think maintaining and managing skills seems to be something that a lot of people are really considering and thinking about, especially across an organization — how do you get some consistency there? And then other data, I mean mostly all the numbers go up. People keep liking to use agents, which is not super surprising. And as a little bit of a sneak peek, I'm working on putting out with one of our content creators at my work a new report with updated data, looking at the entire year to date rather than just the past spring.

**Tom** (05:32) <br>
Wow. You know, I was recently reading a different Mintlify blog post titled "Almost Half Your Docs Traffic is AI: Time to Understand the Agent Experience." It was mentioning this data that I think you're talking about — that forty-five percent of traffic to developer doc sites is coming from agents, forty-five percent from humans, the rest from bots or other things. That seems like a pretty novel statistic that Mintlify shared. I haven't seen it anywhere else. I mean, I've seen Cloudflare's statistic about fifty-seven percent of traffic being AI agents, bots, whatever. But that's to general websites. The Mintlify one was specifically targeted to documentation sites, right?

**Ethan** (06:24) <br>
Yeah. And I can speak a bit about that. I think you can look at multiple ways to measure. We try to take a conservative floor when you're looking at this automated traffic. Are you going to get a bucket where it's actually all scrapers, all pre-AI bot traffic, and disambiguating that from what is actually an agent, what has a person or an automation sent off to go retrieve information from your site? And then I think what's not really captured there yet, but important to measure though it happens in a different way, is if you do get your users to connect. If let's say you have an MCP server for your docs, and you get users to connect and they're making calls and directly retrieving your docs. Are you going to call that agent traffic? In my opinion it's kind of a human directing it. So the human intent is very important there. But it is helpful to know how people are retrieving information from your site. I think measuring that is a little tricky. But I also want to get to the root of the question: is it more like the curiosity around how Mintlify is measuring, or what to do about agent traffic?

**Tom** (07:40) <br>
Well, I think the larger question is how should technical writers change their practices to accommodate and account for agentic traffic to their docs? I mean, this is probably one of the biggest pivots in, I don't know, whenever, in tech comm history, where we've always been writing for humans and now suddenly half the traffic is an agent, even if it's directed by a human. And many tech writers are really scratching their heads trying to figure out, well, what do we do differently? Do we put a bunch of product skills? Do we put `llms.txt` files? Do we do longer articles or whatever?

**Ethan** (08:26) <br>
Yeah. It's kind of been said a lot, and I was very much a believer in: you write good content for people, it's going to work for agents. I think now I would add an asterisk to that — but you should probably still do some things for the agents. Though I really think, and this is not a data-driven statement, but to the soul or pleasantness of our work, you still have to make a nice documentation site for users, because I think if we start writing just for agents, it's going to be a challenging profession to keep doing. With all that said, the sort of behind-the-scenes thing, I think many people are doing — it's quite, every commercial documentation platform I'm aware of at this point is doing the behind-the-scenes infrastructure to make sure content is retrievable for agents, which is, currently markdown appears to be the best way.

**Ethan** (09:24) <br>
I know there are some arguments that people want to say it should be XML authored with a lot of structured metadata. Beyond the sort of mechanical, making sure the content is retrievable by agents and getting into the how do we write for them — something I've been looking into recently, because this gets to the humans: I don't want to read 2,000 words for a procedure. But you can make the argument that having every single possible piece of information about your product available to an agent is necessary so that it understands the full scope. So what I've been looking into is having visually hidden directories that I don't expect people to navigate to, but they are discoverable by agents. They're still part of the sitemap and they are in — Tom mentioned an `llms.txt` — so it's sort of an index of all the content there. And then every page on my site directs an agent to let them know this `llms.txt` exists. So if they're web-fetching and land there, it will point them towards that. This sort of hidden directory structure does two things: it lets me still have that curated experience for people who come to the site. Most people just sit on my documentation's homepage, so I think they're chatting with our AI bot and not actually navigating pages. But if someone's going through the site, I want that to be a really good experience. And then these hidden directories have all of the long reference that an agent may use.

**Fabrizio** (11:09) <br>
No, I was wondering, when you said you point the LLM to the `llms.txt` file, for example, that's where the hidden directories are described, right? But when you say you point, how do you point the LLM? Because I have done some tests. There's this trend in README files and docs out there where the docs specifically address the LLMs. They say something like, "If you are an agent, read this." I've done some tests and it doesn't seem to make any difference from just stating the content itself. If you tag it as important, it's just the same effectiveness. The LLM doesn't really care if you're calling them by their name.

**Ethan** (11:56) <br>
Yeah, so content negotiation to get the agents to the markdown, and then every markdown page starts with a hidden directive — hidden to humans. It's in the markdown version saying, "Here, take it to the `llms.txt`." But then beyond that, also some components where you can actually present a different version of the content in the HTML rendered version versus the markdown version. I have some pages where if you get to the markdown, it has kind of a prompt for the agent to follow. The problem there, and I have not solved this one, is agents really don't want to be subject to prompt injection. So if you tell it to execute this command —

**Fabrizio** (12:47) <br>
Exactly. It's actually counterproductive, right?

**Ethan** (12:52) <br>
But you can still give it the sequence of tasks to take a user through, and that appears to work. So for example, our quick start has a guide. It's not telling the agent you're going to run this command, because an agent's probably, hopefully, never going to do that. But it walks through the steps that require a user to give you input. So when you're coming up with your site domain, it tells the agent stop, ask the user for this, but goes through the whole setup flow. In terms of what are the different ways to do this, I think right now it is such an early moment in everyone figuring out best practices that taking just a wide approach of point the agents towards the `llms.txt`, have a skill — you mentioned having a skill directory — I think if you can curate that for your users, that's going to be fantastic. But then you have the sort of customer education: can you get someone to use your official skill, or do you have a community?

**Fabrizio** (13:46) <br>
Connected to agentic usage, of course we're doing all this because it's the historical moment where we feel compelled to provide things to LLMs and AI. But I do wonder, all docs sites I know have been impacted in some way or another in their analytics data, either because of AI previews in search engines or because of built-in knowledge of the models that scrape the docs. The question I would like to ask you is how do you think analytics should evolve to reflect this current situation? Because agents accessing sites aren't going to get tracked by traditional analytics that rely on JavaScript. So should we rather rely on server hits, for example, or other measurements? What's your opinion there?

**Ethan** (14:58) <br>
Yeah. I think I'd take it even one step back, because in general, I think documentation — our ability as a field to collect actionable metrics has always been a struggle. Partially because if you look at something like marketing, you have a clear CTA, right? You can track a conversion. But what is a docs conversion? That's going to look different for absolutely everyone. So I say that to preface with: I think it is important to understand who is coming to your site, or I'm going to say what is coming to your site, because an agent is not a person. But to caution, it's not just about watching a big number go up. That can feel good and having a lot of traffic, but more to understand how users are trying to learn about your product, partially because I think documentation, other than perhaps support, is one of the closest ways to get to your users.

**Ethan** (15:55) <br>
Tracking server hits, tracking however — this is where I don't want to say there's one way to do it because it depends how people are accessing your product. If you are not doing anything AI-related, keep doing what's working and don't change. I think most people, like you said, have been impacted by this and almost every site will be affected by content ending up in training data or in people's agents. But ultimately you just need to know how users are trying to learn about your product and what they want to know. In terms of that practicality, yeah, I think server hits make sense. Also I think there could be, and I have no control over this one, for the large model providers, they could make it easier to understand. I think we're doing a lot of unidirectional work right now where people in our field and others are trying to crack the code and figure it out. It's almost like early days of SEO — can you figure out the algorithm?

**Fabrizio** (17:02) <br>
Exactly. I'm really hoping that the big players will release — I mean, if ads are going to become a thing in frontier AI models, with ads you will also need tools. Like it happened with search engines back in the days with SEO: you want to put an ad, you want to know the performance of that ad, and from that data indirectly you can then get to the SEO indicators, right?

**Ethan** (17:26) <br>
Yeah. I actually also recently have been thinking about this. It used to be putting every single keyword in text that matches your background color, just jamming it full. And I was worried that was the direction we were going with sort of being agent-ready — just put every single thing there. But you can't just put absolutely every piece of information on every site.

**Fabrizio** (17:46) <br>
Yeah. These days it would be like context stuffing, you would say.

**Tom** (17:55) <br>
Hey Fabrizio, I'm looking at your t-shirt and I can only see the first top line. Okay.

**Fabrizio** (18:00) <br>
Well, it's "Must RTFM." I created this for Write the Docs Berlin last year. It was a great success. But yeah, I might set up a shop with merchandise.

**Tom** (18:14) <br>
That's pretty cool. So you actually created a t-shirt for Write the Docs Berlin. That's fun. Hey, I need to do a quick disclosure. Mintlify is actually an advertiser on my site now. This podcast has nothing to do with that, even though we're talking about Mintlify with Ethan and best practices. Just wanted to be totally transparent. Actually, Ethan, I've got a question for you. Last month we had Sarah Deaton on the podcast. She's actually the one who recommended that, hey, you should really talk to Ethan. So that's why we reached out to you. The picture that Sarah painted of her life as a tech writer is one where automation is really in full effect. She doesn't write much, right? She's mostly guiding agents. She's got a lot of automation set up. She's using Claude Tag a lot and sending things in Slack to other groups. I'm wondering, are you the only writer doing all the Mintlify docs, or are you one of a team? And second, what does your workflow look like? Is it one where you're not writing much and automation is doing a lot?

**Ethan** (19:39) <br>
Yeah. I'm fortunate to be physically located near Sarah, so I've got to see her demo her workflow in person and what she's created using Claude, and it's very impressive. I am the only writer at Mintlify. I am fortunate that many of the engineers I work with do like to document their own features, which is not always the case everywhere. But part of the reason they do that is a pretty extensive series of automations that support it. I would say probably absolute max ten percent of my time is actually writing nowadays, and that's often when I seek it out. Almost all feature releases go through an automation where at the highest level we watch our source code repositories and connect to some other integrations. We use Linear for project management. Some of our PMs work in Notion. Others have content in our internal knowledge base. Those are both pulled as context. And then an agent will evaluate what it thinks is required for documentation updates from that, and create a draft pull request. It will tag whoever created the pull request in those engineering repositories that triggered it. Some people get more involved than others. Often it's me who's cleaning those up.

**Ethan** (21:12) <br>
For a really big ship that we're going to be doing a whole campaign for and teaching a lot of people, I'll still write those, but I say "write" in air quotes because I'm often prompting a model to do a lot of that. But then I always come in and edit it. I do have automations and I use Vale for prose linting. So some of that editing is done mechanically, but I still prefer to do a pass on everything. And then for all the maintenance work, that is largely automated as well. For almost every quality automation, I run it on a cron job because I like to know when it's going to run rather than in response to a pull request merging or something like that. I find it gets kind of noisy because there is constant activity in all of our repositories. But if I know on Tuesdays I'm going to get my localization check, and on Wednesdays I'm going to get my update from support tickets check — these automations are using context from around the company. We have one that's based on conversations our support team has, and it looks at those conversations versus what's in the documentation. We have some based on our AI assistant that people chat with. If those conversations are flagged as negative, it looks to see if the documentation can be updated to fix that. And all of these, I'm not really writing at that point — it's mostly reviewing.

**Ethan** (22:52) <br>
When I do write, it's generally — and this takes a lot of cognitive ability to realize — it will actually be faster if I just do this. But the instinct at this point, I think Tom you've written about this, is I reach for the terminal, I'm like, let me prompt. But then I think, no, I'm just editing a paragraph. I can do this with my brain.

**Tom** (23:19) <br>
So interesting. I feel like there's at least one trend that's becoming clear. I think there are fewer writers covering larger territory. When I look at Mintlify's docs, it's a pretty sizable amount of pages. I'm going to guess at least a thousand pages of stuff when you include the reference. A lot of content, and I see it in my own space too where I'm covering more ground. I don't know that product development is keeping up at the same pace. I feel as if I can scale faster than engineers can code more things and release more things, because they still have to QA everything and it's slower. But on the other part, you mentioned something that Sarah termed documentation forensics, where you're investigating why a certain chat was negative or missing. For example, I went into Mintlify's docs yesterday and I wrote, "Is this a wrapper?" And I didn't even spell it right. I was voice-typing. Tell us more about documentation forensics. How do you do it?

**Ethan** (24:35) <br>
Yeah. It's gotten to this point, and unfortunately the answer to a lot of questions is agents. I used to look through all of the chat transcripts with our AI chat manually and then I would validate: is this user error? Was it just someone who didn't get where they wanted, like the page exists? Or is it truly something missing, or should it be product feedback — they want something that does not exist? Because this was manual, it was not something I enjoyed doing. So I wasn't always the most consistent about doing it. Now I have an agent which reviews all of these transcripts and is judging whether they are relevant. This does mean it circumvents the project management side of things. I used to create an issue to track an update, make the update, close it. So there was that visibility. Now with an automation, it's just once a week I'm reviewing pull requests.

**Ethan** (25:40) <br>
The forensics of it in terms of knowing if this is required — I think this has always been something technical writers don't always get credit for: you have to know so much about your product. And generally the quality of our pull requests, I can't give you the exact number off the top of my head, but I'm merging most of them. Occasionally there will be a pull request based on some user interaction where I think, this is not going to go in the documentation. However, recently to kind of expedite this and also really support our support engineers, a couple of whom are in different time zones than I am, I have added this directory — I'm just calling it "help center" for now — where I allow these automations more freely to put in stubs. So it might be someone hit this real edge case where they want to know if something's a wrapper. Most people don't need that in the main documentation about components. However, if it comes up enough, might as well put it as a little stub that might be a paragraph and doesn't normally meet the content standards. But then it's there. So if someone finds it via search or through an assistant chat, that content is now there. That's why I'm getting a little more loose in some ways with where the content will go, and over time promote those small help center items based on user interactions into full articles, or if it's really salient information, find where it belongs in a bigger, more maintained article. It just lets the information more quickly flow into the entire corpus.

**Fabrizio** (27:38) <br>
So thank you first of all for not using FAQs and trying to search for the right place for each piece of content. There's something about search in what you said, and it makes me wonder: do you think site search will become less useful now that we have LLMs being able to go to an `llms.txt` file, scrape the content super fast? Or is it also going to maybe change the scope a bit?

**Ethan** (28:08) <br>
No, in my opinion search is always going to be important, because even with agents, there are going to be people who want to just go to your site and find information. I say this knowing you work extensively on search. I think it's one of the hardest parts of any documentation site. Having high quality, reliable search is very hard. But that is a very worthy endeavor as well, because not everyone is going to use the chatbot, or not everyone is going to find the page they want from Google or Bing. I would discourage anyone from deprioritizing site search or thinking it can be moved past.

**Tom** (28:59) <br>
It seems like a lot of people are very concerned about how accurate and relevant and recommended their content appears in Claude, ChatGPT, Gemini, and others. Seems like when you're reviewing your logs, it's mostly based on the AI assistant logs. Are you also testing Mintlify's accuracy in Claude?

**Ethan** (29:30) <br>
Yeah. We actually work with another software company for testing all those AEO, GEO — choose your acronym — to understand what is coming up in searches. That platform lets us run thousands of queries. There are some — I don't know if you would call them artifacts. For example, we changed the name of one of our config files years ago, and it will still show up in LLM training data every now and then. It will tell people to use mint.json. That doesn't — it works because we maintain the backward compatibility, partially because it is in some training set perhaps forever. So I think that's an example of why you should pay attention to what these answer engines are returning about your content. However, I also think it's not a fully novel problem. We've always had the issue of inaccurate or out-of-date information. It's going to be a matter of producing the most accurate, up-to-date content you can. It will get into the training data. And since it is sort of out of our hands to some extent — how quickly you can influence it, how often they re-index, when they're rescraping — I try not to lose sleep over it and just think, if we're doing our best and maintaining our content, it will get into the training set. That's kind of the most we can do unless you're at OpenAI or Anthropic or wherever else.

**Fabrizio** (31:21) <br>
This really makes me wonder. Everybody is trying to detect AI in content, and of course they want to avoid it because of style, etc. But there are other considerations. The cutoff date of most LLMs right now is quite far in the past. I think the latest is like beginning of last year. And this crazy estimate that about a third of all the content out there is AI-generated in some capacity — that's a lot. It makes me wonder first of all if they have their own way of detecting AI-generated content, which I guess they have, this whole thing about watermarking for Claude, etc. And then it would be interesting in the future to see if you have the same doc site, A and B, one with AI-generated content not edited and the other edited, and see which one the LLM tends to prefer.

**Fabrizio** (32:24) <br>
I think it would be intelligent for frontier models to prefer the human-written content and the high-signal content, but we'll see what happens there.

**Ethan** (32:33) <br>
Yeah. I do strongly believe that with the proliferation of agentic-mediated media, there's going to be an appreciation for handcrafted, bespoke — both thinking about our field, well-written docs by people, but also you can kind of see a return to analog media as well. So I think there will be this appreciation for it, whether it works its way into how LLMs are prioritizing things. You mentioned everyone wants to know what is generated content. I thought it was interesting with the whole discourse around watermarks, and I think it's important to remember LinkedIn discourse is not necessarily reflective of real life. But when people were worrying about that, I was wondering if it was more the SEO of it all — are you going to get downranked for having cranked-out blogs? Because generally our documentation isn't relying on metaphor and the things that agents write poorly, I do think technical documentation is much more receptive in good ways to using agents rather than a thought piece.

**Tom** (33:57) <br>
I just did an experiment coming back to this question of how do you get your tool recommended in major AI platforms like Claude and others. I typed, "Okay, I need a good platform for my developer docs that is AI-native and has good interactive AI features. My product is web-based. Recommend what I should use." So Claude spent three minutes searching the web, which comes back to your answer about how general SEO factors into everything. After searching the web, it actually came back and recommended Mintlify, with quote, "one caveat you should price out before committing." It says it's the strongest fit and so on, but it says that pricing has been unstable all year. Don't know how true that is. But it's pretty cool that it's actually recommending Mintlify. When I did the same thing in Gemini, it's also giving me Mintlify. And in ChatGPT, also Mintlify. So you guys are rocking it right now, man. You are tearing it up.

**Ethan** (35:12) <br>
Yeah, that shout out goes to our marketing team and the content they are working on and their strategies to really test that. Though I will also give a shout out: having quality documentation helps with search results. And that goes for everyone.

**Tom** (35:30) <br>
Hey, we have been talking about Mintlify but we've never actually said what it is. Can you explain what Mintlify is and maybe give us a brief explanation and examples?

**Ethan** (35:45) <br>
Yeah. At the highest level, we're a platform for hosting knowledge online. We started as a developer documentation company, focused entirely on having documentation sites that were easy for people who were building small projects and teams, and have expanded into more use cases like internal knowledge bases. I actually — my favorite part of Mintlify is seeing the random projects people have. There's someone who runs his driving training program on Mintlify. I've seen a couple people hosting their portfolios. But we really approach three things: make it easy to discover content, both for people and agents; make it easy for people to read it, giving you nice presentation components without having to know React and JavaScript super well; and then also the AI assistant-mediated experience that people are coming to expect. And also help you write the content. We have our own agent that you can automate, run on schedules, and then we also have a Mintlify MCP server so you can connect to your preferred agent and use the whole platform via whatever tool you like.

**Ethan** (37:11) <br>
Some examples: beyond the fun ones like driving schools, it's predominantly probably developer documentation that people have seen, but mintlify.com is a nice example. Or you can go read Sarah Deaton's docs, the Claude Code docs. Those are very well maintained. I guess she said nice things about me when she was on your show. I'll say nice things about her — really impressive content that she maintains, and the volume is impressive.

**Fabrizio** (37:39) <br>
There are so few documentation-as-a-service platforms out there. I think Mintlify is the one I know best. There's also good old Read the Docs and a few others. But I was wondering, from your perspective — of course you speak as yourself, not as a company, but you talk internally about this stuff — I was wondering if there were the top three things you would like to see frontier models doing that would make your life easier, in terms of serving documentation or finding out the impact of AI on docs. What would those be?

**Ethan** (38:22) <br>
Yeah. Well, I think the first one that comes to mind is be definitive about `llms.txt`, partially just because there's the time spent between people being like, "Does this matter?" It would be great if a frontier model provider said, "You know what, we're going to commit and adopt this standard and this is how sites will present their content to agents," or equally useful if they just said, "We're never going to do this, stop trying to make it happen."

**Fabrizio** (38:51) <br>
Yeah. There are some people that say `llms.txt` is like — well, you know, they declared MCP dead, it isn't dead. Now `llms.txt` is experiencing the same thing. They say it's AI friendliness signaling. I think the cost-opportunity is still very good. It's nice to have an `llms.txt` file. We still don't know if it's going to be read, but I agree with you. I think it would be nice to see them adopting a standard there.

**Ethan** (39:18) <br>
Yeah, so that's probably number one. The others — and this is where I don't necessarily know the commercial viability of it — but just having more insight into how the models weight and rank things. I understand not wanting to open it up to people trying to game it, like, "I'm going to do the top two tricks to always show up in Claude." But there is so much power in consolidating and having these models being used for everything. And I mean now there's a proposed hardware standard, right? So I think having the people building on it — I guess more openness. This is my pitch for why I think open source software is good.

**Ethan** (40:00) <br>
And top three: the third one is probably just, setting aside the model providers, everyone else — there's a lot of talk about inevitability, you know, "this is just going to happen." But I think remembering it's all decisions by people, all the time. Even in this moment that feels daunting and powerless, no, it's only people choosing. AI is not — it's not yet Terminator. We don't have Skynet. We still are in charge. And finding ways to organize and influence that power is tough, but I think the technical writing community is a great example. We're fairly small globally, but we do a good job of talking to each other. So I think we can be influential.

**Tom** (40:56) <br>
Hey, I was at a recent Seattle Write the Docs Caffeine Hour chat, and a topic came up where people were deliberating about this constant question that keeps recurring. Is AI contributing to our brain rot? Or is it allowing us to not focus on the mundane toil and instead focus on more impactful, strategic, larger questions? I'm just curious, where do you stand on that with all this agentic tooling? Do you feel like you're using your critical thinking skills more, less, same, or in different ways?

**Ethan** (41:42) <br>
Yeah. Definitely in different ways. I know there was that study — I can't remember if it was MIT or what university — the whole "kids' brains are being destroyed by AI and they don't know what they wrote." I think that was a fairly flawed study. So I will say I don't think AI is leading to our immediate cognitive decline. I definitely do different tasks at work, which means I'm using my brain differently, right? I'm not writing quite as much. Though even pre-2023 I had moved out of many writing roles. I almost wonder if it's like early on with search engines: suddenly there was so much information at our fingertips, and this is the next level where I feel more empowered to attempt to solve problems that before I might not have. As an example, pulling data to try to generate reports about how people are using our platform — what can I learn about it? I'm terrible at SQL. I never would have been able to write these queries without an agent. So in some ways, I am doing more interesting, more complex work.

**Ethan** (43:07) <br>
However, it's sort of spreading out, and I think the risk is twofold. One, you can get overconfident and realize you don't have the expertise so you can't understand the results you're getting. For example, I could not use an agent to write C#. I just don't know it. It might run, but I wouldn't know what's happening. So don't do that. But then also I think in some ways it risks collaboration. This is something I think Tom you've written about: if I can just try to solve this on my own, it almost feels harder to ask a coworker to partner on something. I try to be pretty cognizant of that because there are times where someone else is very helpful. If they have their agent knowledge and their domain expertise and I have mine, together we can do more, and the creativity things. But to just be inward in our own little bubbles, I think is where maybe there's a little atrophy, but it's also a social atrophy, which I think is equally harmful.

**Fabrizio** (44:05) <br>
I totally agree, Ethan, especially with the bubble thing, the social bubble thing. I think this hits the hardest for all of us who work remotely. In an office you would, you know, validate an idea or explore a topic during a coffee chat or water cooler time. When you are on your own and maybe you work on a different time zone and you don't have your colleagues, the decision makers, nearby — or you don't want to interrupt them because remote work is full of focus time and it feels kind of awkward to try to create a social occasion just on Zoom. I think we tend to reach out more to AI in those occasions. There's a direct relation, I think, between our solitude and how much we do that. And that's perhaps the thing that unsettles me the most about using AI.

**Ethan** (45:10) <br>
Yeah. I think that's very well said. And it's a new skill, right? It feels familiar because you're just typing into a chat box, but it is in some ways like playing a slot machine every time you do it. So I think that feedback loop still has a lot to be learned about. And hopefully in twenty years we don't realize this was very bad for us.

**Tom** (45:40) <br>
I really like, Ethan, your answer to the first part of the question about pushing into the unknown. I definitely think AI is helping me do that, both in docs and outside of docs in regular life. Just last week I broke something in one of my niece's old VW Bugs and was trying to fix it. AI walked me through how to replace the fuse and it worked. I'm not really a car guy. I'm sure everybody has a million stories like this where they're using AI as that flashlight in the dark. And I think that's a really worthwhile perspective.

**Tom** (46:25) <br>
In the documentation world, I think tech writers can use AI to go deeper into developer docs. Too often tech writers are wary of jumping into the source code comments and making changes and recommending style and doing links and configuring builds and publishing and everything. I think it's very feasible to do this with AI and feel more confident. And probably a lot of other things that we previously thought were out of our scope or not within our wheelhouse. It is sort of empowering and that does get the brain working in different ways.

**Fabrizio** (47:03) <br>
Yeah. They just want to make us more social, that's the thing. But otherwise they're great for exploration.

**Tom** (47:10) <br>
Okay, so about the social thing, yes, I agree, and I don't have any good solutions for that. I have found that I really love talking to Claude in my car. I switch it to audio mode and man, I've been trying to buy a new car lately and I've asked so many questions. It's fun. But you know what the problem is with AI? It's directed to only help you with a specific topic. If you want to be more social and just be like, "Hey, what's on your mind?" tell it to start a conversation, it fizzles. It can't do it. It can only help you with a problem that you have. At least Claude. Who knows about Replit and other things. But yeah, which is kind of lame. If you're talking to a human, the human rambles. They tell you stuff you don't want to know. They go in directions you don't want to go, and that's good.

**Fabrizio** (48:14) <br>
So I'm sending you a link in the chat, which is called Project Nope. It's a pun, of course, but it's an observatory for human-AI relationships. It's pretty cool. They have a PhD in psychology on the team, and essentially what they're doing is analyzing how conversations go from a human well-being perspective. They're going to publish research there. But essentially it's understanding, for example, is this going awkward, or is the human feeling stress? And you continue talking and talking with AI, and maybe there are signs that AI could use to modify its own behavior when talking to a human. I was remembering about this because I once predicted that when you work with LLMs, maybe in a few years' time, they will tell you to stop and maybe go touch some grass, if they detect signs of stress. So I'm hoping we'll get there somehow.

**Tom** (49:20) <br>
I think if I asked Claude if I have any psychotic neuroses, it might tell me things I don't want to hear.

**Ethan** (49:31) <br>
Yeah, we've got to go back to the models that were more sycophantic and then you'll get what you want to hear.

**Fabrizio** (49:37) <br>
So it's funny because some of the latest models are not great at writing, especially creative writing. And now we're in this situation where some people, for example at work, are recommending older models like Opus 4.6. It's like going back to the vintage and saying, "Well, that model used to write well." So here we are trying to understand and maybe even rank the quality of writing in models.

**Ethan** (50:08) <br>
Yeah. And especially with creative writing, it's so subjective, right? What is good writing? It's got that AI smell. You know, this is not — and I think my long-term hope is that people just realize this tool can't do everything. And maybe it's okay if it's not good at creative writing.

**Ethan** (50:36) <br>
However, I realize that's unlikely to really be what happens. This is where actually I want to give a shout out to one of my friends from grad school who published a paper toward the end of last year about whether LLMs write like humans, really looking at variation in grammar. I can share the link too — Michael Laudenbach — and he dove into this more from the academic perspective, looking at how you can tell there's something — it's not this, it's that. But looking more into it, you can tell when it's AI writing. And because he's an academic, it doesn't go into the "but does it matter" part. I think that's almost where we're at: we want to know someone kind of cared when you're reading something. With technical documentation, you want to know someone has made sure this is going to help you.

**Ethan** (51:31) <br>
Or if it's a creative writing piece, you want to know that someone put their thought and attention to it. They're not just trying to take your attention, which is generally to take your money. We want to be thoughtful.

**Fabrizio** (51:40) <br>
Yeah. At some point we'll probably have to show the pedigree of AI-edited or AI-powered content too. Some factories do that: they walk you through the factory, they show you all the quality control, all the high-quality ingredients they feed to the machine. So maybe they will have to have a link in the footer saying, "This is how we produce our docs," and you know the whole story.

**Tom** (52:08) <br>
Hey Ethan, Fabrizio, this has been a great conversation. Thanks so much for joining us, Ethan. And always great to get insights from Fabrizio and both of you on these topics. This is amazing. I will post all these links that we've been talking about, everything from Project Nope to the Michael Laudenbach paper. And we'll share these out. Ethan, if people want to follow you, should they just go to your LinkedIn profile?

**Ethan** (52:38) <br>
Yeah, I would say LinkedIn or send me an email. I love writing. I will write back. It's ethanpalm@gmail.com. Sorry to the other Ethan Palms out there. No agents running on my Gmail yet. Hopefully not ever. But yeah, I love to chat. Please feel free to reach out to me, anyone and everyone.

**Fabrizio** (52:47) <br>
A human reply guaranteed, right?

**Tom** (52:59) <br>
And Fabrizio, you are at passo.uno. And I'm at idratherbewriting.com. So thanks again for listening.

**Ethan** (53:08) <br>
Take care everyone.
