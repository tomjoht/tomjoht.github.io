---
layout: post
title: "From DITA to docs-as-code with Docusaurus: Q&A with Mike Howes"
permalink: /blog/docusaurus-questions-and-answers-howes
date: 2023-05-16
categories:
- technical-writing
keywords: 
rebrandly: https://idbwrtng.com/from-dita-to-docs-as-code-docusaurus-howes
description: "In this Q&A focused on switching from DITA to docs-as-code tools, specifically Docusaurus, technical writer Mikes Howes shares the considerations, deliberations, and tradeoffs when choosing and implementing a new authoring tool."
---

**Tom: What doc platform were you using previously, and what were the pain points?**

**Mike**: We had several issues with Antidot Fluid Topics, specifically around performance, lack of current features that you can get for free, such as email alerts (RSS) on changed content, dark mode, syntax highlighting, and so on. Eventually, performance increasingly worsened and we experienced outages (404 errors) at least once per week, which I wouldn’t expect from a paid service and we were paying quite a lot.

**Tom: You were previously using DITA and switched to Markdown. Why make the switch?**

**Mike**: Our doc team is tiny and we have a huge product portfolio to support. To keep up with the doc updates, we gave SMEs access to the DITA source, but having them work in XML with special tools wasn’t working out. I learned about docs-as-code from a previous job and convinced management at my current job that moving to a docs-as-code workflow would enable collaborative authoring throughout the company, not only engineering. 

We now author Markdown in a GitLab pipeline, which has really sped up productivity. SMEs love that they can simply edit the source and open a merge request (MR), instead creating a Jira ticket, and we typically approve and merge their MRs the same day. This works really well for small updates and release notes. Most modern doc tools support, or even require, Markdown, so converting our content also prepared us for our eventual migration to Docusaurus.

**Tom: What did you have to give up in abandoning DITA?**

**Mike**: Not much really. For a small team, Markdown works much better for us. One of the main strengths of structured authoring is reuse, but we weren’t really using it effectively to justify authoring in XML. Reuse can also provide a cost savings around translation, since you only need to translate the reused content (chunks), rather than every instance of duplicate content, but we still aren’t translating our content to other languages. Docusaurus actually includes a translation feature that we want to check out at some point. Apparently there are solutions for reusing content in Markdown, which I also plan to look into.

**Tom: Does the inclusion of API documentation present a fork in the road when it comes to documentation tools and platforms?**

**Mike**: We host our API swaggers on SwaggerHub, which we pay for and those files are external to the API docs on our doc site. Docusaurus has a number of free plugins for integrating swaggers with the docs, which would allow us to provide all API docs in one location, plus another cost savings for our company.

**Tom: Most of the static site generators available are free. Did you find that the implementation and customization time required a lot of hidden costs, or was it still much cheaper than your previous solution?**

**Mike**: Docusaurus is really easy to set up and they provide great user docs with a getting-started tutorial. We tried Hugo, Jekyll, and a few other free SSGs, but we realized we’d need some coding ability, including time and more people, to customize the site with the look-and-feel and features we wanted to add. We were paying a lot of money for Fluid Topics, so moving to a free tool that didn’t take long to set up was much cheaper than our previous solution. Our company was already paying for GitHub Pages, so we decided to use it to host our docs.

**Tom: Did you engage with an engineering team for the implementation and branding? Or does your tech writing team have its own tools specialists?**

**Mike**: We were able to complete most of the implementation ourselves, but we did need help from engineering and IT to redirect the domain of our doc site from Fluid Topics to GitHub Pages. Our head of branding provided the logo images, fonts, and guidance around color usage.

**Tom: Switching authoring tools, especially going from DITA to Markdown, must have posed a lot of hard decisions with tech writers. Many people who have acquired DITA expertise might be hesitant to give that up for a Markdown format that engineers can write. Did you encounter cultural hurdles in the transition, and how did you address them?**

**Mike**: Not really. Markdown is such a simple syntax, ideal for writers, and our team was able to pick it up quickly. We were authoring DITA in a GitLab pipeline, which we now use to author Markdown, so the changes to our workflow have been minimal. The writers have been open to allowing people outside our team to contribute to the docs and actually would like to see even more people contribute.

**Tom: In looking at tools, what was the shortlist of doc platforms you considered?**

**Mike**: After a few months of research and testing, we narrowed the list to three tools: Docusaurus, GitBook, and ReadMe.io. Docusaurus was the best free option, GitBook seemed like the best commercial option overall, in terms of features, setup, and cost, and ReadMe.io was the premium option with more features than we’d probably use, but also the most expensive.

**Tom: What were your main criteria? For example, you mentioned build times. How many pages of documentation are you publishing? How are you handling build times both locally and on the server? Approximately how long does the build take?**

**Mike**: More than anything, we wanted support for Markdown to enable collaborative authoring with people outside the doc team. We had a doc-as-code solution authoring DITA in a GitLab pipeline, but DITA is far too cumbersome for the occasional contributor. Those who have been authoring Markdown in our new repo picked it up rather quickly, particularly developers who author in Markdown pretty regularly. Because our doc team is so small, we also wanted something that we could easily set up, customize, and maintain ourselves. Besides including just about every feature we would need for free, and being fully customizable, Docusaurus build times, in addition to the short deployment times to GitHub Pages, really impressed us. We have ~300 Markdown files and publishing takes only a few minutes. That might appear to be a small number of source files, but, in DITA, which uses the DITA OT to construct the docs prior to deploying them to Fluid Topics, our build and deployment times were at least 30 minutes and many times much longer.

**Tom: You ultimately settled on Docusaurus. Can you tell me why? What features won you over?**

**Mike**: Support for Markdown, GitHub Pages, GitLab integration, dark mode, the cost (free), full customization of the look-and-feel, built on React, simple setup, and the active development of new features/fixes are what ultimately led to us to select Docusaurus. I should also mention that the community, in addition to the great Docusaurus user docs, has been incredibly helpful. They have a server on Discord where you can ask questions or search previous posts and quickly find answers, for free. Paid tools typically offer support plans for an additional fee and they expect you to either call them or email your requests. 

**Tom: Docusaurus is built with React. Can you explain why React was important in your doc platform? Does it enable any interactivity with APIs and code samples that you need? What kind of interactivity is possible?**

**Mike**: Since Docusaurus is built on React and Markdown, it enables our engineering teams to contribute more than just text. For example, a developer created a “[cheat sheet](https://docs.veracode.com/cheatsheet)” application that allows users to generate customized versions of specific sections of our [docs](https://docs.veracode.com/). Since they wrote the application in React we were able to easily integrate it on the doc site so that both the application and the related documentation are available together. 

The same engineer also created a React feedback widget, which we haven’t added yet, that lets users rate the docs with a thumbs up/down and provide comments. One of our flagship products is undergoing a UX overhaul, which will include a new UI built on React. We’re actively looking into how we might use React to integrate our docs with the new UI, such as single-sourcing UI text from our docs or displaying various content in a flyout panel within the UI. I think we have a lot of options to explore. [React’s new Docusaurus site](https://react.dev/) is also quite impressive.

**Tom: What is a single-page JS application, and why might this matter?**

**Mike**: A single-page JS application enables you to provide docs on a single page local to the user system that updates with new content dynamically, rather than continually loading new pages from a server. When a user navigates from the current content, the JS application loads the page with only the new content, rather than downloading entire web pages. This can dramatically improve load times for end users. This wasn’t a factor for us, as our doc site is small enough that deploying to GitHub Pages with all the SSGs we tested offered comparable performance.

**Tom: Doc platforms based on React build more slowly than generators like Hugo. Yet Hugo doesn't have React. Did you consider Hugo? Why didn't you choose it? Was build time not as important as the React framework?**

**Mike**: We tested Hugo and Jekyll, the latter being the default SSG for GitHub Pages, for a month or so and the build times are indeed fast, particularly with Hugo. We decided to go with Docusaurus for ease-of-use and have found that deploying Docusaurus to GitHub Pages works perfectly well for us.

**Tom: What support does Docusaurus provide for publishing OpenAPI specs? What about idiomatic APIs like Java?**

**Mike**: No native support just yet, but supposedly swagger import is coming to a future Docusaurus version. There are free [community plugins](https://docusaurus.community/plugindirectory/) that can import swaggers to Docusaurus, including one based on [Redoc](https://redocusaurus.vercel.app/). 

**Tom: Although Docusaurus is open source, its development was sponsored by Meta. Does that put Docusaurus in a precarious position? What happens if Meta fizzles? Is there enough open source community to continue its development?**

**Mike**: We did consider this, which was around the time Meta’s stock price was down over 50%, but the community is quite robust and the adoption of Docusaurus appears to be increasing rapidly. I’m always coming across doc sites that resemble the default Docusaurus layout and I can quickly determine, sometimes by looking at the source files in their GitHub repos, if Docusaurus is their SSG and I’m usually right. If Meta were to stop supporting Docusarus development, I believe the open-source community would keep it alive. If not, there are plenty of other SSGs out there and Markdown is pretty versatile.

**Tom: What's been the response from customers and stakeholders to the new doc platform? Did they say much?**

**Mike**: The response has been nothing but positive. Our old doc site looked extremely antiquated, was difficult to navigate, the load times were embarrassingly slow, on top of the constant outages, and it didn’t resemble what users expect from a modern doc site. Internal users are over the moon and have a renewed interest in our content.

**Tom: Are you getting more engineering-written input now than previously?**

**Mike**: We are, but it’s been slow to get users to provide more substantial content, such as best practices, use cases, code examples, and so on. More people are opening merge requests (MRs) for doc bugs, which we much prefer over Jira tickets and we can publish the updates quickly. We’d like to make our Markdown source files available on a public GitHub repo, which would allow anyone, not only internal users, to contribute to the docs. We hope to do this soon, but, as a security company, it requires management approval.

**Tom: How much time should tech writing teams that adopt platforms like Docusaurus expect to devote, given a need for some branding and customization? Was there a strong learning curve?**

**Mike**: I would say 2-3 months should be sufficient, but, of course, it really depends on the size of your team, time availability, and the size of your doc set. In my experience, having been through several conversion projects at various companies, converting and migrating content is the most arduous task. If your source is already in Markdown, for example, you can simply follow the Docusaurus quickstart guide, and you can generate a site of your Markdown in under 30 mins.

**Tom: How have you handled the Git workflow with the tool? Did you settle on a standard path of branching and merging that everyone, including contributing engineers, follows?**

**Mike**: We’ve been authoring in a GitLab repo for years using the same workflow for both DITA and now Markdown. The doc team essentially creates a branch for each new feature or maintenance release, then creates an MR for approval prior to publishing. We add both SMEs and writers to the MR, which allows others to review each other’s comments inline, rather than reading an external draft. 

SMEs can focus on the technical accuracy and writers focus on style. Product managers, in particular, provide the first draft of release notes, which only involve updating a single Markdown file. They can use the GitLab UI to find that file and use the built-in GitLab editor to add the release note to a branch, then commit and instantly open an MR&mdash;SMEs use the same process for small doc updates, such as doc bugs. For general doc work, the writers author in an IDE (we all use IntelliJ), but SMEs are free to use any IDE they want.

**Tom: What recommendations would you give to a doc team looking to make a similar switch?**

**Mike**: There are so many options today. We were certainly overwhelmed when we first started our search for a new tool, but, admittedly, it’s a lot of fun to tinker with new technology. We created a list of must-have features, followed by a list of nice-to-have features. We used these lists when selecting which tools to try and, ultimately, which tools would make our top three before we decided to settle on one. I think it really comes down to either paying for a solution that provides all the features your team needs, which might include hosting your doc site and providing support, or going the open-source route and setting up the site yourself. 

If you go with an open-source solution, your company, like mine, might already have a hosting platform, such as GitHub Pages or AWS S3, that you could use for little to no additional cost. If not, there are plenty of great paid hosting solutions, such as Netlify, which several prominent companies use to host their docs. 

In our research, two disadvantages with a paid solution, besides the cost, was performance, which we found to be spotty when using their demos/trials, and the features/customization can be rather limited. A paid solution is supported by a business and they need to weigh which features to invest in based on customer demand. This, of course, takes time and when they do get around to adding a specific feature it might be very basic in its implementation. 

For example, a simple feature like dark mode has been around for many years and it was high on our feature list, but many of the paid solutions we researched either had no plans to support it or were still working on adding support. Docusaurus, on the other hand, has a dark/light mode toggle out-of-the-box. I highly recommend trying out Docusaurus to see just how easy it is to launch a doc site and, gradually, customize it to meet the needs of your users and your organization. Best of luck!