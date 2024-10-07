---
title: "[Podcast] GenAI and Document360: Conversation with Saravana Kumar"
permalink: /blog/genai-and-document360
date: 2024-10-06
categories:
- ai
- podcasts
keywords: 
rebrandly: https://idbwrtng.com/genai-and-document360
description: "This podcast explores GenAI in technical documentation scenarios, highlighting the AI features and capabilities provided in <a href='https://document360.com'>Document360</a>. I talk with <a href='https://www.linkedin.com/in/saravanamv'>Saravana Kumar</a>, CEO of Kovai.co, which makes <a href='https://document360.com'>Document360</a>, about how AI is changing search functionality and reducing support costs in knowledge bases. We discuss practical applications of AI for technical writers, including automated tagging, SEO optimization, glossary creation, and more. Saravana shares about AI agent workflows, conversational search experiences, automating screenshot captures, and much more."
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/genaianddocument360.mp3
podcast_file_size: 41.2
podcast_duration: "49:36"
podcast_length: 40628697
image: saravanathumb.jpg
---

*Note: This post was sponsored by Kovai.co.*

{% include audio.html %}

<iframe width="560" height="315" src="https://www.youtube.com/embed/hh4OjlIqA7o" title="Podcast: Task decomposition and tree diagrams" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

* TOC
{:toc}

## Topics covered

Here's a bullet list of topics covered in the transcript:

* Introduction to [Document360](https://document360.com) and its growth
* The impact of Gen AI on the documentation industry
* Document360's integration of AI into search functionality
* The use of RAG (Retrieval-Augmented Generation) in Document360's search
* Reduction of support costs through improved AI-powered search
* Analytics and feedback loops in documentation
* AI capabilities for tech writers in content creation
* Automatic tag recommendations and related article suggestions
* SEO optimization features in Document360
* Automated glossary maintenance
* Addressing the robotic tone in AI-generated content
* Dealing with AI hallucinations in content
* Examples of companies using Document360 (Midjourney, Airtable, Gong)
* The new conversational search feature in Document360
* Future plans for AI agents to assist technical writers
* AI-powered screenshot and how-to guide creation
* Saravana's use of AI in his role as CEO
* AI assistance in hiring processes
* Personal use of AI for language learning
* Document360's growth and success without investor funding
* The need for innovation in the documentation space
* The wide applicability of knowledge bases across industries

{% include ads.html %}

## Links

* [Document360](https://document360.com)
* [Kovai.co](https://www.kovai.co/)
* [Saravana Kumar (Linkedin)](https://www.linkedin.com/in/saravanamv/)
* [Midjourney's documentation](https://docs.midjourney.com/)

## Previous posts on Document360

* [How does Document360 handle challenges with API documentation?](/blog/document-360-review/)
* [The story behind Document360 -- podcast with founder Saravana Kumar](/blog/document-360-podcast-saravana-kumar-founder)
* [First look at Document360 -- an authoring/publishing tool that satisfies both KB and tech pubs needs](/blog/document360-hybrid-between-tech-docs-and-support-tools/)

## Transcript

Here's a transcript of the podcast. (This was cleaned up a bit by AI to make it more readable.)

**Tom Johnson:** All right, you're listening to another podcast from idratherbewriting.com. My name is Tom Johnson, and today I'm talking with Saravana Kumar, CEO of Document360. We're going to be discussing generative AI, or Gen AI, in the context of technical documentation. We'll look at how it benefits users as well as authors. Of course, we'll be bringing in Document360 and trying to get concrete about this. 

Saravana, we had a [podcast a few years back](https://idratherbewriting.com/blog/document-360-podcast-saravana-kumar-founder/#audio), and now we're having another one. You're still thriving as a company. In fact, you've grown a lot and expanded your software suite so much. Can you introduce yourself a little bit for people and maybe tell them about what you do at Document360?

**Saravana Kumar:** Sure. First of all, thank you very much, Tom, for having me on the show. I've been reading about your stuff for a very long time. To give you a brief about myself, my name is Saravana. I'm the founder of a company called Kovai.co, which is the umbrella company. Under the company, we have three different products. Two of them are more in the Microsoft ecosystem, and that's how the company got started. Document360 is our third product.

We started Document360 back in 2017-2018. It came out of pure accident, I would say. While writing documentation for our other two products, which are more in the enterprise space and require a lot of documentation&mdash;when you're dealing with customers like Boeing and IKEA, it's quite a complex product and requires extensive documentation&mdash;that's when I identified a gap in the market. 

On one side, the market was dominated by typical customer support products like Zendesk, Freshdesk, and ServiceNow. They have some kind of documentation module. On the other side, you have really complicated or legacy systems. I won't say legacy, but more complex, like component-based content management systems or headless CMS. People go to extreme lengths to have documentation for their product. That's when we saw something in the middle and started the company.

Today, it's been over six years now, and we've grown significantly with close to 1,500 customers worldwide. A lot of large companies and large public knowledge bases use our product. For example, Midjourney, which is relevant since we're going to talk about Gen AI today. Midjourney, the number one player in the generative image space, their documentation is powered by us. There are a lot of use cases around that. I think that's a quick background about the company and who I am. Thank you very much for having me on the show.

**Tom Johnson:** Yeah, it is cool that Midjourney's documentation uses Document360. My first introduction to Gen AI was with Midjourney. I was in Florida visiting my brother-in-law and my sister. They're super techie, and they introduced me to this. They said, "Tom, you've got to try drawing with AI." I was like, "What?" Ever since I started playing around with that, I was hooked all weekend when I was visiting and then just got very into it. 

This must be a very interesting time to be developing software tools during this major technical innovation or change with all the Gen AI stuff. You've certainly had to innovate and continue to keep pace with this rapidly changing landscape. Before we jump into Gen AI questions, tell me where you stand. Are you an enthusiast? Are you kind of skeptical? Are you somewhat in the middle? What's your general attitude towards Gen AI?

**Saravana Kumar:** I'll say I put myself more in the enthusiast category. If you look at it, when this Gen AI stuff started coming around 12-15 months ago, the whole industry shifted. Today, everybody just adds AI to whatever they're doing. Every website you go to says "AI-powered." Sometimes I feel like they're trying to put lipstick on it. Probably the product itself is not really suitable for anything to do with AI or Gen AI, but everybody claims they're an AI company or an AI-first company. 

But in our case, it's one of those products&mdash;and I'm not saying this just because I'm the founder of Document360&mdash;it's one of the products where it naturally fits into the transition of generative AI. Because today, every company realizes that for Gen AI to work properly, you need to sort out your underlying knowledge base and documentation. Everything needs to be in order. That's the shift that happened immediately.

Today, the reason for our growth is also contributed to some of these elements. I think we saw two phases which helped us in the growth. One, even COVID helped us because when remote working and people not coming to the office happened, people realized how important it is to have documentation. People didn't document things, and they're just jumping and finding a documentation product. That was the first wave. 

The second wave is this whole AI stuff. Everybody thinks, "Now having structured data and having something centralized is very important for any AI stuff to work on top of it." That's why I'm super enthusiastic. Even though I mentioned I have three products, the top priority for us is Document360 now. Over 60% of the company&mdash;close to 170 people&mdash;work in Document360 today, and I spend nearly 70% of my time on Document360. 

I'm super excited about the landscape, where we are, and where it will go. It's all super exciting for us. I keep seeing a lot of young startups coming into that space, but a lot of them, I feel, are like small features that should be part of a product like ours. They're trying to build a startup out of it. So that is all exciting. We are spinning up teams to address those kinds of new innovative ideas. 

We'll talk more about it, like how do we improve screenshots? Because screenshots are something that a technical writer does day in and day out. How can we innovate using those new Gen AI capabilities to make that one task 100x better and make life easier for technical writers? So, to answer your question, I'm really enthusiastic about the space and what's happening here.

**Tom Johnson:** I agree that documentation does seem to be the sweet spot for so much Gen AI. I mean, you're in a position from an author's point of view, right? When you're writing docs, you're constantly having to learn and figure out things that are complicated, and AI can really help unlock a lot of that mystery behind the content. But also from the user point of view, to get customized, tailored content can be really empowering. 

You mentioned that people now are realizing that in order to have a good AI experience, to have good quality content coming out of the AI, you need to have a foundation where it's all coherent, consistent, and managed. Yeah, I've seen that theme come up again and again. 

You also mentioned how everybody now is putting "AI-powered" on their tools, and it's sort of losing its appeal, right? That whole adjective, "AI-powered," if everything is AI-powered. So let's jump into more of the details here. Let's start with search because I know Document360 has pretty good search. Have you integrated Gen AI into the search experience? Can you talk a little bit about that?

**Saravana Kumar:** Absolutely. I think that is one critical feature where we can see the Gen AI stuff naturally fits into the product. Before the whole Gen AI shift, our search was comparable to today's Google or Bing search. People come and put some keywords, and then we list down a bunch of articles and say, "Hey, these are the articles where we found something relevant."

There was some level of intelligence in that search, like how Google works. It can understand your intent, and it doesn't need to be exactly a word-based match. It was giving more like a bunch of articles and saying, "This is what it is," and then leaving it up to the user to go figure out, read those articles, and find answers, whatever you can interpret out of those seven articles we found for your keyword.

But today, if you go and do the search on Document360, on any site powered by Document360, we call it the AI search. If you click that, you can ask a question. For example, there's a company called Gong, which is one of our customers, and they are into sales analytics. You can go and ask a question like, "What is an impromptu call?" Or you can say, "Hey, I'm having trouble connecting my Zoom to Gong. How do I do it?"

This time, what happens is it analyzes all the articles and gives you precisely the answer you're looking for that will solve the problem. At the bottom, we'll show you the seven references we used. Previously, we would have listed these and said, "Hey, these are the seven articles we referenced." Now, we derive this answer for you, and that gives you a precise answer.

We also now have citations. When there is context, we'll say, because a single sentence could have come from two different articles. That's the power of Gen AI&mdash;it could have stitched those two articles and put together a sentence, and we give a citation. This particular sentence came from articles one and two. Now you get a precise answer, and it really empowers the user much more. 

From a customer side, you can imagine how much this impacts two factors. One, it reduces your support tickets. Because if you don't answer the question correctly, the immediate next step would have been the customer sending an email to support@xyz.com, and then the whole chain of conversations around that thing. You've solved that problem. 

Second, the customer experience itself improves. Because today, the reality is nobody wants to write that email to support. You want the answer now. You're stuck with a problem now, and you want a solution straight away. That helps significantly to give the precise answer they want.

You can see why having a powerful knowledge base becomes so critical because these search and AI capabilities are sitting on top of your data. The quality of data you have put together underneath your knowledge base is what powers the answer. So all of them stitch together nicely, and that's what we are able to give to the customers now.

**Tom Johnson:** Yeah, I like that connection between the power of the search and reduced support costs. If you can find the answer, then you don't necessarily take that next step to initiating a support outreach. I want to know a little bit more about the search part. Is the logic all internal within Document360, or is it making a call to an external API, like a ChatGPT API? Does the information go out somewhere else and come back, or does it all stay within Document360 servers and infrastructure?

**Saravana Kumar:** Sure. Technically, the way it works at the moment is our backend data is all stored in MongoDB. MongoDB is our data provider. We use the cloud version of MongoDB, and it's scalable. MongoDB has something called vector search. We use the vector search, which is kind of our RAG (Retrieval-Augmented Generation) engine. That's what helps the RAG part of our system. Then we use OpenAI as our AI provider. 

So all these three things are stitched together. We provide the context of the whole document store to OpenAI so that OpenAI can give you the answers based on that. It's a combination of the embeddings that come out of vector search from MongoDB, and then we use OpenAI to give the answers back.

We have some level of privacy boundaries so that we protect the customer because we are a multi-tenant solution, and we have a lot of security and privacy in place to exclude each customer's data is handled in a know-but manner.

So that's at a very high, 1,000-foot view of how things work underneath. In fact, we are one of the top five SaaS companies for MongoDB like their search. Last week, I spoke at their London conference about how the architecture works. So it's quite a bit of investment that's gone behind the scenes for us to achieve that search. What you see there is so seamless, but there's quite a bit of tech that's gone behind the scenes to achieve that.

**Tom Johnson:** Yeah, cool. So did you have to change any of your content structure when you feed it into the vector database? For example, did you have to increase the amount of metadata or add some other structure or chunk things smaller? Did you have to optimize your documentation to get better AI answers, or was it able to just kind of parse it?

**Saravana Kumar:** I think there's definitely a lot of optimization that goes into getting the right data. When you're doing the QA testing, anybody can claim, "Okay, you throw a bunch of things to OpenAI and ask questions, and you're going to get the answers back." But how clear and precise it is, is what makes the difference. We do a lot of work around that area to make sure the answers are precise.

There are a lot of QA challenges as well because the problem today is we are moving from systems that used to be deterministic to probabilistic. Before, if I call an API, you know exactly what the response is going to be. But today, you call that same prompt four times, you get different answers, right? So how do you tweak it? Those are some of the challenges we face. 

The data science team has worked significantly to optimize it, and we continuously tweak the prompt, the chunking, the embeddings, and all those things. A bunch of things continuously goes on behind the scenes to get precisely what you want.

Eventually, at some point, we're looking at having our own local LLMs (Large Language Models) for two reasons. One could be cost, and the second reason could be that we will have much more power in terms of fine-tuning and optimizing. But today, we're good enough to make it work as a minimum viable solution. It's working, and then we fine-tune it and learn from it. We have plans to go down the road of our own LLMs, which will provide even more privacy protection.

**Tom Johnson:** Yeah, that's cool. All right, now let's jump more into the support costs part because this is probably where tech writers get excited if you can make a concrete argument about actually saving support costs because people are finding their answers. How do you go about measuring this? Does Document360 give you any kind of tools to see that, hey, this person didn't ask a support question because they got good search results? Are there any insights you can gain?

**Saravana Kumar:** Absolutely. We have analytics as part of the product, and analytics is something we pay a lot of attention to. Even when we used to have only search, not any of these AI capabilities, we had search analytics. That's something that, when people come and do something on the search bar, there are maybe a lot of times people are dropping out because they're not able to find the solution they need. And that comes up sharp in the search analytics very clearly. These are some of the questions where people didn't find answers. 

You can go and then the technical writer, whoever owns that documentation, can have a weekly cadence or biweekly review. Take a look at it and say, "Hey, these are the gaps we have in our documentation and knowledge base," and you can fill it up. 

We extended the same methodology to the AI search as well. At the bottom of the AI search, there's always a feedback loop. "Did this answer help you solve the question?" or "Do you have any more comments?" All those things get back into the analytics. People can look at it and analyze it.

Also, if there is no answer, you can say, "If I wanted to raise a support ticket," we call it a ticket deflector. You can also measure that as well. How many times did people not find an answer, and then they raised a support ticket immediately? So there are a lot of measurements in place in terms of analytics. You can take a look and make an informed decision. You can also look at which articles are giving the best answers.

We invested a lot on the analytics side of things as well. Because if you build a system, it's like driving a car. You might be driving a Ferrari, but if you don't have the dashboard right, and if you don't have the metrics right, you really don't know where you're heading and what value you're getting out of it.

**Tom Johnson:** Well, hearing you describe the analytics makes me really jealous of that platform and capability because I'm thinking I really need better feedback loops for my documentation. Most of my feedback loops come through a bunch of partner engineers who work with the customers, and they relay the feedback. But I'm always wanting to know a lot more detail. It seems like providing that in documentation could really be beneficial to tech writers because then you would have the feedback about whether this topic is helpful, if it's inaccurate, what's going on. So yeah, awesome to hear that.

Let's switch a little bit and look at the capabilities for tech writers, or for people who have ever created content on Document360. There are so many AI capabilities provided through these tools. I've seen a lot of different implementations in different tools. Tell me, what capabilities do you provide for tech writers in creating content?

**Saravana Kumar:** Sure. I think when we look at the product, when it comes to AI capabilities, there are two sides. One, we discussed a lot about the end users who consume the content created by the tech writer. That's where the search and reducing support come into place. 

When you go inside Document360, where the tech writers actually spend a lot of time creating content, there are a lot of natural fits that come as part of the whole Gen AI approach. Today, it's all those productivity enhancements. For example, I want to outline an article. I've got an idea, and I just want to give a prompt: "Can you just do an outline of how an article should look?" 

Then there are all those standard things like changing the tone of voice, maybe changing from active voice to passive voice, making a paragraph slightly bigger, or condensing an article to make it a little shorter. We have some 20 or 30 different little enhancements like this that all come into the editor. That's straightforward productivity which you can take advantage of.

On top of that, we have certain features which we call workflow automation that help technical writers.

**Saravana Kumar:** For example, when you write an article, we help you be productive in terms of writing that article. Once that article is done, there are a bunch of things you do as a manual task. For example, you may want to tag those articles correctly because you might have a tagging system in place. "OK, this is an internal document. This is security-related. This is something related to XYZ." We have something called automatic tag recommendation, which will tell you based on the content, "These are the possible tags you can actually tag them on." That's one example.

Another thing is related articles. OK, I've written this one. A lot of times, as a technical writer, you may want to say, "Hey, this article is actually related to these two or three articles," and then you go and manually link them. But today, we can actually auto-recommend, saying, "Hey, this article is actually related to that one," and you can do it bidirectionally, saying this is related to that, and that article is related to this one vice versa.

SEO is another great example. A lot of times, today, if you're a tech company or a SaaS company, content marketing is big, and people undervalue how powerful your knowledge base is in generating that content and acquiring customers. When you're writing knowledge in your knowledge base, you're writing the bottom-of-the-funnel content. If you look at the funnel, the top is more educational content, and as you go to the bottom, it's very close to becoming your customers.

For example, in our case, we have an article which is performing very well. It's about how to write markdown. It's nothing to do with the product itself, just "How do you use Document360 to write markdown content?" That is one of the top hits. Imagine somebody landing on that page and reading about that content. The next curiosity will be, "Hey, what is this product? Let's take a look at it."

So SEO becomes so important. We have a feature, for example, where with the click of a button, it will automatically say, "What is the best title you can have for this article? What is the best meta description you can have for this article?" And you can also do it at scale. We have customers who maybe never looked at it in the past, and they have like 500 articles where nobody really cared about putting those meta descriptions and titles. You can click a button and say, "Hey, can you go and fix it across my entire knowledge base?" It just does it for you.

Another interesting thing is glossary. I'm sure you've come across glossary maintenance&mdash;it's a really complicated thing, right? If you are a product like Stripe, you need to explain what is CAC (Customer Acquisition Cost), what is Annual Recurring Revenue (ARR), Monthly Recurring Revenue (MRR), MQL, PQL, SQL, all these terminologies. The technical writer needs to keep up and maintain the glossary.

Today, we can actually say, "Did you detect any glossary terms in my article?" Click a button, and it'll tell you, "Hey, these are the glossaries you can pick up." You can also do it at scale again across the entire knowledge base. The entire glossary can be automatically maintained, and it will give you suggestions. We don't really, you know, the technical author still needs to go and say, "Okay, this is good, this is good," and then it goes public, but it helps a lot.

So that's how, going back to the original question, I'm very enthusiastic because this is a product not just putting lipstick on top. It actually can benefit from a lot of the AI capabilities that are out there.

**Tom Johnson:** Yeah, those are some great examples. Thanks for sharing them. You mentioned related articles. The way you're describing it is that the AI integration will look at all the content within your help system and make recommendations. And I think that sounds really powerful. From the existing tags to the glossary, you said that you can find all instances of certain terms across your help system. That seems very powerful because if you're just using an AI tool as a standalone interface that's not connected to your help system, you're just sort of limited to that article you're working on, more or less. But if you can pull in and get a view of all of your other content and content in context, that would be very powerful.

I really liked the glossary one. I was just doing a glossary thing the other day. It wasn't really technical documentation, but I had a book club. I was making some notes on a book we read, and I passed in the PDF, and I was like, "Get me all the unique terms." And yeah, it was amazing how well it pulled them out. I was like, "This is awesome."

I think the RAG, the Retrieval Augmented Generation, is like the foundation of all the usefulness that comes out of AI, right? If it's just like a general question on the web, it's not nearly as useful as when you can expand it with your own content, and especially in a comprehensive way.

You mentioned some style tweaks. Let's jump into this a little bit. You mentioned changing the tone or active and passive voice. What would you say if a tech writer says, "Hey, I've tried using AI to write this paragraph. I passed in the whole reference, but what came out of it was kind of robotic. It was voiceless. It sounded like Wikipedia." How do you manage to adjust the output so that it sounds more human?

**Saravana Kumar:** Sure. I think that's where maybe people have a misconception or aren't using the system properly. The system is capable of outputting whatever you want. It comes down to how good you are at prompting and the quality of the prompt you can write.

As a platform, we take care of, you know, if you say you want a formal tone, then there's a lot of tweaking that goes into how we construct the prompting, and then we get the answers. Still, you need to treat it more like a tool that helps you to be productive rather than a tool that's going to solve 100% of your problem. You need to be aware of that.

Okay, it created something without which I would have written everything myself, and it would have taken like two hours for me to write that. But today, it gives me something which will cut down my time to, you know, like an hour. The first hour is normally where people procrastinate, right? "Okay, what do I write? How do I start? Where do I start? What things do I put in?" That's the one, you know, it's like going to the gym. Actually doing the gym is not the hardest part. It's actually the first five to 10 minutes of going there that's the problem. That's exactly how you should treat it.

It helps you to get there. Don't expect it to automatically build your muscle or something. You still need to do your work to get your muscle. It helps you with the initial thing to kickstart and do things faster. You need to wrap it up in a nice way. "Okay, it gives me things, I can tweak a bit, and I try different styles." Then, "Okay, I put my own thought process and corrections." Because otherwise, every tech writer's job would be redundant in the world, right? It's not going to happen because you still need to bring human in the loop.

That's not going to go away. The human in the loop is where the success of AI comes into the picture. It's not 100% automation like self-driving cars, and even then, you need some level of human in the loop. Also, I know there are a lot of tech writers who are very scared, wondering, "What's going to happen to my job?" I would say it's only going to make your job better. You can write better quality content now. You can spend time covering all aspects of the knowledge base required. We may not have had the bandwidth to do things in the past because it makes you like 5x or 10x better. So yeah, that's how I see it.

**Tom Johnson:** I totally agree about the value of AI helping jumpstart this process, and it's so much easier if you have something to look at than just a blank page. I was helping some engineers with code examples the other day, and I was initially trying to just get them to give me code examples for this API. They kind of pushed back and complained about bandwidth. Then I tried another technique where I had AI kind of help with jump-starting some code examples based on some test app code. The AI added some annotations about what it's doing. And yeah, it's been pretty successful. At least 50% of the engineers now have given me back the code examples that I was asking for. They kind of started with the AI version and added and tweaked it. I looked at the version history in Google Docs, and they made a ton of changes. But somehow having that starting point was the game-changer. And it's that way with writing as well in so many other areas, right? The blank page usually fills people with dread. Even if the AI version is mediocre, it at least lets you see a starting point. And then you take it from there.

Now, one pitfall that I constantly come across is this hallucination aspect. If I'm writing a doc from scratch, let's come back to those code samples. And I don't know the package names, for example. I'm not just gonna make something up and put it there. I might just leave it blank and put a question mark, right? But AI tools are really used to just predicting what it could or should probably be and going with that. And as a result, the engineers look at it and maybe they just trust it, or they don't. Especially the package names, maybe they just assume that they're right. How do you get past this whole hallucination problem? Do you see it as a problem, or is it just kind of like a minor editorial thing people need to do?

**Saravana Kumar:** Yeah, I'll say that I would relate to the same answer as the previous one. You shouldn't see AI as a complete end result. It's only there to help you assist you on the side. We do a lot of things on our end to make sure the hallucination is not a problem. Sometimes, for example, when you use the RAG and the OpenAI stuff, we set explicit boundaries. Only when you don't give the boundaries and say you can return any answer you want, that's where a lot of hallucination comes into the picture. But we say, "Hey, this is our boundary in which we are operating, and give me answers within this context," not just going all over the place and recommending random things. So we eliminate the hallucination to a large extent as a platform provider.

At the same time, if you ask very generic questions and the prompts are very open-ended, there are chances of getting things which are not right. But that's where the role of a tech writer and the human in the loop comes into the picture. It's your responsibility to make sure it is relevant. I would say it's more like a review process. Okay, there's a junior fellow who has written the content, and then it came to you, and you need to verify the authenticity of it. If it doesn't make sense, then okay. That's how you should see it. It's a part of the workflow. AI is maybe one step below you, and it did its part, and it's your job responsibility to make sure it's correct before it goes into production.

Having said that, we have a very good workflow engine in Document360. So you can actually have steps, and maybe the final step, the final review, is a hallucination check. Is the answer correct? Can they detect any hallucination?

**Tom Johnson:** Yeah, yeah, I like that. And you mentioned earlier in our conversation about providing references in some of the search results to the answers. I think that's also a good check. One thing I do to try to avoid hallucination is I go and link every time a code element is mentioned. I'll link it to the reference to make sure that it exists. And it's also a way for me to have a heads up in case the API changes. I'll see a broken link, and I'll be like, "Oh, let me investigate that. Did something change? And I didn't hear about it?"

Also, earlier we talked a little bit about Midjourney, and I was wondering if you could tell us a little bit about maybe how some of the companies using Document360 are using AI. Are there any good examples that we could check out and see what a proper AI-generated search kind of looks like or something?

**Saravana Kumar:** Yeah, sure. I think the Midjourney case is very straightforward. The success story for us is helping a customer like Midjourney with the volume they are serving. I think their monthly hit is in crazy numbers, like 30-40 million hits per month kind of volume. So we are able to provide that kind of infrastructure to serve them.

It was a very interesting case, how they became our customer. We didn't even know they became our customer. I think this was like a year and a half ago or something like that. We didn't even know the name Midjourney or who they were. It was very early days of all the Gen AI stuff.

Every month we have our cloud cost consolidation call, and we check if our Azure cost is in line with our growth or if we are seeing any discrepancies. It's very easy for things to happen like people misconfiguring and stuff like that. So we noticed nearly a 30% increase in our CDN cost that month, and that looks like a very unusual spike. We dug deeper and figured out this one particular project is actually the culprit. We initially thought it was some error, that we misconfigured it. Then we went down and found this one particular company, docs.midjourney.com, is actually using 30% of our CDN. Only then we realized, "OK, it's a massive company, and that's where it's all happening." So they are at scale, you know, that just provides us at what level of scale we can provide this.

Another good example is Airtable. If you know Airtable, they have a similar kind of story. Their documentation runs on Document360.

For the AI stuff, if you want to see a public reference, I would refer to Gong. If you go to help.gong.io, where they run their public knowledge base, there's an "Ask AI" button. You can go and ask any questions you want. Maybe find an article and pick up a random question you want to ask based on that article. And you go and do a search. Like the example I gave you, "I'm having trouble connecting to Zoom. Can you help?" kind of question. And then you'll see how things work, how the answer comes in, how the references are shown, etc.

Last week, we released a feature. Now our search is conversational. Before, we had a one-point solution, like you ask a question, it gives you a reference to answer. Today, we go conversational. You can have further questions related to the previous question. It'll remember the context, and it can give you a response. It's almost like chatting with a one-to-one support agent based on your knowledge base. It's so powerful now. You can actually chat almost like you're talking to a support agent to get your answers. So these are things you can actually test out. Your audience can test it out themselves.

**Tom Johnson:** Oh, I love that conversational element about search. I mean, that is kind of just mind-blowing when you're really trying to learn something and you can follow up your questions to clarify and get more detail. It's like, you know, it's a different world.

So I know things are changing so fast in the landscape. I mean, just this last week, my mind was blown yet again, listening to audio podcasts that are generated from content. But what's on kind of the roadmap for Document360? Are you working on any big new features or other things, or is it just like ongoing improvements?

**Saravana Kumar:** Yeah, I think I'm really excited. There's a lot of things we're working on. The way I'm looking at it at the moment is, in general, what's going to happen with AI in the future. You are going to have a lot of AI agents to help do your job better, right? For me, as a CEO, in a day, I'm doing a lot of activities. Some of the activities can be done by an AI agent. These may be simple things like an AI agent can look at my inbox and tidy it up, then give me suggestions. These are the bunch of things you need to do. What a virtual assistant and executive assistant would do, some part of it an AI agent can solve in the future.

In a similar way, we are looking at being a technical writer. That's our primary audience, right? How can we provide that kind of agents or productivity help to those people? That's where I mentioned at the beginning about screenshots. Taking screenshots is one activity you need to do continuously. Just imagine the workflow. You need to use a third-party tool. You open the app, you take the screenshot, and then do a small bit of editing there. Or in some companies, you need to pass it down to some editorial or design team to get them done. The design comes back to you, and then you upload it to a platform where your knowledge base is, and then you insert that into your knowledge base. If something changes in the screenshot, somebody added a new button, imagine the whole flow starts again, right?

So how can we bring some kind of AI element to it and have it automatically taken care of? We are working on it actually. These are some of the innovative ideas, how can we disrupt or help 10X value to the technical writers.

The other thing we are looking at is, if you look at a lot of articles in your knowledge base, the majority of them will be some kind of how-to articles or step-by-step guides. You know, "How do you configure redirect rules?" You go to settings, you click here, you click there, you enter this, and then you take screenshots of all these things and fill in the blanks with the text of what you need to do.

**Saravana Kumar:** We are looking at somebody just clicking on those things, and it automatically captures all the screenshots and automatically, you know, you prompt a little bit, "This is what I'm trying to do." And it fills the gap and then says, "Hey, this is your article," you know, like in two minutes, you've got your article.

We're getting one step ahead. A lot of times, the knowledge transfer happens from your engineering team, right? They come and give you some kind of a chat or a video conversation, and then they explain to you all this stuff. This is the feature, you go and write the documentation. We're looking at how we can analyze that content and then automatically create the base draft version of knowledge content out of those video conversations that the PMs, tech writers, and engineering team have, and then it gets transformed into articles.

So these are really real problems. We are not really trying to make something up. You can actually give like 100x productivity to the people who maintain that knowledge. These are the things that are cooking.

**Tom Johnson:** Well, I'm glad to hear that because the whole AI agent workflows definitely seems like that would be the next big game changer. Even some of the prompts that I use have multiple steps and stages. But any process we have, whether it's writing or editing, publishing, whatever, has a lot of little micro steps that you can break it down into. And if you can chain all those together and have more of a workflow that AI can perform, that would be really interesting. So yeah, glad to hear that.

Now, you mentioned as a CEO, you know, your tasks are somewhat different from a technical writer, obviously. You're managing a huge, thriving business. I'm just kind of curious, do you find Gen AI helpful in any of your roles as a CEO?

**Saravana Kumar:** Absolutely. Today I use it quite a lot. We are more a Microsoft shop, and we use a lot of Microsoft tech. The Microsoft Copilot is there now. It's one of my companions today. It's everywhere in my Word documents.

I'll give you some concrete examples. One of my jobs is on the hiring side. We have a policy that for pretty much every single hire we make in the company, I at least listen to or watch the video interviews of people and then give my feedback back to the hiring team.

So today, all the things are recorded. I can listen to the full video recording anyway. And after that, on the side, I'll ask Copilot questions like a mentor, "Do you think this person is the right fit for this particular role?" And this is the spec job description of this particular thing. It will give suggestions based on the conversation, like, "OK, he or she does well in this area, didn't do well in this area." And then I'll even ask questions like, "What kind of questions should we have asked this person?" You can see it's conversational, and that helps me quite a lot in distilling that interview process. That's one solid thing.

And then on the personal side, you know, I'm learning a language. I'm from India, but you probably know Hindi is one of the common languages in India, but not everybody can speak Hindi. For example, I can't speak or listen to Hindi. So I'm actually learning quite a bit. There, I'm using a proper ChatGPT on my mobile phone, and it's a proper multimodal thing. I just set the full context in terms of, you know, I can't read Hindi, I can only listen. Whatever you're typing, you need to give me answers. And even the Hindi word, you need to type it in English because I can't understand the Hindi transcript. It gives me five words a day. It tells me and explains to me how to pronounce it.

So it's fascinating, you know, both on the personal side as well as on the business side. I just gave two examples, but I use it quite extensively. Even for simple things, like somebody sends you a wedding invite or something, right? You need to say something very quick, but you know, it's two sentences, but you need to think. Now I can ask, "Okay, can you please give me a quick answer for this?" I won't send it as it is, but at least it helps me to make it quick and then send it. So I use it, you know, and it's definitely one of the game-changers now.

**Tom Johnson:** Wow, those are really interesting. The whole hiring interview and analysis and the questions and the fit, that's unique. I'd never heard that, so that's cool. And also learning language. I have a daughter who's really looking to study Japanese, and I keep thinking, how can AI help you learn Japanese? She finds that she doesn't really speak it as much as she used to. She used to be a little more fluent. So yeah, I'm excited to see the possibilities in so many different domains for this.

I just wanted to say, I'm excited about Document360's sort of longevity. I've been in this space for a long time. I mean, I started this blog back in 2006. And over the last 20 years, I've seen a lot of companies come and go. A lot of people, especially new companies, they reach out to me, they're like, "Hey, we want to advertise." And I'm like, "Great." And then like a year later, two years later, they're gone. But Document360 has had like an upward trajectory. I was even reading that you were able to grow all this revenue without even having like investor funding. So it sounds like you guys are on a successful track, and I just wanted to applaud you for all that success. It's awesome to see a tool in the tech comm space thrive and then be able to keep pace with all the different web technologies and AI technologies that are coming out.

**Saravana Kumar:** Thank you very much, Tom. You know, I'm really excited about it. Maybe this is one of the areas where innovation didn't happen at the pace required. Maybe the success of Document360, the way I'm looking at it is, we came from another world where we're very deep tech and we're solving some super critical problems. And then we identified this. Now we are adopting those engineering thought processes and methodologies and saying, what can we do for this space?

It's been unattended for a very long time, like 20 years or so. Nobody really innovated on a big level. Some of the thought processes we are talking about, like the screen capture optimization and all those things. And yeah, that is what we hope we'll be able to keep up. And the total addressable market is so huge. If you look at it, every single company needs some kind of a knowledge base, one way or the other, whether it's a public knowledge base or an internal knowledge base or API documentation.

So given the scope of the landscape, we are super excited. It's all coming together nicely, like the space and then the innovation that's happening in that space, and then, you know, we are there at the right place, right time. That is always the key.

**Tom Johnson:** If people want to learn more, should they just go to document360.com? Or is there any particular resource you would direct them to?

**Saravana Kumar:** Now I would recommend if anybody got interested to learn more about Document360, the best place is document360.com. If you want to reach out to me, it's not that hard. If you search my name, you know, I'm all over the place. You can hit me on LinkedIn. I'm happy to answer any questions there.

**Tom Johnson:** All right. Well, thank you so much, Saravana. This has been a great conversation, and I appreciate you coming onto my show and sharing your passion for the space and seeing all the innovation you're doing.

**Saravana Kumar:** Thank you very much, Tom, for having me on the call. Thank you.

**Tom Johnson:** That's all right. You know, a lot of people, because my last name is Johnson, I get "John" a lot. So it's totally good. All right. Thanks again, and I'm going to stop our recording here.


