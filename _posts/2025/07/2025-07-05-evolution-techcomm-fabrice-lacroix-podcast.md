---
title: "Will your next user be an AI agent? The future of content delivery with Fabrice Lacroix, founder of Fluid Topics"
permalink: /blog/evolution-techcomm-fabrice-lacroix-podcast
date: 2025-07-05
categories:
- ai
- podcasts
keywords: Fluid Topics, AI, technical writing, content delivery platforms, enterprise knowledge platforms, metadata, MCP servers, technical documentation, knowledge management, content strategy
rebrandly: https://idbwrtng.com/evolution-techcomm-fabrice-lacroix-podcast
description: "In this podcast, I chat with Fabrice Lacroix, founder of Fluid Topics, about the evolution of technical communication. Fabrice describes the industry's progression from delivering static, monolithic PDFs to using Content Delivery Platforms (CDPs) that provide dynamic, topic-based information directly to users, to then engineering content not just for human consumption, but for AI agents that will use this knowledge to automate complex tasks and workflows."
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/evolution-of-techcomm-fabrice-fluid-topics.mp3
podcast_file_size: "35.6"
podcast_duration: "44:5"
podcast_length: 34681490
image: fabriceagentsthumb.png
---

<iframe width="560" height="315" src="https://www.youtube.com/embed/Z_gR0QZi7P0" title="Will your next user be an AI agent? The future of content delivery with Fabrice Lacroix" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{% include audio.html %}

* TOC
{:toc}

<p><small><i>This podcast was sponsored by <a href="https://www.fluidtopics.com/?utm_medium=referral&utm_source=idratherbewriting&utm_campaign=blog_idratherbewriting">Fluid Topics</a>.</i></small></p>

{:.note}
Related to this podcast's topic, I also published a Q&A article titled [AI-powered Enterprise Knowledge Platforms: Fluid Topics Q&A with Fabrice Lacroix](/blog/fluid-topics-ai-strategy-qa-fabrice).

## Takeaways from the podcast

* Technical communication has evolved from delivering static PDFs to using Content Delivery Platforms (CDPs) that serve granular, topic-based answers, reducing the user's cognitive load.
* The next step (after CDPs) is the Enterprise Knowledge Platform (EKP), which breaks down information silos by unifying all product-related content (tech docs, knowledge base articles, support cases, etc.) into one searchable place.
* To be effective, a platform must understand the specific *semantics* of product content—like versions, product lines, and applicability&mdash;not just process it as generic text.
* The next primary consumer of technical documentation is shifting from a human reader to an AI agent that will use the content to perform actions.
* Writing for AI agents requires a new approach. Concepts like minimalism might be insufficient, as implicit knowledge (what we assume human experts know) must be made explicit for machines to understand.
* The technical writer's role is expanding from pure authoring to orchestrating and curating knowledge from many different sources for ingestion into a central system.
* AI agents will use documentation to automate complex, multi-system workflows, such as diagnosing a problem, ordering a part, and scheduling a technician automatically.
* Technologies like MCP (Model-Context-Protocol) are being built directly into platforms (like https://www.fluidtopics.com/?utm_medium=referral&utm_source=idratherbewriting&utm_campaign=blog_idratherbewriting), allowing content to be easily consumed by AI agents without a massive engineering effort.
* Agents can perform advanced quality control, such as comparing Jira development tasks against your documentation in seconds to find gaps and inaccuracies.
* The mindset is shifting from simply writing documentation to engineering a knowledge base that can be reliably used by both humans and intelligent machines.

## Podcast timestamps

* 00:00 Introduction to Fluid Topics and AI in tech writing
* 03:01 Content Delivery Platforms vs. Enterprise Knowledge Platforms
* 06:14 The evolution of technical writing
* 08:56 Dynamic content delivery and user experience
* 12:02 Unifying disparate knowledge in organizations
* 14:56 AI and the tuture of technical writing
* 17:58 The role of semantics in product knowledge
* 20:51 Challenges in metadata extraction
* 24:07 The impact of AI on technical writers
* 26:53 Fluid Topics and MCP servers
* 30:06 Conclusion and future directions

## Transcript

(Note: The transcript has been slightly cleaned up with AI for readability.)

### Introduction to Fabrice Lacroix and Fluid Topics

**0:02, Tom:** Hi, my name is Tom Johnson, and this is another podcast from Idratherbewriting.com. Today, I am talking with Fabrice Lacroix. He is the founder of Fluid Topics, which is something we're going to get into today. We're also going to be talking about AI and how the role of the technical writer is evolving in the enterprise context.

**0:29, Tom:** Fabrice, can you introduce yourself a little bit? Tell us what you do at Fluid Topics, where you're based, and so on.

**0:38, Fabrice:** Sure. Hi, Tom, thanks for having me. I'm the founder and CEO of Fluid Topics. My background is very techy. I used to be a developer—a mathematician by training—then spent a lot of time developing low-level, OS-level stuff. Then, I created a company years ago and invented Fluid Topics. I probably haven't written a single line of code in almost 10 or 12 years. So, no worries, there aren't any lines of code from me in Fluid Topics.

Over time, I evolved toward marketing, product-market fit, and product management. So, I'm very much a product guy. I like sensing and feeling the need, inventing what comes next, or trying to see how we can design a product that solves a new problem. I'm focused on the new stuff. I wouldn't like redoing something that already exists in a better way or just making a 'me-too' version of another product. I'm more about always trying to innovate and find the next thing.

**1:52, Tom:** You know, I remember Fluid Topics has been around for a while. I remember back—I can't even remember how long ago this was, I'm thinking a decade ago—I was giving a presentation at WriterUA in Europe about faceted filtering, and somebody told me that Fluid Topics had implemented that. They had a really sophisticated UI that allowed all this faceted filtering that I was experimenting with at the time. So, I can see how Fluid Topics is constantly innovating and trying to lead the way on the most cutting-edge interfaces for tech docs and other types of documentation.

---

### From Content Delivery to Enterprise Knowledge Platforms

**2:40, Tom:** Okay, so in an article you wrote recently for TC World, which I haven't even introduced yet, called 'Rethinking Product Information: The Evolving Role of Tech Writers'—that's going to serve as the core starting point for what we're talking about today. In this article, you talk about enterprise knowledge platforms and how this is an evolution from content delivery platforms. Can you talk a little bit about what a content delivery platform is and what an enterprise knowledge platform is?

**3:22, Fabrice:** Sure. Let's start with the **content delivery platform**, or **CDP**, as we call it. I think it's the obvious next step: the evolution beyond the document. For decades, tech comm has focused on writing and generating documents, meaning static content. It was even printed and bound stuff, then PDFs. But it's static; it is a document. It's something that comes as a monolithic piece—it can be 10 pages, it can be 1,000 or 10,000 pages—but it's one big chunk of content. That's the document idea.

I think it was the standard thing to do, resonating with the rest of what enterprises were producing: Word files, Excel spreadsheets. It's all document-based. Then you were storing that in an enterprise content management system, a SharePoint space, or a file server. It was very document-oriented.

The CDP that we introduced was based on the idea that people don't need the document itself; the document is just a way to convey content. If you extract those fragments—those pieces of content—from the documents, you can serve and deliver just the piece of information the user needs. Instead of just getting the document, opening it, finding the information inside, scrolling to page 52, and then finding the answer you need in the third paragraph—why not just hand that paragraph directly to the user if that's what they need?

A CDP is about content. You can see content as the opposite of the document; it's what's beyond the document. It's just the content, not the envelope—it's what's inside. If we can pull just what's needed from documents and serve that to the user dynamically, then we reduce the user's cognitive load for finding the right information by just giving them the piece of information they need. So that's the idea of a CDP: going beyond documents.

Interestingly, this is exactly how modern technical writers work. Modern technical writers, especially those using DITA and similar methodologies, don't write long documents. You write fragments of information. They already exist, in fact. So it's a bit of a pity to see that information architects and tech writers have made this transition from long documents to topic-based fragments of content, only to reassemble them back into documents because that's how delivery was organized. But if you reinvent the delivery part—the downstream part—then you can keep those fragments as the grain of information that can be served.

This is what we introduced with Fluid Topics. We said, "Okay, guys, we don't need the documents. You don't need PDFs." You can still have a PDF if you want to print—it's a good format for that. But it's a printing format, not a content format. It's not a user-oriented format. So, we just said, "Okay, this structured content already exists. Those metadata and tags probably exist. Let's reuse that as a basis for serving content to the user."

So that's what a CDP is about: it's getting back to the granularity of content and serving exactly what people need. Then, the delivery part is about redesigning the user experience. If you get rid of the document, you're left with these grains of content, and you have to reinvent the way to present them. You have to reinvent the UI and the user experience for accessing that content. It's reinventing findability and readability, everything.

**8:12, Tom:** Wow, there's a lot to unpack there. Let me see if I can relate it to my own world to better understand it. You started by describing a world where people publish big documents like PDFs, and the user has to open them and scan for information. You've moved away from that model to an idea where you break up the document and return only the specific chunks or pieces the user wants.

How does that work? Let's say a user wants a product overview. Typically, I might work on an overview page for a product that's a thousand words long—not necessarily a PDF, just an HTML web page. Is that also broken up, or is that considered the whole chunk? I'm a little confused at that point.

**9:16, Fabrice:** It depends on the information architecture and how fine-grained the information is. If your information architecture means that even the product description itself is made of five topics of 10 lines each, then you have to reassemble them. It depends on how the content is written and organized. The longer the fragments, the more you are on the document side. The smaller they are, the more flexibility you have to dynamically recreate new, dynamic documents and renderings of the information.

**10:07, Tom:** Okay, so this dynamic rendering is what Fluid Topics or another CDP provides. Right. Now, you also mentioned the **enterprise knowledge platform**, and you want to move from CDPs to enterprise knowledge platforms. Can you explain a little bit about what that is?

**10:33, Fabrice:** Yes. What I explained in the article is that when we started and introduced Fluid Topics, we were focusing on the tech doc business. That meant DITA content, Markdown, or content from any other CCMS authoring tool. The content that used to be published into Fluid Topics was what we could call tech docs—very controlled and validated.

Over time, our customers realized that the way we were bringing better search capabilities, faceted search, and this dynamic rendering of content would make it interesting to put more than just tech docs into the platform. So, they wanted to publish things like knowledge base articles from elsewhere, an internal wiki, past support cases, or, in the manufacturing industry, parts catalogs and data sheets that aren't exactly tech docs—they come from the product engineering department. Or, in the software industry, that could be API documentation.

It's everything that's around the product itself. Because at the end of the day, the reason you write documentation is to help your consumers, clients, support agents, or other stakeholders better install, service, and use the product. But not everything is necessarily written and contained in the formal tech doc. That knowledge can be spread across different silos. The premise is that if it's not unified in one place, a user—whether you're a client, a support agent, or a field technician—has to go to all those different places and run multiple searches. That's pretty painful.

So, we saw our clients saying, "Your platform is so good that we'd like to put more than just tech docs in it. Can you open it up to support more formats and different content types so that we can unify everything and create a repository that collects and combines all the product knowledge in the company?" The purpose remains the same: making customers autonomous for self-service and augmenting the capabilities of support agents to find info faster.

So that's where we moved from a CDP, which has a connotation of being very tech doc-oriented, to a **product knowledge platform**, which includes more than just DITA and Markdown—it has very different content types. It's everything you need to solve problems and make people more efficient at using and servicing products.

---

### Unifying Knowledge with Semantics and AI

**14:10, Tom:** Interesting. Okay, so you're trying to solve the problem of having all this disparate knowledge at a company in different formats, sites, and channels. You're bringing it all together into one repository to serve up that knowledge in a unified way.

So, let's look at an example. Let's say there's a support knowledge base with some policy information, a tech doc that also has policy information, and some PDFs with similar policy information. A user searches for this policy information in the enterprise knowledge platform and sees three results: one from tech docs, one from support, and one from marketing. Are you saying that in this paradigm, would they instead just get the raw information collected and unified from these three sources in one place?

**15:20, Fabrice:** Exactly. They would find all three of these policies in one place. Now, the system would still tell them, "We have three policies." What we can add on top of that is leveraging AI capabilities. The platform can say, "We have three versions of the policy, and we can compare them for you and tell you if they are different or the same." That would be an added mechanism on top of the content itself. The core idea is that whatever exists in the company should be accessible and visible. If you just remove one, maybe people are missing something. They might need to know that there are three versions—maybe one is a shortened version of another, and the third is a revised version for a specific territory or product. You need to understand the differences.

**16:27, Tom:** I'm thinking, how is this different from Google AI Overviews? Right now, if I do a search on Google, there's an AI overview at the top that tries to summarize what all the different sources below it are saying. It kind of reads all the sources and gives an AI-generated summary. But I could also click into the different sources and go to the raw material. Is that a similar way that you're envisioning?

**16:58, Fabrice:** It's totally similar. That's the same principle we apply. But this leads us to the next part of the discussion. If you look at how Google or any other general platform handles that content, they see it as general knowledge. We work on product knowledge, which means we keep a lot of **semantics** that are very specific to it. We can analyze the metadata schemas and understand that there are different product lines, product versions, and product variants.

Product content is very specific because of applicability—which manual in which version applies to which asset, device, or product. Products evolve, so you need to make sure you use the right version of a document because it fits with the right variant of that product. That's where Fluid Topics is very specific. We have that **domain knowledge** and a lot of business logic inside the platform that's specific to products. This is in contrast to a platform like Google, which wouldn't keep as much of the semantics to be as specific and accurate as we are.

**19:15, Tom:** How do you extract semantics if the content is coming from so many different groups in the organization, all using different formats? For example, let's say a user wants to know about version 2.0 of a product, not version 1.0, and only the version applicable in the European Union. How would Fluid Topics extract that metadata from a bunch of different documents that might not have an XML structure that specifies it?

**19:57, Fabrice:** Good question. That's exactly what I mean by being domain-specific. Platforms that process content without this domain-specific capability tend to just strip it down to text. Because we know we're dealing with product content, we have developed specific **connectors**. We have connectors for processing DITA content, Markdown content, and content from other CCMSs like Paligo, Author-it, Flare, or FrameMaker. We have built connectors for about 25 or 30 formats in total, and we know how to extract the metadata specifically for each of them.

That's a lot of investment because you have to learn the formats and understand how semantics are conveyed to know how to extract them. It's way more work than just taking any XML, getting rid of the tags, and going down to text. We elevate and keep the semantic value that exists in those formats. We have to keep the semantics, the structure, and know where to find the metadata and what it means.

---

### The Next User: Writing for AI Agents

**21:55, Tom:** This gets us into the evolution of the technical writer. If I were to spend my time trying to understand how to extract metadata from, say, an engineer's Markdown document as well as from the marketing group's content, my role is no longer really authoring. I'm orchestrating, curating, and tagging content for ingestion into this system. I don't know what that role is called—information architect? Librarian? Is that how you see the role of the technical writer evolving?

**22:35, Fabrice:** Wow, what a question. My perception of that is probably evolving every two months because the landscape with AI is evolving so fast. Let's throw in the names **MCP (Model-Context-Protocol)** and **Agentic AI**. Let's go bold. What I see starting as a new trend is that the content inside companies won't be consumed just by humans, but by **agents**.

That's pretty new. Whatever you were doing today, the content was written, organized, and tagged with the idea that the consumer was a human being. Now, if you look at Agentic AI, you can run entire company workflows without any human in the loop. This means that to solve complex problems and automate processes, the consumer of that information will be an LLM.

Let's take an example. Say you're a manufacturing vendor with a big piece of machinery that has sensors everywhere. Those sensors send status updates to an IoT platform. At some point, a sensor sends an alert, like "Warning 22." What happens today? A person sees that alert, goes to the documentation to find out what it means ("hydraulic pump is weak"), then goes to the field service management system to book a technician, and then goes to the parts catalog to order the right pump. A human is using three, four, maybe seven different tools to run that process.

Tomorrow, that process can be fully automated with AI. You'll have an agentic system. The sensor will send "Warning 22," which will trigger a workflow. The agents will check the docs, find "hydraulic pump failure," identify the correct pump model from a database, and then automatically book the technician and order the part. It's going to be done automatically.

This means the knowledge needed to automate those processes will have to be engineered not just for humans, but with the understanding that it will be used by an LLM. The moment companies understand how much they can automate, they will go to the knowledge managers and the tech writing team and say, "Guys, we need this knowledge to exist somewhere so it can be used by an LLM."

**28:31, Tom:** I'm glad you brought up MCPs and agentic AI because I'm trying to figure out exactly how to plug my docs into agents. I completely agree; this is the next 'user' we're writing for. And the Model-Context-Protocol, or MCP, is the way we package information—like our documentation—into a context so that an agent can access all the information it needs to take these actions.

In my role, I've been trying to figure out how to get all my documentation into an MCP server, especially since it's behind a firewall. So now, in addition to writing and curating documentation, I'm also tasked with figuring out how to make it useful to users who will have an agent and won't necessarily be reading the docs themselves.

**31:12, Tom:** How does Fluid Topics fit into this question of MCPs, agents, and this transition to a 'writing for machines' world?

**31:26, Fabrice:** There are two aspects: the tooling and the content strategy. Regarding the tooling, we've built an **MCP server on top of Fluid Topics**. This means that if you have Fluid Topics and have published content to it, that knowledge becomes accessible through MCP to any agent, out of the box. The same knowledge, published only once, is available to both LLMs and human consumers through two different channels: user interfaces for humans and MCP for agents. So for our customers, they don't have to ask, "How do I make my content available to LLMs?" They know Fluid Topics has added that MCP layer.

Now, for me, the most unseen challenge is the content itself. When we write for humans, we leave things unsaid. We assume they know something about our product. There are holes in what we write. Now, when the consumer is an LLM, how much does it know by default, especially about *your* product? How much do we have to rewrite content to make that implicit knowledge more explicit, so that LLMs can find everything they need? We shouldn't forget that LLMs are not necessarily as expert as the users and technicians who can fill those knowledge gaps. This will force companies to revise their content strategy.

**36:37, Tom:** I think it's awesome that Fluid Topics has this MCP server capability already built in. From my point of view as a tech writer, that's a huge relief.

And yes, it takes the whole idea of minimalism—the idea that we were crafting content to fit a certain human persona—and throws it out the window. Our new persona is an LLM or an agent.

**37:54, Fabrice:** You're right. That's a new persona, and minimalism may not be good enough for this persona.

**38:09, Tom:** It's an interesting challenge. I'm starting to understand that there are different types of agents. There could be a review agent that checks a code commit for errors, or a tech writer agent that can do specific tech writer tasks. Trying to understand how tech docs serve all these different possible agents and what information they would need is definitely new territory.

---

### The Power of Agents: A Real-World Example

**39:24, Tom:** Just curious, in your own role as CEO, how do you use AI? Are you using any kind of agents?

**39:59, Fabrice:** Personally, I don't use it a lot. My role is more about the company vision. I wouldn't go to an LLM and say, "What should I invent for Fluid Topics tomorrow?" LLMs know the present and the past; they don't know the future.

But now that we started playing with the MCP servers we've developed, I was shocked. A short story: we set up an MCP server on Fluid Topics for our own tech docs, and we rolled out an MCP server on our Jira instance. The first question I asked was, "What are the latest things we have rolled out in the product?" The agent went to Jira, read it, and listed the latest features.

Then I said, "Okay, now can you check that we have documented all the features that have been developed? Make sure we haven't forgotten anything." Then you see the agent going back and forth between Jira and the tech docs. At the end, you get this report that says, "Okay, you rolled out this feature three weeks ago. It is documented like this, but you could add these specific details because I checked the original description."

It took like **30 seconds**. It read 200 Jira tasks and 500 pages of documentation and spotted all the gaps and potential improvements in our documentation. Just like that. It would have taken me a day or two to go through those tasks and check the docs. It's shocking how powerful it is.

**42:52, Tom:** Wow, now I think I need this. I have so many bugs to track and I'm trying to understand how they relate to the current state of my docs. To have an agent take a crack at some of that would be amazing.

**43:08, Fabrice:** So, put an MCP server on your Jira or your GitHub—you could even have one on Git reading the code itself. I can see having three or four MCP servers rolled out like that on existing platforms. No changes to the tools themselves, just MCP servers enabled on them. Then you write three lines of instruction, you get a two-page report, and you know what you have to do. It's absolutely crazy how helpful it is.

### Conclusion

**43:45, Tom:** Well, this might be a good place to wrap things up. There's a lot of continuous learning I need to do to better understand agents and how they interact with docs. It seems like Fluid Topics is a great platform because you've already built so much of this functionality that people need. If people want to learn more about you, Fluid Topics, agents, or MCP servers, where should they go?

**44:16, Fabrice:** They can go to **fluidtopics.com**. They'll find how to contact us. We'd be glad to chat and discuss this future and how they can revise the way they look at their daily job—what tech docs mean when they're being consumed not just by humans, but by LLMs. I think everyone has to start looking at what they do this way.

**44:44, Tom:** Great. Well, thanks for talking with me today, Fabrice. I really appreciate it.

**44:47, Fabrice:** It was a great pleasure, Tom. Thanks very much for this chat.

---

## Links

* [Fabrice Lacroix on LinkedIn](https://www.linkedin.com/in/fabrice-lacroix)
* [Fluid Topics](https://www.fluidtopics.com/?utm_medium=referral&utm_source=idratherbewriting&utm_campaign=blog_idratherbewriting)
* [AI-powered Enterprise Knowledge Platforms: Fluid Topics Q&A with Fabrice Lacroix](/blog/fluid-topics-ai-strategy-qa-fabrice)
* [Rethinking product information: The evolving role of tech writers](https://www.tcworld.info/e-magazine/technical-writing/reassessing-the-use-of-product-information-and-the-role-of-the-tech-writers) (*tcworld* article by Fabrice)

{% include ads.html %}

