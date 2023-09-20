---
title: "Alphadoc: Build API documentation that tells your API's story"
permalink: /blog/alphadoc-question-and-answer
date: 2023-09-17
categories:
- ai
- api-doc
keywords: Alphadoc, API tools, OpenAI
rebrandly: https://idbwrtng.com/alphadocq&a
description: "A few weeks ago I mentioned <a href='https://alphadoc.io/?utm_medium=advertorial&utm_source=idratherbewriting&utm_campaign=techwriters'>Alphadoc</a>, a new tool for publishing API documentation. The following is a Q&A with Daan Stolk, cofounder/CPO of Alphadoc. In the following questions, Daan tells the story behind Alphadoc and what makes it unique from other API documentation tools."
---

*Note: This is a sponsored post.*

<h3> Tom: Can you tell us why you started Alphadoc? Does your company have an origin story? Was there anything lacking in the existing API tools in the marketplace?</h3>

**Daan:** We previously built API products in fintech and healthcare, and felt that tools on the market were focused on the technical side of things, whereas we wanted to help companies get commercial success with a great developer onboarding. We didn't think that the world needs another docs platform, but rather a platform that helps to create an interactive onboarding experience for APIs, SDKs, and codebases, which helps to create and improve content and makes the content easy to understand (by making it much more visually appealing). 

A large part of the success from companies like Stripe and Twilio is their focus on developer experience from the very beginning, and we wanted to productize this and offer it to the market, to make it accessible to all companies, even if they don't have a dedicated developer experience (DX) team. So far our focus has been primarily on working with companies with OpenAPI specifications, but our latest feature is now helping companies that have SDK's help explain how to use their products as well.

<h3>Tom: Looking at the recent posts on the <a href='https://blog.alphadoc.io/?utm_medium=advertorial&utm_source=idratherbewriting&utm_campaign=techwriters'>Alphadoc blog</a>, you're releasing major new features multiple times a month. Are you nearing an official release date yet for Alphadoc?</h3>

**Daan:** We are shipping big features monthly since the start of this year. Together with design partners we have shaped the product to the point where it is today, and we intend to open up for wider availability at the end of September.

<h3>Tom: What is the new Code-Walkthrough tool about? Also, there's also a sequence diagram builder?</h3>

**Daan:** We have already built a complete platform for displaying REST APIs and making guides based on said APIs. Companies were coming to us that have more than just REST APIs. They need to combine documentation for SDKs and REST APIs. We've released a new feature called Code-Walkthroughs, which allows for highlighting of code and creating step-by-step guides with multiple files as well. 

<img src="{{site.media}}/alphadoc-image5.png" alt="Code Walkthrough" style="border: 1px solid #dedede;" />

We also automatically generate diagrams for REST API "chains." To create REST API guides, you add endpoint blocks to a tutorial. You can configure endpoint blocks to only display the parameters you want to display (see the following screenshot). 

To create a chain, add two (or more) endpoints in a tutorial together by indicating that a value in the response of one endpoint should be used in the request of the next endpoint. The diagram that we generate displays a data relationship which represents the chain you just made. Any updates you make to the chain will automatically reflect in the diagram. 

In the diagram more information is made available as you click through the blocks. Both the endpoints and the diagram automatically update if a new version of the API spec is updated.

<img src="{{site.media}}/alphadoc-image4.png" alt="Chaining" style="border: 1px solid #dedede;" />

<img src="{{site.media}}/alphadoc-image2.png" alt="Chaining" style="border: 1px solid #dedede;" />

We're releasing a new feature soon&mdash;Sequence diagrams. You will be able to create sequence diagrams by quickly clicking together the lifelines (vertical lines) and messages (these will represent API calls), and you get more flexibility compared to the generated diagrams.

<img src="{{site.media}}/alphadoc-sequence-diagram.png" alt="Sequence diagrams" style="border: 1px solid #dedede;" />

So, one version of the diagrams is automatically generated when you create a tutorial with API chains. The other version is a sequence diagram that has more flexibility.

<h3>Tom: I saw that change logs are automatically created. How is this being done and how are you integrating AI features?</h3>

**Daan:** We indeed support automatically creating comparisons whenever you add a new version of your OpenAPI spec to our platform. Our AI functionality is a chat interface built on top of OpenAI's API&mdash;we focused on helping developers get an answer to their question as quickly as possible. We use all the content that's added to the platform, which can be written guides, code, APIs, and SDKs. 

The feature is still experimental but response so far has been great. The user can ask any question about your content, and we'll answer. All data submitted to OpenAI has been opted out of training their models.

<img src="{{site.media}}/alphadoc-image1.png" alt="AI functionality" style="border: 1px solid #dedede;" />

Because of the nature of technical documentation and the need for it to be correct, we built it in a way that minimizes hallucinations (AI making up things). In the future we'll be using the feedback derived from user behavior to create content suggestions. When several people ask similar questions, it likely needs to be clarified in your docs. 

Using insights to improve the documentation is still something we're working on (and are keen on getting feedback!). We're also very aware of privacy concerns when capturing search queries done by developers and will introduce a compliant way for our users to investigate these queries in the future.

A funny side effect is that with the recent explosion of LLMs, the threshold to write code and build software and integrations is lowered significantly, and that makes it even more important to have a developer onboarding that's understandable for both seasoned and citizen developers.

<h3>Tom: Regarding support for OpenAPI, a lot of tools say they support OpenAPI but might not support some of the more advanced specification features. Can you talk a bit about why Alphadoc has deep support for the OpenAPI spec? I think many tech writers might not even be aware of tooling limitations for some schemas until they encounter them.</h3>

**Daan:** And the same goes for us&mdash;we were only made aware of the depth of our support for the OpenAPI spec when we encountered users that tried and tested various other solutions and that none of them had full support for some of the options in the spec. OpenAPI has built-in concepts to combine and reuse schema's across the entire specification (Google "OpenAPI polymorphism" to learn more!). The most common occurrences are using `anyOffs`, `oneOffs`, and `allOffs`. 

From a tool vendor perspective this introduces complexity which we've decided to tackle head on. If you have used any of these concepts in your OpenAPI file you'll see it properly rendered throughout the platform, down to code snippets updating based on what you have selected.

Another good example of a deeper level of support is our ability to display self-referencing schema's, also known as circular references. When a schema references itself, it can break some of the popular open source OpenAPI tools.

There are still many OpenAPI concepts we have yet to tackle but see a ton of value in providing support for all of them as time goes on.

Some of our users have really large APIs with thousands of endpoints&mdash;a scale our platform easily supports. In terms of performance, we made a ton of improvements to offer a snappy experience.

<h3>Tom: How do you enable collaboration across tech writers, product managers, developers, and marketers? Do they use Git with version control to collaborate? Or does Alphadoc provide other collaboration workflows? How do you balance robust tools with simple interfaces and workflows that less technical people can interact with?</h3>

**Daan:** We frequently work with companies that want to make it easier for people to collaborate internally on developer docs. We started working with a flexible WYSIWYG editor. Markdown can be typed in the UI and is immediately rendered. We are also offering engineers ways to automatically push new versions of their API spec to our platform via Git. 

One of the most common points of feedback we've received was that writers want to manage all the content (not just the API) in a Git workflow. We're happy to mention that before the end of the year we'll support docs-as-code workflows on top of the browser-based editor. 

Today we also support embedding our components into other solutions or platforms, which makes Alphadoc modular and available in combination with other content platforms. One of our users has already embedded a tutorial directly into their application to help developers immediately see how to use their API when they have created their API key.

<h3>Tom: You mentioned that Alphadoc supports complex storytelling for varying levels of technical users. <i>Storytelling</i> isn't a feature I commonly see promoted in API tools. Can you talk about what you mean by storytelling and maybe provide an example?</h3>

**Daan:** At Alphadoc, when we talk about "storytelling," we mean more than just documentation; we're focused on creating an interactive and engaging narrative around your APIs and SDKs. It's about guiding users through the functionalities and possibilities of your product in a coherent manner. Our platform allows you to configure each API endpoint, work with variables, and establish chains of endpoints. 

This approach empowers companies in various industries, such as Ecommerce and Fintech, to effectively convey their product stories. Companies in the Ecommerce and Fintech industry, for example, have many use cases in their APIs where data (IDid's) needs to be carried over between endpoints (carrying over data between API calls). They also often have endpoints that are very flexible, which makes it difficult for them to explain all possible scenarios on how to use them. 



The [tutorials and diagrams](https://docs.alphadoc.io/home/%5Bdirect%5D%20first%20time%20-%20api%20setup/1?utm_medium=advertorial&utm_source=idratherbewriting&utm_campaign=techwriters) in Alphadoc allow you to completely configure each endpoint when you add it to a page, work with [variables](https://docs.alphadoc.io/home/guides/variables?utm_medium=advertorial&utm_source=idratherbewriting&utm_campaign=techwriters) (think Postman), and [chain up endpoints](https://docs.alphadoc.io/home/guides/chaining%20apis?utm_medium=advertorial&utm_source=idratherbewriting&utm_campaign=techwriters). When everything has been configured, we provide helpful code snippets for each API call and automatically generate [interactive diagrams](https://docs.alphadoc.io/home/%5Bdirect%5D%20first%20time%20-%20api%20setup/1?utm_medium=advertorial&utm_source=idratherbewriting&utm_campaign=techwriters) that display the relationship between all the steps. The developer who is integrating can try out API calls with live data.

To see this concept in action, explore our own documentation at [docs.alphadoc.io](https://docs.alphadoc.io?utm_medium=advertorial&utm_source=idratherbewriting&utm_campaign=techwriters), where you can witness how we transform technical documentation into an interactive storytelling experience. 

<h3>Tom: How can people learn more about Alphadoc and try it out?</h3>

**Daan:** To start building your docs & DX with Alphadoc, [please fill out the sign-up form](https://alphadoc.io?utm_medium=advertorial&utm_source=idratherbewriting&utm_campaign=techwriters) or visit our website at [alphadoc.io](https://alphadoc.io/?utm_medium=advertorial&utm_source=idratherbewriting&utm_campaign=techwriters). We'll review your request for access within 1 business day. If granted access, you can upload your OpenAPI spec and easily create a compelling developer experience.


{% include ads.html %}

<style>
b,strong {color: #444}
</style>
