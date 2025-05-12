---
title: "AI-powered Enterprise Knowledge Platforms: Fluid Topics Q&A with Fabrice Lacroix"
permalink: /blog/fluid-topics-ai-strategy-qa-fabrice
date: 2025-05-11
categories:
- ai
keywords: Fluid Topics, AI content management
rebrandly: https://idbwrtng.com/fluid-topics-ai-strategy-qa-fabrice
description: "In this Q&A with Fabrice Lacroix, founder of <a href='https://www.fluidtopics.com/?utm_medium=referral&utm_source=idratherbewriting&utm_campaign=blog_idratherbewriting'>Fluid Topics</a>, I ask him questions about his recent tcworld article, in which he argues for an innovative, advanced model for Enterprise Knowledge Platforms (EKPs) acting as a central AI-powered brain for all company content, delivered via APIs. Fabrice also outlines a future where tech writers become information architects, governing vast knowledge ecosystems and coaching diverse content contributors."
---

<ul id="markdown-toc">
    <li>
        <a href="#article_opening_question" id="markdown-toc-article_opening_question">
            Reinventing content systems
        </a>
    </li>
    <li>
        <a href="#what_is_fluid_topics" id="markdown-toc-what_is_fluid_topics">
            Enterprise Knowledge Platforms (EKP) vs. Content Delivery Platforms (CDP)
        </a>
    </li>
    <li>
        <a href="#comparisons_to_genai" id="markdown-toc-comparisons_to_genai">
            EKP and Gen AI
        </a>
    </li>
    <li>
        <a href="#content_apis" id="markdown-toc-content_apis">
            Content API Details
        </a>
    </li>
    <li>
        <a href="#hallucination" id="markdown-toc-hallucination">
            Ensuring API Accuracy
        </a>
    </li>
    <li>
        <a href="#governance" id="markdown-toc-governance">
            Governing Content Quality
        </a>
    </li>
    <li>
        <a href="#examples" id="markdown-toc-examples">
            Real-world EKP Examples
        </a>
    </li>
    <li>
        <a href="#evolving_role" id="markdown-toc-evolving_role">
            Tech Writer Evolution
        </a>
    </li>
    <li>
        <a href="#soft_skills" id="markdown-toc-soft_skills">
            Skills for New Roles
        </a>
    </li>
    <li>
        <a href="#daily_workflow" id="markdown-toc-daily_workflow">
            Workflow with EKP
        </a>
    </li>
    <li>
        <a href="#fabrice" id="markdown-toc-fabrice">
            About Fabrice Lacroix
        </a>
    </li>
</ul>

<p style="margin-left: 0px"><small><i>Note: This is a sponsored post.</i></small></p>

### Tom: In your article [Rethinking product information: The evolving role of tech writers](https://www.tcworld.info/e-magazine/technical-writing/reassessing-the-use-of-product-information-and-the-role-of-the-tech-writers), you describe a system that ingests all the company's content, crawls and structures it, and then serves up that ingested content as APIs for consumer apps to call. Consumer apps call these APIs to get the information they need to publish at their various touchpoints. Did I understand this correctly? Can you expand on this model with more detail? {#article_opening_question}

<figure style="max-width: 170px; float: right; margin-left: 15px"><a href="https://www.tcworld.info/e-magazine/technical-writing/reassessing-the-use-of-product-information-and-the-role-of-the-tech-writers"><img style="border: 1px solid #dedede; border-radius: 3px;" src="{{site.media}}/tcworldarticle-fabrice-lacroix.png" alt="" /></a><figcaption>Fabrice's article in tcworld magazine: "Rethinking product information: The evolving role of tech writers"</figcaption></figure>

**Fabrice:** You got it right. Information evolves at a fast pace, so you should avoid the old way of doing things: extracting information from each source and reloading content in each touchpoint. Not only do you multiply the amount of data to store, but also the content becomes rapidly out of sync.

It is the same as when you have a database about product availability, prices, and discounts per client. You wouldn't dump and reload this data in every application. Rather, each app would query the database dynamically to get real-time information. So, why should we treat content differently from structured data? It's uncanny that content hasn't reached the same level of maturity when it comes to IT and system architecture.

But this is changing. Companies have started to understand the value of content and how it can impact operating performance. IT departments now get involved in content projects, and as they realize the complexity of the matter, they understand that they need robust platforms for collecting, unifying, and disseminating content where it's needed.

### Tom: What is Fluid Topics? Is it an Enterprise Knowledge Platform (EKP) or a content delivery platform (CDP)? What's the difference between the two? {#what_is_fluid_topics}

**Fabrice:** [Fluid Topics](https://www.fluidtopics.com/?utm_medium=referral&utm_source=idratherbewriting&utm_campaign=blog_idratherbewriting) was born as a CDP, a Content Delivery Platform, meaning it was invented to serve the purpose described above: create a unified knowledge hub of content and reinvent the way users can search and read. It's all in the name:

* **C** for *Content* means going beyond the document paradigm. This is the end of static documents and HTML pages. Instead, work with fine-grained content, dynamically served and assembled as needed to fit the user profile and the context.
* **D** for *Delivery* means both being able to design classic documentation portals, and to serve the content to any touchpoint with APIs. For example, to offer in-product help.
* **P** for *Platform* comprises many things: being open (API-first), highly configurable so you can build on it, robust, and secure. "Platform" also entails being comprehensive. Fluid Topics includes advanced search technology, analytics for tracing all access to content, modules for transforming and enriching content, gated access to content based on credentials, and the list goes on.

Initially, Fluid Topics was very much used for and focused on technical documentation: structured (think DITA, Markdown, etc.) and unstructured (legacy Word files, PDFs, etc.). Over time, our customers started adding more diverse content types: API documentation, parts catalogs, data sheets, knowledge bases, past cases from their help desks, and anything else that could help users, support agents, and technicians be more efficient.

However, the more diverse the content types we were able to manage, the more we felt that the term *CDP* didn't reflect the full capability of the solution, as CDP is very much understood as *"for tech doc"*. 

Also, our vision has evolved since the inception of Fluid Topics. Today, our customers are facing many new challenges, meaning they need more capabilities, and we see more opportunities. It goes mainly in two directions: Generative AI and User interactions.

* **Gen AI** is about reinventing how users can find and read information, and not necessarily content. The information is what the content wants you to know about, and AI is good at that.
* **User interactions** are about letting users comment, annotate, and collaborate around this content. They solve the question of how to capture knowledge from the field and share it with groups of users. It's about making Fluid Topics a workplace.

This is where we see the need to introduce this idea of broader capability. Hence the name EKP.

See it this way: CDP brought us from documents to dynamically served granular content. EKP brings us from content to actionable information and user interactions. 

### Tom: How much is this system like a Gen AI system? Does it rely on tools to crawl and index the content, essentially training an LLM? Is the enterprise knowledge platform that trains this content similar to how Gen AI APIs work? {#comparisons_to_genai}

**Fabrice:** There is no AI without content, and all AI projects start with collecting content. Whether you want to fine-tune a model or build a RAG solution, you need to create a unified repository. And this is exactly what Fluid Topics does. It's a core function of Fluid Topics as a CDP to collect and prepare content. To become a Gen AI platform, we just needed to add a few capabilities, such as semantic search&mdash;by which I mean embeddings computation and similarity search with reranking&mdash;prompt management, and connection to LLMs.

It was clear from day one that our job was not to create or train LLMs, nor to write some hard-coded prompts. Rather, it was to remain a platform: focus on managing content, add semantic search capabilities, and be open and highly configurable.  

### Tom: What would the content APIs look like for this content? Would you have to mix and match different APIs for different content needs? {#content_apis}

**Fabrice:** Indeed, adding Gen AI capabilities to the platform added new APIs. This includes the possibility of doing a semantic search, that is, a search in natural language (versus a keyword search), or to activate prompts that make the LLM process the content (summarize, extract a list of parts and tools, etc., whatever your prompt instructs the LLM to do). We have also developed RAG and chatbot features.

### Tom: How would users know that the content delivered from the API is accurate? Wouldn't it be subject to the same level of hallucination as gen AI typically is? Would product managers feel comfortable relying on real-time APIs to get product information for users? {#hallucination}

**Fabrice:** That's a good question, but in fact, Fluid Topics is not responsible for that problem. 

Hallucinations come from the LLM and from how the LLM is prompted. And as we let our clients choose their LLM and write their prompts, they are also responsible for the quality of the answers. We empower them to build Gen AI-based solutions in minutes. But as it is well known, with great power comes great responsibility. And now it's theirs.

However, we don't abandon them. We are building a workbench into Fluid Topics that lets them measure the quality of the answers they get from their prompts and LLMs, and also track the evolution of this quality over time. For example, when they change a prompt, do they get better or worse results? You need tooling for that, and we are bringing that.

### Tom: Beyond the API accuracy, how do you envision the governance of content quality before it even reaches the EKP? What role should technical writers play in establishing standards and processes with the owners of various source systems (like LMS, CRM, Wikis) to ensure the ingested information is fit for purpose? {#governance}

**Fabrice:** Good point. The overall quality of a Gen AI solution ultimately depends on the content it has access to. A chatbot cannot properly reply to a user if the information does not exist, is partial, or is ambiguous. Chatbots don't hang around at the coffee machine to capture this informal knowledge from thin air and discussions. The knowledge of the company has to be written. Everything that's needed for solving problems and replying to questions must be "on paper." It doesn't really matter if it is perfectly structured content, a Wiki, a CRM, or even some Word documents, but that content needs to exist. Technical writers have a role to play in this evolution. 

### Tom: Are there any examples of this model currently in place, or is this more visionary and future facing? {#examples}

**Fabrice:** It is a huge, unseen challenge for many companies. Very few know how much knowledge is informal, how much oral tradition is part of their organization. They will discover it when they try to create this magic chatbot that can reply to any question. They will realize how much information is not written, partial, unclear, outdated, etc. 

Another problem that companies will face is the management of this information. Once it is written, how do you ensure it remains valid? What processes do you put in place for regularly reviewing whether it is still applicable? The challenge will be to find the balance between a tight process and solution (such as CCMSes) that helps manage content but at a high cost, and simple open tools (such as Wikis) that are easy to use, foster information writing, but lack control.  

I haven't yet seen any proven methodology for solving all these issues. Certainly, solutions more suited to that challenge need to be invented.

### Tom: How do you see the role of tech writers evolving? Will technical writers be doing any more writing? What will they do? {#evolving_role}

**Fabrice:** In this evolution, I feel that technical writers will be asked more and more to become coaches: to explain to people how to write information, how to tag it, how to review it. 

Also they will have to design plans to check for comprehensiveness and consistency.

If not, they will have to do all the writing, which doesn't scale if we go beyond the classic core technical documentation of the product. And I don't see companies doubling or tripling the size of the tech doc team. 

So the challenge will become how to onboard more people in information creation, using new tools for writing, and Gen AI for assisting people who are not native writers.

### Tom: For tech writers accustomed to working primarily within authoring tools (like a CCMS), what specific technical skills (e.g., understanding APIs, data modeling, taxonomy management) and soft skills (e.g., cross-functional negotiation, systems thinking) are most important for successfully transitioning into the information architect or knowledge conductor roles you described? What's a realistic transition path? {#soft_skills}

**Fabrice:** I think that technical writers must first accept that each team will write with its preferred tool in its usual working environment. You won't be able to force everyone into using a CCMS and writing in DITA. Developers will use MarkDown and Git, marketing will use Word and Sharepoint, support will use HTML, wikis, and knowledge bases in their helpdesk solution ... And it's fine. Their energy should be more focused on defining a strategy for tagging content, designing taxonomies, and explaining to people how to properly tag. Also, they must define a strategy and tools for reviewing content quality and validity. Gen AI is a good candidate for that.

Tech writers will then certainly have to spend some time reading what is produced by these other teams, not necessarily to fix the content (although tech writers will probably still have to fill some gaps in the content), but to monitor the skills of others and teach them.

How do we get to this point? I don't know. But one thing is for sure: it will require management to understand the challenge and to support them.

### Tom: Practically speaking, how does a tech writer's daily workflow change when working with an EKP? Are they spending less time writing and more time integrating, curating, analyzing content flows, and potentially configuring aspects of the EKP itself? What does their toolset look like? {#daily_workflow}

**Fabrice:** Going back to the subject of the EKP, it drastically simplifies the process of collecting and publishing content coming from many places. Tech writers are freed from maintaining complex toolchains and scripts. All the content being collected in this central repository can be analyzed to check for global consistency. They have to spend less time on building a stack, but more on leveraging up-to-date technology. They can extend the platform to add their own tools and methodologies, test Gen AI scenarios in a few clicks, and design their company's content strategy.

*Learn more about [Fluid Topics](https://www.fluidtopics.com/?utm_medium=referral&utm_source=idratherbewriting&utm_campaign=blog_idratherbewriting).*

### About Fabrice Lacroix {#fabrice}

<figure style="margin-right: 15px; max-width: 150px; float: left; margin-top:-10px;"><img src="{{site.media}}/fabrice-lacroix.jpg" alt="Fabrice Lacroix" /></figure>[Fabrice Lacroix](https://www.linkedin.com/in/fabrice-lacroix/) is a serial entrepreneur and a web pioneer. He has been working for 25 years on the development of innovative solutions around search technology, content enrichment and AI. He is the founder of Fluid Topics, the leading Content Delivery Platform that reinvents how users search, read and interact with technical documentation. 

<hr />

{% include ads.html %}

<style>
#content h3 {color: #d4811c}
#content p, #content li {margin-left: 25px;}
</style>