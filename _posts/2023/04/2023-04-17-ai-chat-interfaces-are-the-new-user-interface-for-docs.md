---
title: "AI chat interfaces could become the primary user interface to read documentation"
date: 2023-04-17
permalink: /blog/ai-chat-interfaces-are-the-new-user-interface-for-docs
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/ai-chat-interfaces-are-the-new-user-interface-for-docs
description: "AI topics have saturated online posts <i>ad nauseam</i>, and I wouldn’t add yet another post to the endless list of speculative theorizing unless I believed I had a genuine light bulb moment. In this post, here's what I argue:<p>&ndash;AI chat interfaces could become the primary user interface that people use to read documentation, not documentation websites themselves.<br/>&ndash;AI chats will enable novices to tackle more advanced tasks, leading to an explosion of technical innovation.<br/>&ndash;Documentation will provide the information source that AI chat engines need to respond to queries.<br/>&ndash;Both tech writers and machines will write the information source.</p>"
---

* TOC
{:toc}

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/docwebsitetochatinterface.png" alt="AI chat becomes the new interface for reading docs" />

## My moment of epiphany

Last week I tried to write a shell script to handle a documentation generation and publishing workflow. I have a limited understanding of shell scripts and so relied on AI chat to help me with some basic concepts. My chat proceeded like this:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/shellscriptchat1.png" alt="Asking AI questions about shell scripts" />

And more basic questions: 

<a href="https://phind.com"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/shellscriptchat2.png" alt="Asking AI questions about shell scripts" />

Instead of looking for an answer on Stack Overflow, I asked ChatGPT, and it provided a decent answer. When the code didn’t work or I needed some adjustment, I told the chat. Each time it responded just like I had a real, live developer friend on a message chat, ready to answer my questions.

What’s cool is that ChatGPT maintained the conversation thread, so it remembered my previous questions and could build on responses. For example, if something didn’t work, I told it and the AI explained why my approach might not work, either providing an alternative or listing steps to troubleshoot. Sometimes I needed to adjust the code it gave me (like a regex pattern or some syntax fix for variable substitution) and it did. In sum, you aren’t just limited to a single response with AI chat but can talk to it continuously, as with a human. It was a conversation thread, not a single response.

Through chat, I learned exactly the principles and syntax I needed to complete the task. Before I started writing the shell script, I tried reading a general user guide on shell scripting. However, even after 20 pages of reading, I learned nothing about how to code the scenarios I needed.

My experience writing this shell script led me to consider two ideas:

* AI chat could be the new documentation user interface
* AI chats will enable novices to do more advanced tasks

Let’s explore both ideas in detail.

## AI chats could become the new documentation user interface

By user interface, I mean the documentation web page and platform the user interacts with. For example, right now, you’re reading my website for this information. But imagine if an AI chat interface delivered similar ideas and information&mdash;if so, the AI chat would be the interface for the information.

To illustrate, copy the URL in the address bar and ask Bard to summarize this article. It will return a few paragraphs summarizing the ideas. In this case, the AI chat becomes the interface for the information. That’s the gist of my point, except the AI is smart enough to synthesize and learn from thousands of sources to get the information.

<a href="https://google.com/bard"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/bardsummarizeme.png" alt="AI summarizing the information and thus becoming the interface for consuming the documentation" /></a>

This idea of chat becoming the primary user interface for documentation is profound. It means that there's less emphasis on having a cool, professional site for your docs. You could probably discard minimalism or worries about information architecture flow and user experience. Discard all those high-end graphics too. What does documentation become? The source that powers the AI chat interface. As such, documentation must be written for machine consumption. What matters isn’t so much the UX of your doc site, but the UX of the AI chat based on the information it consumed from your documentation.

## AI chats will enable novices to do more advanced tasks

My second realization is that novices like me will tackle more complex projects. Previously, I limited my shell scripting to simple scenarios, but now I’m eager to tackle other challenges. I’m learning the basic patterns and processes that ChatGPT is teaching me. In fact, I’m hungry to see what else I can do with shell scripting and docs. 

For example, could I write a script to check for broken links and broken formatting? Could I create automatically generated boilerplate templates? Could I construct a notifier workflow for doc updates? I suddenly have more DIY confidence. This afternoon I decided to automate the creation of new files and URL shortener links&mdash; see the result: [A script that creates a new Jekyll post and populates it with YAML frontmatter, and also makes a curl call to add a Rebrandly shortlink.](/blog/create-script-to-auto-create-new-post-jekyll)

Imagine all the people who are tech-savvy but not programmers. Will they start tackling coding projects, writing apps, developing websites, and embarking on other projects they never thought were possible? If so, we’re about to enter an explosion of technical growth. That explosion of growth will lead to a fast-paced timeline of new tech emerging. Innovation will emerge from every nook and cranny of the world, by teams and companies that previously lacked the training to pull these coding feats off but are now doing it.

## Documentation will be the information source provided to AI chat

Even though AI chat interfaces could usurp documentation sites as the new user interface, AI chat is dumb without information input. AI needs to consume large amounts of documentation to provide intelligent delivery. To illustrate, think of a private project at your work (something not on GitHub or the Internet) and ask an AI chat for details about it. Most likely the AI will try to predict the most likely components based on the project name, but the response will be gibberish or obviously wrong. AI will become crippled if it is not trained on comprehensive, accurate documentation.

For popular tools that already have countless tutorials and documentation online, the AI tools already have their information source. But for firewalled projects, and for projects not yet documented (which is what most tech writers work on), AI will still need documentation. The more documentation a company can produce, the better AI will be. And the better the AI, the more likely users will use your product and succeed with it. This only suggests that documentation will play a greater role in the future. AI won’t suddenly write your documentation out of thin air, without any training on large amounts of the documentation already written. Someone will still need to create it.

### Example from using Phind.com

I observed this point about AI needing sources while using [Phind.com](https://phind.com), a new GPT-powered search for developers. The right sidebar shows the sources of the chat’s responses. This makes it clear that the AI isn’t just writing out of thin air but learning from sources. Remove those sources, and the AI becomes dumb.

<a href="https://phind.com"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/phindscreenshotsources.png" alt="Phind screenshot showing sources that contribute to the AI response" /></a>

Why not go to the original sources first? For the most part, through the chat interface, users can get the specific information they need, asking questions and receiving answers. They won’t have to slog through an extensive site page by page looking for answers. Who wouldn’t prefer the more immediate experience?

## Both tech writers and machines will write the information source

Technical writers will still write documentation, though they will leverage AI to make tasks more efficient. Perhaps they’ll feed AI tools a large folder of documents (product plans, engineering designs, proposals, support logs, etc.) and maybe an AI companion will generate draft docs from that source. But I’m guessing that tech writers will still drive much of the original documentation, following practices recognizable from today’s practices.

This realization helps put my future career as a tech writer at ease. It could be that engineers and other IT people take charge of the doc process, relying on AI's linguistic prowess to generate drafts of documentation that they steer through advanced prompt engineering. But if so, this might simply be how the technical writer’s role evolves rather than gets displaced.

### Parallels to crowdsourcing

To illustrate my point about how AI chatbots will still need information sources, think back to when wikis emerged and crowdsourcing took the spotlight as the _next big thing_. When crowdsourcing took off, most tech writers started squirming nervously in their socks because company leaders wondered if they still needed tech writers. Maybe companies just had to build a wiki and allow the crowd to write small bits and pieces of documentation, which would add up to a robust, Wikipedia-like output.

Well, except for rare anomalies, wikis and crowdsourcing didn’t work. Mainly, the problem was that most outside contributors, even if willing, didn’t have the information needed to write the company’s documentation. This was especially true for products that hadn't been released and which the outside contributors had almost no knowledge about. The information to write documentation comes only from operating on the inside, drawing upon the myriad human resources and internal documents to pull, synthesize, and organize the information. 

Plus, very few outside contributors wanted to write documents to benefit for-profit companies, giving them free labor and effort. (In the same way, you don’t see non-employees weeding corporate flower beds and picking up trash on corporate lawns.) In my experience, the most common feedback on wikis is to correct broken links or typos.

AI has similar trends. At first, company execs might think _OMG I’ll just have ChatGPT write my docs!_ Then they realize that someone needs to actually write documentation that can be fed to AI models to train them. Who will write those docs? The crowd? Well, if the crowd isn't currently writing your docs, the crowd won't suddenly start writing your docs to train the AIs. So we’re back to using tech writers (or someone similar) to create docs.

{% include ads.html %}

## Technical writers will write primarily for AI consumption

Finally, technical writers will write with AI tools in mind, aka machines.With AI as the target audience, technical writers will need to optimize content for machine ingestion and processing. The idea of a human using the documentation output directly via a documentation website could become a secondary use case, one  that users turn to only when the AI chat fails.

How do you write your documentation to be consumed by an AI? While I’m not an expert, and many are still scratching their heads about how AI chats work, the responses from Phind, ChatGPT, and Bard suggest that the same principles of writing good documentation for end users might apply to writing for AI too. (Sorry for the lack of more authoritative research here&mdash;this is an area I plan to research more.) For now, I'll speculate on a few best practices and the reasons for them. Here are 10 principles for writing for AI consumption.

### 10 principles for writing for AI

#### 1. Headings and subheadings galore

Chunk information into headings and subheadings to keep the information clear and identifiable. Subheadings help keep the writing focused and on point. The semantic tagging of headings with h1, h2, h3, h4 tags elevates the hierarchy and importance of the content, signaling to AI that this content is a high-level description of the section. Headings serve as a quick summary of what the information follows, thus reinforcing the summary of the content that it might spin up. 

#### 2. Semantic tags

Similar to heading tags, AI can infer information from semantic tagging. Is the information set off as a note, a blockquote, a code sample, a variable, a section, or something else? Better yet, does the information conform to the OpenAPI specification? Machines operate well when information conforms to specifications. This is why almost every CCMS is XML-based&mdash;because semantically tagged content you can manipulate programmatically.

I won't debate which semantic tags are the most relevant. DITA? Microformats? HTML5? Custom XML tags? Probably all of them. Then again, ChatGPT seems pretty smart just learning from random Stack Overflow threads and GitHub projects, which lack formal structure. 

#### 3. Code samples

Code samples are also a way AI can understand content, since code operates according to programming language rules. AI can infer the inner workings of a system by analyzing the meaning and syntax of the code. 

#### 4. Fewer images

Images might be an anti-pattern for AI consumption and processing. If you’ve ever checked an image (a binary file) in Git and looked at a diff, you’ll see the gibberish-like code behind that image. Machines don’t process this code well, so if the documentation is visually based, this could lead to less AI processing and understanding. If you use images, add detailed captions below them. Additionally, any graphics, including buttons, should have a text label that describes them.

#### 5. Longer pages with context and modularity

Having more fully developed pages with sufficient context and modularity will help AI tools better understand the coherence of information. By context and modularity, I mean the content should be able to stand on its own, without supporting content (aka “Every Page Is Page One'' content models). Docs that are sharded into a hundred different topics connected through a JS-driven sidebar to expand and collapse the topics in various folders will probably be harder for machines to read, since the sidebar code might be more visually oriented to end users than machine-friendly. With this fragmented model, AI tools would need a thread weaving together all the different topics. 

#### 6. Consistent terms

Consistent terms, especially matching the user’s query, are important in connecting the user’s query with the AI chat response. Although AI tools can likely interpret synonyms and make this connection, it’s better if the terms match. 

Terms also need to be consistent within the documentation itself. If writers start injecting synonyms for variety, this creates more cognitive overload for AI to interpret and connect the information. Consider this example.

>The `resize_image` function allows you to _resize_ the input image to a specified dimension.
>
> The `resize_image` function allows you to _scale_ the input image to a new size. 

What’s the difference between resizing and scaling? There could be a difference, or the writer might have chosen a synonym for variety. Although both sentences convey the same meaning, using consistent terms would be better.

#### 7. Cross-references

Cross-references can enable AI to make sense of similar information. Cross-references help build a better web of information to power relationships through a semantic connection. AIs work fundamentally by prediction, by associating the most likely way to fill in the blank. Cross-references help associate topics with each other, teaching AI tools that the information is related and similar, which then might lead to a collection of cross-referenced sources used for the response.

#### 8. Plain language

Sentence structures should be easy for AI to parse. This means avoiding long sentence structures or ambiguous constructions. Documentation that consists of clear, almost staccato-like sentences will probably be interpreted better, even if it’s not as eloquent. We might balk a string of short constructions, but the prime consideration in docs is always intelligibility. Plain language and short sentences are hallmarks of simplified language, and this will help AI parse the meaning of the documentation better.

#### 9. More documentation, not less

Previous trends toward minimalism, with the concern that too much documentation might overwhelm the user, might not be applicable. More detail, more documentation, and more information seem to lead to better AI experiences. Almost all AI training involves an extensive set of data (the large language model). With enough training, the AI can more intelligently respond to the variety of user queries.

#### 10. Glossaries

A comprehensive glossary can help AI explain confusing components. For example, if the AI says to “implement a recursive pattern,” but it doesn’t know what _recursive_ means in the context of the application, the AI’s responses will be limited or potentially wrong. A glossary could allow AI to break down confusing language and jargon for users. It could also help with synonyms.

## Conclusions

In this post I argued the following points:

* AI chat interfaces could become the primary user interface to read documentation, not documentation websites themselves
* ​​AI chats will enable novices to tackle more advanced tasks, leading to an explosion of technical innovation
* Documentation will provide the information source AI chat engines need to respond to queries
* Both tech writers and machines will write the information source

I concluded that tech writers will need to write for AI consumption more than direct human consumption. Then I listed 10 principles that might help AI tools consume and make sense of docs better: 

1. Headings and subheadings galore

2. Semantic tags

3. Code samples

4. Fewer images

5. Longer pages with context and modularity

6. Consistent terms

7. Cross-references

8. Concise, plain language

9. More documentation, not less

10. Glossaries

As I noted, I want to better understand how AIs consume content. This would help define how we approach writing documentation for a better AI chat outcome. Overall, the shift in writing for AI instead of humans signals a turning point in the history of technical writing and documentation. Instead of _user-centered_ content, perhaps a _machine-centered_ content paradigm is now appropriate?

