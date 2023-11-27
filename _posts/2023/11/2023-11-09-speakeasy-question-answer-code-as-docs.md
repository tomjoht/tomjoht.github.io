---
title: "You've heard of 'Docs as code' -- Now get ready for 'Code as docs': Q&A with Speakeasy"
permalink: /blog/speakeasy-question-answer-code-as-docs
date: 2023-11-09
categories:
- ai
- api-doc
keywords: Speakeasy, code as docs
rebrandly: https://idbwrtng.com/speakeasy-question-answer-code-as-docs
description: "Speakeasy is a platform aimed at simplifying the creation and consumption of APIs. Its primary product is the creation of SDKs (client libraries), but its new offering (and most relevant to technical writers) is the 'Code as Docs' product. Their Code as Docs product embeds SDKs into the traditional API reference, providing users with code snippets in 8+ languages and bridging the gap between documentation and real-world applications. This post is a Q&A with Sagar Batchu, CEO and co-founder of <a href='https://www.speakeasyapi.dev'>Speakeasy</a>."
image: speakeasyscreenshot1thumb.png
---

*Note: This is a sponsored post.*

* TOC
{:toc}

## Background about SDKs

Before we jump into the Q&A, let me first provide a basic intro to software development kits (SDKs). When you write API documentation, the list of deliverables often includes documentation for an SDK as well. While web APIs are language agnostic, the SDK is a language-specific implementation of the API, such as a Java, Node, or Python library, that provides language-specific classes/functions for implementing and calling the API.

Traditionally, SDKs have either been maintained by hand or auto-generated from an OpenAPI specification using open-source software (OSS), such as OpenAPI Generator, Swagger Codegen, or Bazel. Both of these options (hand-maintained, OSS-generated), have had major downsides that have stymied the growth of SDKs.

On the one hand, developers often lack expertise in all the languages provided by the various SDKs. For example, a team might not have expertise with Go but still need to generate and maintain a Go SDK to support users programming in Go. That makes maintaining them by hand unrealistic. 

On the other side, the quality of the OSS-generated SDKs is often problematic and prone to bugs or other issues. There are often gaps that need to be filled for them to be usable by enterprises. This can be hard for engineers to manage due to the language variety and expertise needed.

With [Speakeasy](https://www.speakeasyapi.dev), you can create enterprise-grade SDKs from an OpenAPI spec. They're marrying the quality of hand maintained SDKs with the ease of use of the OSS generators. Most relevant to technical writers, Speakeasy is also launching a new tool called "Code as Docs" (currently in alpha stage) Their Code-as-Docs platform generates code samples from the SDK that technical writers can easily pull into their documentation, providing the kind of hands-on, copy-and-paste code users need to get up and running quickly with an SDK. 

The following is a Q&A with Sagar Batchu, co-founder and CEO of Speakeasy. 

**[Tom]: Sagar, tell us about the moment you first conceived the idea for Speakeasy. What sparked the idea? What led to the inception of Speakeasy as a company?**

**[Sagar]:** While I was at LiveRamp we invested in building out an internal DSL (domain-specific language) and API platform to provide a consistent developer experience and end-to-end type safety for your APIs. This was a common pattern we had observed in the industry, be it AWS Smithy, Palantir's Conjure, or Microsoft's Typespec. 

That project was focused on making it easy for devs in the company to ship enterprise APIs. It included tooling for end-to-end type safety and in turn helped generate API artifacts: an OpenAPI spec, client SDKs, server stubs, and even gave you the config you needed to deploy our authentication proxy and various other infrastructure etc.

I came away with an overwhelming feeling that building great REST APIs shouldn't be so hard and there should be something more for the ecosystem than duct taping OpenAPI specs together to make an API work. That lit the fire in me to want to take this and go much further and make an API platform experience available to the 99% of developers.

That's why we started [Speakeasy](https://www.speakeasyapi.dev/), to make it easy to create and consume any API.

**[Tom]: Making great APIs is a broad topic. What brought you to focus on SDKs in particular?**

**[Sagar]:** We wanted to have maximum impact for our customers. Great SDKs (client libraries) can be transformational for API organizations and a great way to improve the developer experience of both new and existing APIs. Offering SDKs has several benefits:

* **Faster and consistent integrations** – SDKs enable your users to access your API using a language they are familiar with and spare them from needing to write tedious boilerplate code to handle auth, networking, serialization, etc. 
* **Higher conversion rates & usage** – the faster users get to their first `200` (successful API response), the more likely they are to convert into paying customers and the greater usage you'll get in the long term. **"Time to 200"** is a useful KPI for API teams to measure
* **Developer loyalty** – Unfortunately, the average API's developer experience is poor. Offering tools (like SDKs) shows your users that you understand what's important to them. You will earn their loyalty and transform users into advocates.

**[Tom]: Why would a company use Speakeasy to create SDKs? Why not build SDKs in-house or use an open source generator?**

**[Sagar]:** We see a lot of companies that try building SDKs by hand. In the long run, they nearly all switch to using a generator. This boils down to a couple reasons:

* **Skills gap** — Most orgs don't have the range of language expertise to build SDKs in every language they need. Oftentimes, we encounter companies where one team member had a particular language expertise, then left the company, and now the rest of the team is scrambling to support a C# SDK. 

* **Ongoing maintenance cost** – Inevitably, your API changes. When it does, updating all your SDKs by hand is painful and thankless. It bleeds your team of engineering time and is a constant drag on velocity.

So why do companies ever try to build SDKs by hand? It's because many developers have had bad experiences using open-source SDK generators. 

OSS tools are really great if you're a hobbyist working on a personal project, but when it comes to an enterprise API experience, their quality is insufficient. In addition, you still need to build out a CI/CD maintenance process to manage ongoing updates.

And that's why people choose to use Speakeasy:

* **Enterprise-ready** – We've invested **a lot** of time into ensuring our SDKs have enterprise-grade quality DevEx. 
* **Robust and customisable** - We've gone the distance on supporting OpenAPI idiosyncrasies like polymorphism, nulls, optionals and given you the tools to customize the output to fit your company's opinionation.  
* **Fully automated** – We also manage the entire maintenance workflow so that updates to SDKs are as easy as reviewing & approving a PR. Our customers spend an average of 30 mins a month on SDK maintenance.

**[Tom]: When engineers start generating SDKs for their APIs, what roadblocks or challenges tend to surface the most?**

**[Sagar]:** I'll split this into two answers: OpenAPI spec mistakes and how to avoid them and API design mistakes and how to avoid them.

OpenAPI specs - The big problem here is that OpenAPI is a very forgiving standard. It's not hard to make a valid OpenAPI spec, but it is hard to make a proper OpenAPI spec. A couple of common problems we see:

* **Code-first specs**: A lot of the API frameworks can generate an OpenAPI spec, but they're not great. Fortunately, there are some easy tweaks you can make to the default generation to improve this vastly. [See our framework guides](https://www.speakeasyapi.dev/docs/api-frameworks/fastapi).
* **Design-first specs**: The biggest problem for design-first companies is inconsistency in the spec. To help design-first spec builders, we've built an [OpenAPI LLM agent](https://www.speakeasyapi.dev/docs/openapi/maintenance) to act as your co-pilot.

API design is a more complex topic. There is a lot more variation depending on what the purpose of the API is, who the users are, etc. That said, I think there are some important things to keep in mind:

* **Don't ship your org chart** - you want your API to be consistent. We sometimes see cases where different teams have different design philosophies, and the API behavior varies wildly from endpoint to endpoint. That leads to a pretty terrible user experience because you don't know what to expect.
* **Does what it says on the tin** - People shouldn't need to examine your API reference minutely to understand what endpoints do. Path names should help people easily understand the resources they are manipulating.
* **Don't be too flexible** - This may be a bit more opinionated, but I prefer APIs that are strongly typed. We've seen APIs where people make it forgiving to avoid users getting a 4xx response code. I understand the sentiment, but usually, you just end up with unexpected behavior and users scratching their heads. Make your API strongly-typed and return nice, clear error codes when someone makes a mistake.

**[Tom]: SDKs can be intimidating for tech writers due to the need for language-specific expertise. How does Speakeasy help technical writers create SDK docs?**

**[Sagar]:** As it happens, we just released the alpha of our new "Code as Docs" product to create an integrated experience between docs and SDKs. 

The major difference between our docs product and others is that we place an emphasis on providing the user with code snippets that can be used for actual production use cases. A lot of the docs with code snippets you see today are just basic `fetch` commands or the equivalent. It is useful if you want to test something, but not useful for actually building a usable integration.

"Code as Docs" gives your users compilable, production-ready code for every API endpoint. Ultimately, the point of documentation is to help developers build, and nothing is more effective than ⌘c, ⌘p.

**[Tom] How can tech writers integrate Speakeasy's SDK documentation with the other API documentation?**

**[Sagar]:** Our documentation is purely MDX-based markdown. As long as your site supports MDX & Markdown, you should be good to go. We provide site hosting at a custom domain for customers who want it. 

Otherwise, the docs are piped into a standalone GitHub repo in our customers' org. From there, they can take the docs and incorporate them as they see fit. Here's a sneak peak at how they look and feel. They're completely type native, which means when you search for an API resource and its supported operation you get working SDK code immediately. Not just a curl or requests library snippet. Devs love one-click copy/paste experiences. This is exactly that.

<a class="noCrossRef" href="https://www.speakeasyapi.dev/"><img src="{{site.media}}/speakeasyscreenshot1.png" alt="Code as Docs, Speakeasy" /></a>

For more detail, see this short video:

<video width="740" height="100%" controls>
  <source src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/speakeasy-docs-demo.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

**[Tom]: Looking at the screenshot, it seems like Code as Docs offers a full documentation experience of the API, similar to a Swagger output. Is that right? Does Speakeasy generate web files (HTML, CSS, and JS) that you would upload somewhere?**

**[Sagar]:** It mirrors the three pane view people are familiar with, but we would argue that there is a fundamental difference in terms of the content. Our documentation product is "code-based", not the traditional "json-based" documentation. Everything shown is type native to the languages supported by our customers.   

The code-samples that you see are not simple calls using an http client. They are fully-compilable usage-snippets that are native to the company's SDK. The type information in the middle pane matches the actual data types used in that language. 

As much as possible, we're trying to replicate the feeling of in-IDE type hints within our customers' docsite.

**[Tom]: What if technical writers just want to get the code samples and integrate them into a different documentation platform? Is that possible? Can you speak more about how to integrate the output into an existing developer portal?**

**[Sagar]:** If they're using Speakeasy to build their SDKs, that would certainly be possible. The way it currently works, we ship all of the output to a GitHub repo specified by our customer. The documentation that we generate is MDX-based. If your docsite supports MDX, then you will be able to incorporate the output from our platform however you like.

If you only wanted code snippets, our CLI does have the ability to create snippets for specified methods, so that is also an option.

**[Tom]: Beyond what's auto-generated with the Speakeasy documentation, what else would engineers and tech writers need to add or do?**

**[Sagar]:** Our documentation covers every aspect of the SDK: classes, methods, fields. We even produce docs that explain how authentication, retries, and pagination are performed. The intention is for it to be fully ready to go out of the box.

That said, we know we can't do everything. Tech writers can go into the generated docs and add custom narratives. Our platform will only overwrite generated docs; any custom sections will be preserved during subsequent regenerations. 

**[Tom]: Can you explain more about how tech writers would add custom narratives to the generated doc? If these narratives aren't in the OpenAPI spec, and the Speakeasy output is a fully packaged website, how would one get the custom narratives in the output?**

**[Sagar]:** It is a fully packaged website, but it's also fairly easy to edit. The site will live entirely within a GitHub repo within our customers org. The repo structure is straightforward: each section of the docs is a file in the repository.

If a writer wants to add additional narrative, they simply create a new file, add their content, and specify where they want it to appear in information hierarchies. And that's really it, the site will redeploy, and the new content will be included.

**[Tom]: As APIs undergo changes and upgrades, maintaining up-to-date documentation can be challenging. How does Speakeasy ensure that documentation stays up to date with evolving APIs?**

**[Sagar]:** All you need to do is make sure that your production OpenAPI spec is hosted at a static URL and that any API changes are pushed to the spec. The way it works is:

1. Our platform is constantly checking to see if there are any updates. When a change is observed, that kicks off the regeneration process. 
2. The SDKs will be recreated, as will the documentation. 
3. All your team needs to do is review & approve the PR. 
4. We take care of publishing the new packages.

**[Tom]: Can you explain the AI-powered features of Speakeasy?**

**[Sagar]:** I can give an overview. If people want an inside look, I highly recommend [this blog post](https://www.speakeasyapi.dev/post/release-speakeasy-suggest) written by one of our founding engineers.

Our agent is called "Speakeasy Suggest." Given an OpenAPI document, it automatically suggests fixes, applies them, and outputs a modified spec. Using AI, we're able to offload the burden of spec management from API producers. Suggest can be invoked through both the Speakeasy CLI (outputs modified spec to the local filesystem) and our GitHub Action (creates PR) today. The AI agent is guided by Speakeasy validation, which can point out errors and spots for improvement in people's specs.

**[Tom]: Could you share some insights into Speakeasy's growth and acceptance in the market so far?**

**[Sagar]:** It's been awesome so far. It took a few months to convince people that automated SDK creation could be as high quality as hand-built SDKs, but we've now got enough proof points that people understand what we've made possible.

Another milestone that is crazy is that we're up to 10 supported generation targets (languages). It's not even been 12 months since we started building SDKs, which means we've basically added one target every month. It's a testament to the flexibility and extensibility of the code generation platform the team has built.

And while I'm excited by all the recent milestones, what I'm even more excited about is all the new features we've got rolling out. 

**[Tom]: What's the future vision for Speakeasy? You mentioned new features, what's on the horizon?**

**[Sagar]:** I've already mentioned "Code as docs", but the team has also been hard at work making sure the SDKs we create are the best they can possibly be. We've got a lot of work coming before the end of the year to make sure that all 8 of the languages we support are top quality. 

Then, in 2024, we're going to be focusing our attention on some new areas. I'm really interested in how we can make it easy for machines to interface with APIs as well as humans, so that's definitely something we're looking at. Stay tuned!

<hr />

You can learn more at [speakeasyapi.dev](https://www.speakeasyapi.dev).

{% include ads.html %}
