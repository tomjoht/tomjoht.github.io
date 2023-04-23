---
layout: post
title: "Markprompt Q&A with Michael Fester"
permalink: /blog/markprompt-questions-and-answers
date: 2023-04-23
categories:
- technical-writing
- AI
keywords: 
rebrandly: https://idbwrtng.com/markprompt-questions-and-answers
description: "After exploring <a href='https://markprompt.com'>Markprompt</a> a bit, I had a few questions, mostly around how to optimize content for ingestion. I asked the co-founder <a href='https://www.linkedin.com/in/michaelfester'>Michael Fester</a> if he’d be up for a Q&A post, and he agreed. The exchange is below."
---

## Background and overview

Before jumping into the Q&A details, let me provide some background on [Markprompt](https://markprompt.com/). As I mentioned in a previous post, Markprompt builds a GPT-4 prompt based on a specific set of docs. For example, after providing a GitHub repo URL or a folder of Markdown or HTML documents, Markprompt trains its AI on the content and then builds an interactive GPT-chat based on it. Unlike other AI chats, Markprompt sticks with the sources you trained it on. You can publish the prompt either as a React component or as a web component (the latter just involves using some JS, CSS, and HTML).

I explored Markprompt a bit and made a quick implementation on my [API doc site](/learnapidoc/), adding a GPT Chat button. I realized that I had a ton of questions and decided to reach out to Michael to ask my questions. Our Q&A exchange covers everything from the history of Markprompt, strategies for links, analytics, page sizes, documentation trends with chat integration, preventing hallucination, structure and semantics, Markdown formatting, product roadmaps, token costs, facets of interaction, synonyms, templates, branding, privacy, React, content updates, user feedback on responses, expanding beyond embedded content, and more. 

If you’re looking to move toward integrating GPT-style chat into your docs, especially with Markprompt, this post might help clarify a lot of detail.

## Q&A

**[Tom] Can you tell us briefly what <a href="https://markprompt.com">Markprompt</a> is and who your target audience is? Is the Q&A bot something you plan to market to companies with documentation and support centers?**

[Michael] Markprompt is three things:

- A set of API endpoints that allow you to train your content and create a prompt to ask questions to it, for instance for a docs site.

- A web dashboard that makes it easy to do the above. The dashboard also allows you to connect multiple sources (like a GitHub repo), manage access keys, and visualize stats on how users interact with your content.

- A set of UI components (currently React and Web Component) that make it easy to integrate a prompt on your existing site.

Markprompt is also open source: [https://github.com/motifland/markprompt](https://github.com/motifland/markprompt). It is built on top of Supabase vector storage and Vercel edge functions for high performance and scalability.

Our target audience is docs and support teams, and our mission is to bring AI-assisted tools into the content writing and publishing process. The Q&A bot is the first such tool. We are working on tools such as generating new facets of your docs (e.g. three versions of your docs for three different audiences), harmonizing language and tone, testing against a code base, and internationalization. We also work on human-in-the-loop tools for adding new pieces of content.

<hr/>

**[Tom] How long has Markprompt been around, and what’s your role in the company? What was the Markprompt team doing before the AI eruption timeline?**

[Michael] Markprompt was released end of March this year. I co-founded Markprompt with my partner, Marie Schneegans. Previously, I co-founded [snips.ai](https://snips.ai), a privacy-focused voice AI platform that got acquired by Sonos. I then went on and co-founded [motif.land](https://motif.land), a collaborative docs platform for Markdown, MDX and Markdoc. We have been onboarding companies with large docs projects such as AngelList and Cal.com, and they added Markprompt as a complement to their regular search. It was such a success that we decided to release it as a standalone platform and open source it, so that everyone can benefit from it and build on top of it.

<hr/>

**[Tom] The Markprompt docs say “When you upload your files, Markprompt will split them into sections. A section is delimited by headings (#, ##, ... in Markdown, &lt;h1>, &lt;h2>, ... in HTML).” There’s a bit of debate on a tech writing slack channel about how long topics should be in documentation for optimal AI consumption. Would shorter or longer topics work better in training the AI models? If there are short topics, how does the AI understand the context? For example, consider these 5 sections:**

**Creating widgets** <br/>
**Deleting widgets** <br/>
**Authorizing widgets** <br/>
**Repurposing widgets** <br/>
**Designing widgets** 

**Suppose each section is about 500 words. Is it better to split these sections into separate pages, or to have one “Managing widgets” page with each of these as subheadings? With the former approach (separate, smaller pages) how would the AI know that all the topics belong in the same collection?**

[Michael] In Markprompt, we don't differentiate between pages, only sections, so the file structure does not impact the result. The way the content is broken down within a page also shouldn't matter much, as long as it contains sufficient information: each section gets an embedding, which is a way to capture the "meaning" of the content. When a user asks a question, that question is also turned into an embedding, and we do a similarity search to bring up the list of sections that are most closely related in meaning to the question (we stop at 10, and cut off the sections too far away in meaning). Then we build a new prompt with these sections injected and ask the model to reason on that content specifically.

Now that GPT-4 can ingest much larger text corpora, we could potentially inject an entire docs repo at each query. That's costly though, and it’s not yet clear whether the results will be better.

We have not had many reports of missing answers or hallucinations. It seems to "just work." Moving forward, the real challenge will be to make sure the source content is up to date and contains all the information needed to answer the users' questions, which is why we are building analytics and reporting tools as part of Markprompt.

<hr/>

**[Tom] How are you thinking about links? Would Markprompt prefer absolute links, relative links, or does it not matter? If you split apart topics at the headings, does this complicate linking?**

[Michael] Absolute links are always preferable since they can be used verbatim. Relative (and anchor) links need to be transformed into absolute links since they can show up in a prompt response anywhere on the site. Another challenge is that, in a prompt response, a single sentence can be constructed from different source files. For instance, the following sentence:

```
For projects, refer to the [Projects tutorial](index.md), and for spaces, refer to the [Spaces tutorial](tutorial/spaces).
```

could be made up from two distinct sources, like

```
To get started on a project, explore the [Projects tutorial](index.md).
```

in a file named `projects.md`, and

```
To create a new space, follow the steps in the [Spaces tutorial](spaces/tutorial.md).
```

in a file named `spaces.md`.

It's a non-trivial problem. We came up with a solution using prompt engineering, as opposed to more traditional software engineering, and actually wrote a blog post about it: [A "prompt engineered" solution to process Markdown](https://markprompt.com/blog/prompt-markdown).

<hr/>

**[Tom] Does Markprompt tap into intelligence that exists outside the material it was trained on? For example, if someone asks a question outside of the content Markprompt was trained on, can Markprompt leverage the intelligence from more general ChatGPT APIs?**

[Michael] By default, we specifically instruct the prompt to only show results with high confidence based on the available information. This is a solid way to prevent hallucinations (combined with low temperature) and seems like a reasonable approach when dealing with docs and support use cases. However, we do expose a [prompt template](https://markprompt.com/docs#templates) so that you can modify this behavior and let it look outside of the provided scope.

<hr/>

**[Tom] What's the limit of topics that Markprompt can ingest? My blog had about 3,500 pages, and I’d love to see an AI chat for it, as it might provide a mirror to myself. Doc sites can be much more extensive, with maybe 10,000 pages. (Think of the many cloud platforms out there.) How will you scale Markprompt to go bigger?**

[Michael] Currently, the limitations depend on the source. If you upload content via our REST API or via drag and drop, there are no limitations. GitHub has rate limits, which is why we opted for fetching the entire repo archive in a single call (instead of on a file-by-file basis, which limits you to 60 requests per hour). It's working fine for moderate-sized repo archives (&lt;100Mb), and we are working on supporting larger repos as well. We are also working on GitHub Actions, which is just the API way of doing it and has no limitations whatsoever.

<hr/>

**[Tom] What kind of analytics info can Markprompt provide? Are there PII issues surrounding this? Are you, as a company, looking at the Markprompt chat analytics and using it to uplevel your docs? How do you see that feedback/analytics workflow unfolding for companies and their tech comm and support groups?**

[Michael] Analytics is a work in progress. One of the reasons we open sourced Markprompt is to guarantee transparency on such topics. Our approach is to build in the open and to give companies the tools and APIs necessary to make great docs. We are an API-first solution and want to enable companies to build their own services on top of Markprompt. In the coming weeks, we will launch a suite of tools that work out of the box, starting with usage metrics and feedback mechanisms (e.g. flagging incorrect answers). We are also exploring topics such as providing insights on commonly asked questions based on anonymized data (for which, incidentally, GPT is of great help!).

We are not looking at analytics events on our side (except token usage required for billing), and don't plan to do so.

From the get-go, we've built the architecture to make it GDPR-compliant and easy to manage at scale. For instance, if you delete a file or a project, all associated data is purged from our servers. This will extend to analytics events when we launch this.

In terms of unfolding workflows, it's all very new and we learn every day. One interesting idea: when you want to add new content to your docs (e.g. based on an unanswered query, or a support email), instead of figuring out where in the current docs it fits in, could you just write a new section providing the missing information, and then pass it on to the embeddings index? Then, you would use that new "embeddings base" to generate revised docs, potentially publishing in different shapes and forms. In that way, content writing becomes a much more granular and iterative process involving end-users (almost like question-answering).

<hr/>

**[Tom] How unique is Markprompt in the AI landscape? For example, who are some of your competitors? It seems like many companies can create APIs for GPT to provide similar chats. What makes Markprompt unique? Are you training the data in a way that provides a better user experience than other tools?**

[Michael] Indeed, it's a very active space! We focus on enterprise-grade solutions and want to fit into developer workflows, which is why we have started off with GitHub + Markdown/MDX/Markdoc, and put a lot of effort in the design of the API and the headless components. The Q&A bot is just a first step. Our ambition is to fundamentally rethink the content creation process, as hinted at in the previous section, and become an AI-native content platform. We are particularly interested in the human-in-the-loop parts, of which we have accumulated experience while building Motif.

<hr/>

**[Tom] Why is it that the documentation for so many of these AI tools seems slow to incorporate a chat within their own documentation? For example, why doesn’t [ChatGPT’s documentation](https://platform.openai.com/docs/introduction) offer a chat? Isn’t this one of the hallmarks of their product?**

[Michael] It’ll be there soon, I’m sure.

<hr/>

**[Tom] How do you avoid the fabrication/hallucination effect with the Markprompt AI?**

[Michael] In two ways: first, we instruct the prompt to specifically look for information in the provided context, and if unsure, to say "I don't know". Second, we use a low temperature (0.1), ensuring it doesn't get too creative.

<hr/>

**[Tom] DITA is an XML schema used by many enterprise companies with large amounts of documentation and re-use scenarios. Would Markprompt ever train on the raw XML, consuming the semantics there? Or would you always just require conversion to HTML before AI consumption? (BTW, what’s the right term for “AI consumption of content that it gets trained on”?)**

[Michael] We currently use Markdown as the common denominator for content (HTML, Markdoc, MDX are all converted into Markdown before training). DITA can be converted into Markdown as well, but we have not tested the approach yet. We do plan to support all major industry formats (and welcome contributions to our GitHub repo!). Right now, however, we need to stay focused, Markdown docs already is a large audience!

<hr/>

**[Tom] Suppose a topic has a lot of metadata about the version, operating system, language, or other details. Also suppose that this metadata appears either within yaml frontmatter (for Markdown files) or within the meta head section (for HTML files). Does Markprompt consume those semantics? If the metadata indicates that a topic applies to “version 2.3,” will the chat be smart enough to use all version 2.3 topics when queries indicate that version?**

[Michael] Yes, the frontmatter is parsed and stored in the file's metadata, separately from the main content (not HTML meta tags yet). And yes, this will enable the chat to provide an answer that incorporates the metadata information.

{% include ads.html %}

<hr/>

**[Tom] In the chat’s response, it uses markdown formatting as it types and users can see the formatting get applied in real time. Just curious, what is the point of showing the formatting render in real time? Why would a user want to see **Some text … then when finished see Some text?**

[Michael] Currently, the response is streamed one token at a time, so we start by seeing `**Some text`, which in fact is valid Markdown, and there is no way, at this point in time, to know whether it's ever going to close the formatting tag, turning it into boldened text, so we display it as such. We will come up with ways to mitigate this.

<hr/>

**[Tom] How do you plan to handle the constant updates to documentation content? Suppose a tech writer sees that people are asking X question, so the writer creates a new section in the docs to answer that question. How would the writer push the X update so that Markprompt could know X, without retraining the entire set of content? I assume the retraining of an entire doc set is time consuming and costly.**

[Michael] It depends on the source. If it's pushed to a GitHub repo, a GitHub Action will do. For other sources, like Readme and Zendesk, we will release webhooks. The retraining is fast: we’re comparing checksums to ensure only updated content gets re-trained.

<hr/>

**[Tom] In the responses from Markprompt, some text is articulated by the AI and some is verbatim from the source. How does this mix and match work?**

[Michael] That is not something we specifically engineer, but rather a behavior of the language model. It varies depending on the model you use (GPT-4 will typically create more custom, and longer answers than GPT-3.5). It is also something that is heavily influenced by the prompt. If you play with the prompt template, you can tweak it for instance to use special language and tone. You can even ask it to generate the answer in another language.

<hr/>

**[Tom] What’s on your roadmap for upcoming Markprompt features?**

[Michael] 
* Ingesting more data sources, like PDFs, GitHub Issues, Zendesk, Notion, and Google Docs.
* Analytics and insights
* Team management
* Human-in-the-loop tools, for editing and creating new content
* Apps: create new content and workflows based on your indexed content/embeddings (e.g. multiple versions of your docs for different audiences, translations, CI, language/tone harmonization, etc.)

<hr/>

**[Tom] How big of an expense should documentation groups anticipate to integrate a modern AI chat into documentation + analytics for a doc site consisting of 1,000 pages? I see the pricing is broken down by “tokens,” and with ChatGPT, a token corresponds to the amount of text in the input and in the response. But it’s hard to gauge how many tokens get expended in a typical chat session. Suppose the question is the size of a tweet (140 characters) and the response is 2-3 paragraphs (about 500 characters). How many tokens would that be? How much does that single question and response cost companies?**

[Michael] Training a docs site is cheap (embeddings are cheap to produce), and the cost really is on the completions side–in terms of tokens, but also in terms of storage/retrieval/clock cycles used for embeddings retrieval, and for streaming the response from a server. A typical request consumes 1k-2k tokens, but this also varies if you add more content to your prompt. Putting aside all other costs, a completions request to GPT-3.5 would cost between $0.002 and $0.003. GPT-4 is much more expensive. But of course, these prices will go down over time.

<hr/>

**[Tom] Do you think chat interfaces will become a major way that users will interface with documentation, perhaps as a first-level type engagement? By first-level type engagement, I mean an initial scenario where the user doesn’t even know the right terms to phrase his or her question? You indicated earlier that you see AI chat as another facet through which users can interact with docs. Why wouldn’t chat become the primary, preferred facet?**

[Michael] It certainly shows great potential. But this is all very new, and I think we shouldn't limit our imagination to what we see today. There are plenty of interaction paradigms to discover, or to revisit, given that we now have such a powerful new tool at our disposal. Entering a question in natural language is also a costly process. Scrolling down a page to grab a code snippet is fast and efficient, and works well if the docs are well-designed. 

For instance, I often find myself going to the [beautiful color grid on the Tailwind CSS site](https://tailwindcss.com/docs/customizing-colors) to grab a color. It's information-dense, inspiring, and leaves room for exploration. I don't see how a chat interface would be a material improvement here, if an improvement at all. So I don't want to dismiss classical interactions too quickly. I think we should keep an open mindset, and not rush to "everything becomes a chat". 

I could very well imagine sites becoming generally more dynamic and tailor-made to different audiences (a hard problem today!). For instance, if I visit the Stripe docs site, I could see myself saying "I am building a photo-generation app in Swift with a Ruby backend, with a pricing based on number of generated photos, in three tiers. Show me a beginner’s version of the docs guiding me through the steps to implement payments", and it would build a docs site just for this, discarding unneeded information. This is not a Q&A-type interaction, but is produced essentially in the same way as a chat response.

<hr/>

**[Tom] How does an AI deal with synonyms? For example, if the docs use the term “gizmo” but the user asks about “widgets,” will the AI be able to bridge the two? How? Are glossaries important in teaching an AI about the source content’s terms, language, and synonyms? Will docs that contain glossaries have better AI experiences?**

[Michael] I would recommend you try for yourself in the GPT-4 playground because it is quite remarkable. Language models, by design, are able to detect similar concepts, regardless of specific phrasings, including when synonyms are used, because they represent the same concepts. If you send the following prompt:

```
Here are some relevant sections from our docs:

---
The gizmo can be installed in the dashboard.
---

Based on this content, answer the following question: "Where can I install the widget?"
```

The answer will be:

```
You can install the widget in the dashboard.
```

So when it comes to general terms, languages, and synonyms, all these LLMs already have more than enough training data, and you don't need to supply any more of it. On the other hand, these models are also very capable of learning new concepts. So if you have a specific glossary that is not generally available, you can just instruct the prompt to use these rules. This is why we introduced templates, so that you can provide these instructions. Here is an example:

```
In Acme, we use the following terms interchangeably:

- catens, icharper
- specons, ograms
- repi, speedot

Here are some relevant sections from our docs:

---
The ograms can be installed in the dashboard, and the speedot can be activated in the system settings.
---

Based on this content, answer the following two questions: "Where can I install the specons? how about the repi?"
```

To which GPT-4 will answer:

```
You can install the specons (ograms) in the dashboard. The repi (speedot) can be activated in the system settings.
```

<hr/>

**[Tom] Many enterprise companies have strict security policies that prevent doc groups from using cloud solutions in which documentation content leaves the companies servers, even if it’s not stored elsewhere. For example, Grammarly isn’t usually allowed by enterprise companies because it leverages cloud APIs to analyze/transform content. How will Markprompt work with these security-conscious organizations? Is there an on-premise version?**

[Michael] That is why we open sourced Markprompt. Anyone can deploy Markprompt to their own premises. We also offer professional services to help set it up.

<hr/>

**[Tom] The [templates section](https://markprompt.com/docs#templates) in your docs offers a way to brand the AI with a company’s specific tone and brand. Is this one way that Markprompt chats will differ from the more general online chats? Are there any examples of a branded chat that you can share? Suppose I want to incorporate a “fun” filter on the chat, so that it talks like a pirate. Could I do that? How about choosing an Australian dialect?**

[Michael] That is trivially possible using a template (we give an example of how to do it for Japanese). In your case, just change the last line to "Please respond in pirate language, using an Australian dialect".

The response to the previous question becomes:

```
Oi matey, ye can install them specons in the dashboard, arr! As fer the repi, give it a go in the system settings, ya scallywag!
```

<hr/>

**[Tom] Markprompt offers a React integration. Given the popularity of React, would you recommend that if companies are looking at various static site generators and thinking about their doc platforms, that they consider a React-based site? How much better is the React component experience than the web component experience?**

[Michael] They are both being developed as we speak and with feature parity in mind. We also plan to support Vue components.

And yes, React is a powerful solution for docs, especially with formats like Markdoc (developed by Stripe) and MDX that make it easy to embed custom components like interactive code samples and API specs.

<hr/>

**[Tom] In the chat UI, I want users to be able to give a thumbs up or down about the response. Thumbs down would mean the tech writer would need to adjust the response for that particular question. Is that kind of granular adjustment possible? Can you train the AI to respond in specific ways to particular questions?**

[Michael] We haven't added the feedback part yet, but it's coming. The idea is indeed that this info gets back to the content writers to improve the docs. And with prompt engineering, there are definitely ways to instruct the prompt to respond in specific ways depending on the question. Here is an example:

```
Here are some relevant sections from our docs:

---
The widget can be installed in the dashboard.
---

Based on this content, answer the following question: "I'm desperate, where do I install the widget???"

Importantly, if the question is written in a stressed or negative tone, reply in a professional and reassuring tone, and do not use exclamation marks (!). If the question is written in a lighthearted or humorous tone, reply in a fun way and finish the response with a joke.
```

To which it replies:

```
Don't worry, you can easily install the widget in the dashboard. Rest assured, it's a simple process and you'll have it up and running in no time.
```

If the question is "Hey mate, this is super cool! How do I install that widget? :)", the reply will be:

```
Hey there! I'm glad you're excited about the widget! To install it, simply head over to your dashboard and follow the installation instructions. Piece of cake, right? 😄 And remember, if you ever feel lost, just imagine the widget as a puzzle piece, and your dashboard as the puzzle board - they'll fit perfectly together! Enjoy!
```

What I love is that content writers will be part of this process, without needing to code anything. Essentially what is happening here is that we can start “programming behavior.” Markprompt’s goal is to make it easy to build such “programs” on top of your content.

<hr/>

**[Tom] In using Markprompt’s chat, I asked a few questions about React because I’m a beginner with React and don’t know a lot of what the Markprompt documentation expects me to know. For these scenarios, perhaps a more general chat would help address my React questions. How does Markprompt react in areas where the source documentation is lacking? (For example, What is React? What are its dependencies?) Tech writers obviously have to pick a starting point for a user’s technical level, but what if that starting point isn’t low enough for the user’s needs? How can general training data help fill in those gaps?**

[Michael] That's a good point. Indeed, the Markprompt docs' prompt is only trained on the content of our docs, but since we use React, we could indeed extend the scope. We recently added the ability to connect multiple data sources to a project, so it will basically be a one-click step for us to add the React docs repo to the prompt, and then you'll have your React answers right away!