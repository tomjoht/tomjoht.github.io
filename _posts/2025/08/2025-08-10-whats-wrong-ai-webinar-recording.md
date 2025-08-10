---
title: "Recording of Coffee and Content episode: What's wrong with AI-generated docs?"
permalink: /blog/whats-wrong-ai-webinar-recording
date: 2025-08-10
categories:
- ai
- podcast-guest
keywords: 
rebrandly: https://idbwrtng.com/whats-wrong-ai-webinar-recording
description: "I recently appeared on the Coffee and Content episode, hosted by Scott Abel, with another guest, Fabrizio Ferri Benedetti, who writes a blog at Passo (<a href='https://passo.uno'>passo.uno</a>). The episode theme comes from a post Fabrizio wrote titled <a href='https://passo.uno/whats-wrong-ai-generated-docs/'>What's wrong with AI-generated docs</a>, but the episode didn't focus exclusively on AI's problems and gotchas so much as AI strategies with documentation in general. This post provides a recording and transcript of the episode."
image: whatwrongwebinarthumb.png
---


You can view the [recording on BrightTALK here](https://www.BrightTALK.com/webcast/9273/633343):

<figure><a href="https://www.BrightTALK.com/webcast/9273/633343"><img style="max-width: 400px" src="{{site.media}}/whatwrongwebinar.png" alt="What's wrong with AI-generated docs webinar recording" /></a><figcaption>What's wrong with AI-generated docs webinar recording</figcaption></figure>

### Topics covered in the episode:

* **The positive side of AI:** How AI is already transforming technical writing workflows, from automating release notes with file diffs to freeing up time for high-level strategy.
* **From writer to strategist:** The fundamental shift in the technical writer's role from a manual content creator to a "product owner" of documentation who steers AI efforts.
* **The pitfalls of AI-generated docs:** An exploration of the common problems with AI output, including hallucinations, liability issues, and the dreaded "README" style.
* **The art of supervision:** Why human expertise is essential for fact-checking AI content, providing a "source of truth," and guiding the AI with proper context (including what *not* to do).
* **AI for different audiences:** The debate over using AI to generate API documentation and code samples for developers versus creating feature documentation for end-users.
* **Enforcing style guides with AI:** The challenges of maintaining a consistent style and tone, and the hybrid approach of using both deterministic linters and nuanced LLMs.
* **Why AI isn't always a productivity boost:** A discussion on the non-obvious skills required to use AI effectively and the need for in-depth education beyond quick tutorials.
* **Building your own AI agents:** Moving beyond simple text generation to create specialized agents for tasks like validating UI instructions, taking screenshots, or inserting content using platform-specific code.
* **AI as a consumer of docs:** How AI is becoming a new type of user for our documentation and what that means for content structure and delivery.
* **Job security in the age of AI:** Actionable advice for technical communicators on how to embrace AI, demonstrate value, and position themselves as indispensable experts.

{% include ads.html %}

## Transcript

The following is a transcript of the episode. Note that the transcript has been edited by AI for readability.

### Coffee and Content: What's wrong with AI-generated docs?

**Scott:** Hi, welcome to Coffee and Content. My name is Scott Abel, and I will be your host today. My co-host, Patrick Rose, is off, so I have my two guests with me. We're going to do brief introductions, and then I'll tell you a few things about our webinar platform. Let's start with our first guest, Tom Johnson. Tom, tell us a little bit about yourself and your connection to today's topic.

**Tom:** Hi, my name is Tom Johnson. I'm a technical writer based in Seattle. I work on APIs for getting map data into cars so that people can navigate, have safe drives, and so on. I use AI quite a bit in my daily workflows, and I'm excited to chat and dive more into this topic.

**Scott:** Excellent. And my second guest is Fabrizio. Fabrizio, first, can you hear me?

**Fabrizio:** Yes, I can.

**Scott:** Awesome. Tell us a little bit about yourself and your connection to the topic.

**Fabrizio:** I'm a technical writer too, based in sunny Barcelona, Spain. I've been working lately on developer and DevOps documentation. I have also been critically exploring AI to see what it's good for, and I wrote the blog post that gives the title to today's talk, I believe: "What's Wrong with AI-Generated Docs?" It's a bit catchy, but I do believe AI has a place in our workflows.

**Scott:** Excellent, thanks for sharing that. I'm going to go through just a few things for housekeeping. For those of you who are new to the webinar platform, you should know that we do not have access to your camera or microphone during today's live broadcast, which means we can't see or hear you. We are recording this show, and you can access the on-demand recording about 30 minutes after the show ends. You can copy the URL that you're using to watch today's live show, and that will turn into the on-demand recording link. Please feel free to share that with others.

You can also ask questions during this webinar, and we encourage you to do so. Scroll beneath your webinar viewing pane, and you'll see an area where you can type a question into the box and send it to me. I'll queue those up and try to get answers for as many as possible. At the end of the show, I'm going to ask you to rate and provide some feedback on the quality of the information using our one-through-five-star rating system, where one is low and five is exceptional.

A few upcoming events we want you to know about:

* From September 15th through the 17th is the [**ConVEx Ideas Online conference**](https://ideas.infomanagementcenter.com/) from the [Center for Information Development Management (CIDM)](https://infomanagementcenter.com/). You can save 10% off registration with the discount code `tcw` at checkout.
* The [**DITA Europe conference**](https://ditaeurope.infomanagementcenter.com/), also from CIDM, takes place in Brussels, Belgium, on February 2nd and 3rd, 2026. You can also save 10% with the code `tcw`.
* CIDM's annual [**ConVEx conference**](https://convex.infomanagementcenter.com/) will be held April 13th through the 15th next year in Pittsburgh, Pennsylvania. We'll be talking about innovative ways people are creating content, especially documentation.
* Finally, from October 5th through 8th in Atlanta, Georgia, is the [**LavaCon Conference on Content Strategy and Technical Communication Management**](https://www.lavacon.org/). It attracts 300 to 400 of our peers and is known for great case studies, networking, and decent food. You can save 10% off admission when you use `tcw` at checkout. You can learn more at [lavacon.org](https://www.lavacon.org/).

One final thank you to [Heretto](https://www.heretto.com/) for sponsoring the [Content Wrangler Webinar Channel](https://www.BrightTALK.com/channel/9273). Heretto is an AI-enabled component content management system platform used around the world to deploy documentation and developer portals that delight customers. Let's hear from one of their customers right now.

*[Sponsor video plays]*

**Scott:** Awesome. Well, we are going to start the interview right now. I'll start by asking a simple question. First, I want to make a statement: Most of the time, a lot of the things we hear about AI tend to be negative, which then makes people less likely to say positive things about AI. So let's start with this: are there any positive impacts? Do you believe there are positive impacts of AI for technical communicators?

**Tom:** I'll jump in. I second the whole array of emotions that people have around this topic; some people really do have negative experiences. But I've really noticed that, to be super specific here, my whole process around releases has changed using AI. I'm able to compare file diffs between API versions with each release and see exactly what has changed in the API. It has really transformed my whole approach, my value, and my input. I have a comprehensive authority about the changes taking place in a release that other engineers and PMs look at to understand what's going out. The ability to take a file diff, pass it into AI, and get human-readable outputs has been transformational. That's just one example.

**Scott:** That's actually a great example. Fabrizio, what do you have to say about that?

**Fabrizio:** I echo this feeling. I've been using large language models and AI-powered code editors for more than a year now in my work, and it has really allowed me to save lots of time that I can spend on other things, like strategy or even just learning new technologies. For the first time, I've been able to support developer teams in a very concrete, impactful way by developing features for the doc sites themselves—something that either I couldn't do before or I had to wait for others to help me with.

So, I feel like I can do this, and there is a positive effect. However, because I already have a certain seniority level, I'm a bit more concerned about juniors entering the field now and wondering whether they would use AI tools or not, and how to use them.

**Scott:** I think that's my biggest concern too. Without having done everything the manual way, it may be difficult to decide what to automate. It might be easy just to lean on the generative capability—producing a bunch of words—as opposed to, as you said, building solutions, which I think is what we should be working to do.

**Fabrizio:** That's an interesting differentiation you make there because I feel like the areas where AI has had the biggest impact for me are things *around* what I do, but not actual writing. I very seldom ask AI to write stuff. It helps me more in the margins, like after completing something, maybe fixing a document to follow some patterns, or explaining a codebase, or validating that something reads in a certain way. It's all the things around my job that require feedback or careful eyes. That's where I feel AI has had more of an impact than the generative bit.

**Scott:** My fear was that it was kind of magical and that if you just entered the field and thought writing was what you were supposed to do, you would think, "Hey, this thing is helping me write." But I see so many other ways that it could help us. So, even though the show is aimed at what could go wrong with this technology, where do you think tech writers can make the most of this? Is it really just building solutions, or is it empowering themselves? Are they helping the company more, or is it both?

**Tom:** One impact I see is acceleration. I mean, that's definitely helping the company. I feel pretty confident that I'm doing twice the work that I did before AI, and I see trends where tech writers are doing the jobs of another writer as well. So they're just expanding. That acceleration is beneficial economically to the company, but it's a little tough to accelerate this fast because we can't sink as much time into the content we're producing. But yes, acceleration has been a theme that has jumped out at me regarding the impact of AI.

**Fabrizio:** There are two sides where this is having an impact. One is that AI is helping us; it's like a helpful little digital intern in our editor that helps us co-produce things and save time. On the other hand, it is also a consumer of documentation now, and I see this more and more, especially with AI-powered search and agents. It is one more user we are catering to, and it's a user that sometimes has special needs, not unlike those of a human user. So it's a co-producer but also a consumer of docs.

**Scott:** I see that too. One of the things we never thought about was the delivery of information to a bot. We were always talking about making semantically enhanced content so the machine could understand it, but understand it to do what? Tech writers were usually focused on using metadata for delivery to multi-channel publish. We used that intelligence and the semantics we added to the content to get productivity benefits. But now, it seems like this new thing called the Model Context Protocol (MCP) is kind of that layer in between. In order for your content to be exposed to a non-human agent, it needs to understand how to talk to the website. It needs to know how to do stuff.

We're kind of moving toward these agent solutions where we build things that do stuff for people—that make it easier, faster, or better for them in some way. Do you feel like that is the holy grail that we will start focusing on as we learn how these tools can help us?

**Tom:** I definitely think so. As a consumer or user of a system, a lot of times I just want to grab all that documentation and somehow stuff it into my own AI chat so that I can have all that knowledge. If you've got an IDE that's connected to some MCP that's gathering all that info and powering agentic workflows, then developers don't have to go and read the docs. You could just interface directly in your IDE to understand the API and other details. The MCP bit is something I'm still trying to wrap my head around and get more experience with.

**Scott:** Yes, for the newbies, it's Model Context Protocol. There will be an entire show dedicated to this topic. But I think this is the thing I like about this particular show today: we talked about some of the good things, but of course, there are some things that maybe aren't as fabulous. So, what do you think the main limitations of this technology are so far for tech writers?

**Fabrizio:** When it comes to the belief that LLMs can produce documentation, I think we are luckily leaving that behind a bit compared to when this technology exploded. I still see people believing that LLMs can do a fantastic job and can replace technical writers. To be honest, I don't think that's true.

In my blog post, I wrote about the main issues, and really, the main issue is that, first of all, LLMs make things up regularly. So it's a matter of the liability aspect. You need a human because a human is the one who's going to take responsibility for saying something that is either accurate or not. And LLMs can create documentation that sounds plausible but is not really true. That's the first big problem.

Then there's also a matter of style and quality. They all seem to speak in a certain way. When you ask for documentation, they initially generate these yappy, super-smiling README files with emojis that can be okay for some, but not for serious documentation endeavors. I call that "README-itis." It might be part of the training or the prompt. That's why I keep saying that tech writers should control the conditions under which documentation is generated.

More than anything, I think they cannot really dig into the strategic aspects, the context, and capture all the nuance around product development. You always need a human being steering those efforts, and I think technical writers must be there.

**Scott:** Tom, what do you think some of the pitfalls or limitations are so far in your exploration?

**Tom:** I agree with Fabrizio about the hallucination aspect. Here's the main problem with AI outputs: it doesn't tell you when it has low confidence in some kind of assertion. A human writer, if they didn't know something, wouldn't just throw out their best guess and pretend that it's right. They would put question marks around it or maybe not write anything at all. But now, you've got to sort through and find which assertions the AI generates might be inaccurate, and that's really an art. It requires expertise in the subject.

This is why people who have domain knowledge and expertise about a topic can use AI tools so much more effectively and productively than people who don't. If you don't have domain expertise, you can't do much with the output except accept it or reject it. But if you do understand it, you can tweak it. You can say, "Hey, this doesn't look right, let's investigate this. Let me double-check this."

What I've learned to do is to fact-check things, especially release notes and feature documentation, against the API reference. I will drag all my API reference content into the context of whatever session I'm having with the AI and use that as the source of truth. I feel pretty confident when the AI tool can check each assertion against that reference to verify that, yes, those methods exist, that object exists. The ability to sniff out hallucination and root out all the problems is really an art, and that's what we have to learn to do to make use of these systems.

**Scott:** I think so too. And I also wonder if the rollout of these systems and their user interface was designed to encourage the largest number of humans to participate because it looked like search. You type a question here. But we're not doing that. A tech writer isn't typing a question and asking ChatGPT a question. We're trying to ask ChatGPT to take some stuff, do some stuff with it, bring the stuff back, and then maybe learn some things about it and fix it. We're trying to iterate. My mom isn't doing that. She's asking, "What does the such-and-such constellation mean?" And that's useful to her. But I wonder if many technical communicators don't understand that this is the tip of the AI iceberg. If you're using these tools for free or $20, you are the product. You are teaching this system. That's not what you'll be using in a corporate environment.

Audience members, before this call, we had a practice call where we talked a little bit about this subject. One of the examples I gave was a conference presentation I did about how I used an AI system—not ChatGPT—to automatically collect and create webinar descriptions. In order to do that, I walked through all the different phases of the workflow. And I think I remember Fabrizio saying something like, "That's amazing because you went through every single step." I don't know that everybody understands every single step. We think we do—editing, proofreading, publishing—but those are big buckets that include a whole bunch of micro-tasks.

Automating a solution means we have to understand every single little point: how this thing happens, what happens next, what the dependencies are, what the variables are, and what conditions they need. This means we need tools that manage prompts. You need a prompt management capability. You need to be able to share prompts. Why? Because if Tom spends 10 hours on a prompt and saves 400 hours of time, and he can share that with 10 other writers on his team, the ROI on his work expands. Do you think this is one of those things that prepares us to be the experts as opposed to the victims of AI?

**Tom:** Scott, I want to comment on the example you were mentioning about how you manage webinar descriptions. I think a lot of people underestimate the complexity of AI workflows. When we generate content and say, "Oh yeah, this was AI-generated," a lot of people think you just clicked a button and it came out magically. When you explain the actual process and say, "Oh, I gathered up this material, I focused it on this template and this style, and then I went through five iterations and did some verification checks," you realize, is it AI-generated? Is it AI-assisted? It's just another tool we're using. The term "AI-generated" almost doesn't communicate all of the work that the tech writer is actually putting in to get the output. I think that should be acknowledged to help set expectations for people who might be flustered with their experience.

**Scott:** Thank you for that. Fabrizio, what do you have to say about that? And was I accurate that you were saying that when a tech writer starts to think about using AI, they may not know all the little things they have to do?

**Fabrizio:** There's a fundamental shift happening here. Picture the lone technical writer at the company doing lots of manual work to get the docs out. That's how they have been defining their job for many years. Now we have LLMs and AI potentially freeing us from all those manual steps. But this forces us to do two things. First, it forces you to think about documentation as a product. In that sense, you need to peek under the hood and see how your docs release process works and how you can use LLMs there.

At the same time, it forces you to think about strategy, which is something I feel like writers have been avoiding for many years because they had a very good excuse: "I have to write the actual docs." Now they can produce those docs in a different way, but they have to think of all the moving parts. It's a shift from being an artisan creating documentation in your workshop to becoming a strategist and a product owner of what we call "docs."

**Scott:** That makes a lot of sense. A great little example is when I was helping a client think out loud about how they might use this technology. We fed all the URLs from their open help portal into an LLM and said, "Here's all the documentation about this product. What might we add that's not in there?" It generated some ideas based on its general training from the internet. But then we gave it support tickets and asked, "What are people calling and asking about?" It would compare what people asked about versus what was actually in the documentation and say, "There's no way for these questions to be answered in your existing documentation." We would look and look and could not find anything. Then we would create the new content, run that query again, and it was able to answer the question.

**Tom:** That's a great workflow, taking all those bugs and seeing if they could be answered in your docs. One thing I also find helpful is if I have a piece of info that I need to add to my docs but I'm not sure where, I'll just drag a bunch of files over and ask the AI, "Where does it make the most sense to put this new information?" And usually, I'm like, "Yeah, that sounds reasonable."

Another thing I've been doing with releases is, if there's a new feature, I'll often try to figure out what else in our docs needs to be updated. Let's say you have a hundred pages of docs. It's such a chore to go through each section and figure out what else needs to be updated, but you can do that pretty quickly with AI.

**Scott:** Thank you for that. Let's tackle a few questions from the audience really quickly. This is the quick-answer section of the show. Tom, this was directed at you from an earlier example: "Do you give the AI the full code for both releases in order to do the diff?"

**Tom:** Okay, to unpack how this works, I have scripts that generate the reference documentation from the code. We have proto-based API files. So I use the new commit of the new reference documentation to grab a file diff. That reference documentation usually indicates all the features that have changed as well. It's rare that people make a change to the API functionality that doesn't impact the documentation. So basically, I'm using the documentation changes as a proxy for the API changes themselves. But yes, being able to generate the reference docs and grab the file diff of those docs is what allows me to see all the changes. If you don't have control of that reference documentation process, you're really at a disadvantage.

**Scott:** Okay, excellent. Another question for both of you: What are your feelings about the differences in how generative AI could help writers producing API documentation for coders versus application feature documentation for end-users?

**Fabrizio:** When it comes to developer and API documentation, there's a big advantage: most language models right now are pretty good at generating sample code. So I think there's an opportunity there to create these fenced-off areas where you let the LLM generate sample code and just that, maybe together with your reference documentation. It's also much more structured and controlled documentation, so there's big potential there.

For user documentation, I think there's a tricky side, especially when it comes to style. It's so difficult to enforce a certain style and tone if you're going fully generative, but there is an opportunity in supporting your efforts there.

**Tom:** I have some thoughts on using AI to generate code. I've sort of flipped my position on this. I really don't find it useful to try to generate code from an API. I would much rather have the engineers do that; they're usually the ones writing all the code samples in my documentation world. Anytime I've tried to provide them starter code from an AI generation session, it doesn't usually work well.

Sometimes it goes fine, but other times you get engineers who are offended that somebody else is automating their code writing, and then they'll just nitpick it. So unless you are really comfortable with the code, can test it and run it, and understand every part of it, then don't even try, because it's just going to be an experience of frustration. The engineers are also using AI tools; they can generate code. When you have domain knowledge, you can iterate on the output in a much more efficient way. There's no reason tech writers who aren't super code-savvy should be diving into complex code samples and trying to provide them to engineers.

**Fabrizio:** It's still quite useful to create that minimal viable documentation to pique the developer's interest. Sometimes they're so busy that asking them to generate code from scratch isn't always possible. But I found that if you create plausible enough code, they enter review mode, and it's more accessible for them to get into than being asked to create something from scratch.

**Scott:** Diving off that, here's another question: "What's your take on situations where AI isn't increasing productivity?" This person says, "My content isn't very technical, and the LLMs are lacking the ability to help me be more productive."

**Tom:** It could be the case; it's hard to comment without knowing all the specifics. I have heard this feedback before, that you spend more time trying to fix the output than you save. I would push back and say, "Well, how do you know that you're not just failing to use AI more effectively? Are you putting in all the right context? Are you adding whatever style rules?" It's impossible to comment without understanding the process.

**Scott:** Do you think education should be slipped in there? If you've been trained for 20 years on very specific technical writing things and you've had no training on AI, then judging AI against your previous skills isn't really a fair comparison.

**Tom:** I think this is one of the biggest revelations that's hard for me to even process, but it turns out using AI tools is a non-obvious skill, and there's a huge need for education. I lead an education group at my work, and I was trying something these last couple of weeks where I would just record myself doing a documentation task and talk through what I'm doing, showing how I'm using AI. I'm going to try to share these as workflow videos, but they're like a half-hour long. People initially have said they don't have time for more than a TikTok video. It's this frustrating scenario where people don't want to spend more than three minutes to learn something, but at the same time, it requires a lot more time and investment in learning than people are realizing.

**Scott:** Okay, let's get back to our questions. Fabrizio, what do you think the role of supervision of AI is? We all worry about it going awry, so where does supervision come in?

**Fabrizio:** The moment LLMs came out, I already had the feeling that our role was to become that of an editor. In this sense, what we are doing is shepherding AI, limiting it to certain contexts, learning where it's best to call it, how it's best to feed it, and what to do with the output. It looks very much like an editorial workflow. The human is always there before the output goes live, and that's the key. There's always that quality assurance and quality control side.

AI is not really autonomous; it relies a lot on us. There are days when doing AI-assisted coding or writing, I feel like I'm spending more time helping out the AI than doing the actual task I'm asking it to do. But I take this as a learning process. There was an article the other day on Hacker News titled, "Nobody Knows How to Deal with AI Yet," and it was developers saying they haven't quite figured out how to best work with AI. You have to spend lots of time, you have to learn how to talk to it, and when the model changes, you have to also maybe change something you're doing. So there is a learning process, and your presence there is always mandatory.

**Scott:** Tom, what about supervision? What do you think?

**Tom:** I agree with what Fabrizio is saying. Let's say you arrive at work; you can't just push a button that says, "Okay, AI, take over." You have to figure out what you should even work on, where the materials are, and what needs to be done. You have to prepare a lot in order to give all that context to an AI and tell it a very specific task. The requirement to steer, supervise, and guide the AI with specifics and provided assets and context is unavoidable. And that's good.

**Scott:** I also wonder if context is not always about what it is, but also about what it isn't. The LLM was trained on general knowledge, so it tries to be assistive by giving you extra stuff. But if you tell it something and it adds additional stuff, sometimes you have to tell it, "The context is *this*, and it is *not these things*." My experience is that systems are designed to do what I ask them to do better than what I ask them not to do. If I say, "Don't put it in a bulleted list," it might put it in a numbered list. So I have to tell it what not to do as well. Context plays a role in our supervision. What do you think about that?

**Tom:** I'd never even thought of the context of what something isn't. That's a really interesting idea. I'll have to think about that more, Scott.

**Fabrizio:** There's this concept of rules, for example, in some AI-powered code editors. Coders are usually quite picky about this; maybe they have their own code formatting style guide, or they don't want to use a particular function or module. So there is this possibility of having an always-present context for whatever query. In the case of technical writing, it could be something like, "Never use the Oxford comma," which I disagree with, by the way. Or it could be, "Use this macro when you have to add tabs." It's kind of hit-and-miss; it doesn't always work, but it works more like a safety net. You can push some constraints to these systems, and it helps.

**Scott:** Fabrizio, you talked earlier about style guide enforcement. Are there struggles to get this approach to work? Have you been trying to make the system comply with your style guide?

**Fabrizio:** Yeah, I've tested some systems out there, even some commercial ones. Again, it's quite hit-and-miss, especially coming from my experience with deterministic linters like Vale. I think the best way to go is to have a mix where, for rules that are very precise, you go the deterministic way. For other things, LLMs are good at, for example, doing voice and tone checks. I built a tool using AI, by the way, called Impersonate, where I simulate user personas and run the document through this tool to say, "Okay, so you're a beginner, what do you think about this document? Is it clear enough?" For those kind of non-deterministic, very complex checks, LLMs are great.

I think in the future there might be a trend of creating very specific, specialized small models for certain things. You don't need a huge general LLM that has a basic knowledge of everything for tasks like grammar. I think specialized models could be a potential solution for this, but someone has to create them, and it's expensive.

**Tom:** I agree. To have an agent that was only focused on style and implementing rules would be incredibly helpful. I find myself frequently telling the AI to get rid of most adjectives and adverbs and jargon, to never say the word "delve" or "crucial" or "ensure." And honestly, getting rid of the adjectives and adverbs fixes like half the problem with the output. We have a prompt that applies a bunch of rules from a style guide, and it seems to work pretty well, actually. It kind of cuts the life out of the content, but that's the whole tech comm style, right? Shortish sentences and clear.

**Scott:** One viewer asked for clarification on your "three-minute learning" comment, Tom. I think you were pointing out that people are impatient and just want to watch a tiny TikTok video instead of taking a training course. Maybe people are starting to say, "I just want my question answered, I don't want to actually learn anything."

**Tom:** Well, coming back to the time conundrum, there was one other element that was sort of revelatory. I would take a 30-minute video—I actually had one that was two hours—get the transcript, and then tell my AI to write a one- to two-page written guide that covers the same techniques demonstrated in the video. It does a really good job. We've been using this as the balance for people who want something shorter or don't want to sit through 30 minutes of video. I'm pretty excited about this because it doesn't take much cleanup to make that guide usable in a very impressive way.

**Scott:** Excellent. Fabrizio, do you have an example?

**Fabrizio:** One of the things I like doing is scraping publicly available documentation using what are called context tools. These are tools that scrape whatever file is in a repo—even code files—compress it, and create a capsule of information that you can then feed to an LLM to ask questions. When I started my current job, the first thing I did was go to the reference documentation of the doc system we use. I scraped all the Markdown, compressed it, passed it over to the LLM, and then I started modifying documentation and asking questions about how to do things. It was like having a buddy.

**Tom:** I'm really interested to hear about the techniques you're using there because I think that would be quite amazing to be able to compress large amounts of information into small little pills that you feed into your AI. One technique I'm doing is creating quick reference guide diagrams of APIs that show a diagram tree of every element in the API. That's kind of like a small pill that I'll often use when I'm token-constrained.

**Scott:** We just brought up tokens, which is a whole other show. But we didn't talk about agents yet. Consumers need them to perform tasks for them, like coming to download your white paper without filling out a form. What kinds of agentic solutions do you think a tech writer needs? We have the style guide example, but what other miniature tasks would be interesting to automate?

I use a thing called TextExpander to write emails. I'm constantly sending the same instructions to everybody about how to log into these webinars. If I record it and use a shortcode, I can just type the shortcode and it plops the answer in the email. What if we could build little shortcode things to help tech writers just plop in pieces of content?

**Tom:** I totally want an agent that understands all my publishing platform's widgets and other features so that I can say, "Hey, insert a table here, make it filterable, put expandable text below it," and it will use the appropriate code from our homegrown publishing platform instead of just writing it from whatever knowledge it has on the web.

**Fabrizio:** I can think of a couple of examples. Perhaps the most exciting one I really want to try out is taking screenshots or even validating UI instructions in documentation. There are these things called workflows where you can chain actions using an LLM. I tried it once, telling it, "Enter the documentation and try to go to the Java section," and step by step, you see the screenshots of the LLM using the computer to get there. I guess that's just one step from validating UI instructions as if it was some sort of basic quality control. The same could be done for code snippets, to validate that they run correctly. For the UI, screenshots, and visual bits, I definitely see potential there to automate some stuff.

**Scott:** Alright, let's get some quick answers here. What are some of the most common factual errors you've observed in AI-generated documentation, and what's your suggestion for catching them before you publish?

**Tom:** Hallucinated package names in code samples. That is very common.

**Fabrizio:** Yeah, again with code. And fake links is another one. That's already a smell that more things are probably wrong.

**Scott:** Mine are extra instructions that are not required. I took competing products, went to their documentation, and asked, "How many steps does it take to make a DITA map with this product?" One company took seven steps, but that's because their documentation skipped a couple of steps that they inferred you would have to do. Another one was longer and more accurate with smaller micro-tasks. The LLM would then try to combine them and say, "This one takes five steps, but it's skipping two steps, so maybe you don't want to use it." It's not skipping the steps; the tech writer just assumed the reader already knew how to do those things. So it's not a lie as much as it is an attempt to fill in the blanks.

**Fabrizio:** That's interesting, Scott. Here's something I would like to recommend: LLMs are a tool. Sometimes we operate under the delusion that we are talking to a person. It's just a computer program, so you can actually be quite ruthless with it. If it starts getting lost, just open a new session from scratch. Don't feel bad about it.

**Tom:** Yeah, that's one of those learning things where you realize that with long sessions, it starts to go screwy after like 15 messages. You need to constantly be refreshing that context so that it's thinking straight.

**Scott:** Here's another question: "What advice would you give to tech writers who are concerned about job placement due to AI?"

My comment is based on what we talked about earlier regarding documentation quality. Management may want "good enough" documentation because they just want to produce what they need to be successful. But the customer may not think that "good enough" is good enough. We've got to serve both audiences. How do we manage to work in the company and fulfill their business needs, but also use these tools to produce experiences that are good enough to be accepted by humans?

**Tom:** There might still be a lot of ambivalence among tech writers about whether to use AI or not, but in the corporate context, trust me, companies are all in on AI. They want tech writers using AI. And if you come out and you're like, "Oh, I don't want to use AI, I'm going to write by hand," that's an immediate red flag, and you're not going to be on the AI train that all these companies are on.

**Fabrizio:** I think it is our duty right now as technical writers to explore these technologies and let future employers know that we are actively exploring them, that we are aware of their limitations as well as their pros and cons. This informed position is actually the best one to have currently.

**Scott:** So to sum it up, because we're out of time, I think what we learned today was that generating documentation willy-nilly with AI would be a bad idea. It requires governance, supervision, strategy, and iteration to get it right, and probably building solutions that help us do the very specific tasks we need to do. And if I had to guess, solutions that measure how successful we were so we can prove that the investment of time we made to create these AI agents actually paid off. Does that seem fair?

**Fabrizio:** Quite fair, yeah.

**Scott:** All right, excellent. And hopefully, the audience members knew that we tried to also give you some good ideas about how you could use AI. Not everything about generating documentation with AI is bad. Obviously, your mileage may vary based on the conditions in your organization. If you're heavily compliance-oriented, you may need to be a little less adventurous than the three of us are. But just know that these tools are there to help you. I appreciate both of you being here today. Thank you.

**Tom:** Thanks, Scott. Thanks, Fabrizio.

**Scott:** All right. So right before you exit, please scroll down and give us a vote on what you thought about the quality of today's information using our one-through-five-star rating system. I know the presenters would appreciate hearing from you. You've been watching "What's Wrong with AI-Generated Documentation?" with Tom Johnson and Fabrizio Benedetti. I'm Scott Abel, your host. Thanks for joining us. As always, be safe, be well, keep doing great work, and we'll see you on another episode of Coffee and Content. Thanks, everybody. Thanks, gentlemen. Have a great day.

## Related posts

* [What's wrong with AI-generated docs](https://passo.uno/whats-wrong-ai-generated-docs/) (Passo.uno)
* [Webinar: What's Wrong with AI Generated Docs](https://passo.uno/webinar-ai-tech-writing/) (Passo.uno)
* [BrightTALK webinar recording](https://www.BrightTALK.com/webcast/9273/633343) (BrightTALK)
* [Content Wrangler Webinar Channel](https://www.BrightTALK.com/channel/9273) (BrightTALK)