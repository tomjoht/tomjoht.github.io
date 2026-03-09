---
title: "Podcast: Doc testing, skills files, and the guardians of knowledge -- with Manny Silva"
permalink: /blog/podcast-silva-guardians-of-knowledge
date: 2026-03-08
categories:
- ai
- podcasts
keywords: 
rebrandly: https://idbwrtng.com/podcast-silva-guardians-of-knowledge
description: "In this podcast, Fabrizio Ferri-Benedetti (<a href='https://passo.uno'>passo.uno</a>) and I chat with Manny Silva (<a href='https://instructionmanuel.com'>instructionmanuel.com</a>), head of documentation at Skyflow and author of <a href='https://www.amazon.com/Docs-Tests-Resilient-Technical-Documentation/dp/0994169361'>Docs as Tests</a>. Manny is working on a follow-up book that incorporates AI, covering validated generation, trusted agents, and self-healing documentation."
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/episode5mannysilva.mp3
podcast_file_size: 49.8
podcast_duration: "00:59:44"
podcast_length: 49116684
image: episode5mannysilvapodcastthumb.png
---

Our conversation in this podcast digs into the topics he's exploring: documentation testing (testing docs vs. testing the product), skills files (versus regular markdown files that don't follow the skills spec), the consultant model of docs (and whether this is the future of tech comm in companies), externalizing and sharing skills files (and why one might or might not want to do that), and much more. Throughout, we wrestle with the big question lurking behind all of it: as tech writers pour their expertise into systems that machines can run, are we accelerating ourselves or automating ourselves out of a job?

* TOC
{:toc}

## Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/uCdWqd4zf8s?si=40U_rCibNG5TFf0X" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Audio only

{% include audio.html %}

## Resources mentioned

* [The Most Actionable Docs Around: Agent Configs](https://instructionmanuel.com/agent-configs-are-docs) (Manny Silva)
* [Evaluating AGENTS.md: Are Repository-Level Context Files Helpful for Coding Agents?](https://arxiv.org/abs/2602.11988) (Gloaguen et al.)
* [*Docs as Tests: A Strategy for Resilient Technical Documentation*](https://www.amazon.com/Docs-Tests-Resilient-Technical-Documentation/dp/0994169361) (Manny Silva)
* *Docs as Tests and AI: Validated Generation, Trusted Agents, and Self-Healing Technical Documentation* (forthcoming book Manny is currently working on -- not yet released)
* [Skills are docs, and docs need tech writers](https://passo.uno/skills-are-docs/) (Fabrizio Ferri-Benedetti)
* [Write the Docs Portland 2026](https://www.writethedocs.org/conf/portland/2026/), [Writing Day](https://www.writethedocs.org/conf/portland/2026/writing-day/)

## Topics covered in this podcast

Here's a list of topics we talked about. (The content is AI-generated.)

- **Doc testing vs. product testing** — Manny draws a clear line between testing your documentation's accuracy (can a user follow these steps?) and testing the product itself (does the API actually work?). The key takeaway: figure out the minimum viable thing you can test in your docs and let QA be QA.

- **Manny's doc setup and workflow** — Manny maintains two doc sets (Doc Detective and Skyflow), runs the full test suite on every PR, and has scheduled daily runs at midnight. Tests cover UI procedures, CLI commands, API calls, automated screenshots via visual regression, and even video recording.

- **Deterministic vs. probabilistic testing** — Deterministic tests (like Doc Detective in CI/CD) give the same answer every time, which is the signal Manny's looking for. Probabilistic tools like browser use can bootstrap those tests but can't be trusted on their own — ensemble testing helps but gets expensive fast.

- **Skills files vs. personal instruction files** — Tom has ~40 markdown instruction files he drags into Gemini but hasn't formalized them as skills. Manny and Fabrizio argue that the skills spec makes them portable across agent harnesses (Claude Code, Gemini CLI, Codex), shareable with teams, and accessible for autonomous agent workflows.

- **Writing skills manually vs. AI-assisted reflection** — Tom describes a loop where he has AI attempt a task, reviews its thought log for friction points, then has the AI update the instruction file. Manny validates this approach — the human doesn't have to do the literal writing, but must curate what goes in or gets cut.

- **The ethical dilemma of externalizing knowledge** — Tom poses the uncomfortable question: if I pour all my expertise into skills files that anyone (or any machine) can run, am I automating myself out of a job? Manny's answer: own it or someone else will. Security by obscurity won't last when an LLM can find your half-documented process and scaffold it into a skill.

- **The consultant model vs. the curator model** — Manny distinguishes two futures for tech writers. The consultancy model: you parachute in, set up docs, and leave with no ongoing quality bar. The central pillar model (what he's built at Skyflow): you own all documentation, accept contributions from anyone or anything, but maintain the authority to block publication.

- **Guardians of knowledge and content curation** — Fabrizio envisions tech writers as librarians guarding high-quality, human-made knowledge that machines shouldn't touch — the "high signal" that feeds MCP servers, skills, and downstream AI tools. Manny prefers the term "content curator": not gatekeeping, but holding standards and verifying accuracy through testing.

- **Fabrizio on skills as documentation** — Fabrizio connects skills, agents.md, and agent definitions back to what tech writers already do — it's all documentation. He notes that companies with the best-curated knowledge repositories will have the best AI outcomes, and that tech writers are surprisingly good at prompting LLMs compared to developers and PMs.

- **Manny's book and Write the Docs Portland** — Manny's writing a follow-up to *Docs as Tests* that incorporates AI, evals, agentic workflows, and self-healing documentation systems. He'll also be hosting a writing day table at Write the Docs Portland 2025, where attendees can bring their docs to get tested with Doc Detective.



<figure><a href="https://www.youtube.com/embed/uCdWqd4zf8s"><img src="{{site.media}}/episode5mannysilvapodcast.png" alt="Podcast: Doc tests, Skills, and the guardians of knowledge -- with Manny Silva" /></a><figcaption>Podcast: Doc tests, Skills, and the guardians of knowledge -- with Manny Silva</figcaption></figure>

## Narrative summary

If the podcast were in the form of an article, this is what it would look like. (The content is AI-generated.)

### The Tech Writer's New Job: Building the Machine That Builds the Docs

There's an uncomfortable question hanging over technical writing right now, and it goes something like this: if I pour everything I know into a system that a machine can run, what exactly am I still needed for?

It's the kind of question that tends to produce either breezy optimism ("AI is just a tool!") or existential dread. But a recent conversation between Tom Johnson, Fabrizio Ferri-Benedetti, and Manny Silva — three tech writers working at the bleeding edge of documentation and AI — suggests that the real answer is more interesting than either of those poles. The tech writer's job isn't disappearing. It's mutating into something that looks less like writing and more like orchestration.

### From Testing Docs to Testing Everything

Manny Silva, head of documentation at Skyflow, has built something most tech writers only talk about: a fully automated documentation testing pipeline. On every pull request, a suite of deterministic tests verifies that the procedures in his docs actually work. A tool called Doc Detective opens a browser, clicks through UI steps, runs CLI commands, and compares screenshots against previous versions. If a button moved, if an API response changed, if a procedure no longer works — the CI check fails.

This isn't QA. Manny is careful to draw that line. He's not testing whether the product works; he's testing whether the documentation's claims are accurate. The distinction matters, because it reframes what tech writers are responsible for. Not the product. The knowledge layer on top of it.

But here's where it gets interesting. Testing docs for accuracy is only the first step. Manny's upcoming book extends the same testing philosophy to a new category of documentation that barely existed two years ago: skills files, agent definitions, and agentic workflow instructions. These are the markdown files that tell AI tools how to perform tasks — how to write release notes, how to debug a test failure, how to follow your team's conventions. And just like traditional docs, they can be wrong. They can drift. They can silently degrade the quality of everything downstream.

So you test them too. You write evals — evaluations that check whether an AI agent's output meets your criteria. You define entry and exit conditions for each task. You build feedback loops. The tech writer becomes the person who ensures the entire knowledge system is trustworthy, from the docs a human reads to the instructions a machine follows.

### The Skill File Dilemma

Tom Johnson raised what might be the sharpest version of the existential question. He has about 40 markdown instruction files that walk AI tools through his release notes process — generating reference docs, summarizing file diffs, tying changes to roadmap items, updating API diagrams. Each one has been refined through an iterative loop: run the task, review the AI's thought log for friction points, update the instructions, repeat.

These files represent years of accumulated expertise compressed into executable form. And Tom's question was blunt: why would I formalize these into shareable skills files that anyone — or any machine — can run without me?

Manny's answer was equally blunt: because if you don't, someone else will. An LLM trawling your codebase will eventually find your half-documented process, scaffold it into a skill, and hand it to a PM who doesn't know the difference between your carefully curated version and the auto-generated one. The choice isn't between sharing your knowledge and keeping it. It's between owning the system and having the system built without you.

This is the core argument: tech writers who externalize their expertise into testable, maintainable skill files aren't automating themselves out of a job. They're claiming ownership of a new and increasingly critical layer of infrastructure. The alternative — hoarding knowledge in personal files and hoping nobody notices — is security by obscurity, and it won't survive the first curious AI agent.

### Curators, Not Gatekeepers

The three writers converged on a term for what this role actually looks like: content curator. Not gatekeeper — Manny emphasized that he actively wants contributions from engineers, PMs, even AI agents. But someone has to hold the quality bar. Someone has to decide what gets published and what gets blocked. Someone has to verify that the knowledge feeding your MCP servers, your chatbots, your agentic workflows is accurate.

Fabrizio put it more romantically: guardians of knowledge, like librarians guarding the old tomes. But the practical version is less poetic and more essential. Companies that maintain strongly curated, well-tested repositories of high-quality knowledge will have better AI outputs than companies that don't. The signal-to-noise ratio of your documentation directly determines the signal-to-noise ratio of everything built on top of it.

Engineers don't want this responsibility. They never have. They didn't want it when wikis were supposed to democratize documentation, and they don't want it now that AI can draft a passable doc in seconds. What they want is someone to make sure it's right. That's always been the job. The tools have changed. The accountability hasn't.

The tech writer's future isn't writing. It's building, testing, and curating the systems that write — and making sure the knowledge those systems run on is worth trusting.

{% include ads.html %}

## Transcript

The following is a near verbatim transcript of the podcast.

*A conversation between Tom Johnson (I'd Rather Be Writing), Fabrizio Ferri Benedetti (Passo Uno), and Manny Silva (Instruction Manuel)*

**Tom:** Welcome to another podcast. This is Tom Johnson from I'd Rather Be Writing and we also have Fabrizio Ferri Benedetti from Passo Uno and also a guest today, Manny Silva, who you may know at Instruction Manuel — instructionmanuel.com. And today we're going to be talking about all kinds of things, but definitely the intersection between documentation and AI.

And one reason we invited Manny to come chat with us is because he's working on a book, *Docs as Tests and AI: Validated Generation, Trusted Agents, and Self-Healing Documentation*. And he let me read kind of a preview draft he's working on. I got a good way into it and it's pretty amazing. He's got his finger on the edge of everything that's going on right now with documentation and AI.

And I think, yes, Fabrizio, you were mentioned as like one of the — you were acknowledged somewhere as maybe an early feedback person. So it was cool to see that. I saw other people I know there too. But welcome Manny, maybe you want to just say hi and introduce yourself a little bit.

**Manny:** Thanks for having me, Tom. Thanks for having me, Fabrizio. Hi, everybody. If you don't know me, I'm Manny Silva. I am head of documentation at Skyflow. I am a former Googler and former Apple employee. I currently own everything at Skyflow that involves words that is not marketing, which includes documentation, internal and external, API surface area, SDK surface area, error strings, error codes, everything.

It's a lot, it's fun. It also gives me a lot of autonomy to do crazy experiments, like maintaining Doc Detective, an open source documentation toolkit for testing your procedures in your documentation via automation. So you don't have to worry about human error once you got things set up, and the underlying philosophy that implements is docs as tests. I'm the author of the book *Docs as Tests: A Strategy for Resilient Technical Documentation* that got published last year. And the new book that Tom mentioned is a follow up to that incorporating AI.

**Tom:** Cool, hey, thank you for introducing yourself and giving that background, it's great. Fabrizio, do you want to say hi?

**Fabrizio:** Well, hello there. I haven't been posting for a while on my blog, but then all of a sudden, I don't know what happened. I think the geyser went off and I posted even today about skills. So here I am, lots of things to say. I had this resolution of not talking about the AI that much this year in the blog, but then it's kind of unavoidable. So here I am.

**Tom:** Yeah. In your latest posts, you really — like you're passionate about defending some positions that you think are not being recognized. I really hope we get into that. It'll surface naturally in our discussion. But yeah, it's good to see you posting again, writing again, you know. I didn't even know you'd taken this sort of vow of not wanting to write about AI for a year.

**Fabrizio:** Yeah, for sure. Yeah, you know, the thing is that if you say it loud, people will hold you accountable. So it's best to say that you had it and then you broke it. But then just announcing it like, "I'm going to stop" — no, I mean, that's still things. It's like quitting smoking, you know.

**Manny:** Social presence keeps you accountable.

**Tom:** Yeah, yeah.

**Fabrizio:** Right?

**Tom:** Let's see, what would be a good starting point here. I did have some topics and questions, but basically why don't we start with kind of the book you're working on, Manny, and tell us a little bit — kind of like what motivated you to write about this topic? Or maybe that's a bad question. I actually, let me jump into a question. I really want to know, Manny, what do your docs actually look like? Do you have like a bunch of tests that are just executing on every aspect of your documentation? Like walk us through Manny's world in terms of your doc setup and workflow.

**Manny:** Sure. So I maintain two sets of documentation. Primarily I have the Doc Detective documentation and I have Skyflow's documentation. Skyflow's documentation is better tested than Doc Detective's is, but I'm working to fix that. But yeah, essentially the way that it works is we do a docs-as-code setup and on every PR I run the doc tests — just the whole suite of doc tests. And it goes through all of the tests that have been defined. No, we are not at 100% test coverage. Hope to get there one day. Just like every engineering team hopes to get to 100% test coverage. But it runs all of the tests, verifies that everything is working as described.

And if any of the tests fail, guess what? My CI check fails. That way we can go in and say, hey, this change to the docs is gonna break things, maybe don't do that. Also, I have it running daily on schedule, just midnight my time. That way I wake up in the morning to reports, which is not the most pleasant thing to wake up to. But hey, you know what's better than not knowing.

**Fabrizio:** Yeah. And so when you say test, Manny, that's just code snippets or also UI instructions?

**Manny:** UI instructions. So what some of these tests can look like is if you have a UI-based procedure, then it can — like Doc Detective in this case, but use any testing tool you like, this is just mine — can go in and identify, this is the first step in the procedure. I need to go to this URL. Great. Let's open a web browser and go there. Okay. This next step says click — I don't know — "Accounts," and "Accounts" is just identified by onscreen text.

So Doc Detective is able to say, hey, I know onscreen text. That's something that's supposed to exist on the current page. So let me see if I can find a button with that text in it. And if it's prepended by a known key phrase, like "click" or some other interactive verb, then it won't just find it. It'll click it. And so therefore simulate the user experience and then step through each and every action our documentation is asking the user to perform.

Another cool thing that it can do along the way is it can take screenshots because it's already there. So why not automatically take the screenshot? And if a screenshot already exists, capture a new one, do a visual regression test between the two to see if the UI has changed out from under you unexpectedly. And with that right there, you've got automated screenshot updates. So you never have to take any of the screenshots again.

**Fabrizio:** Wow.

**Manny:** We've also got test video recording for animations. We can test CLI commands. We can test API commands. Whatever you throw at it. Arbitrary code like for SDKs.

**Tom:** Let me just applaud you for like actually implementing all the ideas, right? It's not as if you're just saying, hey, we should be testing all this, but then your docs are like the cobbler's children that don't have shoes, right? Like you actually have all these tests running. I think you must be pretty unique in this regard. I have not really encountered engineers who say that they run a whole suite of tests for every pull request. That's pretty impressive.

**Manny:** And I honestly don't think it's going to scale as my documentation test suite continues to grow. What I think it'll eventually get to is I identify critical paths that I cannot afford to have break ever. And those run on every PR, but then the whole test suite would run on a schedule.

**Tom:** Okay. I actually had an experience... sorry, go ahead Fabrizio.

**Fabrizio:** Sorry, what's — I'm curious about like, what do you use under the hood? Like, is it like computer use, models, LLMs or is it just good old deterministic testing?

**Manny:** So this is a whole big part of the discussion of my next book, because I use deterministic testing. Deterministic tests via Doc Detective running in GitHub Actions, CI/CD pipelines. I get the same answer every time. And if something changes, then I know something about the environment I'm testing has changed. And that's the signal I'm looking for.

**Fabrizio:** Yeah.

**Manny:** The bad part about deterministic tests is that they take a lot of time to write. It takes a lot of investment to get there. And so tools that you were just mentioning, tools like browser use or computer use — everybody has a different name for it — are excellent in bootstrapping deterministic tests to get in the door, but they are inherently non-deterministic. They're probabilistic. And so you can't trust them at all.

The best you can do is using ensemble testing. So you run the same test like at minimum three times and then take the aggregate, but that gets real expensive real fast. So that's not a great thing to continue if you can help it.

**Tom:** I love this distinction between probabilistic and deterministic modes of testing. And I want to jump into that. I totally have questions about that, but I wanted to ask something just generally about testing. I had an experience the other week where a PM, a product manager who reviews release notes, he asked me, you know, in a very earnest way, he's like, "Are these release notes accurate?" And I was like — wow, what a poignant question. It's like getting to the heart of it. He really wanted to know.

And I wanted to say like a hundred percent yes. But I could only basically say, insofar as the engineers verified it and insofar as the code flags are correct, insofar as the information I've received and so on is accurate, then they're probably accurate. But it seems like it gets to the heart of like the core value that we provide — is the information we're delivering accurate? And now when we're using AI tools, we have this constant pressure like, you've got an output, but is it accurate? How do you figure that out? How do you verify things? It gets to the heart of what we do.

**Manny:** It does, and though in my view — which obviously is biased — but in my view the only way we can know that something is accurate is to test it in an objective way. If a human sits down and performs a procedure, they're bringing bias into this. They're bringing their perspective. If you tell a computer, hey, I need you to do this very literal set of instructions deterministically — there's no bias there besides the bias created in writing the instructions. But either the computer can do it or the computer can't. And so that removes as much bias as possible from the system.

**Tom:** But this is where I get hung up. Okay. Because the accuracy issues that the PM was really asking about, I don't feel like I could actually test them very well. The thing that I would need to test is that like, when you call the API, certain data gets returned, and the data that gets returned depends on where you're driving in the world, what routes you're driving, and whether that route has certain information along it.

So I would have to recreate a driving route, call the API and see if on that route that has the new features that were added, that data was returned. And when I think about all that, I think that is the job of the tester. That is the job of QA because I'm not developing this API. So how do you separate boundaries? How do you avoid becoming QA and doing their job for them?

**Manny:** Well, if you have a QA department that you can rely on for that sort of thing, I'm envious. Not everybody does. Many people don't. But I'm not saying that we should take on the roles of QA. I'm not trying to test the product itself. That's not what I care about in this particular arena. I care about my documentation and my documentation's accuracy. I'm not doing API contract testing.

I know that's something I talked about in my first book and that is a way to test APIs to make sure that they're valid and accurate. What I care about is that the claims made in my documentation are accurate. That if somebody follows my procedures, then they're not going to run into a bug. And so as far as release notes are concerned, yeah, those are really, really, really hard and probably you shouldn't try to test those in the same way that I'm talking about testing procedures.

Even conceptual documents are hard to validate because you either have to take the abstract topics you're talking about and then create a very concrete path to test. Or you have to rely on some of the probabilistic tooling that involves self-healing systems and other really complicated things that we can get to down the way. But no, I don't want you to have to recreate a driving route. I want you to figure out what's the minimum viable thing you can set up to test your documentation and let QA be QA.

**Tom:** I appreciate you drawing that distinction because when I was at your workshop back at Write the Docs Portland 2025, I felt like you were saying you got to test all these API calls. I thought, God, there's no way I can do this. So that's good that you're drawing that distinction. I do actually, I think I share a lot of commonality. I test my release notes against the API code. And I look at all the file diffs between the last release and the current release. And I meticulously describe everything that has changed. But that doesn't mean that it actually works as a product. It's like, yeah, it says we added these two enum types, whether they actually appear — who knows, you know.

**Fabrizio:** Yeah, it's interesting because what Manny is describing, I think, is treating the docs like a product in itself that you are developing. And in fact, we are often developing it now because we are coding new features. We're coding entire systems to publish the documentation or testing harnesses, for example, like you're doing. And then you come up with metrics and some of those are success metrics and reliability metrics, and testing those, I think, is super important.

But I would also imagine that the more overlap there is between the docs and the product, maybe because they're more integrated or even in the case of API specs — sometimes the overlap is huge — then testing could also be repurposed for the product, not just for the docs, for other things. But in the case of something with a UI that is kind of separated from — you have your docs side, you have the product — then testing your own docs as something separate from the product is a very solid way.

**Manny:** And I agree wholeheartedly with all of that. And you know, if you do have a QA team or you have engineers who are in charge of testing your docs, then great, make friends with them. You know, to say, hey, I'm looking to test this stuff. Do you have procedures or artifacts or authentication mechanisms that I might make use of so that we can share some of this load? Because what you're doing is cool for the product, for the code. And I want to do the same thing for the docs.

This is like one of the core tenets of docs as tests — that doc tests complement. They don't replace. We are inherently testing different things than our engineering colleagues. And so they are our colleagues and we need to test these things differently, but we might have some shared architecture.

**Tom:** I hear little keys clickety-clacketing.

**Fabrizio:** Sorry, just taking some notes. Mechanical keyboard.

**Tom:** No, that's cool. Hey, no, you're one of those guys — okay, we won't tangent there. Now there's another aspect to this book that you're writing that I actually hadn't gotten to yet. I'm still making my way to it, but it shifts — and it makes the role of testing very important. It's this idea that we're not just testing the accuracy of our docs. We're testing how our documentation surfaces in AI tools.

When people use Claude, when people use Gemini, when people use ChatGPT — are my docs providing that AI with the right answers and influencing the share of voice, meaning how often my product is being recommended as a solution? There's all kinds of eval loops about how you evaluate and test these AI tools to see if they're having that accurate input.

I do feel like if we're going to survive as a profession, we have to make this connection between our documentation and the AI model's output crystal clear so that people understand that accuracy in the AI output is directly dependent on docs. But tell us about that in your book. What are you doing to do these eval loops and do you think they're as important as I just sort of said?

**Manny:** Yes, I think they're very important. And as far as what I'm using, right now, I'm still figuring out my final tooling. I prefer open source stuff when I can manage it. So like I'm looking into Arize Phoenix right now for an eval harness, but there are a whole bunch of options out there. Everyone's trying to be that eval tool.

**Fabrizio:** Yeah. So for those that don't know what an eval is, can we explain like very briefly, what is an eval?

**Manny:** So an eval is an evaluation. It is a way to take an AI tool, specifically a probabilistic tool of any sort, and then be able to say, hey, it should behave in this way. This is one metric in which I want to make sure that the output matches. And there are multiple ways to go about doing that.

For example, you can say that, hey, the output needs to not fail our style guide. And if you have your style guide implemented in Vale, then you can just run Vale against it. And that's a deterministic check. And if Vale flags errors, guess what? The eval failed. But you can also have LLMs act as judges. So that's the LLM-as-judge pattern where you give the judging LLM a rubric and say, hey, this is how you rate outputs. Here's an output. Does it pass? And then the LLM rates it. It's used extensively in LLM development and evaluation.

And then the third kind of grader — so deterministic grader, LLM-as-judge grader, and then human grader. So a human looks at the output and makes the judgment call. But there are — you can test anything. There's no limit to the kinds of evals that you can test. Like Tom, you mentioned how often your products get surfaced in answer engines or AI engines. So AEO, answer engine optimization, whatever you want to call it. I'm not going into that realm of things. You can use evals to go and check for that sort of stuff. But for me, I'm concerned about documentation.

I'm concerned about the accuracy and how the accuracy of our content affects the effectiveness of downstream integrations. So for example, there was a case study that I posted a little while back about Kong based on a Write the Docs Berlin 2025 presentation. I did follow-up interviews and the short version is that by implementing docs as tests in their CLI procedures — not using Doc Detective, but just the docs-as-tests strategy — they were able to improve the success of question answering for their AI chatbot from 84% to 91%. That's a 7% jump. And if you're already past 80%, you know how hard that is to do.

And that's because they were able to provide more specifics in the documentation. It was comprehensive. The way that they implemented it is that top to bottom, you could copy and paste every single CLI block in the guide and be done. And that's all you had to do, including installing prerequisites. But that's the kind of thing that I care about here. How can we make sure that our content is accurate so that AI amplifies accurate documentation and amplifies our success instead of amplifying inaccurate or vague claims that our documentation makes?

There's another lens to it too, because right now we're just talking about product documentation. And that's what a lot of people have been talking about for a long time. That's everything my first book talked about. But now we're getting into a new domain. We have agentic workflow documentation. Skills, agents.md, all of these other things, like agent definitions for custom agents or sub-agents — all of these are documentation. And how you instruct your agents to behave, guess what? You can run evals against each and every one of these artifacts.

And so that's what an entire section of the book talks about. How do you define these entry and exit criteria? And how do you test? That way, the workflows that you use to create your documentation work within acknowledged bounds.

**Tom:** So are you saying that like — okay, I want to get into the skills discussion because this is also a pretty hot topic and this was the subject of your post, Fabrizio, and Manny, you wrote a tremendous post as well about agents and skills and so on on your blog. So Manny, tell us — do you have a bunch of skills written for your docs? Like is this no longer just a theoretical abstract? You actually have like, I don't know, dozens or even hundreds of skill files?

**Manny:** Yes, I do. I have literally, by my last count, about 140. And not just skill files. I also have agent definitions. I have project-level overviews. And my skills aren't just individual tasks. I have some skills that are individual tasks and some skills that are whole workflows that knit together individual tasks and even say which agents should be performing which tasks in the workflow.

**Fabrizio:** Wow.

**Tom:** Tell — let's introduce skills a little bit. Can you tell us what skills are and what the setup is and what the purpose is? Just pretend that you're talking with people who have never heard of this before.

**Manny:** Happy to, and I have a concrete example I can share too. So a skill is a markdown file that instructs an LLM on how to perform a task. That's it. That's the short version. There can be more material in there. You can provide references. You can provide scripts that an agent can run when using that skill. It's really there to instruct an agent on either your preference for how to go about doing a specific thing or to instruct it on something that it was never trained to do, something novel.

And so the way that this works is if you're using Claude Code, you can go into `.claude/skills` and then put in some markdown files. And then when you're actually working with Claude Code, you can do slash and then the skill name, and it's a command you can run. Different harnesses treat it different ways. Like Open Code distinguishes between commands and skills, but that's a whole other discussion. And then you can say, hey, monitor this PR to address any concerns that come up or CI failures or that sort of thing. Or hey, write release notes.

And the skill would have instructions for exactly how you prefer to write release notes. It's essentially a stored prompt. As far as what's out there, and if you're interested, you can look at today — I created a whole suite of skills for Doc Detective to teach LLMs and agents how to write Doc Detective tests from just plain documentation that hasn't been touched, hasn't been updated at all. How to run and debug Doc Detective tests, and then how to take tests that are known good and inject them back into your documentation. That way you don't have to maintain separate test files.

And all of this, all the documentation is there. It's on my doc site. But agents are pretty bad about consistently getting the right information from doc sites. Shout out to Hackerry Carey for some recent research. But a skill is something that I can go in and say, agent, this is how you do this specific task. Please go do it. And if it comes back with questions, I can clarify.

**Fabrizio:** Now that's interesting. How many of those — 140 you said? It's a lot. Did you write them all by yourself or did you use LLMs? Because I have the impression that lots of people, and I've done it also too sometimes — it's very easy to distill a skill automatically from a conversation, for example, with the LLM, and you create a skill using the LLM.

And then if you go like a step forward, you even create the evals using the LLM, which I feel is even more dangerous in a way. So my question really is, where do you think the human touch in all this process brings more value? Like where is it really a must, in your opinion?

**Manny:** It is hard to say where because I say everywhere. There's recent research — forgive me for not being able to quote the exact paper, but it was posted recently — about agents.md showing that auto-generated agents.md files performed four percent worse than no agents.md file. And that human-curated agents.md files only performed, I think it was 2% better than nothing.

But the value is in providing guardrails, and while the 2% was global across the board, there were spikes in very specific difficult tasks where a good agents.md file that was curated by a human reduced thrashing by an agent by up to 26%.

And so what that tells me is that we should not be telling an LLM how to do something it already knows how to do. We need to keep these files small and minimal to reduce context cost. But if we can go in and say, hey, these are our guardrails, these are our entry and exit criteria for this given task, for this given workflow — then that is a non-deterministic, but still a test, that the agent itself can evaluate before it attempts to exit a task.

It's like, cool, do I have all of my entry criteria in the first place? No, I do not. Let's ask a human. I don't have all of my exit criteria after attempting this task. Unless I have a really good excuse, I need to try continuing to work until I can satisfy all of these criteria. And then the great thing about this is if you have those defined, you can write evals against those entry and exit criteria to make sure that agents actually behave the way you've instructed them to.

**Tom:** I want to — I will put a link to that paper. I actually remember reading this in your blog posts, Manny. And I'll also link to that as well. I can't remember the title offhand, but you wrote pretty lengthy blog posts on agents and all this stuff and skills. And I remember seeing a reference to that paper. It's on arXiv. And I was like, let me see what they actually tested.

And yeah, if I'm understanding it correctly, basically they had this automatic init process that would go and kind of index a whole code base and provide little summaries of everything so that your AI tools supposedly were smarter because they had this overview of your whole API. But instead it created too many tangents and jumping-off points and unnecessary information that was just confusing the AI. It was like, why are you giving me all this information? My task was just to do this, but now I know about these other things and I'm going to go explore these and conflate them with your actual question and so on.

So yeah, it's really interesting. Thanks for pointing me to that research, by the way. It's always great to connect ideas with research and our processes. It's helpful.

**Manny:** Yeah, my pleasure. And I mean, I find the research really interesting because the vast majority of it isn't for us. Like it isn't for the three of us on this call and the people listening to this podcast. It's primarily for other researchers or it's for engineers or folks who aren't really thinking about docs by and large. But a lot of these things — I mean, agents.md is documentation. A skill is documentation. An agent definition is documentation. And I mean, you go to an AI meetup, everybody's going to be talking about markdown files. So it's directly applicable.

**Tom:** Yeah.

**Fabrizio:** Yeah.

**Tom:** So let me jump into what my actual question was that I was kind of building up to about why I decided to investigate this whole research paper and why I wanted to know what they actually tested. So my process — I'm still trying to wrap my head around skills. I don't have any skills. I've not written a single skill, but what I do have — I probably have 40 different markdown files that are instructions that I pass into AI tools to do things like write release notes.

My release notes — I have like probably eight different stored markdown files that walk through things like, okay, you're first generating the reference docs. Now you're grabbing the file diffs and you're going to summarize them. Now you're going to tie these summaries to roadmap items. Now you're going to update API diagrams. Now you're going to verify API diagrams. And I've chunked out each of these instructions into its own file so that I can verify it, see if it did it right.

And I was, after reading your post, thinking — should I be writing my own instruction files or should I be leveraging AI to write them? Because my process is basically — I initially wrote an instruction file on how to do the release notes and I had the AI do it. And then I looked at the AI's thought log. I saw that it ran into friction points. It couldn't find certain files. It was confused in different places. And I said, hey Gemini, look at your thought log, the frictions you encountered, and now go back to the instruction file I wrote and update it so that the next time I run this, you're going to have an easier time doing it.

And I just kind of keep going through that loop each time. Every time I write release notes, I improve all of the instruction files. And I reached out to my colleague that I was talking to you about before the podcast, Nick — who was talking about skills — and I said, Nick, should I be writing the instruction files or is it okay if AI kind of updates these instruction files based on its loop? So curious what your thoughts are on that. Who should be — is my method flawed because I'm having AI update AI?

**Manny:** Absolutely not. So there was a big thread that we were both in at some point on the Write the Docs Slack where we were talking about reflection and improvement and reducing friction. And the idea is that a human doesn't have to do the literal writing. A human has to do the curation. A human has to decide what goes in or doesn't go in to any of these files.

And frankly, in my view, a lot of the documentation that we produce nowadays — AIs do a lot of drafting, but we don't publish the drafts. We go in, we edit, we curate. We make sure that it holds to our standards before we publish. It's the same idea here, where yeah, I might use an AI to do the initial draft of a skill based on the description that I give it and the format that I give it, but I don't just accept what it gives me. I go in and I edit it. I rip stuff out.

And one of the tasks that I make a point of doing is very similar to what you just described, Tom, where not just for release notes, but for any task that I do with an AI agent, I at the end of it have it use a reflection skill. And I say, cool, look at this entire session and identify any and all friction points and then identify potential updates in your agent descriptions and in your skill descriptions and suggest them to me.

**Tom:** Now I remember — I remember this discussion we had and now it's — man, I must be getting old. Yes, you totally, after you mentioned doing the reflection skill, I actually thought, oh my God, why am I not doing that? So I created that little prompt to improve yourself and started using it. And yeah, okay. Now I'm remembering things. Sorry.

**Manny:** No, it's all good. But I mean, my point is that, yeah, even then I let the AI update its own configuration files, but only the improvements that I say, yes, let's improve that one, or no, let's not improve that one. It's still human curated.

**Tom:** Okay. So what would be the benefit of me converting my markdown files that I'm constantly iterating on — and they're very accessible within my workspace. I actually have a little subfolder under the docs that I'm working on called "scripts," and I have all this stuff stored there. So I easily drag the instruction file into my side pane, basically the Gemini pane with the editor. It's all very accessible, constantly in flux, iterating. Why should I move this into a formal specification that follows the skills spec?

**Fabrizio:** Yeah. I would say — distribution is one thing. Like you want to share them. You want to version them. You want to also make them slightly more accessible to other people that might lack the context of your code base. I think that what you're doing, Tom, is perfectly right in the sense that a well-documented code base does not need skills that much, I think, if the documentation is good in there and is indexed and the LLM has access to it. But if you want to share those, for example, within a team, that changes things quite a bit.

And then there's also another aspect which I find very interesting, which is all the topping that you put onto a skill in the form of front matter. For example, whether the skill should fork the context, which saves you main context in some agent, et cetera, or what kind of tools are allowed by default. So it's a little time saver, I would say, but they do feel a lot like the good old macros that we used to use in Office, only that this time you package them, you distribute them, other people can reuse them. But Manny, what's your take on this one?

**Manny:** I agree with all of that, but I think it can go a step further too. Because when you create a skill using the standard, you make it natively accessible to these AI agent harnesses, whether it's Gemini CLI, whether it's Claude Code, Open Code, Codex. And then when you're running them locally, when you're running your AI agent workflows locally — awesome, you have a human there to kick off the flow, to course-correct as necessary, to go to non-standard locations. And that's legitimately fine.

But when you want to take it a step further, if you want to run a task that does not require a human to kick it off, but you want the agent to be aware of your procedures and flows and preferences, then those procedures and preferences need to be available to the agent. Because if, for example, I have a Doc Detective test that fails and then that creates a GitHub issue, I might tag in a system to attempt to remediate the issue.

And so if I tag in Claude automatically, just in the issue description, and I say, hey Claude, investigate this failure and attempt to remediate it in this repository — and I can obviously give all sorts of other instructions — but then if I already have my skills in place in a location that's accessible to Claude and it automatically spins up a Claude Code session and gets to work, then I don't have to tell it how I like doing release notes.

**Tom:** Now we're getting into more of an ethical question that I can't quite get over, so maybe you can tell me this. So let me just understand this correctly. I'm externalizing all of my knowledge about how to, say, write release notes into skills files, making them accessible so that other people can run them or that a machine can run them. Therefore automating myself out of a job.

Why would I want to give up and externalize all my processes and all my deeply crafted instructions about how to do certain things and make it so that I'm not needed anymore? Like, this is my value. For example, the release notes — I write more than a hundred release notes a year. So it's a core, core thing. Right? If I'm gone, people are kind of going to be scrambling to figure out how to do this. I've got a very elaborate process. I make that into these scripts that a monkey can run. And now like, what happens to Tom?

**Fabrizio:** Yeah, I have an opinion, but let's hear from Manny first.

**Manny:** I do want to hear your opinion, Fabrizio.

**Fabrizio:** Well, no, no, but please start.

**Manny:** You just don't want to take the first step. I see how it is. My feeling on this is frankly, it's going that direction — that our jobs are changing. Our jobs have always changed. The industry is in constant flux. This is an unfortunately larger bit of flux than a lot of us have been dealing with.

But this goes back to something that I had said before the call — that part of the reason I got into the AI space in the first place is because I saw that it was based on our documentation. These things are trained on our docs. They've only used them more since they've come into application and I need to own that. For me, this is my answer to the existential question. I have to own these skill files. I am the maintainer of the entire company's skills and all of the internally used agent definitions and all of those artifacts. I am not just a writer. I am an orchestrator. I am the one who maintains the documentation pipeline. I am the one who defines how everybody else should be using this sort of stuff.

Because if I have a script that's in a non-standard location about my preferences about writing release notes, then all it takes is one other person who decides they want to draft release notes or they want to automate release notes — maybe a well-meaning TPM — to go in and ask Gemini CLI, hey, how do I write release notes for this repository? And then Gemini CLI goes in and says, hey, look, there's actually like five bullet points or most of a scaffolded procedure over here in this non-standard location. Do you want me to make a skill out of that for you? And the security by obscurity is gone.

So by owning this, I own my future. And writing this whole book — this whole book very specifically is my attempt to educate the community, because I really see us moving to a future where we have semi-autonomous, self-healing documentation systems. And that is in equal parts exciting and terrifying to me, but I don't see it going away. And if we don't build it, other people will.

**Fabrizio:** Yeah. No, I totally agree with the ownership and it's one of the things that is driving me these days — is that I know that if we don't do it, somebody else will. Somebody who does not have the vision or even just the taste for good docs. And the question — Tom's question is very real and very valid. Like, are we digging our own grave or something?

My opinion here — there was something the other day, I was talking with Casey Smith that we had on the podcast a while ago. And we were both thinking — like we both noticed that we are actually pretty good at prompting to create docs. I don't know what your experience with it is, but I've seen the non-writers like developers, PMs trying to create documentation or curating documentation through LLMs, and they're not pulling good work out of it. They're not doing a good job. So there's something in our experience or in the way we ask the machine that is valuable.

And in that sense, we can, I think, continue. I mean, if we were contractors, of course — you get to the company, you set up some AI-based automation, you go. But then what if that needs to be changed? What if it needs to be updated? Maybe there's some other process that needs to take place. And I think that the human that feeds the machine and commands the machine still has lots to say. In our case, I think we are — sometimes we really underestimate the value we bring by asking LLMs to do things in the way we know is good. That would be my answer. We still have some magic in us, you know.

**Manny:** We have more than some. I mean, Tom, this comes back to a point that you yourself have made on your blog. AI doesn't replace, it accelerates. And so in this case, we are accelerating ourselves tremendously to the extent that we can build and maintain and orchestrate systems that can help us do our jobs a lot better. The difficult part here, at least in my view, isn't whether or not we build these systems. The difficult part is in maintaining ownership and showing people the value that we bring to these systems. That's the hard part. And that has been an eternal struggle for our entire job class, for the entirety of its existence.

**Tom:** Thank you for your thoughts on that. And man, I'm loving this conversation because it is so relevant. And the phrase you just used, Manny — AI accelerates, not replaces us. I think that, I hope that is true. But there is kind of this terrifying model that could emerge where the tech writer becomes a consultant.

Let's say your team is cut from 10 people to two people. And now instead of writing stuff, they say, you know, Fabrizio, we want you to create skills files for these teams so that they can generate their own release notes and documentation. They're going to need a skill for generating an API overview and basically a doc set for API. So we want you to basically work with them so that they have the skills that render off templates or whatever. And they can be more like autonomous. What would you say about that future? Do you think that's where we're headed or do you think that would crash and burn?

**Fabrizio:** It's sadly more likely than the disappearance of tech writing. Like, I don't think tech writing is gonna go away, but I do think that in some cases there will be at least temporarily some reorgs happening where maybe fewer of us will be doing a similar job or orchestrating things at scale.

But then again, I think that is true also for other positions in tech. And I think all positions in tech are going to go through this, to be honest. Like when you see the fabled 10x developer rolling out features faster than colleagues that are not using AI — I mean, all those things that really make you think about where we're going. I'm hopeful though that this will be just a bump on the road.

And as research — like the kind of research we mentioned before — as research catches up and finds that maybe information quality degrades over time or that you need more human intervention, and I'm sure we will reach that point at some point. But it might take some time, and in the meantime, I'm afraid that's a very likely scenario.

**Manny:** To me, there are two different models that seem similar at first glance, but I think are worth distinguishing that I think are going to happen. The first is what you just said, Tom — that there's going to be the consultancy model where it's going to be, hey, we need this item and that item and the other item for this repository. Can you help us with that? And then they're off to the races and nothing ever gets reviewed, and there's no quality bar besides what the consultancy is able to indirectly enforce.

Then there is the central pillar, the distributed model, which is what I'm trying to build, what I have built at Skyflow, where I still own all of the documentation for the entirety of the company. My team owns it. We are responsible for it because that's what it comes down to at the end of the day. It's about responsibility. And guess what? Engineers and PMs like the idea of creating docs, but they don't want to be responsible for them. That's our job.

And so what I do is I'm more than happy to accept contributions from literally anyone in the company or anything in the company, whether it's an AI agent, a PM, an engineer, a salesperson. It really doesn't matter to me. What I care about is, is the content accurate and does it hold to our standards? And I will happily block publication if that's not the case. And I have that power because I have the responsibility. And because if something's wrong, if something's bad, that's on my head, not on the authors.

**Tom:** That's a really interesting point. I think you're spot on about tech writers having this responsibility. Engineers — they do not want that responsibility. I remember when wikis came out and it was this idea that you can just make a direct edit to the page. And engineers were like, no, we'll make maybe a proposal, but we want you to fix it and make sure it's good and accurate and in the right spot. And yeah, wikis never took off probably primarily for that reason.

I do think tech writers play this role. I see this in myself. A lot of engineers will sometimes use AI to write stuff, but it's always very small. It's never some sweeping change and they do want me to review it. They're like, yeah, we want you to check the language — which is like, whatever. I will check it for more than language.

But this requires the tech writer to sort of be a systems thinker, the content strategist where you understand not just one product, but 40 products and how they fit together and what that larger landscape is. So do you see the tech writer as being this sort of systems-thinking, bird's-eye perspective, gatekeeper, responsibility bearer, accuracy standard bearer?

**Manny:** Yes.

**Fabrizio:** Yeah, it's the guardians of knowledge, of the high-quality knowledge. Like I think, and here I'm making like a half prediction, but I think that companies that will really have successful AI usage and, you know, like for example the best skills — which company is going to have the best skills, et cetera — I think are the companies that will have a strongly curated, well-preserved, protected repositories of high-signal, high-quality knowledge, or context if you want. And for those you need keepers.

And now it's a bit more romantic. You can picture, like the librarians of old, guarding the knowledge and taking care of the old tomes. But really, we really need machines not to touch that. We really need that high-quality signal, and extract it and use it when necessary, creating things with LLMs or even skills.

And an example of that is like at work, for example, we have created this MCP server that taps into our human-written documentation. And we are using that for so many things, like for example to create new skills or validate existing skills or check for drift in things that LLMs have done. The final arbiter is that high-quality, human-made knowledge. And yeah, developers are not going to take care of that.

**Manny:** They don't want it, they don't want to create it. That's what we're around for. And the term that I've been using personally is content curator. I'm there to curate the knowledge. I'm not there to gatekeep. I want people to contribute. I actively try to facilitate additional contribution by lowering that barrier of entry, but I'm there to make sure that the standards are held, that we have that high quality.

And part of that is in testing, to verify the accuracy and to make sure that everything downstream is accurate. That way, whether it's an MCP server or whatever tool we're using in five years, it can pull from known-good, verified content and everything downstream becomes more trustworthy because of it.

**Tom:** I like where we've ended here or where we've sort of reached. It seems very fitting and I feel pretty aligned with this idea of this content curator, as you say, this role. I'm constantly trying to ramp up my knowledge. I get these partner email updates that tell me all the latest goings-on with partners, what their friction points are.

I'm trying to understand the latest in the domain so that I can better judge how things should be organized, what should be emphasized, where it should appear, how much emphasis we should place on different things based on how much of a priority it is. And that all comes into this content curation. The more understanding you have of domain expertise and the product landscape, the better value you can actually add to this role.

**Manny:** Yes, 100%.

**Tom:** Well, we are coming up on an hour. Thank you so much, Manny and Fabrizio. This has been a great conversation. Is there anything we didn't touch on that you wanted to mention before we wrap it up?

**Manny:** Thank you, everybody. No, seriously, everybody in the community. This is why I'm — you're why I'm doing this. Why I created the tooling I did, the strategies that I have. It's because you are all fantastic and I want as many of us as possible to succeed to the fullest extent possible.

**Tom:** Now, Manny, you mentioned that you are giving a workshop at Write the Docs in Portland. Can you mention that?

**Manny:** Yes, so first is Write the Docs Portland 2025. I'm going to be there hosting a writing day table. Last year we ended up with two tables. We'll see what this year brings. But if you're going to be at Write the Docs Portland, please, please, please stop by. Would love to see you there. We are going to be there not to help you write our docs, but to help us test your docs. So if you want to help get your documentation tested, come on over to the table. We'll see what we can do to help.

Other item is that yeah, like we've mentioned, I'm writing another book. No, I don't know when it's gonna come out yet. Please be patient. I'm hoping sooner rather than later, but time will tell. It's been fun. It's gonna be fun seeing everyone's reactions. And I am overall really hopeful about the direction that all of this is trending. As long as we can keep our heads on our shoulders and chart our own path forward, we got this.

But yeah, please feel free — if we're not already connected on LinkedIn, that's where I do most of my posting. You can also see some of my work on instructionmanuel.com or at docs-as-tests.

**Tom:** Yeah. Thank you so much. I'm really looking forward to seeing you at the Write the Docs conference and just following you online. So really appreciate you sharing your thoughts and your insights. Your book is excellent. I'm really cheering you on as you continue forward. It must be a moving target with the landscape so much in flux, but you seem to be managing that. So thanks, Manny. Thanks, Fabrizio, and thanks everybody for listening.

**Fabrizio:** Thank you.

**Tom:** I don't have any last words. I'm looking for that closing line, but it's not there. But thank you for listening and we'll hopefully see each other in different spaces online.