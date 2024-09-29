---
title: "Unified Knowledge powered by Zoomin -- Q&A with Paul Maass"
permalink: /blog/unified-knowledge-zoomin
date: 2024-09-15
categories:
- technical-writing
keywords: unified knowledge, Zoomin, Paul Maass
rebrandly: https://idbwrtng.com/unified-knowledge-zoomin
description: "The following is a Q&A post with Paul Maass of Zoomin about Unified Knowledge. Paul says Unified Knowledge integrates diverse content sources to improve AI-powered service interfaces and customer support. He explains the challenges of content management, the role of AI in technical documentation, and gives insights into preparing for knowledge systems driven by AI."
image: paul_maas.jpg
---

*Note: This is a sponsored post.*

<ul id="markdown-toc">
  <li><a href="#question1">Introduction to Unified Knowledge</a></li>
  <li><a href="#question2">AI-powered service improvement</a></li>
  <li><a href="#question3">Content preparation for AI systems</a></li>
  <li><a href="#question4">Handling information discrepancies</a></li>
  <li><a href="#question5">Integrating diverse content formats</a></li>
  <li><a href="#question6">AI interface and security measures</a></li>
  <li><a href="#question7">Transitioning to Unified Knowledge</a></li>
  <li><a href="#question8">Handling content updates</a></li>
  <li><a href="#question9">Grounding and fine-tuning in AI</a></li>
  <li><a href="#question10">Measuring AI-powered service effectiveness</a></li>
  <li><a href="#question11">Future of AI-powered knowledge systems</a></li>
  <li><a href="#question12">Getting started with AI implementation</a></li>
</ul>

<h2 id="question1">Can you introduce Unified Knowledge? What problem does it solve, and how does it differ from traditional knowledge management systems?</h2>

**Paul:** Unified Knowledge isn't a knowledge management system; instead, it's the first way to bring knowledge created and curated across the enterprise with a plethora of tools and repositories, natively into CRM systems like Salesforce and ServiceNow. We're talking about content such as user guides, release notes, knowledge articles, training guides, engineering documents, etc.

The problem Unified Knowledge solves is the customer's challenge of finding answers to product questions across many sites, and the support team's "swivel chair" problem. Support teams often have multiple sites and tools they need to check when trying to answer a customer's product question, and often they turn to colleagues to get answers because it's faster.

Most companies today are trying to add new customers and support additional products but keep their support team headcount flat, so they need to be far more productive. The best support case is a case the customer never submits, and if a case does get submitted, then Unified Knowledge ensures the support agent can respond far more quickly and accurately. 

Content creation, review, and governance continue to take place in the source system so it means business as usual for the teams that create content. Customers who use a self-service support site and support agents and staff that regularly use knowledge to resolve cases can now search, read, and use *all* relevant product knowledge in their support systems. 

Unified Knowledge is natively integrated with these systems, which means no packages to download from the AppExchange. 

<h2 id="question2">How does Unified Knowledge improve the accuracy and helpfulness of AI-powered service interfaces? How does it compare to using a general LLM without company-specific data?</h2>

**Paul:** We all know that AI is only as good as the information we provide it. With all relevant external content now natively available within the same system, it can be used to ground the AI tools these support systems use. This means AI tools like chatbots, copilots, and search can provide accurate and reliable answers to customers and support teams. All of the AI use cases that leverage knowledge can now use this external knowledge to supercharge customer self-service and support team productivity. 

A general LLM or an AI-enabled UI or tool with incomplete product information will simply provide no answer, inaccurate answers, or may even "hallucinate."  This is an absolute non-starter for supporting customers.

<h2 id="question3">For technical writers implementing AI, how should we prepare our content to be most effective in an AI-powered knowledge system like Unified Knowledge? Are there best practices for structuring or tagging our documentation?</h2>

**Paul:** In general, the same best practices we've learned over time in our profession are even more important today. Content should have descriptive titles, should start with a brief short description of the main idea or goal of the topic or article, should be structured logically (regardless of whether you are using structured or unstructured content format…), should define jargon or acronyms, and use synonyms to improve retrieval for RAG mechanisms. Metadata is also important for better RAG retrieval, as well as to semantically augment the proper context of the article. 

To aid in effective chunking, the granularity of your topics shouldn't be so large that you increase the chances of the AI loader splitting the topic randomly into separate chunks, which could skew the embeddings and the semantic meaning of the content. Also, the chunks shouldn't be so small that they don't contain a singular useful concept or procedure.

<h2 id="question4">Companies often have inconsistent or conflicting information across different sources and versions. How does Unified Knowledge handle these discrepancies when providing answers through AI interfaces?</h2>

**Paul:** Inconsistent or conflicting information across different sources is always going to be an issue. With Unified Knowledge and single-source analytics, knowledge management teams can finally wrap their arms around inconsistent information and work on improving governance. 

In addition, AI interfaces and tools leveraging Unified Knowledge give us a new tool in our arsenal to improve content consistency, accuracy, and availability: natural language, fully formed questions. We've all been trained to type keywords in a search box and get the answers we need, but with AI interfaces, popularized by ChatGPT and used by Zoomin GPT for example, we now see in our analytics all the fully formed questions customers ask. This is gold for technical communicators&mdash;like sitting with customers and watching over their shoulders as they attempt to use the products they document.

Keep in mind that Unified Knowledge itself does not provide answers to questions&mdash;it provides a unified and comprehensive corpus of relevant content for AI tools to ground on and those tools deliver the answers.

<h2 id="question5">Can you explain the process of integrating diverse content formats (XML, PDF, databases) into Unified Knowledge? How does this differ from traditional content management approaches?</h2>

**Paul:** With Unified Knowledge, it's very easy to integrate diverse content formats. Connect to the sources of content&mdash;such as Confluence, SharePoint, WordPress, Git, CCMS, Flare&mdash;map metadata if desired, and Zoomin processes and normalizes the content into a single consistent format. PDFs can be chunked and processed by Zoomin. We can also extract text embedded within images, to be AI-ready. 

<h2 id="question6">How does Unified Knowledge interface with AI engines like ChatGPT? What security measures are in place to protect a company's proprietary information?</h2>

**Paul:** Zoomin works with many companies that take the security and protection of their content very seriously. For example, we work with cybersecurity companies, semiconductor companies, and companies that work with governmental agencies. If a company is using Zoomin GPT in one of our user touchpoints like a documentation portal or in-product help, then we ensure that our customer's content is not provided for training any models like ChatGPT. The content is not stored or kept by the third party. 

If a company wants to use their own AI tools with Unified Knowledge, they can access their content through Zoomin APIs to power the AI interface. A company that leverages Zoomin APIs is responsible for selecting a configuration for AI interfaces that protects their content usage.

<h2 id="question7">For organizations with existing content management systems, what's involved in transitioning to or integrating with Unified Knowledge? Is there a need to restructure content, or can it work with existing formats?</h2>

**Paul:** Unified Knowledge can work with existing formats&mdash;no transition or integration is typically required. Customers can keep using the tools, systems, and processes they have in place today, business as usual.

<h2 id="question8">How does Unified Knowledge handle the constant updates in documentation and service tickets? Is there a continuous learning or reindexing process?</h2>

**Paul:** Unified Knowledge reindexes and synchronizes content from source systems multiple times per day so the most up-to-date content is always available.

{% include ads.html %}

<h2 id="question9">Can you explain the concepts of "grounding" and "fine-tuning" in the context of Unified Knowledge? Who is responsible for these processes?</h2>

**Paul:** *Grounding* ensures that AI-generated answers are based on content or information that is relevant subject matter and questions that will be asked. Without grounding AI, AI will use the language model and information it has been trained on to answer the user's question. This will result in "hallucinations" or answers that aren't relevant. By grounding AI in your product knowledge, you can expect few or no hallucinations. 

*Fine tuning* is the process of using a smaller data set to further train a generic language model on specific requirements or subject matters. Grounding is the responsibility of either the head of knowledge in an organization or potentially the AI leader&mdash;ensuring any AI tool being used in the organization, homegrown or third-party, has access to all relevant knowledge. Fine tuning of weighting should probably be owned by the AI experts in the organization, and validated by the SMEs in the business.

<h2 id="question10">How are companies measuring the effectiveness of AI-powered service agents using Unified Knowledge compared to traditional methods? What metrics are most important?</h2>

**Paul:** First, contact resolution is a great measure of the effectiveness of an AI-powered service agent. This tells us if the content retrieved by search and the answer generated by AI was accurate and comprehensive enough to answer the question. Of course, this is really only relevant for less complex support cases or products, where multiple interactions are often required to troubleshoot an issue. Usually, support teams want to avoid the unnecessary Tier 1 simple cases that could have been resolved with documentation or knowledge, so FCR (first-contact resolution) as a measure makes sense. 

Average handling time or average hold time also indicates the efficacy of AI-enabled support teams. We've seen service reply time reduced from 15 minutes all the way down to 1 minute in some cases with the combination of Unified Knowledge and Einstein AI for example. No more searching, and no more summarizing and formulating answers!

<h2 id="question11">Looking ahead, how do you see AI-powered knowledge systems evolving? What should technical writing teams be preparing for?</h2>

**Paul:** Technical writing teams often create content in a linear, logical method, with the goal of answering any question a user may have, and fully detailing all of the ways to use a feature or capability. As long as all of a product is fully documented, you're already in good shape. 

If you think back to the days before Google, we used web directories, which were links to URLs that were curated by humans. This is a lot like the documentation portals and knowledge bases that we provide to users today (with the difference being that technical communicators are creating the content in-house).

Then, Google came out with a search-box-focused, nearly blank white page where the search was so powerful and predictive that humans no longer needed to curate and organize lists of content. 

Now, ChatGPT, Gemini, Perplexity, and others start with the premise that you ask a question or give a command. From here, you're given an answer and in some cases, an automatically generated list of resources. You can refine the search with a different prompt or ask a follow-up question. The documentation portal or knowledge base may likely move in this direction&mdash;a simple, clean page focused on search, with a conversational chat experience that helps you with your task. 

Within software products, a copilot can answer your questions and users may no longer go to a documentation or support site outside of the product to find answers to their questions. AI-based copilots can also track and leverage the most common questions asked for each feature and automatically suggest those questions and answers to users, further removing the need for human curation.

Users who prefer the traditional way of traversing through content can use "classic" mode, and even classic mode can be enhanced by AI solutions (automatically and dynamically determining content promotion, for example).

<h2 id="question12">For technical writers new to AI implementation: What are the first steps you'd recommend for a team looking to leverage AI in their documentation and support processes?</h2>

**Paul:** There is a misconception that content needs to be organized, curated, or cleansed before leveraging AI. A great first step is to unify your content sources so you can get unified analytics. Experiment with GPT in your docs portal or support site to get customers to start asking questions in natural language. 

If your company is concerned about using GPT with your content for public consumption, find a way to release it to internal staff leveraging your unified knowledge. Once you have unified analytics and users are asking fully-formed questions, you can start to measure your coverage ratio and accuracy. *Coverage ratio* is the percentage of the queries that GPT was able to answer. *Accuracy* is tracked with the user's feedback entry. Grounding AI in your full corpus of relevant knowledge is key&mdash;and more important than tagging, chunking, structuring, or standardizing.

<hr/>

To learn more about Unified Knowledge and get a personalized demo, visit [The future of generative AI starts with
Unified Knowledge](https://www.zoominsoftware.com/unified-knowledge).

## About Paul Maass, VP Global Account Management, Zoomin {:#paul-maass}

<figure style="float: left; margin-right: 15px; margin-top: -2px; max-width: 200px;"><a class="noCrossRef" href="https://www.zoominsoftware.com/unified-knowledge"><img src="{{site.media}}/paul_maas.jpg" alt="Paul Maas" /></a></figure>

Since joining Zoomin in 2020, Paul Maass has worked with the world's leading organizations on self-service initiatives and methods to better leverage knowledge. He has helped companies leverage the full corpus of product information created by organizations to delight customers, empower them to self-serve, and reduce unnecessary support costs. Prior to his time at Zoomin, he spent time as Head of Sales and Account Management in organizations focused on content personalization and content delivery on mobile devices for customers on the go.