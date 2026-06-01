---
title: "Judging beautiful docs, AI fatigue, and tool slop"
permalink: /blog/judging-beautiful-docs-ai-fatigue-podcast
date: 2026-05-31
categories:
- ai
- podcasts
- writing
- technical-writing
keywords: Italo Calvino, beautiful documentation, lightness, AI fatigue, review fatigue, tool slop, vibe coding, local models, technical writing skills, agent workflows, craft and care
rebrandly: https://idbwrtng.com/judging-beautiful-docs-ai-fatigue-podcast
description: "In this podcast, I chat with <a href='https://passo.uno'>Fabrizio Ferri-Benedetti</a> about what makes documentation beautiful &mdash; drawing on Italo Calvino's literary principles of lightness and quickness &mdash; the reality of AI review fatigue versus creator fatigue, why most vibe-coded tools are actually 'tool slop,' developing internal skills for repeatable doc processes, and the emerging future of running local AI models."
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/judging-beautiful-docs.mp3
podcast_file_size: 27.7
podcast_duration: "00:57:47"
podcast_length: 27739080
image: judgingbeautifuldocsthumb2.jpg
---

* TOC
{:toc}

<iframe width="560" height="315" src="https://www.youtube.com/embed/0sajEKERiAo?si=R_vHtITGUMhSPMQL" title="Judging beautiful docs, AI fatigue, and tool slop" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Audio-only version

{% include audio.html %}

## Links mentioned

* [What makes docs beautiful?](https://passo.uno/what-makes-docs-beautiful) (Fabrizio Ferri-Benedetti, passo.uno)
* [Most vibe-coded tools are not for you](https://passo.uno/tools-slop-is-a-problem) (Fabrizio Ferri-Benedetti, passo.uno)
* [AI fatigue is real and nobody talks about it](https://siddhantkhare.com/writing/ai-fatigue-is-real) (Siddhant Khare)
* [Developing internal skills for recurring documentation processes like release notes](https://idratherbewriting.com/blog/internal-skills-release-docs) (Tom Johnson, I'd Rather Be Writing)

Note: These shownotes are AI-generated.

## Topics covered in this podcast

Here's a list of topics we talked about.

- **Calvino's literary principles applied to docs** — Italo Calvino's "Six Memos for the Next Millennium" offers qualities like lightness, quickness, and consistency that translate surprisingly well to documentation. Beautiful docs are ones that unburden the reader, conveying complex knowledge without the weight.

- **What makes documentation beautiful versus brutalist** — Docs brutalism is documentation built purely for function — checklists completed, tickets closed — without soul or craft. Beauty in docs isn't about visual design; it's about the feeling of mastery that lets a writer explain something complex to anyone, even a child.

- **Judging docs in the age of LLMs** — As technical writers shift from creators to evaluators of AI-generated content, their core value becomes taste and judgment. The ability to distinguish verbose, flat prose from writing that is light, quick, and exact is what separates a seasoned tech writer from an engineer reviewing the same output.

- **AI fatigue and the shift from creator to reviewer** — An engineer's account of burnout from nonstop reviewing of AI output resonates across the profession. The psychological toll comes from hundreds of small judgments per day, the loss of creative flow, and the feeling of being a quality inspector on an endlessly moving conveyor belt.

- **Review fatigue versus creator fatigue** — Not everyone experiences AI fatigue the same way. Writing a thousand words from scratch can be more cognitively exhausting than reviewing them, and some writers prefer to save their creative energy for personal projects, delegating the mechanical toil to AI.

- **Ownership and strategy as the tech writer's edge** — The most effective approach to technical writing involves owning the reference docs and the release process — not just editing what engineers hand over. Running diffs against each API release, updating diagrams, and cross-referencing the entire documentation corpus gives writers independent authority.

- **Tool slop and the vibe-coding explosion** — AI has made it trivially easy to create custom tools, but most of them are built for an audience of one and promoted as something greater. The qualities that make a tool worth using — reach, sociality, and finish — require craft, care, and intent that vibe coding rarely delivers.

- **Developing internal skills for repeatable doc tasks** — Building agent skills that automate repeatable processes like release notes creates compounding value. Each run improves the skill through self-reflection, and as models improve, the same skill produces dramatically better results without being rewritten.

- **The profession splitting into two directions** — Technical writing appears to be forking into a DevRel-like path — writers who create foundational and overarching content using real experience — and a pipeline engineer path, where writers tend automated content production systems as context or content engineers.

- **Local models and the sustainability question** — Running AI models locally on consumer hardware offers advantages in cost, privacy, and sustainability. As inference costs remain high and energy concerns mount, local models running on devices like a MacBook Air or a Pixel phone may cover an increasingly significant share of everyday AI use.

{% include ads.html %}

## Narrative essay version of the conversation

*If the podcast were an article, this is what it would read like.*

In 1985, the Italian novelist Italo Calvino sat down to write a series of lectures he would never deliver. He died before he could present them at Harvard, but the lectures survived as "Six Memos for the Next Millennium" — a meditation on the literary qualities that would matter most in the century ahead. Among them: lightness, quickness, exactitude. These sound like principles for writing elegant fiction. They turn out to be an uncannily precise description of what separates good technical documentation from bad.

Lightness in documentation is the ability to explain something heavy without burdening the reader. It's not about being shallow — it's about having digested the complexity so thoroughly that you can transmit it with almost no friction. You know you're reading light docs when you barely notice the effort of understanding. The opposite — docs that force you to decode, disentangle, slog through — is what you might call docs brutalism: documentation built for function alone, every page a concrete block, every sentence load-bearing in the most graceless possible way. It works, technically. It doesn't make anyone want to come back.

This question — what makes documentation beautiful — might seem like a luxury in an era when LLMs can churn out competent prose by the megabyte. But it's actually the question that matters most right now, precisely because the machines have no taste. They produce text that compiles, that covers the surface, that sounds authoritative. They cannot tell whether what they've written is light or heavy, whether it wastes the reader's time or respects it. That judgment is entirely human, and it has become the central skill of the modern technical writer's job. It's also, increasingly, the value proposition — the reason tech writers still get hired. Anyone can prompt a model to generate a draft. Knowing whether that draft is actually good requires years of accumulated craft.

This shift from creator to reviewer is real, and it's disorienting. An engineer named Siddhant Khare wrote recently about what he called "AI fatigue" — the exhaustion that comes not from creating but from reviewing. Before AI, his day had a rhythm: think about a problem, write code, test it, ship it. After AI, his day became a loop of prompting, waiting, reading output, evaluating output, deciding if the output was correct, deciding if it was safe, fixing the parts that weren't, and re-prompting. He described it as becoming a quality inspector on a conveyor belt that never stops. The work was faster but emptier. The flow states that used to sustain him — the deep, energizing focus of building something yourself — had been replaced by the shallow, draining focus of judging something you didn't build.

Not every writer experiences this the same way. For some, the shift is actually liberating. If your day job involves writing yet another SDK migration guide or documenting the fine-grained differences between configuration parameters across product tiers — content you won't remember in a month — there's no loss of creative joy when the machine drafts it for you. You become the editor, not the author, and you save your real creative energy for work that matters to you personally. The fatigue isn't from reviewing; it's from pretending that all documentation deserves the same emotional investment. Some of it is toil, and outsourcing toil is fine.

But here's the tension: if you stop caring about the work the machine produces, who maintains the quality? This is where the concept of ownership becomes critical. The tech writers who thrive in this landscape aren't the ones who wait for engineers to hand them drafts to edit. They're the ones who own the reference documentation, who run diffs against every API release, who update architectural diagrams, who maintain a single source of truth independent of what any individual engineer remembers to mention. They have strategies, not just assignments. They've built skills — literal agent skills, executable instructions that automate repeatable processes like release notes — that compound in value over time. Each run improves the skill. Each model upgrade makes the same skill perform better. The writer isn't just reviewing; they're orchestrating a system they designed.

This matters because the alternative is grim. A tech writer without a strategy and without ownership is at the mercy of every reorganization, every new tool, every executive who mistakes prose generation for documentation. The explosion of vibe-coded tools has made this problem worse. AI has lowered the barrier to creating tools so dramatically that people are conjuring them from thin air — a hundred custom utilities for personal use cases, each promoted on Reddit as if it were a product. Most of them are tools built for an audience of one and abandoned within weeks. They lack the three qualities that make a tool worth using: reach beyond the maker, sociality that invites collaboration, and the finish that signals someone cared enough to make it last. The noise is exhausting, and the whiplash from constantly evaluating new tools compounds the fatigue from evaluating new content.

The profession appears to be forking. One path leads toward something like developer relations — writers who build foundational content, who tell the story of how all the pieces fit together, who bring real experience and human judgment to documentation that no model can fake. The other path leads toward content engineering — writers who tend automated pipelines, who design and maintain the systems that produce documentation at scale. Both paths require understanding AI deeply enough to direct it. Neither path involves simply writing all day.

There's a real risk of getting drunk on the velocity. When you're closing tickets three times faster than you did two years ago, the dopamine of throughput can mask the fact that you've stopped caring about any individual piece of work. At some point, the pace will slow, and the question will be whether you built anything that mattered — or just moved very fast through a blur of content you can't remember. The writers who last will be the ones who kept some portion of their work that they genuinely cared about, whether that's a blog, a strategy doc, a tool they maintain, or a set of skills they've honed. Craft, care, and intent aren't just qualities of good tools. They're qualities of a sustainable career.

<figure><a href="https://www.youtube.com/embed/0sajEKERiAo?si=R_vHtITGUMhSPMQL"><img src="{{site.media}}/judgingbeautifuldocsthumb.png" alt="Judging beautiful docs, AI fatigue, and tool slop" /></a><figcaption>Judging beautiful docs, AI fatigue, and tool slop</figcaption></figure>

## Transcript

**Tom Johnson** *\(00:01.575\)*:
Welcome to another podcast with your host Tom Johnson and Fabrizio Ferri Benedetti. We are tech writers in different spaces, different companies. Fabricio is in Spain, work working for Elastic. I'm in Seattle working for Google, and we're both seasoned tech writers doing a lot of stuff with AI and tech docs, and this podcast is all about

**Fabrizio** *\(00:14.711\)*:
Right.

**Tom Johnson** *\(00:29.637\)*:
Intersections between those two. How is AI affecting the tech com world? What are we doing specifically? I really like the emphasis on like actual techniques or actual activities that we're doing instead of just theoretical conjectures. And so Fabricio, tell us what's going on in in the world in Spain, what's it like over there right now?

**Fabrizio** *\(00:53.262\)*:
pretty hot as you can imagine. like quite literally. but otherwise good. Yeah, it's you know, I feel like this the eye thing is kind of stabilizing a bit. There's some people even talking of like like the the bubble is kind of de inflating a bit. I don't know about that, but it does seem like it doesn't look like November last year. It seems calmer. I don't know.

**Tom Johnson** *\(01:19.111\)*:
Yeah. O on the heat, I I heard that at the French Open, Yannick Sinner like basically got heat stroke and and lost eighteen out of twenty games to an unseated opponent. How hot is hot over there? Is it

**Fabrizio** *\(01:24.483\)*:
yeah. Yes.

**Fabrizio** *\(01:33.462\)*:
how hot well let me let me just do the the conversion here to Fahrenheit. You know it's well Yeah, like like very hot is like one hundred Fahrenheit. Yeah, that's yeah. Yeah.

**Tom Johnson** *\(01:37.747\)*:
you're so considerate 'cause I would I won't make sense of Celsius.

my god, yeah. That is a heat wave. But I I thought Spain was used to heat. Like Spain compared to like England and France, isn't it hotter there?

**Fabrizio** *\(01:56.93\)*:
Yeah, we are kind of used to it. Not this early though. Like it's been like the hottest May ever, you know. So

**Tom Johnson** *\(02:00.465\)*:
Yeah.

But but your background, you're actually Italian, right? And this is gonna be cool because you're bringing in we're gonna talk about Calv Ital my god, I forgot the first name. Italo Calvino. That's what I thought. And I was like I was like, Italo, that sounds like the the country Italy. So yeah. well let's let's jump into that because I found this super interesting, Kate. So you have let's see, I have a we have a few posts that we're gonna chat about and other things, but one of them is

**Fabrizio** *\(02:13.279\)*:
Italo Calvino, Italo Calvino, yes. Yeah.

Yeah, yeah, yeah.

**Tom Johnson** *\(02:33.083\)*:
What makes docs beautiful, which is something you wrote on April twenty. And you cite Italo Calvino. you you you're kind of looking at like what how do you judge documentation and and w what makes really good docs, not just good docs, but beautiful docs? And you bring in Italo It Italo Calvino here and his last like lectures before he died about literary quality.

**Fabrizio** *\(02:36.04\)*:
yeah.

**Fabrizio** *\(02:39.703\)*:
Yeah.

**Fabrizio** *\(03:00.407\)*:
Yeah. Yeah.

**Tom Johnson** *\(03:03.707\)*:
I really like the point about lightness. docks that grin and remove barriers and so on. Can you talk a little bit about that? What does it mean for docks to be light?

**Fabrizio** *\(03:07.393\)*:
Yeah.

**Fabrizio** *\(03:14.945\)*:
to me ducks to be light are like ducks that are not burdening the reader. You know, and I think yeah, and I think also the brighter, like I don't know if you you you probably experimented this, also, you know, like the the folks who are listening, when you're writing a document and you are like in full control of the knowledge, well you know the ins and outs of the thing you're documenting.

You know it very well. To the point that you can you can explain it

to anybody, even kids. You know, and and that's that's lightness to me. It's like you've already moved everything that makes knowledge heavy and and you're able to carry that with almost no weight to the reader. And the reader is not, you know, as a result, it's not burdened by something that they have to decode or they have to disentangle. And of course you you cannot do this with with you know with old pieces of knowledge or nor old topics like quantum physics is always be

Yeah, so it's you know gonna be complicated, but you can try, right?

**Tom Johnson** *\(04:24.145\)*:
I r I I really like this point about the lightness because I think you're right. This gets to the heart of like what makes a doc good is is if it doesn't really strain our brains to try to unpack something complex. And the more complex, the greater the challenge it is to make it light on the user to understand. I

**Fabrizio** *\(04:45.185\)*:
Yeah, yeah. Or or verbose, right? Because it's and and that's something that LLM documentation somet sometimes is. It's like quite verbose, right? And maybe you don't need to spend that many words.

**Tom Johnson** *\(04:53.64\)*:
Yeah.

I and you said Calvino terms this quickness. so the how fast does it take you take the user to understand this complex concept? Is it they have to slog through five pages or did you get it done in like a single section? So

**Fabrizio** *\(05:07.083\)*:
Right.

**Fabrizio** *\(05:13.067\)*:
Yeah. They don't they don't wander, yeah, they don't render yeah. They don't they go just straight to the subject and they don't waste your time.

**Tom Johnson** *\(05:22.563\)*:
you had another point there, I guess he called out consistency, but apparently this is the the lesson he never delivered 'cause he died before before this.

**Fabrizio** *\(05:27.239\)*:
yeah.

Yeah.

Yeah. We can only imagine what what that would have been about, but consistency as a keyword is like it's exactly what we do, right?

**Tom Johnson** *\(05:42.452\)*:
And then you you end by saying, comparing this to like Doc's brutalism, what what is can you can you unpack brutalism? I know this is an architectural movement and so on, but how does this fit into this whole like metaphor?

**Fabrizio** *\(05:49.517\)*:
Yeah.

**Fabrizio** *\(05:58.634\)*:
I mean to me docs brutalism is like creating documentation focusing only on the function or the you know the the definition of done. So it's like it's almost like creating docs without a soul in the sense of which is okay. I mean we're we always do this, right? We're like we have a ticket, we have to document the feature, we have to write the release notes, it's a chore.

We do it and maybe we we create these brutalis blocks, you know, these building blocks where everything is the same and it's everything is flat, it's it's you know it's concrete or whatever. You you know, just trying to picture the metaphor there. But essentially it's is brutalism, docs brutalism to me is docs without without a soul, without like some at least some angles of fun that you might have had creating them.

**Tom Johnson** *\(06:55.271\)*:
Hm. Angles of fun. Interesting. Yeah.

**Fabrizio** *\(06:58.123\)*:
Yeah, I don't know, like tingits maybe. Like I don't know how to define it. It's yeah, I don't know. It's I have this synesthesia thing in my brain going on right now.

**Tom Johnson** *\(07:08.167\)*:
Well, I I f when I first saw this post I was like, what is Fabricio writing about? Because I mean, beauty and docs seem so irrelevant. But the more I thought about it, I came back to this point you made at the start where you say, the question of what makes documentation beautiful is an important one, especially in a time when docs are at at risk of being mass produced by LLMs.

that neither have the taste nor the ability to discern good docs from bad ones. And our role has definitely shifted from document creators to to documentation judge players or what judgment makers.

If the LLMs are doing the writing, our role is to evaluate it. And this is what really separates like an engineer who doesn't have any experience writing docs from a tech writer, is we have to bring this judgment about are these docs good? Are these docs are they light? Are they are they consistent? Are they achieving this in a quick way? is it verbose? And these we're making like hundreds of these judgments all day long.

**Fabrizio** *\(08:20.197\)*:
yeah.

**Tom Johnson** *\(08:21.315\)*:
And based on these judgments we're we're iterating more in the AI or we're we're throwing things away or we're we're steering them.

**Fabrizio** *\(08:30.506\)*:
You know, it it feels to me that I I'm thinking a lot about like what is the value that humans can bring into these LLM, these AI times. You know, what is the the added value or not actually the added value, I think added value is what the AI brings and like the core value of what the humans bring. And and like beauty is part of it, but I think it's part of a wider thing which is perhaps

taste or you know like discernment or something that only a human can have. So and and I was thinking this about the other day, like you know we have these landscape, you know, whether you have MCP servers and skills and docs are served as data to LLMs, etc. You have all these PLEGO pieces

And I think what the human brain can bring there is like an opinionated view of what you can do with them. Like, you know, you can you can build this using this stuff. This is what you need, like this is how you cook the recipe. I would never trust a recipe embedded by an LLM. But by a human, yes. So I I there's there's something hinting at something like a more personal dimension here, but I I can still put a finger on it.

**Tom Johnson** *\(09:46.632\)*:
Well what would you say about the counter argument that somebody might make who says, Well, users aren't actually reading docs anyway and this effort to make them beautiful doesn't matter. You can make you can make the docs super verbose.

**Fabrizio** *\(09:51.446\)*:
Right.

**Tom Johnson** *\(10:02.265\)*:
Not even put a lot of effort to make simple. The LLM's gonna unpack that for the user. For the advanced user, maybe they don't need a lot of unpacking. Maybe for the novice user, the LLM draws kindergarten analogies or something, really does a lot of work. But but the the tech writer, you don't have to do a lot now. You just gotta gotta feed up the information in the machine. The machine will do all that work for you. What would you say to that?

**Fabrizio** *\(10:26.89\)*:
Well, I would argue that you still need the direction. Well well, that's one of the first arguments. So you still need a map. You still need something that goes beyond what you but what the LLM can fetch and can assemble for you. So you need to like ideas, you need like inspiration to point a machine to build something.

And getting that just from the LLM is kind of, you know, you're not gonna get anything powerful or original from it. And then there's another thing I would argue, but it's it's harder to demonstrate, but I believe in it, which is that AI is gonna perform better if what it gets is like beautiful or better constructed or more original. Like, you know, sometimes a has it hasn't hasn't it happened to you that

**Tom Johnson** *\(11:13.853\)*:
Hmm.

**Fabrizio** *\(11:20.884\)*:
Sometimes you you know, you have this conversation with I don't know, Gemini or Claude and you say something that's that kind of surprises the LLM. And it's like, you know, that's that's interesting, didn't think of that. And that is like probably not in their training paths or not so much in their training path. So yeah, that's trying to surprise an LLM is is actually a nice exercise, I think.

**Tom Johnson** *\(11:44.542\)*:
can never quite separate whether I'm surprising an LLM or if it's just being sycophantic to me. If it's like, hey, that's an that's a clever, insightful observation, you know? And it's like, you're just saying that. But yeah, that's a it's an interesting theory. I I admit that like a lot of the docs I write about

**Fabrizio** *\(11:50.826\)*:
**Fabrizio** *\(11:58.572\)*:
Yeah.

**Tom Johnson** *\(12:03.111\)*:
I'm not personally invested in them and it's kinda like as long as they're accurate, I'm like, screw it. I don't care if the style is flat or if it's verbose. It's like it's good enough and move on. But it does seem like that is a sort of sad state of of the professional craft. But okay. I wanna connect this idea about constantly reviewing things to this other post that I that I

**Fabrizio** *\(12:05.44\)*:
Mm mm.

**Fabrizio** *\(12:09.578\)*:
Yeah.

**Fabrizio** *\(12:21.845\)*:
Well, there's a bit of yeah.

**Tom Johnson** *\(12:30.456\)*:
I prepared for our notes. this is one from Sid Hant.

Kare, K-H-R-A, who's an engineer, not a tech writer. he says AI fatigue is real and nobody talks about it. He says that he has shifted from being a creator to a reviewer, and now he has to spend all day reviewing things. It requires a thousand judgments, and that that's where the real fatigue is. He's not used to reviewing things all day long. He has to really pick through and find the subtle errors and

**Fabrizio** *\(12:45.632\)*:
Yeah. Yeah.

**Tom Johnson** *\(13:06.757\)*:
And he he can't get into the maker flow because he's not creating, he's not tapping into this psychological concept of flow.

and and it's converted his job into this drudgery of nonstop review. I think he compares it to being a quality inspector where you have this conveyor belt of content to just review, review, review. And that's where the fatigue is hitting him. He's not creating, he's not getting into flow. It's just constant review of stuff he didn't create. so he doesn't like he can't use any kind of understanding he has about strengths or weaknesses of a of a human creator that he might know.

It's just a system that doesn't understand the context fully, doesn't really, you know, have any investment, and he's he's tired from all this. Are are you are you experiencing similar review fatigue or is this more of a one off phenomenon for this writer?

**Fabrizio** *\(14:04.351\)*:
I do at times. But then when you know, I I I scrolled down and I read like the things that actually helped him cope with this. And I realized that th that some of the things he he put here and perhaps this doesn't speak well of my of me, but some of the strategies he put in place, like I I I enacted almost immediately when I started using LLMs for documentation. Like for example, accepting seventy percent from AI or

not reviewing everything AI produces. It's very hard to accept, but it's is very liberating as well. Like when you accept that most of the output will be good anyway. And I think our experience these days is that a good seventy percent, maybe a bit more, is quite acceptable.

And then you know you you be you are more strategic about it. Like you put some deterministic checks in place. you know you review then things as you would review things coming from a human being. And then then is when you can focus on higher level stuff. So in my case, perhaps I'm a bit too trustful in general of AI, but it also avoided you know getting to this this this reverse center trap of sorts.

**Tom Johnson** *\(15:25.617\)*:
Yeah, I I gotta say, I I I don't find the review fatigue as much as the creator fatigue. If you have to write a doc from scratch, like

**Fabrizio** *\(15:32.927\)*:
Yeah. Hmm.

**Tom Johnson** *\(15:36.616\)*:
Thousand words from scratch, it's way more cognitively exhausting than just reviewing something. And also I'm not the last reviewer. if I can look at it and I'm like, this looks good, but I'm gonna send it to the SME for their final approval. I don't have the full responsibility about it. I mean I obviously try to make it a hundred percent accurate, but even if I wrote it myself, it's the same kind of scenario where it's like I'm guessing and have a lot of gray areas.

**Fabrizio** *\(15:38.421\)*:
Yeah.

**Tom Johnson** *\(16:05.681\)*:
So I personally I guess in full honesty here I would rather be reviewing a lot of this content than writing it myself. I'll save my own creative energy for content that I want to write on my blog

**Fabrizio** *\(16:21.781\)*:
Yeah. Yeah.

**Tom Johnson** *\(16:22.245\)*:
And all this stuff at w that I'm writing about at work, you know, it's like for example, I'm documenting sub regions within regions that have like differences the in the sub region rather than the region. And so like we got a new method to call this and it r returns Booleans and so on. It's like, yeah, who cares? I'm not

**Fabrizio** *\(16:44.543\)*:
Yeah, no, it's it's hard to extract beauty from it.

**Tom Johnson** *\(16:48.199\)*:
Like i in a in a month I won't even remember this. but but if I sit down on my blog and I'm writing about something that's meaningful to me, yeah, I don't wanna relinquish control. I I wanna be the creator and and that's always where I've found more personal value. So this whole shift in in our profession to having the AI do the writing in some ways is liberating 'cause like a lot of this stuff it's either like mechanical toil or it's content that's not very exciting. It's not

what we want to spend our lives doing. so yeah, I'll I'll be the reviewer. it and yeah. I I realize that I actually have a lot of editorial judgment as a tech writer. Built up a lot of kind of expertise about what's good and bad tech writing. And it's very easy to see if like, this is not clear to me. do it again, you know? Like it's doesn't cost me much.

**Fabrizio** *\(17:24.021\)*:
Yeah. I I y yeah, sorry, go ahead.

**Fabrizio** *\(17:43.348\)*:
Yeah. You know, it feels like at this point, the profession is is going to go into two directions. One is more like a devrell, you know, is like a writer who

Who builds upon a foundation of content that is already, you know, that that was contributed in many ways, including AI, and uses AI also to generate more content, but also to create two things like foundational content, because I think that's key. And also like content that is like overarching or explaining again how to assess.

Assemble things using all the pieces. Maybe the reference docs that were created by AI, for example. So maybe documenting the regions is boring, but creating a document that explains how to build something incredible and the regions is part of it, that's like what the human can do, which is also based on real experience, you know. And and people can tell whether something is fake or not. And then the other role is like more like the

the pipeline engineer, like the writer who is tending to these automated or AI driven content production. So context engineer or content engineer, whatever you want to call it.

**Tom Johnson** *\(19:05.938\)*:
Yeah I

I've really kind of shifted my my professional focus more towards developing these internal authoring skills that automate a lot of repeatable tasks in my world. And I've found that these skills are are incredibly fun to make. I'm kind of on a roll with some of them. things are starting to to like light bulbs are going on in my head about what tasks are actually being repeated. And I isolate those and I've got

**Fabrizio** *\(19:14.261\)*:
Yeah. Yeah.

**Tom Johnson** *\(19:36.496\)*:
like skills that really unpack a process. I've got my own like secret sauce in these processes. For example, in every skill that I build, I I throw in a little section that says, hey, after you complete this task, I want you to look at your friction log and the other issues you encountered and improve the skill to overcome these issues for the next agent and the next go-around. that kind of like iterative self-re reflection.

**Fabrizio** *\(19:54.195\)*:
Mm-hmm.

**Tom Johnson** *\(20:05.267\)*:
that will improve the skill with each time I use it, I think is is kind of fun to see. plus the models are always changing. Like I swear before before Google IO our models weren't that great and after Google IO we got like way better models and my life was significantly improved. I was like wow I know that I know that Claude's models are still like you know top of the

**Fabrizio** *\(20:18.345\)*:
Hm.

**Fabrizio** *\(20:28.777\)*:
Right.

**Tom Johnson** *\(20:34.969\)*:
industry but Gemini really leveled up and so anyway some of the skills that I w was working on in the past that that were having issues suddenly like they were running flawlessly. capabilities I didn't even think were were there before. Like I was getting content from a Google Doc

**Fabrizio** *\(20:44.714\)*:
Yeah.

yeah.

**Tom Johnson** *\(20:55.451\)*:
And I was like, I wonder if Gemini can distinguish between content that that is shaded in blue, like with a with a text background in blue, versus not. And it was like it totally did. I'm like, crap. so anyway, I yeah.

**Fabrizio** *\(21:09.855\)*:
But I think I think you you you follow like an interesting approach there in skill design, in the sense that I think skills are as content and something executable by an LM.

should never should never cater to the limitations of of a specific model or hardness or whatever. Like you should have your instructions and what do you want an I to do very clear in your mind and in the document. And then if the model gets better, you get better results.

But the skills shouldn't get worse because the model is limited. So I think it's it's great what you experienced there. Like the model got better and all of a sudden like the skill execution got better, but the skill was already there. Like you weren't bending to to the limitations of the specific model you were using.

**Tom Johnson** *\(22:01.799\)*:
Yeah, yeah. Well, to give another example of of this, let's say you're you're publishing a doc that has a bunch of screenshots in it. And like in the past, some of these models struggled to kind of port over the screenshots, or if they did port over, they didn't like reassemble them in the correct order.

**Fabrizio** *\(22:11.374\)*:
yeah.

**Fabrizio** *\(22:22.655\)*:
Hmm.

**Tom Johnson** *\(22:23.481\)*:
And and then all of a sudden now that that is working. I don't know what happened behind the scenes, but it's like now it gets the the images and it puts them in the right order and I'm like, wow, this is this is great. So in the past my skill might have had more verification checks. Maybe the skill might have said, open up a a browser and verify that the images match the original doc. But now it's like, well, do I even need that that verification step? Because the model or or something, some s tool has improved.

But anyway, I I I like this idea that like the skill should build up some kind of verification check for the information. And I like to have

These little checks. I just discovered something last week. I I feel a little bit late to this party, but I realized that I can tell the the the LLM, the AI, to create a subagent with a fresh context, and that subagent can act as a QA role against the other agent's content. And I was like, I didn't know that I could do just tell it to make a sub agent that doesn't have the same context. And that sub agent agent can perform a different role.

**Fabrizio** *\(23:20.991\)*:
Right.

**Tom Johnson** *\(23:31.287\)*:
so I'm like I I bake that into one of my skills. I'm like, Okay, in this step you're gonna kick off the sub agent t to review things and it works great.

**Fabrizio** *\(23:42.155\)*:
Yeah, in our case we follow the Lastic for example, we follow a slightly different method in that we have this MCP server.

That connects to an elastic search instance where we sort all our documentation and we refresh it when we update it. So it's semantic search available through the MCP server to anything like skills, genetic workflows, agents in in IDEs, etc. So when you instruct, for example, a skill to create some documentation and then as the check.

you can ask it to query the server and see if the content is accurate against the existing documentation corpus. that's super helpful. It's like having like a knowledge layer always at your disposal for whatever you're building with AI.

**Tom Johnson** *\(24:32.125\)*:
Man, I'm I'm jealous because like all my docs are are sort of behind access controls and I I'm I'm not able to put into like an C P server very easily and do what you're some of the workflows you're doing. I I'm reading your I read your blog and I see all the stuff you're doing in like GitHub and and I'm like, God, I feel so behind sometimes. Like I feel

**Fabrizio** *\(24:42.569\)*:
Right.

**Fabrizio** *\(24:53.842\)*:
Well it's this is the good thing about open source, I think, but can you do like local local rag, maybe?

**Tom Johnson** *\(25:01.607\)*:
Well, what we do have, which is a probably a strategic advantage, is that Google keeps its code in a giant monorepo, just a a massive repo. And so the the tools can search across this repo and find stuff.

**Fabrizio** *\(25:10.794\)*:
Yeah yeah.

**Tom Johnson** *\(25:18.523\)*:
And it's amazing. Like if everything were fragmented into different repositories, it would be a nightmare. But the monorepo is a major advantage. so it's kind of similar and the tools are are getting really good at finding stuff. but it but

**Fabrizio** *\(25:32.382\)*:
Well, as someone who maintains documentation across multiple like fifty repos, I can tell you it's painful. It can be painful.

**Tom Johnson** *\(25:40.168\)*:
Yeah. But like there's more complexity in this. Like for example, take the the places API. This is a a G

**Fabrizio** *\(25:48.906\)*:
Mm.

**Tom Johnson** *\(25:51.084\)*:
an API, but it has different instances. There could be like a cloud places API, there could be like a GRPC places API using automotive and other things and like they might have subtle differences. So if I have everything just in one big pot of soup and it finds the wrong places API, it can be a little confusing. But

Anyway, part of my skill design is I try to define where these things are so that it finds the right the right info. we we make that info in available in the right context to the AI in the skill and it usually does it does it great. but the the these tools are are great at reading reference docs and and parsing through all that stuff and it's kind of amazing to see what w what happens. I I

I get more and more this this inner feeling that these tools are so powerful that we're just kidding ourselves if we think that like they're not gonna be the default tools used for creating so many so many assets, so many documentation assets. It's like

**Fabrizio** *\(26:52.564\)*:
Yeah.

**Tom Johnson** *\(26:55.663\)*:
i in in a few seconds it can crunch through a whole code base and tell me if something is aligned or not with with what I'm writing. It's like how can people not not just like see that these tools are gonna be incredibly like prominent in in workflows.

**Fabrizio** *\(27:16.948\)*:
Yeah, yeah.

**Tom Johnson** *\(27:17.007\)*:
It's just like it blows my mind at their ability to analyze massive amounts of information and to accurately understand it, even if it's like incredibly complex.

**Fabrizio** *\(27:28.296\)*:
I mean those are the superpowers that I always wanted as as a tech writer. You know, like you know, I want to take all this repo and understand it like quickly and then I can write a documentation I always wanted. And I can focus on like things that the machine cannot do well, like, you know, write structure and I want to nail the voice and tone or whatever. like maybe even tell a compelling story in the dock, you know. But I'm still I think we are still not

**Tom Johnson** *\(27:53.298\)*:
Yeah.

**Fabrizio** *\(27:56.892\)*:
at the at the moment where well I don't know, like I I remember there was this this post about acceleration, you know, the you wrote about this ever accelerating landscape and I'm still not sure we have freed enough time to dedicate ourselves to the good bits. I still I feel I still feel that we are tending a lot to the machines.

Which in part is understandable because we are exploring their capabilities and and some of us like to tinker and I think the tinkerers will always tinker. But then I would really like I have my colleagues at work where I you know I present these technologies, I really want them to stop doing chores and let the eye do those so that they can focus on the things they enjoy. But I feel like we are still not there for a number of reasons. What's what's your feeling about it?

**Tom Johnson** *\(28:51.697\)*:
Yeah, yeah, this this promise that AI tools have had that they were gonna free up time from the toil so that we can focus on this more strategic and impactful kind of work. It's always been one of these paradoxes that I l like you described, I'm trying to sort sort out like is this real? Why am I not getting to this fun time? I'm not even sure. When you were describing like the parts of tech writing that you wanna focus on, like this more strategic work, I don't even know what that is. I'm I'm like what

**Fabrizio** *\(29:20.231\)*:
Yeah.

**Tom Johnson** *\(29:21.661\)*:
What is that? like I maybe I became a cynic a long time ago, but I I realize there are certain problems that I just can't fix. Like if I think the API is structured in a confusing way, like why would it possibly be so confusing? or or just like I don't know what are the big problems I want to solve. I maybe I have just yeah.

**Fabrizio** *\(29:47.124\)*:
Well i in the case of APIs is the problem is is very human and it's governance. though it might not be like an enjoyable problem to solve. Like governance is hard and sworny, but it's human and and I do know people that enjoy working in the API space and come up with guidelines and style guides and and think about API design.

**Tom Johnson** *\(29:58.1\)*:
Yeah.

**Fabrizio** *\(30:11.697\)*:
And an LLM cannot solve governance, for example. It's one of those things it cannot do, right? there might be more enjoyable bits, but so governance is like for example, like

**Tom Johnson** *\(30:18.099\)*:
What do you mean b what do you mean by govern what do you mean by governance?

**Fabrizio** *\(30:24.069\)*:
Aligning teams so that they write the the endpoints, for example, documentation in the same way, or adopt the same version control system. you know, it's it's like making humans follow certain rules and abide by those rules and accept them and enrich them. and LLMs really I mean the only role maybe they can play there is in building tooling to help enforce that. but the decisions

**Tom Johnson** *\(30:29.907\)*:
Hm.

**Fabrizio** *\(30:54.185\)*:
are strictly human.

**Tom Johnson** *\(30:58.514\)*:
Yeah we

We have processes in place for a lot of this stuff. Like we have a cloud API and an in vehicle API that have highly similar attributes between them, but they're not like at a hundred percent the same. But when somebody's gonna develop a new feature for the API, they have to like get it approved by a council that like certain API people sit on who try to make sure that there's consistent like design across the different APIs. And do do I wanna jump into that space and be like, Well, blah blah blah

**Fabrizio** *\(31:06.899\)*:
Hmm.

**Fabrizio** *\(31:28.927\)*:
like I don't know it's it's it's not really what what I get most excited about. I don't I don't even know what I get excited about anymore. Honestly, I'm I'm excited about developing these skills because I'm like this is how you program these these AI tools and it makes it so that I can get rid of a lot of the toil for repeatable tasks and I I am excited about that. but yeah I guess I'm it

**Fabrizio** *\(31:31.026\)*:
Mm-hmm.

**Fabrizio** *\(31:51.304\)*:
Yeah.

**Fabrizio** *\(31:56.35\)*:
Well I think you're you're also a you know, you're also like a tinkerer. I think you are you match the tinkerer profile a lot. And on the other hand, I think I think some writers might be reluctant to give up on some maybe boring but well known work.

**Tom Johnson** *\(32:00.337\)*:
Yeah. Yeah.

**Tom Johnson** *\(32:15.185\)*:
Yeah.

**Fabrizio** *\(32:16.029\)*:
Because of comfort. I think it's very comfortable to do the stuff you know how to do well, even if you know, maybe without innovation or without anything new there. so that's that could be a problem going forward. But yeah.

**Tom Johnson** *\(32:34.183\)*:
Yeah, this conversation has made me kind of reflect a little bit. I I do have my own philosophy about tech writing and how I I approach it and so on. That that I I don't know, I I've tried to pitch to my colleagues, but it never quite takes off. But anyway, let's let's steer this back steer this back into I just kind of threw that out there. I okay, so in a nutshell. So

**Fabrizio** *\(32:50.259\)*:
Mm-hmm.

**Fabrizio** *\(32:56.839\)*:
Yeah, yeah, yeah. Well now I'm interested. I I I would like I would love to learn more about it, but yeah.

**Tom Johnson** *\(33:02.693\)*:
Okay, so here's my here's my approach to tech writing, which I guess is unique. because I I I can't find other people who do this. But whenever we have an API release, I have like skills that and scripts that identify what the diff is in the new API changes, the new release. And based on that diff, that's introducing change to a system.

**Fabrizio** *\(33:10.281\)*:
Hmm.

**Fabrizio** *\(33:21.799\)*:
Right.

**Tom Johnson** *\(33:25.415\)*:
That becomes the sort of like kernel behind a lot of work. I I end up not just writing release notes describing the change. I look across the whole documentation corpus to to account for the change. I have these API diagrams that have like a hierarchical tree of every element in the API. because they these APIs have like hundreds of elements. and so I update those those diagrams. These are like one visual glimpses into the API.

**Fabrizio** *\(33:54.718\)*:
Mm-hmm.

**Tom Johnson** *\(33:55.8\)*:
and I do this every two weeks for like these APIs. It's this this like engine of change every time there's a release.

And I regenerate the reference docs to to identify the diff. But so many tech writers I meet, they they're like, Yeah, engineers handle all the reference docs, you know. They they write the release notes, I just edit them. And I'm like, How are you identifying all the changes? You're you're really relying on engineers to tell you it, and they they don't know half the time all the stuff that's changing, and they don't tell you all the details. I really like to take charge of like I own the reference stocks. I go in and I update the source code, I make the

**Fabrizio** *\(34:18.224\)*:
Yeah.

**Tom Johnson** *\(34:35.847\)*:
source code match the the like conceptual content the I built skills to try to synchronize the two I play like a very hands-on role in the reference content the source files and AI tools are great at like making updates in the right syntax even forming the right links in in whatever j sort of Java doc syntax

**Fabrizio** *\(34:57.372\)*:
Yeah. I to be honest, I think what you're doing is is technical writing, but there it it has like two very very specific things in it. One is one is ownership. Like I think you think that you can only do a good job through owning part of the content generation. And I think what you're what you're feeding there is is is like

is like the the the core truth of the product in the case in this case the API. Sorry, I was just thinking about like the y you know how it's called the when you make bread you keep the yeast in the fridge and it grows. What what's that call in over there? You you're keeping you know you keep right. and then the second thing is is strategy.

**Tom Johnson** *\(35:40.431\)*:
Yeah, no, it's yeah, it's the same thing. Yeast and the fr yeah, I don't make bread, but yeah. Yeah.

**Fabrizio** *\(35:50.097\)*:
Like you're being stri you're being strategic about how you produce the content. Like you have the pipelines, you have the procedures, you're not just trailing behind developers. I I think the most the most miserable scenario for a tech writer is not having a strategy and not owning anything. Because you are at the whims of everything in the org.

**Tom Johnson** *\(36:07.496\)*:
Yeah.

**Tom Johnson** *\(36:10.877\)*:
The the release notes are are an important part of my space because I work with automotive partners and they don't wanna have like the APIs change and they don't know and it messes up their cars. I mean they they have their systems like hardened and and finalized a year before the car even goes into production because they can't just like have stuff broken. so yeah, I in the release notes I have to get very granular, like this little thing changed. And yeah, I I even have a list of all the documentation.

**Fabrizio** *\(36:20.538\)*:
yeah.

**Fabrizio** *\(36:27.282\)*:
Yeah, yeah.

**Fabrizio** *\(36:33.053\)*:
Right.

**Tom Johnson** *\(36:40.891\)*:
I updated. They want to know everything except maybe like, hey, you fixed a link. You fixed a grammar issue. So in other spaces, it may not be that big of a deal. People may not really care. They're just kind of like, yeah, they fixed a bunch of bugs. Yeah, and endless bugs. Anyway, but yeah, that's become my philosophy. I'm like

**Fabrizio** *\(36:53.106\)*:
Right.

**Tom Johnson** *\(37:02.661\)*:
Like I I I wanna own that reference stock generation because it's like that's how I identify all the changes that are taking place. And I do have an a a sense of authority about like, hey, these are the release notes based on what's actually changed in the code, independent of what an engineer has told me, but corroborated with other sources about launch entries and I mean it's not like people don't have any

sort of related assets about what's changing in the release. I I corroborate what I identify in the diffs with with these other sources. Let's jump back into something. you mentioned you have another post and this this is a this one called Most Vibecoded Tools Are Not For You. And this also connected with some themes in this AI fatigue post from Kare about all these tools

**Fabrizio** *\(37:38.62\)*:
Yeah. Yeah.

**Fabrizio** *\(37:45.382\)*:
yeah.

**Fabrizio** *\(37:49.835\)*:
huh. Yeah.

**Tom Johnson** *\(37:58.97\)*:
And just on the last week at Google IO, they about announced a bunch of tools. I haven't even tried Spark. I I opened up my my issue tracker, I saw a new tool in there, like a triage agent. And I was like, my God, it's like we all have this endless list of these new tools. We haven't even gotten to

are you I feel like in the in some ways you were excited in the past about developing your own tools. You like seeing people like Dockery or Dakari create like tools to help with docs. Maybe this wasn't this wasn't really a phenomenon before, but now maybe there's tool overload and you you called it tool slop in some scenarios. What are you getting at in this post that you were writing?

**Fabrizio** *\(38:39.997\)*:
Yeah.

**Fabrizio** *\(38:44.584\)*:
Well, basically, you know, there's there's this Darth Vader quote with which I end the post, where he comments on on the Death Star and it says, Don't be too proud of this technological terror you've constructed and

I think there's so much noise in the in the tooling space right now due to AI. Not just not just because of tools that use AI, but also because of tool created using AI. And of course I'm also contributing to it because sometimes I create like some silly tool and I post about it. But

One thing is like having fun and you create tools and you experiment yourself on a personal basis and that's something everybody should be doing and I think many people are doing right now. But then the expectation of these tools graduating to something that everybody can use, that's a whole different level. And

And I think some companies are going through the pains of you know, people creating tools without you know, the without thinking again maybe about the the first we I we we spoke about the beauty of docs. There's a beauty in tools too. There's something that makes tools like comp feel complete and and necessary and and tool that tools that can be used by everybody.

And most of the times like vibe coded tools that are launched out there don't check those boxes. So we might we also we tech writers might now feel empowered to build these tools, but we are entering a space where

**Fabrizio** *\(40:25.68\)*:
developers have been building tools slowly for decades and have accumulated lots of taste and experience. And we cannot just pretend to replace that with something we write coded in five minutes, you know.

**Tom Johnson** *\(40:38.759\)*:
There there's a line from your post that really stood out to me. You said the problem is when a tool is built for an audience of one and then promoted as something greater

And I I I like that because I I'm I am constantly being presented with tools that people make and I'm like, that works for like your situation, you've got that workflow and don't try I mean, you're publishing in a system I'm not even publishing in maybe and and yet it's presented as if it's like this game changer and and everybody should adopt and use it. And then three months later the tool is like abandoned or gone or or

didn't have the right API key kind of authorization to scale. And it's fatiguing because people get tool tools, whiplash. There's there's kind of whiplash going on right now in my my workspace because we've got multiple editors and different models available in different editors. And people are very kind of like you get used to an editor, you know how things work, where your bookmarks are and the panes and that's the organization and the functionality.

**Fabrizio** *\(41:20.092\)*:
Yeah.

**Fabrizio** *\(41:33.74\)*:
yeah.

**Tom Johnson** *\(41:45.063\)*:
People don't like to be chang changing that. it feels very unproductive. But yeah. I

**Fabrizio** *\(41:53.06\)*:
I think in the end there's there's a greater benefit in trying to come up with a with a strategy around tools, for example, in a company. Like, yeah, of course, people can experiment and they can you know they want to use Emacs, use Emacs, don't use Vim, whatever. You can use Visual Studio Code, anti-gravity, that's your choice, jet brains, whatever. But in the end, it's it's way better, I think, if the org aligns around a selection of tools and invest in training and invest in

resources around those tools, etc. basically to avoid like the the cognitive load for say a new joiner having to come to terms with what what should I use? I mean I have such a big menu like is is the buffet effect. Like what are you gonna pick? And it's it's simply you know it's it's just overload.

**Tom Johnson** *\(42:45.757\)*:
What what is your bread and butter tools? Like do you have a certain editor that you prefer? Do you prefer command line tools? Like what do you use every day for eighty percent of your work?

**Fabrizio** *\(42:57.927\)*:
I tend to prefer for code I prefer command line tools. they make for a more focused development experience. So that would be cloud code. Also the cursor CLI is pretty good. sometimes copilot CLI, but most of the time it's cloud code.

I've I've also tried there's this open source harness called Pi, like the number Pi. it's a bit dangerous because it's it has no safeguards. Like it doesn't ask you whether you want to run a command or not, it just runs it. But it makes for a very fast experience, very streamlined experience. For docs though, I prefer to use either Visual Studio with Copilot or Cursor because of two things.

**Tom Johnson** *\(43:28.883\)*:
Mm.

**Fabrizio** *\(43:45.432\)*:
One is the extension system. Like the extension ecosystem is still quite useful to writers, like things like spell checkers, linters, highlighters, etc. And also like having like a visual diff in a window alongside the agent output is very comfortable. that's that's one thing. And the other is like this it's so convenient sometimes to

just like do version controls, mole edits and and the small corrections in docs I think is for me at least is is more comfortable to do them in an editor.

**Tom Johnson** *\(44:21.649\)*:
Yeah. You said you as far as the editors, Visual Studio with Copilot and then cursor AI. I you know, I'm I'm a little confused about copilot. Is that is that the the AI model or is that just like the side pane integration, the harness or whatever and you can choose the model you want?

**Fabrizio** *\(44:40.059\)*:
Well actu yeah, actually they they recently merged into Visual Studio Code. So there's there's no there's no separate extension. Like it's the AI agent baked into Visual Studio Code. I want to give anti-gravity a try again. because I'm I'm hearing good things about it. Like what what's your experience with it?

**Tom Johnson** *\(44:45.169\)*:
Okay.

**Tom Johnson** *\(45:00.727\)*:
I love it. I mean for my personal use, I use anti-gravity. and I've got two LLMs integrated, both Gemini and Clot Code, and I can switch. I kinda like the side pane. that's my pre preference more than the command line experience because you get more visuals, you can see your file directories. It's just like it's more interactive to me, and I'm not really on the command line all day like some people are.

**Fabrizio** *\(45:20.731\)*:
Quite.

**Tom Johnson** *\(45:27.929\)*:
but at work we have we have kind of like a an internal version of of anti gravity. but then we also have like a homegrown editor that's also a VS Studio or Visual Studio Code fork at some point in its life. I mean all these tools seem to be forked from from that same same source. So they all they all look highly similar. But

**Fabrizio** *\(45:42.075\)*:
Right.

Yes.

**Tom Johnson** *\(45:50.984\)*:
But yeah, I mean there's quite a bit of difference between how a tool like orchestrates and executes on all the AI stuff that is I don't really understand what's going on. But anyway. so yeah, tool tools slap. I do like your your closing quote there on that post, you know. you you've got a you've got a nice way of phrasing things. When I when I read your posts, it's

Every sentence seems very well crafted and like thought through. You never have just like stuff thrown in there that that looks hast hastily done.

**Fabrizio** *\(46:25.019\)*:
Well I try, but what what what was the sentence that that took your attention?

**Tom Johnson** *\(46:31.091\)*:
well that I I quoted it earlier, the one that that I already mentioned. hold on. It was the problem is when a tool is built for an audience of one and then promoted as something greater. But then I was just mentioning that the Star Trek quote at the end like this this technological terror that people are are are building.

**Fabrizio** *\(46:49.029\)*:
Yeah, yeah. To me, the the the one that I would say from that post is is the three things that matter, but not just in in creating tools, also in writing, which is craft, care and intent. So

Craft means that you know your craft, like you know how to do things, you know when things are well done. care means that you care about the thing. Again, this is not something a machine can do because it has no motivation to do it. And intent again connects to motivation. You know, it's it's like a mix of motivation and emotions. it's it's all ingredients that only a human can bring to the mix. how that translates to dry release notes, I still don't know. But I I like to think that.

**Tom Johnson** *\(47:35.582\)*:
Well, that topic of like care craft, care and intent, focusing on the care. It does seem like I mentioned this earlier in the podcast. I I do find it hard to care about LLM generated content when I'm just the reviewer. And I'm wondering if that has larger effects. Like, are we getting

**Fabrizio** *\(47:50.214\)*:
Right.

**Tom Johnson** *\(47:57.042\)*:
to be are are we losing that sense of care about our profession or are we just really able to care about the finally care about the things we that matter to us? We're no longer trapped doing all this mechanical updates and

you know, create this link and do this variable and add this reference. It's like you can focus on stuff you actually care about. I I'm on the fence about this. I'm not really sure. in part I'm not sure because things are moving so fast. It's like I I I am cranking out like three times more than I did a couple of years ago. I look at my number of change lists and the the amount of code, the code deltas, all that stuff's tracked and I'm seeing like a huge trajectory, especially as I'm developing more

skills, I'm getting more velocity. So part of me is just like moving so fast and and pushing through so many tickets, that itself is sort of a rush. It's like, man, I just closed this ticket in an hour that that that was like eight hundred words and yeah, this dopamine hit and I'm I'm on to the next one. And I don't really care about any specific one. I'm l I'm more like

**Fabrizio** *\(48:53.2\)*:
Mm-hmm.

The dopamine shot, yeah.

**Tom Johnson** *\(49:05.491\)*:
just drinking the Kool Aid of the velocity and thinking, God, this is a wild ride. I'm like anyway.

**Fabrizio** *\(49:11.738\)*:
Yeah. But at some point at some point we are just gonna you know, we're just gonna slow down the run and and just be there like panting and looking around us and say, Where are we? And just realizing that it it didn't really matter. The speed didn't really matter, something else mattered. But we might be like, I don't know, six months, one year from from that moment globally. but I think we're we're gonna get there.

**Tom Johnson** *\(49:37.736\)*:
Yeah, I I feel like we're in an interim time space that's very unique right now. I mean, I I think like there probably will be a reckoning that that a lot of people are spending a gazillion dollars on AI tokens and like are they getting the ROI and these these IPOs that are coming on scene with open AI and and anthropic and SpaceX for billions of dollars, like

**Fabrizio** *\(49:53.517\)*:
Mm-hmm.

**Tom Johnson** *\(50:05.071\)*:
Is this all just gonna hit the we're gonna run out of runway and people are gonna say, wait a minute, we spent all this money and what? Like we were moving so fast, but what did we build? I I don't know.

**Fabrizio** *\(50:16.432\)*:
That's yeah. That's that's what I'm trying to I I'm I'm familiarizing myself with with local models and fine-tuning my local models lately. I I'm gonna like publish a post about this soon. because I think the future is local for this stuff, mostly. Like you will maybe switch to the remote provider when you need like more processing power or you need to run things async, maybe you're not on your computer.

**Tom Johnson** *\(50:25.266\)*:
Yeah.

**Fabrizio** *\(50:45.508\)*:
But you know, like having tried, for example, models like Google's Gemma four on my Pixel 10, that was quite the experience. Like you're maybe one year from having like a powerful model like Gemini 3 or others running fully on your phone at a decent speed.

**Tom Johnson** *\(51:06.013\)*:
Help me understand why you think that local models are the future because I I'm not seeing that in my space. I get unlimited tokens and I don't ever have any compute constraints for the most part. Not ever, but by and large it's like, hey, you got a emp unlimited number.

**Fabrizio** *\(51:22.916\)*:
What I think I think they are yeah, not maybe not the future was exaggerating there, but certainly a substantial part of the future in the sense that they're gonna cover like a more significant share of our AI time. Why? Because cost slash price, like if inference cost doesn't doesn't go down.

Like if it keeps looking like this and you know with energy crisis and whatever. we're gonna need something we can run on our laptop using solar power or something similar. And that's something you can do on like on like on a Mac for example these days. On I have this MacBook Air with 60 gigabytes of RAM. It's not like I don't know, it's under $1,000 in the US. But you can run like a an 8 billion perimeter model on it at decent speed already.

Which was quite unthink unthinkable years ago, thanks to the processor. And so it's like cheaper, it's more sustainable, greater privacy too, because it's you know, it's for some things you don't want to send like data outside for training purposes or whatever. so it it's it will certainly have its uses, especially in the personal sphere.

**Tom Johnson** *\(52:36.849\)*:
I will admit I have I have not even installed a local model on my machine. You're talking about Gemma Gemma four or it's like a Google local mo local model. I haven't even used it. But I'm not working in open source and I I guess I just haven't had the need. But maybe maybe things will change. It I do think our our

**Fabrizio** *\(52:46.341\)*:
Yeah.

**Fabrizio** *\(52:55.354\)*:
Yeah. Well I'd be I'd be curious I'd be curious to read your you know your your take on local models. Maybe you can find them useful.

**Tom Johnson** *\(53:01.755\)*:
Yeah, yeah, yeah. I mean this last like three weeks I barely posted anything on my blog. I feel like I I end up devoting most of my energy for work projects and then it in the evening I'm just kind of exhausted and I spend a lot of time playing bas basketball and doing my own little thing outside of the computer space and

**Fabrizio** *\(53:19.29\)*:
But

**Fabrizio** *\(53:24.61\)*:
y you know what you know what that means for a reader, right? I mean they know we are human.

**Tom Johnson** *\(53:29.883\)*:
I know. That's why that's why I mentioned it here. this part of this AI fatigue article, this this s Kare is like people always celebrate the wins. They they're like, I just I just, you know, expedited my workflow tenfold. I just created a swarm of a thousand sub agents and they've like created new

**Fabrizio** *\(53:37.733\)*:
Yeah.

**Fabrizio** *\(53:45.964\)*:
Haha right. Sounds exhausting.

**Tom Johnson** *\(53:48.786\)*:
Yeah, and they never have posts where people are like, I'm tired, or like I, you know, I I can't do this, or or the thing I worked on for two days is just like was completely useless. So yeah, we should would throw this in there. There's also this sense that people feel behind. They're like, my gosh, I feel so far behind. In reality, there's many tools. I mean, I I mentioned I haven't even installed a local model. I I haven't played with the

I can't even remember the the claw thing, the open claw, you know, where you've got things d going on, you've got that setup. I'm like, that's not for me. I I don't care. I focus on my one little area. I'm gonna develop these skills and I'm gonna I'm gonna get good at that. And yeah, there's a endless line of tools and other techniques I gotta learn, but you gotta draw a limit.

**Fabrizio** *\(54:22.252\)*:
yeah, yeah.

**Fabrizio** *\(54:39.097\)*:
That's that's totally acceptable and I think we are you know, tonight we are we are what today in the US we're giving like a good example like both approaches are perfectly valid and you just have to explore at your own pace. Like there's there's no single right way of doing this.

**Tom Johnson** *\(54:52.337\)*:
Yeah.

**Tom Johnson** *\(54:56.039\)*:
Yeah. Well one thing that has helped me sort of not get burned out is my AI book club. reading reading books on AI kinda gives me the larger picture and I'm like I don't get too caught up in like the daily changes as much as I used to. It gives me a broader, longer a perspective of the long view. And also reading is just like one of these slow mode activities that that's helpful.

**Fabrizio** *\(55:05.266\)*:
yeah.

**Fabrizio** *\(55:24.899\)*:
Yeah. let me ask you, like how how many of those books l you know, read as if co be know being co-written by I or or written by I? Is that

**Tom Johnson** *\(55:25.915\)*:
So

**Tom Johnson** *\(55:33.997\)*:
none n none of the books that we've I don't know, actually. Maybe they're just really good at it, but for example, the last book that we were reading reading, was written in twenty eighteen, Max Tegmarks three life three point So so that's before the whole AI explosion. But so many concepts were still relevant. But this current book, yeah.

**Fabrizio** *\(55:48.772\)*:
Yeah.

Right.

man, like that yeah. Th there was there was this blog post, sorry, the other day where there was this guy analyzing the you heard about the Pope encyclical where you know he he wrote about AI, etcetera, and the guy was analyzing whether the encyclical had been written by AI or not. And he concluded like that substantial parts of it were written by AI. So whether it was written by AI or not, and I

**Tom Johnson** *\(56:05.928\)*:
yeah.

**Tom Johnson** *\(56:12.832\)*:
**Fabrizio** *\(56:20.811\)*:
I don't think it was because it was like very formal language and this is what something you know, something where AI excels. I think it's it's just tiring to have to ask yourself that question, you know. It's only care about the message.

**Tom Johnson** *\(56:31.057\)*:
Yeah. Well I I should admit that there are

Yes, there are gazillions of books written by AI. They're not the ones we're selecting for the book club. I usually stick with books that have like a thousand reviews or at least five hundred positive reviews, four, four and a half stars at least. And usually those books aren't the ones written by AI. If you just search for AI book on Amazon, you get stuff with like thirty reviews and you read it or check it out and you're like, Yeah, this is not written by human. They're trash and they're dime a dozen for sure. Trying to s trying to steer away from those and find the actual good content.

**Fabrizio** *\(56:43.15\)*:
Right.

**Fabrizio** *\(56:46.958\)*:
Right.

**Fabrizio** *\(56:57.625\)*:
Yeah.

**Fabrizio** *\(57:01.167\)*:
Mm.

Yeah.

**Tom Johnson** *\(57:07.189\)*:
Content? Pretty hard, but yeah. Anyway, hey, we've we've been chatting for quite a while and thank you so much Fabricio. You always bring like great insights and you're sort of an inspiration about the many things you're doing. So I appreciate our conversations.

**Fabrizio** *\(57:23.395\)*:
Likewise, Tom. Thanks to you.

**Tom Johnson** *\(57:25.361\)*:
Yeah, thanks. And people can can find the show notes. We'll put links to all these posts. I'd rather be writing dot com is my site and Fabricio's is Paso dot Uno. You can find all all this content we've been talking about on these sites and and also your feeds. So thanks again for listening.

**Fabrizio** *\(57:44.762\)*:
Thank you.

