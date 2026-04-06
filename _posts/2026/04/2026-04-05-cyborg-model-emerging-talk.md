---
title: "The Emerging Picture of a Changed Profession: Cyborg Technical Writers — Augmented, Not Replaced, by AI"
permalink: /blog/cyborg-model-emerging-talk
date: 2026-04-05
categories:
- ai
- technical-writing
- writing
- podcasts
- academics-and-practitioners
keywords: cyborg technical writer, AI augmentation, technical writing, human-AI collaboration, documentation automation
rebrandly: https://idbwrtng.com/cyborg-model-emerging-talk
description: "I recently gave a presentation to students and faculty in person at Louisiana Tech University on March 30, 2026, focusing on what I call the cyborg model of technical writing. The idea is that the emerging model for tech writing isn't one in which AI replaces tech writers but rather one in which AI <i>augments</i> tech writers. Tech writers interact with AI in a continuous back-and-forth, conversational, iterative manner. This post contains the recording, slides, transcript, summary, notes, and more from my presentation."
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/latechtalkemergingprofession.mp3
podcast_file_size: 84.9
podcast_duration: "01:28:36"
podcast_length: 70947155 
image: youtubethumbemergingpicturethumb.png
linkedin: https://www.linkedin.com/posts/tomjoht_the-emerging-picture-of-a-changed-profession-activity-7431710312594124801-s0D9
---

* TOC
{:toc}

## Recording

<iframe width="560" height="315" src="https://www.youtube.com/embed/nju_MWoWooE?si=x6VddY4kiHfFLR5o" title="Emerging Picture of a Changed Profession: Cyborg Technical Writers" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Audio only

If you just want the audio, here it is: 

{% include audio.html %}

## Slides

<figure><a href="https://docs.google.com/presentation/d/15u3nIsFqcbdoktUkltEOXLHWOUQ_qiHbVZDOfUl5QDs/edit?usp=sharing"><img style="max-width: 400px" src="{{site.media}}/emergingpicprofessionslides.png" alt="The Emerging Picture of a Changed Profession: Cyborg Technical Writers — Augmented, Not Replaced, by AI" /></a><figcaption>Slides for my talk: The Emerging Picture of a Changed Profession: Cyborg Technical Writers — Augmented, Not Replaced, by AI</figcaption></figure>

## Presentation description

> **The Emerging Picture of a Changed Profession: Cyborg Technical Writers — Augmented, Not Replaced, by AI**
> 
> At the height of AI's hype cycle, there was a sense that, given the pace of accelerating improvement, it wouldn't be long before AI fully assumed the technical writer role. However, even as AI has ramped up from hallucinating bot to capable content generator, full end-to-end automation remains elusive. Automating a single complex process (among many that a role performs) often falls short due to uncorrected missteps along the way or looks like a fragile Rube Goldberg machine, only working in perfect and limited circumstances.
> 
> Instead of tech writers being replaced by automation, the picture that's emerging in 2026 is one of a hybrid role — a cyborg technical writer. Daniela Amodei, co-founder of Anthropic, says, “I continue to believe that humans plus AI together actually create more meaningful work, more challenging work, more interesting work, high-productivity jobs.” In this cyborg model, the writer and machine engage in a continuous back-and-forth—a partnership that leverages the machine's analytical processing and pattern recognition while relying on human steering, review, and verification. In short, the tech writer isn't being replaced by AI, but rather augmented by AI as a co-partner in developing documentation.
> 
> Because of the trends toward augmentation over replacement, technical writers should look to work closely with AI tools to improve the integration. There are at least 10 principles that tech writers can use to augment their roles with AI, working as cyborg technical writers. The principles go far beyond simply operating the machine.

That's what I focused on, but how did I arrive at this? Let me elaborate a bit.

## Reasons for arguing for the cyborg model {#reasons}

*<b>Note:</b> I originally wrote this post before my presentation, so this section provides some background on why I took this position. This section provides some pre-presentation thoughts on why I decided to go in the cyborg direction.*

Ever since I was invited to speak to students and faculty (at the request of [Kirk St. Amant](https://www.linkedin.com/in/kirk-st-amant-614a272/), who teaches at Louisiana Tech), I'd been mulling over what I should say. I mean, if you were invited to go into a university and help students and faculty understand today's workplace and what skills and concepts students would need to know to succeed, what would you say? 

After deliberation for a few months, I reached a conclusion about what I wanted to say: the model that's emerging is a *cyborg model* of technical writing, a humans + AI combination. This is in contrast to the many articles, which now seem to come at an even faster pace, saying that AI will replace human labor. I realize there's a lot of opinion on this debate, but my argument for why the humans + AI (cyborgs) model is the winning one, rather than replacement, is because of this observation: almost no tech writers at my work have automated complex processes using AI. And in my own use of AI over the past few years, the model that's emerged is a close intertwining of machine and human interaction to produce content. I'm talking with AI all day. It's not doing much on its own without my constant steering, direction, and feedback.

<figure><img src="{{site.media}}/thecyborgwriternapkin.png" alt="The cyborg technical writer" ><figcaption>The cyborg technical writer</figcaption></figure>

In my experience, AI can only automate granular subtasks within larger processes. The idea that you could replace a human tech writer with an agent is unlikely because the agent can't reliably resolve a complex bug across a large system on its own, much less tackle more sophisticated projects and processes that tech writers do. Unpacking the details of example after example would probably be worthwhile here, but I'll save that energy for another day.

Because I'm not seeing automation of full processes, I find myself a bit frustrated at conversations about replacement. I feel they're not grounded in current reality. The other day I was listening to Hard Fork's episode [‘Something Big Is Happening' + A.I. Rocks the Romance Novel Industry + One Good Thing](https://www.nytimes.com/2026/02/13/podcasts/something-big-is-happening-ai-rocks-the-romance-novel-industry-one-good-thing.html?showTranscript=1). I usually love listening to these hosts, but in this episode, except for a few brief acknowledgments about the uncertainty of future trajectories, the hosts seem to go fully along with the idea that human replacement is on the short horizon. In this discussion about replacement, it's unsurprising that the hosts are focusing on software engineers rather than journalists and podcasters. Isn't it easier to imagine how someone else's job can be automated, but not your own?

How can the replacement model be viable when automating a single complex process from end-to-end isn't being done, despite many trying? I've sunk a lot of time into trying to automate release notes. I write more than 100 release notes for various products each year. I have a process for partially automating some of the release notes, which I described in [Using file diffs for better release notes in reference docs](/ai/prompt-engineering-release-notes-reference-docs.html). I initially tried to create a combination of scripts and prompts that would automate nearly everything from A to Z, but it failed. One issue is that problems near the start of an instruction, if not caught, corrupt later iterations. You need a human in the loop to verify and check and fix things at each step along the way.

Consider this example from last week. I have a script that gathers file diffs for all changed files in the release. From those changes, an instruction file prompts an AI to create summaries. But what happens if some of the file diffs are incorrect because engineers committed a change to a release stage that they later rolled back? For example, perhaps they removed a release stage label that said a feature was "Launched" in the proto comments, but then decided not to actually launch said feature, but to keep it in preview.

The automated release notes miss this rollback and promote the idea that the feature launched. Little issues like this happen in nearly every release. It might not be an incorrect release stage, but a thousand other problems.

We're at the same point with automation right now as autonomous cars. Autonomous driving is only possible on well-traveled, predictable roads with little variation or surprise, on routes that have been mapped and re-mapped, test-driven and re-driven, and constantly monitored. In the tech writer role, there are some repeatable tasks that are like well-traveled roads (for example, a weekly report). But more often, we tech writers find ourselves going down many new roads each day, each with its own unexpected twists, turns, and bumps. That unpredictability makes automation difficult, requiring frequent human steering and input to avoid crashing.

Until more tech workers have automated complex processes end-to-end, I'd like for the industry to more readily acknowledge a different model that better describes reality: the cyborg model. The cyborg metaphor comes from a research paper called [The Jagged Edge](https://www.hbs.edu/ris/Publication%20Files/24-013_d9b45b68-9e74-42d6-a1c6-c72fb70c7282.pdf), which I referenced in my [book review of Ethan Mollick's *Co-Intelligence*](/blog/book-review-co-intelligence-mollick) and which I explained in my post [Why attitudes and experiences differ so much with regards to AI among technical writers](/blog/plurality-of-ai-attitudes-experiences). In short, the cyborg model is humans + AI working together. The machine augments (rather than replaces) the human, and vice versa. This cyborg model describes nearly every tech writer who uses AI: there's a frequent back-and-forth collaboration to produce content. It's conversation, not push-button delegation.

This frequent back-and-forth collaboration is the message I wanted to share with students and faculty: humans aren't being replaced (at least not yet). For a great article that articulates this "weird" conversational model with machines, see Clive Thomson's [Coding After Coders: The End of Computer Programming as We Know It](https://www.nytimes.com/2026/03/12/magazine/ai-coding-programming-jobs-claude-chatgpt.html) in the NYTimes (March 12, 2026).

The question students and faculty should be considering is how to use machines effectively to augment the work. Leveraging the machine is a huge topic: it's not a push-button process. In fact, I argue that augmenting your work with AI machines requires a sophisticated understanding of models and their behavior; it requires strategic thinking, problem-solving, systems thinking, automation engineering, and more. There are many tech writers who fail with AI and can't figure out how the tools work, how to integrate AI into their workflows, how to become the 3x tech writer using them. If students want to succeed in the workplace, they must figure out how to better integrate with machines to achieve the cyborg workflow.

## Key takeaways

Here are key takeaways from my presentation. (Note: AI-generated)

- **The "cyborg model" best describes how technical writers work with AI today.** It's not a push-button replacement — it's constant back-and-forth conversation, steering, correcting, and iterating. Think rapid collaboration in a loop, not delegation and walking away.

- **AI has shifted the tech writer's job from writing to editing and orchestrating.** You're telling the AI what to write, then spending your time reviewing, correcting, and refining the output. The most writing you do is in the chat prompts themselves.

- **Content generation is becoming instant, so the real value shifts to review and verification.** If anyone can push a button and get a draft, the bottleneck — and the skill — is knowing whether the output is accurate. Accuracy is becoming the main deliverable.

- **Domain expertise is more important than ever.** If you can't evaluate what the AI gives you, you're just shrugging your shoulders. Knowing your subject matter well enough to spot errors and ask the right follow-up questions is probably the most valuable skill you can have.

- **Context engineering is a core skill.** Figuring out what information the AI needs to produce a good answer — the right API reference, the right code diff, the right design doc — is critical. Garbage in, garbage out. Almost never start a session without feeding it relevant context.

- **The tool landscape is volatile — stay curious, not committed.** Tools emerge and get replaced practically weekly. The tech writer who went on vacation for three weeks came back to find her favorite tool already eclipsed. Curiosity and adaptability matter more than mastering any single tool.

- **Learn the quirks of AI model behavior.** Sycophancy, middle-skipping, token limits, hallucinated package names — understanding these patterns helps you have more productive conversations and catch problems before they propagate.

- **Tech writers are becoming system engineers.** Instead of writing a doc, you're building the workflow that produces the doc — configuring scripts, managing file diffs, automating release notes. The title "documentation automation engineer" might be more accurate than "technical writer."

- **Write docs for machines, not just humans.** With agents consuming documentation on behalf of users, making your content machine-readable (through skills files, structured formats, and clean references) directly impacts whether an LLM recommends your product accurately. Tying your value to reduced hallucination rates is the dream metric.

- **The hype outpaces the reality — but the reality is still significant.** AI isn't autonomously replacing workers. Studies suggest productivity gains may be around 10–20%, not the revolution some CEOs imagine. Companies that made deep cuts may find themselves hiring people back. But even a modest boost, compounded across a workforce, is transformative.

- **Think beyond your current role title.** If you can build apps, automate workflows, do QA, and design systems — not just "create documentation" — you become harder to replace and more valuable in a world where role boundaries are blurring.

## Transcript

Here's a transcript of the presentation.

### Overview

Here's what I plan to go through. First, I want to describe what the current landscape looks like — I want to paint a portrait of how things are current day, what it's like to be a technical writer, and some shifts that have been happening. Second, I'll talk through what I've been doing to wrestle with those shifts. Third, the resolution that I've come to about how to make sense of things. And finally, the direction that I think is valid going forward.

*Note: All views expressed are my own, not the views of my employer.*

---

### Part 1: The Current Landscape

I'm going to talk about conversation shifts, shifts in trust, shifts in tools, shifts in writing, system engineering shifts, brain fry shifts, pace shifts, anxiety, and identity shifts.

#### Shifts in conversation

I now sit there and talk with computers all day long, with AI all day long. It used to be that I would talk a lot with engineers to gather information or other colleagues. Now it's kind of like, well, I can get the answer by either providing information to the AI and querying it or just having the chat to get the answer. So it's a big shift in how to work. It's more isolating. It's not as tight-knit because we're more independent and autonomous.

#### Shifts in trust

It used to be that I would go and interview the engineers about what was going into releases — "Hey, what kind of features are we releasing in the next release and in the upcoming roadmap?" Now you don't really have to do that. You can get most of what you need by just looking at the code. You can get file diffs from one release to the next, and from those file diffs you can know exactly what has changed. In some ways it's better this way because the engineers never really gave me the amount of detail that I wanted — it would be very vague, brief notes. But now I know exactly: the API has this new method, this new method has all these fields, and here's the data. So it's a lot more self-sufficient.

I like to discover what's in the releases without people telling me. And that's a huge shift. Now the product managers will look at release notes that I write to learn what's in the release, and they'll want to know — are these accurate? Trying to answer that is a huge question as well. I still interact with engineers. I'm just saying it's shifted to more of an approval state.

**[~5:00]**

#### Shifts in writing

The biggest shift is probably in writing. Gradually — and sadly — the tech writer doesn't do a lot of writing. Instead, you tell an AI what you want to write for the docs, and then you spend the next bit editing it and correcting it and steering and trying to get it to write what you want.

It's just easier cognitively to operate this way. It's debatable whether it's faster. There's a study from METR that found tasks actually took engineers 19% longer, but the engineers thought they were 20% faster. It was because of this illusion — it was easier to offload, so it seemed faster. People are trying to figure this out. Is it a boost? Is it not? I definitely think it is, but it really depends on a lot of things.

In general, it's a huge shift to have been working in the writing field for 20 years where you're doing a lot of the writing, to now just telling AI, "Hey, we need this and that — write it."

#### Shifts in tools

AI tools emerge practically weekly. My favorite anecdote: there was a tech writer who was really championing Gemini CLI — this command line interface that allowed you to use AI tools. She was giving workshops on it, she'd written blog posts on it, given sessions on it — so much energy. Then she went away for three weeks on vacation, came back, and the whole topic had shifted. Now the tool was one called Anti-Gravity. The whole talk of the town was Anti-Gravity this, Anti-Gravity that. She just felt at a loss.

And these are just the authoring tools. There are tools baked into every part of the process — the review process, the code search interface, the browser, the bug tracking tool. They're smartly woven into different workflows. The amount and number of tools is almost Precambrian-like, this explosion of life. People are building tools because this is a builder technology — it essentially builds other tools.

**[~10:00]**

#### Shifts toward system engineering

Instead of working on a doc, we're working on building the systems that write the docs. And that's the hard part. How do you configure a process and a workflow and instructions and scripts that actually result in usable documentation? You're becoming a system engineer, thinking through: what do I need? What is my workflow to get to this getting-started tutorial or API overview or release notes? How can I automate this into some kind of process?

It's very easy for errors at the start to propagate all the way through, and then you end up with hallucinations. Trying to figure out how you build in accuracy verification and resilience through that process is challenging.

#### Brain fry

This is a term used in a Harvard Business Review article about cognitive overload where you've got multiple processes running at the same time. You've got one agent doing one thing, another agent doing another, but you have to babysit them both. You have to approve implementation plans, review what they've got, and while you're waiting you bounce to another task. This sort of jostling around creates a lot of fragmentation and makes it difficult to focus.

#### Pace

The pace of things has also picked up. Things are much more accelerated. Part of the acceleration is due to a thinning of the tech writers — maybe 30% fewer than in the past, and you're supporting more teams. But also everybody around you is empowered with AI tools. They're cranking out code and not really providing much documentation to go along with it. The acceleration is maddening. And I think it will only get faster.

#### Anxiety

There's this constant dread: are we next? You hear about one company laying off writers — whether it's Amazon or Snowflake or Meta — and it creates a real sense of anxiety and powerlessness that permeates things. It used to not be the norm, but it definitely is now.

#### Identity

There's a sense that if I'm not really writing, why is my title "technical writer"? And if I'm building a workflow that produces a fairly complex and sophisticated output, is that a technical writer? Probably not. But then what am I? Am I just pushing buttons on a machine? Am I doing hard thinking? What's my value? There's a lot of questioning about how we establish our value.

**[~15:00]**

#### Q&A

*[Audience question about whether tech writers need to know the programming languages they document.]*

I'm probably assuming that just because I have a narrow-minded view of technical writing. I work in API documentation, and Google is obviously a Silicon Valley company, and there's this bubble around my head that this is how documentation works. But there's a whole world of hardware documentation and other types of documentation outside this.

Most technical writers have a basic understanding of code but not necessarily the ability to write code, nor the expectation to. But I frequently find myself in the source code — whether it's Java or proto files — updating comments, trying to fix broken links, trying to make sense of what the code is doing. Not necessarily how to use it to build an app, but just understanding: what are the methods here, and are they valuable? It's mostly with the comments, though.

My whole theory on how to be a good technical writer is: you want to generate the reference documentation yourself. Too many writers just allow engineers to do this. Think of the Javadoc reference or some other kind of reference about how to use an API — the comments that live in those Java files are what end up in the reference documentation.

So as a tech writer, I configure our build tool with those source files and write a script to generate the reference. Because I do that, I now have a clear snapshot between releases. I can say, "Here was the reference documentation two weeks ago," rerun it, and now I have a file diff that shows me everything that has changed. I can see we added a field, changed this, clarified that. With that diff, I'm empowered to write release notes, and I can also look through the rest of the documentation and see what might need to be updated.

There's a terrible problem of documentation drift where engineers make updates and the word never gets to the tech writer. But when I control that reference documentation, I get that exact picture of how it's changed. It's super empowering, and it frustrates me that so many technical writers at my work don't have a hand in this.

*[Audience question: "Do you believe that an eventual consequence of this kind of progress is an expiration date to this type of profession?"]*

That's a nice way of putting it — an expiration date. It's too speculative. That is the heart of the question. I don't think anybody has a crystal ball. But I'll tell you that the workflow right now is conversations. It's not autonomous agents doing everything perfectly where you come back in the morning and everything is written. That's a fantasy. It's constant back and forth. You've got to define the context, the scenario, give examples, review outputs and implementation, then review the first draft, and just like an editor, rip it apart. It's a cycle.

It is a lot easier to edit than to write. So I think that's why even if it doesn't actually save time, more people are adopting it.

**[~20:00]**

---

### Part 2: Wrestling with the Shifts

My initial instinct was to try to prove my value with productivity — just be the writer they can't afford to cut, cranking out so much. But I don't really think this is all that valuable. I'm not sure that companies actually look at a specific employee's output. It's very hard to judge. But there is that pressure to really produce, to show that you're integral.

I've been seeking out a lot of conversations. Every conversation drifts to AI to the point that people get nauseated. I'm in an education group at my work where we have biweekly lunch-and-learn sessions, coffee chats. There's a lot of community conversation. We're trying to figure out best practices, value judgments, value expressions. I've written a lot of blog posts and podcasts. I even have an AI book club. I've got a podcast with another writer in Spain that gets me outside my bubble. We pull in other people — we even chatted with some academics recently.

I feel extremely plugged in. This is a time that has captured the attention of the professional community like no other. There have been many trends in the past — wikis, content strategy, docs as code, every page is page one, XML. I've seen many of these trajectories play out, but never have we had a topic that has occupied everybody's attention for two-plus years.

I've also been trying to keep up with the moving landscape — consuming tech podcasts, trying new things, giving workshops, attending workshops. What you know one month doesn't apply next month. The models change in really interesting ways. When I first started using these tools, they would just sort of spit out an output. Then at some point they started providing a thought log, and you could read the thinking behind the AI. And then they started writing Python scripts — every time you ask it to do something, it finds a way to write a script to do it. These technologies and approaches constantly change, which is really challenging to keep up with.

#### Ratcheting up domain expertise

I've found that if you want to interact with an AI tool in a conversational way, you have to have knowledge and expertise about the subject matter. Otherwise, you won't know if it's accurate or not.

Usually on my way to work, I'll take partner emails, industry news, or other documents and articles, put them into NotebookLM, and have it create a podcast about it — an audio overview or a video — and listen to it on the way to work. You can tailor exactly what you want to learn in a very precise way. My favorite thing to do: I'll get a list of partner updates, plug them into NotebookLM, and say, "Pretend that you're a product manager talking to technical writers at this company." It completely shifts the approach and makes the writing stuff way more interesting.

There have been quite a few studies showing that if you know how to do something well enough, you can be very productive with AI tools. There was a paper comparing it to somebody following a YouTube tutorial to do electrical wiring in their garage. If somebody has zero experience doing that, as soon as they hit something where the tutorial doesn't match what they're seeing, they're stuck. But if somebody has experience with electrical wiring, they can map that discontinuity with their own knowledge and work around it. This same sort of expertise allows people to iterate in that conversational way. Domain expertise is probably the most valuable skill.

**[~25:00]**

#### Hot takes and emotional whiplash

It seems like everybody's got hot takes. In our book club, we read Ray Kurzweil's *The Singularity Is Nearer*, the follow-up to *The Singularity Is Near*. You've got people who are very enthusiastic — futurists predicting AGI in 2029, others predicting 50% of white-collar workers losing employment. Every time I listen to an Anthropic or Dario Amodei interview, it seems like he predicts lots of job loss. But you listen to other people and they're like, "No, this is bringing abundance and we're going to see tech saturate all these other domains where it wasn't." You've got people building whole systems seemingly over the weekend.

It's emotional whiplash. You can read one article and it says one thing. Scan down and you'll find the opposite opinion not too far away.

---

### Part 3: Resolution — The Cyborg Model

I do think legitimately AI can augment your role. You really can do superhuman things with AI. I had one of those humbling moments — I was writing a blog post comparing Mikhail Bakhtin, this Russian literary theorist from the 1930s, with model collapse, a research paper I had found. I was an English major as an undergraduate, so I went back and read Bakhtin's writing on heteroglossia. Man, it was so hard to get through — I struggled for about three hours at the kitchen table taking notes on maybe 25–30 pages.

At some point I uploaded the PDF into my favorite AI and asked it to unpack it and compare it to model collapse. It did it in about a minute. It was humbling to think that I'm struggling with my poor little brain, and this machine analyzed and interpreted it in a very compelling way and applied it almost instantly. It was a wake-up call: we're not going to win if we're trying to compete on an analytical level. It would be crazy not to leverage these tools when you're doing analysis, interpretation, and other kinds of work. It really can accelerate things in impressive ways.

**[~30:00]**

But as far as autonomous acceleration — where the AI is acting independently and doing its own thing — I don't think that's what's happening. What we're seeing is conversations. Most of the documentation scenarios we tackle are one-offs. I have one automated process for release notes, but most everything else is like a car going off-road through terrain with all kinds of obstacles — that requires a human driver. The many scenarios where AI works (at least with driverless cars) are on more predictable roads that have been mapped and extensively tested. People are always saying, "We're a couple years off, a couple years off," but it's way harder than anybody ever thought.

Even if you do create a workflow, there's always some gremlin in there. Something goes wrong. I keep waiting for the perfect scenario where everything just goes right. The latest example: people migrated files, so the source files were at different locations. I made some updates, then later realized certain files weren't moved, which made things even more complicated. Other times engineers will cherry-pick some feature they really wanted to get in, or they'll pull it out at the last minute, or say, "Oh yeah, we forgot to tag this as launch-ready." This happens all the time. You really need a human at the wheel.

There was a great meme going around some years ago — "What everybody thinks I do / what I actually do." For tech writers, everyone thinks it's writing all day, but writing is this tiny sliver of what they actually do. Even if you have a robot doing the writing, you've still got so many other things going on that can't really be automated.

#### The cyborg model

My conclusion is that we're trending toward a cyborg model — half machine, half person. You're collaborating in a more integrated, close-knit way in a loop of inputs, outputs, feedback, and correction. It's not a push-button solution where you watch it finish miraculously on its own.

This model was made popular in a paper by Ethan Mollick and other researchers called "The Jagged Edge." They looked at how different people were working with AI and had two metaphors. The *cyborg* was one — the person has a lot of rapid back-and-forth iteration with the machine. The other was the *centaur* — you delegate whole tasks to AI but keep other tasks entirely human, with smart delegation of what you do versus what the machine does.

If I could describe what's happening in the workplace, it's the cyborg model. It's conversation. It's not replacement where you're just sitting there idle. If I were noticing trends where I had less work to do and my day was being freed up, I'd have a very different opinion. But instead it's the opposite — working more, faster, more tasks, more things coming my way. As much as I try to incorporate AI agents, it requires a lot of handholding, babysitting, coaching, steering, correcting, fixing, and a lot of thought about what context it will need.

**[~35:00]**

The biggest shift and the hardest part is not really writing much. The most writing is in chatting with the AI and telling it the back-and-forths. In the same way that people say coding is no longer really the skill, writing is no longer the skill. It's more like a medium. The skill is in everything you're building around it — are you building systems? It's no longer just "this person is a very articulate communicator."

#### Q&A on the cyborg model

*[Audience comment about the cyborg model having an end date — that the current generation of workers was trained pre-AI with rhetorical and editing skills, and once that generation ages out, the "human" part of the cyborg falls away.]*

It's really hard to know 50 years out. I do feel like if the tech writer does become expired because tools have replaced it, well, we're pretty smart and capable. We could use the tools to do another role if another role required it.

My horizon is a lot shorter — I'm thinking 15 years, call it good. But if you're just starting out your career with a 40–50-year trajectory, it's a different consideration.

Here's something else to consider, and I haven't heard this argument, so this might just be Tom's fantasy: all of these tools are really good at producing code. They're putting out more code, more technology, more apps, more systems, more scripts. In a world that is becoming more code-intense and saturated, how is it that technical writers and other tech workers are going to become *less* relevant? The trajectory has always been increasing technology, increasing need. Maybe they're pulled into cyber warfare, surveillance, all kinds of dark things. But we're getting into a world that's going to be way more code-intense, especially for domains that never had a lot of systems — think about a greenhouse or some agriculture setup where suddenly even a small shop has sophisticated analysis code running. I think tech will spread out so it's not just concentrated in big tech companies.

**[~40:00]**

*[Audience question about whether the people designing and implementing these AI tools are building them with a "cyborg-first" strategy to augment workers, or to replace them.]*

I think the ideas on that are pretty varied, and I'm not a CEO. I can only speculate — probably a lot of people want this replacement idea. But even if a CEO wants that to happen and they lay off 40% of their workforce because they're going to replace them with AI, just because somebody wants that to happen doesn't mean it will. I think there's a reality check coming for the workers — "Wait a minute, this isn't entirely working. I can't do three people's jobs. It's making me maybe 10–20% faster."

I'm waiting for some of these companies that had huge cuts to come to that conclusion. And I'm hoping somebody does some studies to show that company X fired 40%, but in the next three years hired back 20 or something. I do think CEOs have a more realistic idea. Even if they only knew they were enabling a 20% productivity increase, that's still apparently massive. It's also really hard to measure.

*[Audience question: "What part of the process should people be most cautious integrating AI into?"]*

If you scope this to the technical writer world, I'm really wary about mistakes and hallucinations in the documentation. At the end of the day, nobody's dying over this, so it's not a big security thing. But in my own processes, the starting point needs to be based on some kind of truth. I really try to look at whether the information I'm providing the AI is accurate — the product requirements documents, the engineering designs, the API reference, the change list diffs. If there's errors in that, then the outputs are going to be problematic.

The larger narrative we're trying to figure out is: how do you push back against this idea that the machine is doing more than it should get credit for? I was trying to publish a doc before I came out here. You'd think, "Oh, publishing a doc that has already been written — easy." The doc had 97 images that people had dragged into different SKUs, all different image sizes and magnifications, headings you couldn't tell if they were H3 or H2, some just bold. It had so many problems and I spent hours and hours trying to fix it. Many people will think, "Oh, AI did all of this," but instead it took me 10 hours.

How do you persuade your leadership that AI can't do your job — it can just assist? That's the hard narrative. That's what a lot of tech writers are trying to figure out.

**[~45:00]**

*[Audience comment from a professor: "The technology being designed to replace you is being designed by someone who doesn't actually know what you do. It's being adopted by someone who also doesn't know what you do. And the technology itself doesn't know what it's doing or why. So it sounds like the perfect situation where you can't be replaced because nobody knows what they're actually replacing."]*

It's really hard to know the depth and complexity of what another role does. I sit with product managers and I know generally what they do, but I don't really know the details. They feel the same way about tech writers — they've never really worked much with us. We have this problem where we don't understand the complexity of another role that we don't do ourselves. How do you share that complexity and let people know this role is doing a lot more than you realize?

---

### Part 4: The Direction — Key Skills Going Forward

#### 1. The jagged frontier

This idea was made popular in the book *Co-Intelligence* by Ethan Mollick. AI can be really good at some things and really bad at others, but it's not really clear which is which. You can only figure that out if you experiment constantly with the tools and develop a sense of it.

For example, one thing that surprised us: we had charts from Google Forms data and we just wanted to make simple modifications — replace labels that were cut off in the diagrams. We went into our favorite editing tool, asked it to make these labels more visible, and it could not do it. Or if it did, it did it badly. But at the same time, things we didn't think it could do, it did amazingly — like reading images or transcribing an hour-long MP3 file in a few minutes.

Ethan Mollick's advice is: experiment. Try it with everything and you'll develop this sense of what it's good at and what it's bad at. By the way, *Co-Intelligence* is the one book we read in our book club that I keep coming back to. It's really worth reading, and it's short.

**[~50:00]**

#### 2. The curious mode

You are curious about the new technology coming out and you're learning it. You will get the rug pulled out from under you if you sink too much time into your favorite tool and favorite model and process. Things will change.

If you can flip your mind to just ask questions and explore things, it can reduce some of the emotional intensity of the change. Those tech writers who seem to be thriving in my work are those that are curious.

One thread I'm thinking of perfectly captures the antithesis of this mode. A writer said, "Yeah, I tried AI for this and it didn't work." We said, "Well, what else did you try?" The writer said, "No, that's it. I just tried once and it didn't work and I haven't tried again." Yeah — that's not how it works. You've got to try a lot of different things. You can't just give up so easily.

#### 3. Understanding model behavior

It helps to understand the quirks and patterns of these tools, because my job is becoming a conversation all day with an AI agent tool. For example, these tools want to be helpful. So even if a document is perfect, they feel like they need to make at least one suggestion. And sycophancy — these tools want to tell you, "That's a really keen observation, Tom" or "This is a brilliant insight." You've got to watch out for that. There are stories about people being deluded into believing they invented a new math language or some revolutionary breakthrough.

Another example is middle-skipping. If you have a big long document, even if the answer is clear as day in the middle, a lot of times the middle gets skipped. Reading the thought logs is also really helpful — you peel back an internal monologue about what it's doing, and you can see the frictions happening.

It's also helpful to know how many tokens these tools have. If you've had the same conversation for maybe 15 or so turns, they start to max out their tokens and go a little haywire. You have to refresh every now and then. One of my colleagues said it's like you get a member of the AI family — sometimes it's the really smart aunt, sometimes it's the dumb uncle.

**[~55:00]**

#### 4. Context engineering

This is the idea that you figure out what does the AI need to know in order to answer a question accurately. When a task comes in, my first question is: which information is going to be helpful? Do I need the API reference, or actually which parts of it? Maybe it was an update, so I want the change list diff from the code submission. Maybe there's a product requirements doc or engineering doc. I find some kind of source to feed into the AI, and once you have that source, you're much more equipped to get a good output. I almost never start a session without a bunch of context.

This also plays out at larger scale. If you're building a chat interface for your application, your challenge is to get docs ported into the context right next to your interface. People want to make tailored chats that have their own RAG backend with a highly accurate, curated set of documentation. That context is what makes it powerful.

#### 5. Domain expertise

If you get a response back and you don't know the domain enough to evaluate it, you'll be at a disadvantage — you'll just shrug your shoulders. But when you've got expertise about something, even if it's not deep expertise, it gives you enough to get a sense of topics that might need more verification.

#### 6. Accuracy and verification

I recently had a podcast with Manny Silva, and he's big on "docs as tests." His idea is that we should be testing our documentation — every page is full of assertions that could be tested. The accuracy of our content is becoming almost my main deliverable. If anybody can push buttons in an AI and get some output, the value gets shifted toward the review.

If content generation is instant or near instant, the part that takes a lot of time is review. How do I know? How can I test these things? How can I verify that these docs are accurate?

**[~1:00:00]**

*[Audience question about dealing with subtle errors in documentation.]*

I put the reference in the context of the session first of all — which is easier to say than do. It's trying to figure out where the truth might lie. Maybe you grab the source code itself and use that to see if it matches the documentation. There's also subject matter expert review — I always find the right person who actually knows the system to review it. Sometimes they catch things.

The big question: how do you verify it? I was writing release notes for a product not too long ago and a product manager turned to me and said, "Are these accurate?" And I was like, "Well, probably." They're as accurate as I think they can be based on the code we're delivering, but there are all kinds of levels of accuracy. There's API mechanics — yes, this field is in the API — but is data actually being returned? What's the scope of that data? My biggest pet peeve is learning that a field in the API was never populated with any data. It drives me crazy — why didn't anybody ever tell me this? I'm not testing every single call and data field. The APIs are massive.

If content generation is instant, the bottleneck is reviewing the content. How do you put processes in? I often rely on other agents to help speed through that.

*[Audience question: "Is that final review something fundamentally human, or can AI do it?"]*

More and more AI tools are being developed to speed through the review. I don't think it works if a human has to manually review everything. But whether we're on the verge of AI handling that review — I do think we'll see a lot more emphasis there because that's the slowdown.

But here's the other problem: if you don't have a human writing the content and you don't have a human reviewing the content, who is signing off on it? Somebody's got to put their name to say "yes, this is accurate." If you're not a participant at any point in the process, then it's almost impossible to say whether it's accurate. I think this is one reason why radiologists haven't been replaced — you want somebody who is going to be responsible. The human in the loop seems inevitable.

**[~1:05:00]**

*[Audience comment about the risk of skills atrophying as we become more dependent on machines — comparing it to how we've lost navigation ability without Google Maps, or how kids can't read paper maps.]*

We're in a first-generation time period where the programmers are like, "Oh, this AI wrote the same code I would write and it did it super fast," but they know how to write that code. I know how to write the docs without AI tools. But we're becoming more dependent on the machine, and our own skills have shifted. It's no longer programming and content creation — it's the review and orchestration. We only have so much bandwidth.

I think this is probably one of those trajectories where we become highly dependent on machines. Our skills atrophy, and we become more dependent on the machines for complex processes. It puts us at a disadvantage — in the same way that my kids love watching *Naked and Afraid*. You take away all our modern implements and we basically starve. We've learned to thrive in the environment we're in. What does that look like in the long term when we no longer have the skills?

*[Audience comment: "The human is static in your model. Once we get to the second generation trained by AI, there is no cyborg anymore — it's just a robot."]*

My theory is that our skills are shifting. You're building automated workflows, building systems. Your skills are changing — at least for now, and they'll probably continue to change. One skill that's popular right now is a "skill file" — creating instructions for the machine. I'm pretty sure in a year this will be obsolete and we'll move on to something else. This is why I said one of the most important traits is this curious mode — the ability to keep rolling with what's coming, learning, evolving, and adapting in a more fluid way.

**[~1:10:00]**

On a more positive note, there's a great article in the New York Times by Clive Thompson. He interviewed 75 programmers and came away very optimistically. He found that a lot of the programmers were excited by this change. They were no longer trapped in the drudgery of syntax and getting things to compile and troubleshooting. Instead, they could have conversations with their machines to build features and move at a faster pace — at a "godlike" pace. Some programmers really feel more creatively empowered with this new model.

Maybe it won't take long before they don't remember how to write that syntax. But if it's not actually useful, then the goalposts have shifted for what *is* useful. Maybe the ability to design a product seems really useful right now. Have you ever tried to vibe-code something? It's actually quite difficult. I tried to vibe-code an app that would gather all the change lists I've written, synthesize them and connect dots. I went around and around — I wasn't even looking at the code, just seeing the output, trying to figure out the right parameters, the functionality, also adding documentation for it. It's kind of like a painter throwing up broad strokes and trying to make something. It's a new skill.

I absolutely think that in your curriculums you should have a "build an app" type of assignment. It would also introduce people to the complexities and realities that yeah, AI is writing and coding, but it requires a tremendous amount of steering, feedback, and iteration. It's a collaborative effort. That's my main message: take the hype and tone it down a notch. It might describe some future, but right now it's all collaboration, conversation. Not push-button and come back tomorrow — it's done flawlessly. Not in the least.

**[~1:15:00]**

#### 7. Agent skills and machine-consumable docs

This is a whole framework — [agentskills.io](https://agentskills.io) — for how to take your documentation and make it readable by machines. This is probably the most salient takeaway for what a tech writer should focus on. Your job is not so much to write docs for humans, but to write them in a way that they're machine-consumable, so that other people interacting with their agents can get that information.

These skills files are tremendously helpful, but also just trying to understand the pipeline of how you get the docs into the agent, how you evaluate how accurate the AI is with the information, and then build some kind of iterative loop — they call this "eval." If you can tie your value to the accuracy of an LLM's output, that is the golden dream. If you can literally show that hallucination is reduced by X% because of accurate documentation, and users are now making queries and the product is the one recommended — that's a tremendous achievement.

#### 8. Automation engineering

This is a huge skill — super hard to figure out, but if you can build processes and automate workflows, it's one of those areas that requires deep critical thinking. I think I want to change my title from "technical writer" to "documentation automation engineer" or something. This is the skill set that will be massively appreciated. Problem is, there aren't that many repeatable processes. Most docs are one-off situations.

#### 9. Agent management

If you set one agent doing something and have to wait two to five minutes, you put yourself into another task. If you can orchestrate multiple agents without having your brain ping-pong around in a crazy way, that's a real skill. Some people hear stories of having swarms of agents. I don't know anybody doing that in my space, especially not technical writers. Many are still trying to figure out how to be successful with one agent, let alone multiple.

**[~1:20:00]**

#### 10. Role blurring

The final skill is really trying to think beyond your role — to move beyond this idea that a technical writer creates documentation. What if I also build apps? What if I also build products? What if I also do quality assurance? You have to get beyond this limitation in your mind about what you can and cannot do.

One of my colleagues was teaching us how to build an app using Gemini, and he started with the point that he didn't even know what prompt to put into it. So he asked Gemini, "Hey, I want to build an app for this timer idea. Can you help me scale out this prompt so it has all the right components?" He was able to push through unknowns by using AI tools. You don't know how to do something, but you can figure out an approach using the tools to get there. I think that's an interesting future.

---

### Closing

That's all I have. My blog is [idratherbewriting.com](https://idratherbewriting.com) — I'll post this recording there. Feel free to reach out.

*[Audience question about frameworks like OpenClaw and automating as much as possible.]*

I don't know enough about OpenClaw to really comment. I'm really hesitant to give too much power to any system — I don't want to get hacked, I don't want my privacy exposed. But it's all the rage.

*[Audience comment about AI growth and implementation being unsustainable at its current exponential pace, and about "dead internet theory" — that AI-generated content hit about 50% of internet content in October.]*

I definitely agree. The growth is at such a fast scale there's no way it can be sustained. The amount people are spending versus their ROI is another big question. At what point do companies say, "Wait a minute, we spent this many billions and we didn't really get that much in return"?

All right. Well, thank you so much. Really enjoyed chatting with you.

## Narrative article

*If the podcast were an article, this is what it would read like. (Note: AI-generated.)*

---

### The Technical Writer Isn't Dead — They're Just Half Machine Now

Here's the strangest thing about being a technical writer in 2026: the most writing you do all day is in chat windows, talking to an AI. Not crafting documentation, not wordsmithing tutorials — just typing instructions into a machine and then spending the next hour telling it everything it got wrong. Twenty years of honing a craft, and the craft has quietly shape-shifted into something nobody put on the job description.

The anxiety in technical writing circles right now is palpable. Layoffs at major tech companies have thinned the ranks by an estimated 30%. Every few months, another headline announces that some company has cut its writing staff, betting that AI can pick up the slack. The tools themselves seem to validate the fear — they can analyze a dense academic PDF in under a minute, generate release notes from code diffs, and produce passable first drafts of API documentation without ever pinging an engineer. If you're a person whose title literally contains the word "writer," watching a machine write faster than you can read is an unsettling experience.

But the panic, it turns out, is running ahead of the reality.

The actual day-to-day of working with AI as a technical writer looks nothing like the frictionless automation that CEOs pitch in earnings calls. It looks like conversation — messy, iterative, demanding conversation. You feed the AI a product requirements doc, an engineering design spec, and a set of code diffs. You ask it to draft release notes. It produces something plausible. Then you notice it invented a package name that doesn't exist. You correct it. It apologizes effusively — these tools are sycophantic by design — and produces a revised draft that skips a critical change buried in the middle of the diff. You catch that too, because you've been generating the reference documentation yourself and you know exactly what changed between releases. Three rounds later, you have something publishable. The machine did the heavy lifting of drafting. You did the heavy lifting of *everything else*.

This is the cyborg model: not replacement, but integration. A tight loop of human judgment and machine output, where neither party is dispensable. The metaphor comes from research on how knowledge workers actually use AI, and it maps cleanly onto what's happening in documentation shops. The writer isn't sitting idle while the robot works. The writer is steering, correcting, verifying, and — critically — deciding what questions to ask in the first place. That last part is what people outside the profession chronically underestimate. Knowing which slice of an API reference to feed into a session, or recognizing that a field in the spec has never actually been populated with real data, requires domain expertise that no prompt can conjure from nothing.

And this is where the value proposition gets interesting. If content generation is effectively instant — if anyone can push a button and get a draft — then the bottleneck moves downstream. It moves to review, to accuracy, to verification. The technical writer's deliverable is no longer the document itself; it's the *trustworthiness* of the document. Every page of documentation is full of assertions that could be tested, and in a world where AI-generated content is flooding every channel, the person who can actually validate those assertions becomes indispensable. There's a reason radiologists haven't been replaced despite years of AI hype in medical imaging: someone has to sign off. Someone has to be responsible.

The role is also expanding in directions that would have seemed foreign five years ago. Technical writers are building automated workflows, writing scripts to generate reference docs from source code, and thinking about how to make documentation machine-consumable so that AI agents can use it accurately. The title "documentation automation engineer" might sound like corporate buzzword soup, but it's a more honest description of the work than "writer" is at this point. The skill set is shifting from prose craftsmanship to systems thinking — and the writers who are thriving are the ones curious enough to keep shifting with it.

None of this means the trajectory is comfortable or guaranteed. There's a genuinely uncomfortable generational question lurking beneath the cyborg model: the current cohort of technical writers was trained pre-AI. They bring rhetorical judgment, editorial instincts, and domain knowledge built up over years of doing the work manually. What happens when that generation ages out and is replaced by workers who've never operated without AI? If the human half of the cyborg was shaped by pre-AI training, does the cyborg survive the loss of that training? The skills atrophy argument is real — we've already lost the ability to navigate without GPS, and most kids can't read a paper map. Dependency deepens quietly.

But here's the counterweight worth sitting with: AI tools are producing more code, more systems, more technology than ever. The world is becoming more code-intense, not less. If even a small greenhouse operation can now run sophisticated analytical software, the demand for people who can make that technology comprehensible — to humans and to machines — isn't shrinking. It's spreading into domains that never needed technical writers before. The door might be changing shape, but it doesn't appear to be closing.


## Related resources

* [Coding After Coders: The End of Computer Programming as We Know It](https://www.nytimes.com/2026/03/12/magazine/ai-coding-programming-jobs-claude-chatgpt.html)

* [World Brain: No Experts podcast - Three tech writers and a photographer walk into a bar (with Tom Johnson and Floyd Jones)](/blog/world-brain-no-experts-podcast-guest)

* [10 principles of the cyborg technical writer -- brief notes and bullet points on how to use AI to augment your role](/blog/10-principles-of-cyborg-technical-writer)

* [The Jagged Edge](https://www.hbs.edu/ris/Publication%20Files/24-013_d9b45b68-9e74-42d6-a1c6-c72fb70c7282.pdf)

* [Book review of Ethan Mollick's *Co-Intelligence*](/blog/book-review-co-intelligence-mollick) 

* [Why attitudes and experiences differ so much with regards to AI among technical writers](/blog/plurality-of-ai-attitudes-experiences)