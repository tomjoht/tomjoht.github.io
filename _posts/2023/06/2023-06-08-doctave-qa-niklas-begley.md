---
title: "Doctave Q&A with Niklas Begley"
permalink: /blog/doctave-qa-niklas-begley
date: 2023-06-08
categories:
- technical-writing
- AI
keywords: 
rebrandly: https://idbwrtng.com/doctave-qa-niklas-begley
description: "<a href='https://www.doctave.com'>Doctave</a> is a new docs-as-code SaaS documentation platform built on Rust. In this post, I ask co-founder Niklas Begley more questions about the origin behind the platform, differentiating features, approaches to common problems, and more."
---

* TOC
{:toc}

* TOC
{:toc}

*Note: This is a sponsored post.*

<h3> [Tom] Most products have an origin story. What’s the story behind Doctave? </h3>

[Niklas] All three co-founders of [Doctave](https://www.doctave.com/) had previously been responsible for writing and maintaining documentation: public developer docs, knowledge bases, and support help centers. We appreciate how hard it is to produce good quality docs, and the positive impact great docs can have on users.

But our experience was also a mix of frustration around workflows and ease-of-use. Many WYSIWYG were clumsy, or never got buy-in from the engineering team, since they required developers to step out of their normal workflows in order to make contributions. On the other hand, when engineers proposed solutions, aspects such as command line tooling alienated non-technical contributors.

On top of that, while setting up a basic documentation site can be done with open source tools, they fall short when scaling up documentation. Getting search, analytics, versioning, OpenAPI references, or access control to work takes a lot of engineering effort. You end up spending time wrangling tools rather than focusing on what’s important &mdash; the content.

That’s where the idea for Doctave came. We built the tool we would have wanted to use.

<a href="https://www.doctave.com" class="noCrossRef" ><img style="max-width: 600px" src="{{site.media}}/doctavescreenshot.png" alt="Doctave: docs-as-code documentation platform" /></a>

<h3> [Tom] There are many tech comm tools available, especially within the developer docs landscape. What sets Doctave apart from others? </h3>

[Niklas] The key difference for Doctave is our focus on a full-stack docs-as-code workflow: we give you a suite of tools to write your docs in Markdown (and OpenAPI) and publish them using a Git-based workflow.

And since we have a custom publishing platform, we can do what static site generators cannot do out of the box: analytics, search, preview environments, and access control, all without any configuration.

In the end, we want to help documentarians use a docs-as-code workflow to manage and publish documentation: storing your docs in Git, writing in formats like Markdown, and publishing changes from your CI/CD pipeline to a modern docs site.

<h3> [Tom] Why did you decide to write this platform in Rust? How fast does Doctave build docs, especially compared to Hugo? For example, how long does it take to build 3,000 pages? </h3>

[Niklas] We do indeed use a lot of Rust to manage the building and rendering of Doctave documentation sites.

There would have been many good language choices, but Rust was very natural for us. Speed is one huge benefit &mdash; we can usually rebuild a documentation site in a matter of milliseconds. It turns out that rendering OpenAPI specifications and a large number of Markdown pages can be slow. Rust gives us the ability to render incredibly quickly, which lets us do really fast live previews. This would have likely been much harder in other, slower languages.

That being said, we haven’t made official benchmarks, and it’s not exactly an apples-to-apples comparison to compare Hugo to Doctave, since we technically are not a static site generator and work somewhat differently. To give you a very unscientific estimate, a quick test we ran showed that we could build and run all checks (which includes rendering) 3000 Markdown pages in about 300 milliseconds.

Performance in general is something we take very seriously and put a lot of effort into.

<h3> [Tom] Why not release the tool as yet another open source static site generator? Or maybe with a free base with a premium layer on top? </h3>

[Niklas] A lot of the benefits of Doctave come from the fact that we manage both the writing and publishing sides of the product. These would have been much harder, or sometimes impossible, to do with a traditional static site generator. The way we handle versioning is one, access control is another.

We may very well have a freemium offering in the future, but it’s not something we are focusing on in the short term.

<h3> [Tom] If users have more advanced doc authoring needs such as supporting multiple versions, round-tripping content for translation, or generating book-length PDF, does Doctave support that? </h3>

[Niklas] Some of these we already support, like versioning. In Doctave, versioning is usually done with Git branches. You create a version in Doctave for your site, and tell Doctave which Git branch the version should follow. Then, when you upload changes from the branch in question, we automatically update the content for the matching version.

Translation and PDF support are coming soon!

<h3> [Tom] How would you handle content reuse? For example, a note that you want to appear on multiple pages, with a variable that gets customized in each note instance? </h3>

[Niklas] We support the Liquid template language, which among other things allows you to reuse content with partials. In Doctave’s case, we create a “_partials” directory in your project which you drop templates into and include them in your Markdown docs.

<h3> [Tom] What Git providers are supported? Is there an on-premises version for users? </h3>

[Niklas] You can use any Git provider with Doctave &mdash; we never even require read access to your repository. The way Doctave gets your documentation is by you sending it from CI/CD. We have a little script that you can embed into your pipeline that packages your documentation, and we create a new build for it upon receiving it.

We currently only offer a SaaS version of Doctave, so you cannot host the Doctave publishing platform yourself for now.

<h3> [Tom] Most static site generators render a preview that you can view in the browser, but Doctave has a separate app. How does that app work, and why doesn’t it just generate a browser-based preview? </h3>

[Niklas] This is a good question that we get a lot. There are two key reasons: easy development environments, and writer feedback.

A thing we heard a lot from our users was that organizations often have non-technical or semi-technical contributors to their documentation. If you are using a static site generator that requires you to set up a JavaScript or Python development environment in order to contribute changes, they won’t be able to help as easily.

By packaging up Doctave’s writing environment in a desktop app, it’s easy for those users to contribute. It also means that “it works on my machine” is never a problem. You just install it on your machine and start writing.

Another benefit is the feedback we can provide to writers. The desktop app is constantly checking your documentation for broken links and other errors, and warns you when it finds problems. We can provide a much better user experience with a desktop app than a command line tool, and we’re going to be adding more checks in the future. Over time the desktop will become a proper integrated writing assistant.

<h3> [Tom] Your pricing page lists prices in Euros. Are most users based in Europe? Also, what roles are you mostly targeting &mdash; developers, technical writers, or others? </h3>

[Niklas] We are based in Helsinki, Finland, but our customers are all over the world! At launch we only had Euros listed as a currency, but we are adding USD shortly &mdash; but you can of course use Doctave today regardless of where in the world you are.

We are mainly targeting organizations that produce high quality technical documentation for their users. Often they have a mix of technical writers, developers, and other contributors in charge of documentation, and we try to cater to all of them.

<h3> [Tom] I liked the humility in [your post on how AI is changing documentation](https://www.doctave.com/blog/how-ai-is-changing-documentation). Are you incorporating AI tools into the Doctave platform to compete with other authoring environments that are bringing in similar AI features? Do you have plans to include an AI chatbot in the Doctave output for readers? </h3>

[Niklas] The AI landscape has completely changed in the last 6 months or so. That post you reference was our attempt to condense our thoughts from seeing all these changes and experimenting ourselves. Still, when discussing anything AI related it's still important to stay humble and remember that things may change dramatically even in a matter of weeks.

We will be adding AI powered features to Doctave for sure. We believe most knowledge workers will be made more productive by AI, and we want to help documentarians use AI to do their jobs more effectively. We are however not in a rush to do so &mdash; we are still in an experimentation phase as an industry, trying to figure out what works. Time will tell which UX patterns will be most useful.

This neatly brings up chat interfaces for docs. We have so far taken the slightly contrarian stance that we don’t see them as being particularly useful yet. We go into this in more depth in the blog post, but the short version is that currently chat interfaces for documentation tend to be less helpful than traditional search engines. Accuracy is important in documentation, so in order to minimize hallucinations, AI models have to be used in ways that limit their ability to infer useful information. This means they struggle with any question that does not have an exact answer already in the documentation. All while being multiple orders of magnitude slower than traditional search.

But like I said, this is a field that is changing rapidly. Things may have changed already by the time your readers are reading this article!

<h3> [Tom] Regarding AI, do you think the AI chat interfaces will become a primary interface through which people read and interact with documentation? If so, how would that change the approach to authoring and doc websites? </h3>

[Niklas] It’s very hard to say, but it’s always fun to speculate! We are not yet sure if chat is in fact the correct interface for documentation. It’s certainly not a full replacement for traditional written docs. Given we were all introduced to Large Language Models (LLMs) through ChatGPT, it feels like the only game in town, but we can imagine other ways AI could help users to successfully navigate a complex tool.

Perhaps AI can bridge the gap between your product and your documentation, so that the AI can assist you directly in the product itself? Or maybe AI could be used to generate customized learning paths for readers which take into account the previous knowledge they have. But these are all guesses and frankly much harder experiences to build compared to chat.

What does seem likely is that the role of documentation will change from only supporting human readers to also teaching AIs how things work. If we, for example, want to have AIs that answer user queries, or act as personalized tutors for a product, they need to know how the products they describe work. It is documentation, both written prose and API references, that will teach the models, at least for now.

It’s still early days so who knows, but we’d be at least a little surprised if 5 years from now nobody reads documentation any more and we only talk to AI assistants to tell us how things work.

<h3> [Tom] Do you also write technical documentation yourselves? Did any particular experience inspire you to want to provide better tools and support within the documentation domain? </h3>

[Niklas] We maintain [docs.doctave.com](https://docs.doctave.com), which is our own documentation (hosted on Doctave, naturally). We are not professional tech writers, but have been getting better at understanding things like information architecture and general writing best practices.

I have one personal anecdote from a previous company where I was building a lot of internal tools for our developers: data wrangling tools, test runners, things like that.

We were using Confluence for all our internal documentation. Since it was the default knowledge base, it was natural to start using it for documenting my tools. But what I really wanted was to write the documentation with my code changes &mdash; review, publish, and version them alongside my code. But since the docs lived in Confluence, it required a lot of discipline to keep docs updated.

I even ended up writing a custom generator that would spit out custom API references in Confluence’s wiki markup language to make my life a bit easier. But keeping multiple versions live required duplicating lots of pages and ended up turning into a bit of a mess.

If we’d had Doctave then, things would have been much simpler!