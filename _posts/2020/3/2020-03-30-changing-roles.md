---
title: "Are technical writers increasingly playing non-technical roles? Some thoughts on the evolution of technical writing roles"
permalink: /blog/evolving-roles-of-technical-wrters/
categories:
- academics-and-practitioners
- podcasts
- api-doc
- technical-writing
keywords: academics
rebrandly: nonwriting_roles
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/evolving_career_not_writing.mp3
podcast_file_size: "23.9 MB"
podcast_duration: "26:55"
podcast_length: "23917146"
description: "How is the role of the technical writer evolving? It seems we're moving away from writing and more towards other roles, such as reviewer/convener, user champion, editor, publisher, and promoter. However, it's difficult to gauge change, especially across different job categories. In some scenarios, writing might never have been why we were hired."
---

{% include audio.html %}

## Reflecting on evolving roles

Recently, I [chatted with Nupoor Renada](/blog/users-as-producers-of-knowledge-nupoor-ranade/) about how technical writer roles are changing and evolving, and whether users are shifting to more active roles that shape the content. The podcast prompted me to reflect more on this topic, and I wanted to expand on a few of my thoughts here.

Although I commented quite a bit already in the previous podcast, I have more to say. I also want to sharpen my thoughts more and articulate in greater depth how I think the roles have changed. Most importantly, I want to explore what it means to not be writing as much. This is the part that makes me the most concerned &mdash; that roles are changing so that we're not writing as much. Should that direction trouble us? Should that *not* trouble us? What does it mean if our title is *technical writer*, but we don't actually write anything? Should we have a new title, or what do we make of all that?

Let's dive into this more. First, I think it's really difficult to know exactly how roles have changed. Very few of us have been in this profession for our entire career, or for enough time (decades) to observe changes over time. Even if we've been in this profession 15-20 years, our experience is limited to a handful of companies, so it's hard to generalize trends across the profession. It's hard to know how the profession changes, especially if you're thinking across decades.

This discussion about the evolution of the profession reminds me of a podcast from Ellis Pratt at [Cherryleaf](https://cherryleaf.com). It's one of Ellis' best podcasts &mdash; Number 40, [The evolution of the technical communicator’s career](https://cherryleaf.podbean.com/e/the-evolution-of-technical-communication/). Ellis says that if you look at the origins of the profession of technical writing, some of the early days were in the 1980s when software teams were developing help for Windows applications. PCs were just coming into the market, and you had a lot of applications that needed a user manual.

But in order to create help for Windows applications, you needed knowledge about the Windows compiler and the Windows help authoring tool. As a result, the tools were a barrier to entry, and people hired publishing experts &mdash; i.e., technical writers.

This is actually a pretty profound observation from Ellis &mdash; that one of the original reasons for hiring technical writers was not for their *writing* ability, but for their ability to understand publishing tools, to understand and implement the tools to publish content.

Ellis says that today, even though people aren't just writing help for Windows applications, you still have complex publishing scenarios to address. Maybe you want to re-use content, or you have multiple languages you're publishing to, or you're publishing across multiple channels (PDF, white papers, web, newsletters, etc.). Maybe you have to adhere to specific regulations and standards within your industry. So there's a specialization there not too unlike the Windows compiler specialization. But again, it's not your *writing* skills that are in demand so much as your ability to publish the content.

The following are a couple of examples that support this idea. A team at my work recently wanted to move all their Microsoft-Word-based manuals, which they were generating out as long PDFs, onto the web. Initially, the product owner reached out to me for some advice, as he was just trying to convert this content into Markdown on his own on the side of his regular PM role.

As I was asking him more about the project's requirements, it became clear that it was much more than just converting Microsoft Word to Markdown. In their scenario, they were localizing content into five different languages. They also had a lot of content reuse across different versions of their product for different roles. And they needed to break up and organize the content on the web in a way that would make sense and flow.

As I started to articulate all of these details about what this conversion would involve, I recommended that they hire a technical writer to do it because the tasks were more complex than he had initially assumed. There was a lot more to it than just converting Word to Markdown.

After a while, I met (virtually through many Chime chats) the technical writer they hired for the task. It took the guy several months to work through the material. The writer himself had a lot of questions for me about working with our publishing system. So again, this is an example where writing wasn't involved. The person wasn't hired for his writing skills. The person was hired for his editing and publishing skills &mdash; for his ability to interact with complex publishing scenarios and tools and to understand how to make the content fit in that model.

Here's another example. This isn't from my own work but rather from a recent conversation I had with someone about a company in my area. I noted that I had read some bad reviews from disgruntled technical writers on Glassdoor about this company, and my friend explained that this company has an insanely complex toolchain. Their toolchain builds out DITA from Ant scripts, he said. It mixes in some output from Java and C++ reference outputs. It also pulls in some Madcap Flare. Their toolchain compiles all of this into a professional-looking output with a federated search. He said if some part of this build pipeline breaks, it is extremely difficult to diagnose and fix.

For example, one time he was contracted to troubleshoot an issue in the pipeline, and it took him several weeks to even identify the problem. He said that writers at this company are mostly editors and publishers because the content is extremely technical and tedious, as it is intended for highly specialized engineers in a particular industry. The writers on Glassdoor said they mainly support engineers in the editing and publishing process. They don't write content.

Enough about the publishing role. What about for simple publishing scenarios, Ellis asks? What about people who have simple, intuitive web-based apps? How are the roles changing there? What if there is no complexity in the publishing? Are technical writers still needed when only basic content generation is involved?

Ellis says that in this scenario, we're seeing a shift to UX writing. UX writing has evolved to describe a type of writing where the writers' output is part of the product, where the writing is part of the interface, part of the design and part of the user experience. The writing isn't just a separate manual that you pull out of a glove box or from some other place when you need help with your product.

To excel at UX writing, you need UX skillsets with knowledge about how to do user research, user analysis, how to gather and organize information about users and so on. We recently published a great recording of a [Berlin WTD meetup on UX strategies here](/blog/ux-writing-processes-and-considerations-wtd-podcast-episode-28/). Definitely check it out. There are a lot of details to know about UX writing.

For example, are you using the right terms in your interface, and how do you know? Maybe you need to research what terms users are using, investigating through social media queries and other kinds of information gathering channels, and then integrate those terms into your project to influence the product design. To integrate the information, you'll likely have to interact with XML files and integrate with the engineering workflows to push your content into the source code.

In the podcast, Ellis mentions another tech writing category: API documentation. With API docs, although engineers typically write reference content, there's a need for people to create tutorials and the content outside of the reference material. There's also a need to publish API docs in an attractive way because the API docs are the face of the product. With APIs, you don't get a user interface &mdash; you get the documentation to learn how to use an API. As such, the docs have to sell the product. Here again you'll need UX skillsets but this time more with UX design and IA knowledge.

Ellis also comments on job titles to evaluate whether roles are evolving. He says titles like "programmer writer," "UX writer," "content designer," etc., haven't taken off in any significant way. You don't see a ton of kind of new jobs based around those titles.

Overall, I liked this podcast episode of Cherryleaf because it presents an individual discussion for different categories of writing &mdash; what might be true for one category might not be the case for another. As such, it's tough to make a sweeping conclusion about changing roles. But there definitely are trends toward UX writing, API doc writing, and complex re-use scenarios. These roles require a similar kind of expertise that goes beyond standard writing skills, not too unlike the early days when teams needed expertise around Windows help publishing. I'll return to the question of job titles later.

## Non-writing roles technical writers we play

Now I'd like to address some topics more directly related to the podcast conversation with Nupoor, specifically to explore more non-writing roles that technical writers play.

In the podcast, I argued that the docs-as-code model unlocks collaboration with engineers and brings about a change in the role for technical writers. You might be a gatekeeper, moderator, and curator for a developer portal. You might be managing pull requests from different engineering teams. The idea that you're going to be writing all the docs across 20 different engineering teams that have complex content is somewhat naive, as this simply requires more tech depth and bandwidth than most people have.

But how do you re-conceptualize your *technical writing* role if you're not doing much writing? How do you put the word "technical writer" in your email signature and your LinkedIn profile if you're not really writing? How do you reconcile that disconnect?

To expand these non-writing roles, here are five core functions we play with technical content that don't involve writing. Maybe these functions are ones that we can bring to the surface more to brand ourselves and promote our value.

## Role 1: Reviewer/convener

Technical writers can play roles as a reviewer/convener who both reviews content and who brings together others in the review. Reviewer is a common term, but this can be misconstrued to suggest only one person reviewing the content, which isn't the case. That's why I added "convener" as well.

Admittedly, the first time I actually heard the word "convener" was while listening to a [podcast from Instrktiv on creating the 82079 Standard](https://instrktiv.com/en/blog/podcast/sven-ring-82079/). The lead person behind the standards committee was *convening* all these different people on the committee around the content to get them to review it, to figure out what standards should be developed and embraced and applied and so forth. So I like the term convener because it fits here, even if unusual.

When an engineer or somebody creates content, first I'll try it out myself if possible, but then I will ask other engineers to "convene" to review it &mdash; starting first with the product team and then expanding outward to have other field engineers look at the content, review it, and give feedback. Then I'll expand out the review to support people, and then to other external stakeholders, asking them to review the content and so on. I'll then ask the legal team to review it. If applicable, I'll loop in the marketing team because while they might not have much to say about the technical process, the terminology and messaging might be relevant. Basically, when we play the convener role, we bring all the different stakeholders together to review content.

This role is probably one of the most valuable as well as the most overlooked. If you just have engineers write and publish the content, you usually miss out on the convener role because, in my experience, engineers typically don't convene a lot of outside reviewers for the content they write.

## Role 2: User champion

Another role that we play, which doesn't involve writing, is as a user champion who presents the user's point of view to the internal teams. You might gather user feedback from a GitHub issue log from comments and other feedback mechanisms on your help site. You might gather user feedback from support logs from field engineers, or maybe you monitor sites like Stack Overflow and GitHub to identify issues.

You can find user feedback in a lot of different ways and spaces. You could even examine analytics and look to see which pages are most trafficked and which pages aren't visited at all. When you do get this information, you relay it back to the engineering teams, the product teams and owners, etc., in order to shape what they work on.

Again, when you just have engineers write, typically they won't be gathering the voice of the user and relaying this back to internal teams. The user's voice falls by the wayside, even though internal teams are hungry for this information. Product teams tend to be pretty isolated, or at least engineering teams tend to be isolated from their actual users, and yet they want to understand how their features and code are being used, consumed, received, and so on.

## Role 3: Editor

Another non-writing role we play is as an editor who makes the content align with style guides and standards, who figures out  whether the content uses the right terms, whether it aligns with industry best practices and style guides, and so on.

In our editor role, we make sure that the content embodies the best practices for simplified English by implementing short sentences, easy-to-read paragraphs, scannable subheadings, and numbered steps. As an editor, you might also check to see how the content compares to the competitor's content. For example, does the content cover the same topics as the competitor's docs?

I find that I'm actually pretty good at editing. Or at least I'm adept at spotting what's wrong with content. I find it easy to identify problems (whether that's good or bad, I'm not sure). Those problems could be anything from jargon to poor organization to lack of focus.

## Role 4: Publisher

A fourth non-writing role we play is as a publisher who presents the content on the web or in other mediums. As a publisher, you might define and shape the authoring and publishing workflow, the way the documentation site looks (maybe you create the stylesheets and otherwise manage the site). Maybe you implement Bootstrap and use nav tabs or some other complex Javascript mechanisms on the site to hide or show information in a more optimal way.

Maybe you ensure visibility of the content in search engines, or orchestrate the information architecture that users follow in their journey on your site. As users transition from the marketing pages or social media and land on your site, how do they navigate around?

There are lots of tasks involved in managing a website &mdash; everything from SEO and IA, as I've already described, to ensuring security compliance. For example, if I use `target=_blank` on our doc site, it will flag a security issue unless I add some special `rel` attributes that prevent "reverse tabnabbing." This is an obscure security issue that you'd probably only know if you're managing a corporate website. Additionally, linking to external JS (like jQuery or Bootstrap CSS or JS files) also triggers security warnings that a site manager would need to address. You might need to make other decisions about hosting content, such as storing files in AWS, using Cloudfront to speed up distribution, registering custom domains, and more.

Another task related to publishing is to manage the SDK release process, ensuring that SDKs, sample apps, and other distributed code has proper licensing attribution for third-party libraries, media, and other content, that they have been approved by the right legal channels and so on. There's a lot around the SDK process that you can facilitate.

Another aspect of publishing is to ensure all changes are reflected in release notes. I've encountered many engineers who simply want to publish changes without indicating what has changed. I'm always surprised at this and require that some changelog be created or updated.

Defining the IA of the sidebar, mini-TOC, deciding whether two- or three-column designs are preferable, and more are also publishing-related tasks. Everything related to the presentation of information on the web and in other channels, such as PDF, is included here with publishing. There are multiple podcasts, such as [Boagworld](https://boagworld.com/show/), related to running and manage a website.

## Role 5: Promoter

A fifth non-writing role is as a promoter who encourages awareness and adoption of the content. I frequently see internal release emails with people are patting themselves on the back as they celebrate some release, talking about, you know, the immense accomplishment and how awesome it is for users to finally have this feature or this new product. But these celebratory emails rarely make it outside the organization walls. We don't always repurpose the information into blog posts or other kinds of information that users can see and consume.

Engineering teams are good at pushing out new features, but not so good at promoting and making users aware of it and encouraging them to adopt it. A lot of times, engineering teams think that if you just build it, people will come. This is partly true (marketing can't always overcome challenges for a weak product), but there are a lot of reasons why products fail &mdash; one reason is the lack of user awareness.

If you take release notes and shape that content into a blog post with a story-like structure that resonates with users, or if you just send out information about what's new to an email list that might include field engineers, support teams, newsletter groups (both internal and external), and more, those activities are all part of your promoter role.

## The missing role: writer

So those are the five roles that I've come up with: reviewer/convener, user champion, editor, publisher, and promoter. None of these roles is *writer*. So is that a good thing? Is it good if we don't have writer in our list of core tasks? Don't get me wrong &mdash; I actually do write a lot of content. Not a tremendous amount, but I do write, and I still feel like it defines the core of what I do, but the amount of writing can shift based on the team and need.

Why does a lack of writing in the core role of technical writer trouble me? Mainly, it's because I feel writing is my sweet spot. By not writing, I feel like I'm making my most prominent talent dormant.

Then again, I'm not even sure what it means to "write." There are many different types of writing. You can write fiction, or an email message. You can write a resume, or an internal business proposal. There's technical writing, but there's also blogging, social media, proposal writing, internal corporate communications, an academic dissertation, and even transcribing a podcast. These are all different types of writing, and few of us have expertise across them all.

To lament the fact that we're not "writing" more is somewhat vague. What does it means to say that we're writing or not writing? When a fiction writer researches a character or place, is that writing? When a blogger brainstorms a mindmap, is that writing? If someone types out a sentence from a quotation, is that writing? If you're reading up on what others have said on a topic, is that writing? If you're conducting a competitive analysis to see where your content falls short, is that writing? Aren't all of these tasks related to the written output? And if so, then how can we draw lines around whether these other "non-writing" tasks, which inform and guide what we write, are or aren't included in writing? Simply typing words at the keyboard is an act of writing but can be just as robotic as dictation. Perhaps at the most basic level, you're involved in writing if the output is written content that you shaped it in some significant way.

Another question is related to job titles. What possible job title communicates all of these non-writing roles? There's no job title that includes writer, reviewer/convener, user champion, editor, publisher, and promoter. If you did somehow come up with a job title that expressed them all, it would be some hodgepodge, bizarre term that wouldn't align with the industry (like "knowledge creator" or "information strategy designer" or "content influencer").

This is one of the paradoxes of our profession: to be a technical "communicator" who cannot communicate exactly what he or she does. At any rate, I definitely feel like these non-writing roles are all valid and key roles to play for technical writers, even if I can't wrap them up under a well-understood umbrella. Perhaps my email signature should look like this:

Tom Johnson<br/>
Some department<br/>
Some phone, email<br/>
Some company<br/>
roles: writer, reviewer/convener, user champion, editor, publisher, promoter

Coming back to the question of whether the profession has evolved, if you look back at the origins, at least in Windows software documentation, if people weren't being hired to write content, but rather hired to facilitate the content publishing process, then we're still doing that. It's hard to know at what point people were being hired to *write* content and whether that role is actually shifting. This is a challenging topic, and I definitely welcome your input.

## Your feedback

I put together a brief list of questions to gather your feedback and thoughts about some of the ideas in this article. You can view the ongoing responses [here](https://www.questionpro.com/t/PGs7lZg46N).

<script>
EMBED_PARAMS = {};
EMBED_PARAMS.surveyID =7244556;
EMBED_PARAMS.domain ="//www.questionpro.com";
EMBED_PARAMS.src ="//www.questionpro.com/a/TakeSurvey?tt=92LAri8Rv5o%3D";
EMBED_PARAMS.width ="100%";
EMBED_PARAMS.height = "1000px";
EMBED_PARAMS.border = "hidden";
</script>
<div id="div_7244556"></div>
<script src="//www.questionpro.com/javascript/embedsurvey.js?version=1"></script>

<hr />

By the way, I hope to record more podcasts. This was an experiment in that I recorded the podcast *before* writing the blog post. I don't think it worked &mdash; I prefer to refine the blog post first and then spin off a podcast from it.

I like listening to podcasts a lot as well, and there are some excellent podcasts out there. I recently posted about my favorite podcasts, so if you missed that post, check out [Tech comm podcasts are growing -- here's a list](https://idratherbewriting.com/blog/tech-comm-podcasts-are-growing/). If you subscribe to all of these podcasts, you'll find topics that interest you.
