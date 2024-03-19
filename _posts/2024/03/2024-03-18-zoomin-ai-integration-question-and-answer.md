---
title: "Integrating AI with your content delivery platform and documentation: Zoomin Q&A with Keren Brown"
permalink: /blog/zoomin-ai-integration-question-and-answer
date: 2024-03-18
categories:
- ai
keywords: 
rebrandly: https://idbwrtng.com/zoomin-ai-integration-question-and-answer
description: "In this post, I chat with Keren Brown at Zoomin Software about best practices for integrating AI with documentation. Keren emphasizes the importance of first making your content AI-ready, which means ensuring that it's accurate and up to date, before incorporating AI features. We discuss the reasons companies adopt AI, how to overcome implementation challenges, common mistakes, creativity vs. hallucination, consolidating content, user behaviors, security concerns, and measuring success."
published: true
---

*Note: This is a sponsored post.*

<ul id="markdown-toc">
    <li><a href="#about-yourself">Can you introduce yourself?</a></li>
    <li><a href="#reasons-for-ai-adoption">Why do companies adopt AI?</a></li>
    <li><a href="#how-become-ai-ready">How do companies become AI-ready?</a></li>
    <li><a href="#content-delivery-platform">What's a content delivery platform?</a></li>
    <li><a href="#security-and-privacy">How do you manage security?</a></li>
    <li><a href="#llm-integration-approach">How do you integrate LLMs?</a></li>
    <li><a href="#temperature-settings">Does low temperature limit creativity?</a></li>
    <li><a href="#example-integrations">Can you share integration examples?</a></li>
    <li><a href="#common-mistakes">Are there common AI mistakes?</a></li>
    <li><a href="#how-measure-success">How do you measure AI success?</a></li>
</ul>

<h3 id="about-yourself">[Tom]: Can you first tell us a little about yourself, including your current role and background? What do you do?</h3>

[Keren] Sure. I lead Zoomin's marketing and value organization. My amazing team and I are responsible to make sure our customers, or any company looking to improve its impact through content, can see the benefits, value and ROI from our solutions. My background is mostly in the worlds of L&D and Education. In previous roles at AWS and Riskified, I focused mainly on sales enablement, functional training and business development.

<h3 id="reasons-for-ai-adoption">[Tom]: What are some reasons why companies are thinking about incorporating AI into their documentation? What's driving their AI goals &mdash; for example, fear of missing out, reducing headcount/expenses, providing a better experience? Is the AI for their employees or customers?</h3>

**[Keren]:** I would say &mdash; all of the above. I think the majority of companies understand AI can no longer be left out of their content strategy and operations for a few reasons, the first being that this is the new standard for content consumption, and it's what their customers are now expecting from them. In general, when people go to work, and in their B2B everyday, they expect the same thing as when they are home consuming music, movies, grocery shopping and what not. And, we know consumers are getting more inpatient; for example, our recent report on the benchmarks of technical content shows a significant decrease in the time users spend browsing through a topic page as well as the number of pages they look at per one content session. This means users want fast answers, but also accurate and personalized ones. This is something GPT and AI can support. From an efficiency perspective, internal considerations are also piling up. Supporting AI applications requires docs teams to make sure they have their knowledge ready for the move to a platform era &mdash; it's not a simple task. 

In general, we already have evidence that companies that have adopted GPT in their docs experience are performing better, for example, they are able to deflect more support cases.

<h3 id="how-become-ai-ready">[Tom]: How do companies become AI ready? Even without AI implementation goals, many doc teams struggle to keep their thousands of pages updated and current. If the training source is outdated or inaccurate, will the LLM's responses be similarly outdated and inaccurate?</h3>

**[Keren]:** First, let's discuss AI readiness. Most companies are exploring ways in which GenAI and specifically LLMs can help improve product adoption and customer enablement using their existing knowledge assets. But there's a problem. Product knowledge is usually scattered, written in various formats and silos, and often includes sensitive content which, if not handled correctly, poses security and compliance risks. Scattered knowledge has been recognized as one of the most critical challenges facing companies looking to integrate AI into their day-to-day operations and critical missions. Building an AI application infused with knowledge might sound straightforward: index the knowledge, select an LLM, and use a framework. But it's really not easy. Developers can get into real headaches with content discovery across disparate repositories and formats, which then leads to the creation of custom integration and transformation pipelines. Not to mention security issues like access control. 

The main issue is that scattered and siloed knowledge is very likely to be inconsistent, thus completely not optimized for AI. Simply put &mdash; siloed knowledge means partial and inaccurate responses to your customers' queries. Your AI really has the potential to become a super-expert on your knowledge base, but with lacking, missing, and versioned data, it's not going to happen. There's just not enough data for your AI to do its job, and that means end users will suffer.

I can tell you this &mdash; companies that were able to successfully implement AI projects in Service and Support have one thing (at least) in common: they prioritized content readiness &mdash; getting the knowledge unified in a single platform with security layers in place.

<h3 id="content-delivery-platform">[Tom]: What kind of content delivery platform do you use to consolidate all information in one system? Does a single-system approach pose challenges if you have multiple groups (such as customer support, marketing, and documentation teams) using different tools and formats?</h3>

**[Keren]:** Our Content Delivery Platform is a critical layer that serves as the safeguard of all knowledge. We ensure the confidentiality and integrity of the data that fuels AI algorithms. Without this critical shield, the very foundation of any AI system is susceptible to compromise, leading to privacy breaches and undermining trust. Zoomin's technology allows companies to consolidate all their content into a single platform, regardless of the content source or formats. 

We then apply what is called entitlements or permissions, which means each user can only see content based on their role groups. And this is true for customers, partners and your internal employees. Adding a CDP to your tech stack also means your company will not need to make any changes in how knowledge is authored, by whom, and when. The ability to ingest any content type from any source and structure it in a unified scheme with consistent taxonomy is guaranteed and future-proofed for any AI applications you will implement. 

<h3 id="security-and-privacy">[Tom]: How do you manage security and privacy with content that might have different permissions?</h3>

The questions and concerns about security issues when implementing AI are very common, and understandable. It's actually more than just permissions per user. It's also about how your content is protected. To maintain privacy and security with GPT, our platform ensures that answers only come from your content, not public sources. We sanitize sensitive data and present content based on user permissions. The algorithm has low fuzziness tolerance, prioritizing accuracy over false information. Legal disclaimers notify users of the experimental nature, and third-party model training using your content is strictly prohibited.

<h3 id="llm-integration-approach">[Tom]: When you are AI ready, how do you incorporate the LLM component? Do you train your own models, or make calls out to third-party AI services? How do the AI components in Zoomin's content management system work?</h3>

**[Keren]:** Zoomin uses OpenAI and GPT 4.0 and GPT-4 Turbo, but we can also work in a ‘bring your own model' capacity, or other LLMs. It's really up to the customer and their needs.

<h3 id="temperature-settings">[Tom]: Setting the temperature low to reduce creativity in LLM responses can reduce hallucination. But is there a risk in stripping away too much of the LLM's creativity? If the LLM can't make predictions, just retrieve and relay source material, does it eventually become a fancy search engine instead?</h3>

It's a great question. To start I will say this &mdash; with technical content, product answers and the kind of knowledge our customers have, you want accuracy. Hallucinations can cause serious problems for users, and for self-service, customer experience and more. But even without being ‘creative', LLMs are much more than a fancy search engine. First, they provide you with one answer, alongside the traditional search results. Second, conventional GPT, which Zoomin is already introducing, allows users to ‘talk' to GPT, and not just ask once, answer once. And third, when we at Zoomin talk about AI, GPT search is just one capability out of many more that Zoomin offers, like AI-based Content Summary, Code Readers and Editorial Co-Pilot.

<h3 id="example-integrations">[Tom]: Can you share some examples of public doc sites that have incorporated AI? Are there differences in their approaches in the AI, or do they mostly follow the same pattern?</h3>

**[Keren]:** Sure, you can see it in action on our own [Zoomin docs portal](https://docs.zoominsoftware.com/), and the documentation portals of [Pega](https://docs.pega.com/), [ProAlpha](https://docs.proalpha.com/en-US/), [Seismic](https://docs.seismic.com/), [CommScope](https://docs.commscope.com/). With these companies and others, there are similarities and differences. For example, some companies will only use their public content for GPT, and some both public and private. We know how to accommodate both. Also, we offer the ability to configure your own disclaimers and explanations on how to use AI in the UI, as well ask your tiles. Another feature that can be different is the actual promotion that triggers the responses. And as I mentioned, using a public model like OpenAI or a private model.

<h3 id="common-mistakes">[Tom]: Are there any antipatterns with AI that people should be aware of? What are some common mistakes people make in the user experience? For example, should AI dynamically generate code examples?</h3>

**[Keren]:** I wouldn't necessarily say these are mistakes, but more user education. First of all, and this is even before users get their hands on GPT, you have to understand that AI will only be as good as your content is. It can't give you an answer that is not grounded in content. So if you are missing content, or your content has inaccuracies, it will hurt performance. As to users, the more specific you can be when asking GPT questions, the more likely you are to ‘get it right the first time'. BTW, Zoomin GPT is sensitive to filters, which really helps with a more specific experience. That means you can first filter your content interest by product, version etc, and then perform the GPT search only on your selected preferences. 

<h3 id="how-measure-success">[Tom]: How do companies measure whether their AI integration effort was successful?</h3>

**[Keren]:** Our GPT customers get access to detailed GPT analytics from day one. We track adoption, which means how many GPT searches were performed out of total search, coverage, accuracy and users' feedback. We also have analytics on each query logged &mdash; was there a response, from which topic/content it came, etc. One critical thing we also do with our customers is a full investigation of each query that didn't give a response; that's how we can tell our partner content writers if they need to make any changes to their documentation (update, add new), maybe work on better tagging or synonyms, etc. GPT performance can be a true mirror to your content, and it's a never ending learning process. In a good way!

If you would like to learn more about Zoomin GPT and how we can power documentation with AI, you can visit us at [https://www.zoominsoftware.com/zoomin-gpt](https://idbwrtng.com/zoomin-gpt), or contact me directly at [keren.brown@zoominsoftware.com](mailto:keren.brown@zoominsoftware.com).

<h3 id="about-keren">About Keren Brown</h3>

<img src="{{site.media}}/keren-brown-zoomin.jpg" alt="Keren Brown" style="float: right; padding-right:10px; max-width:200px; padding-top:0px; margin-top:5px;" />

Keren Brown currently holds the position of VP of Value and Enablement at Zoomin, where she leads Sales Enablement, Customer Value and Education, Product enablement and adoption, and Marketing. Her expertise lies in maximizing product value, collaborating with product teams, creating effective marketing strategies, and conducting ROI analysis. 

In her prior role, Keren served as a Business Development Manager at Amazon Web Services, focusing on cloud adoption and sales growth. During her time at Riskified, she was the Global Head of L&D and a Corporate Sales Trainer.

At Zoomin, Keren helps technical documentation managers to articulate the measurable value of their technical documentation to their upper management, and helps them implement GPT solutions for their own knowledge portals. 

{% include ads.html %}

