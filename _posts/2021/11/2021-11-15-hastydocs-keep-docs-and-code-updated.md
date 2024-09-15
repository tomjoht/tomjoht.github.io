---
title: "HastyDocs: A new approach to keeping API documentation up-to-date, by Jarek Piotrowski"
permalink: /blog/hastydocs-keep-code-and-docs-updated/
categories:
- api-docs
keywords:
rebrandly: https://idbwrtng.site/hastydocs
description: "The following is a guest post by Jarek Piotrowski, co-founder of HastyDocs. <a href='https://www.hastydocs.com/'>HastyDocs</a> is a new tool that allows you to associate files in your codebase with your more conceptual Markdown files. You then receive updates when the code changes. (Note: This isn't a sponsored post &mdash; I thought this would be an interesting, relevant tool for the API doc community.)"
author: <a href='#jarek'>Jarek Piotrowski</a>
bio: false
---

* TOC
{:toc}

## The challenge of keeping docs up-to-date

A frequent challenge in writing and maintaining API documentation is keeping the documentation up-to-date when the code changes. Although API reference docs are often generated from code, the conceptual/tutorial docs written in Markdown (or similar) aren’t auto-generated. As such, it’s easy for engineers to make updates to the codebase but then never update the Markdown documentation.

With most product documentation, the content isn’t generated from the code. This means we are left to rely on manual processes to track all the changes in the software that should be reflected in the documentation.

Addressing doc maintenance strategies, [The Good Docs Project](https://thegooddocsproject.dev/) says that "it is difficult to keep documentation up-to-date with the rapidly evolving software it describes. Doing so typically requires a multi-pronged strategy." Some of these strategies involve "periodic reviews," "minimising the content footprint," and "writing [timeless documentation](https://developers.google.com/style/timeless-documentation)."

However, when we rely on human judgement and memory to make all the necessary updates when the code changes, we often make errors. Compounding the difficulty, technical writers often work across a large number of products in the company, making it hard to remember the whole landscape of docs and code. They sometimes work with dozens of engineering teams, unaware of what commits and other changes these engineering teams are making.

{% include ads.html %}

Additionally, as Daniel Khaneman points out in _Thinking Fast and Slow_, the human mind and memory are susceptible to cognitive biases, making it difficult to consider and remember all the places that need to be updated in docs. A technical writer might think only to update content that he or she worked on, rather than legacy docs written by someone else (who since transitioned elsewhere), but which are also affected by the codebase changes.

To sum up, except for reference documentation, we often rely on weak, error-prone tools and processes for keeping documentation up-to-date. We need a better, more automated way to know when code changes and exactly which docs might need to be updated as a result.

## A new approach to keeping docs up-to-date

To address the problem of keeping docs up-to-date, we designed a new software product called [HastyDocs](https://www.hastydocs.com/). Every time your code changes, HastyDocs tests which parts of documentation needs review and automatically sends a notification to the right person.

Here’s a screenshot showing the HastyDocs interface:

<figure><a href="https://www.hastydocs.com/"><img src="{{site.media}}/hastydocsui.png" alt="HastyDocs UI" /></a>
<figcaption><b>Figure 1.</b> Two files are open in HastyDocs. On the left is a Markdown file with conceptual content; on the right, the code. HastyDocs allows you to create associations between both files. In this example, the section “2.9 Configuration Files” in the Markdown doc is associated with the highlighted area of the code on the right.</figcaption></figure>

HastyDocs creates links between code and the docs in places that you think will require a review of the docs when the code changes. You can create multiple links to any place in documentation or the code base. (Our assumption is that, besides the most high-level conceptual documentation, most product documentation is based on the features of the product encapsulated in the code base.)

In your Markdown files (or any text files with documentation), you can link any of the following to the code base:

* Text of documentation (titles of sections and subsections, description of a how a feature works or looks)
* Screenshots and other visuals
* Code samples

When you have these links set up, every time parts of the code base change, HastyDocs automatically tests documentation to check if code linked to docs has changed. If the code has changed, you receive notification to look over various Markdown files that are associated with that changed code base.

The following screenshot shows a split view of the code base pane showing a before and after view so you can see what changed. Based on these changes, you can then evaluate whether the Markdown docs also need to be updated.

<figure><a href="https://www.hastydocs.com/"><img src="{{site.media}}/hastydocsdiff2.png" alt="HastyDocs UI showing code diff" /></a><figcaption><b>Figure 2.</b> The codebase pane shows a split view showing the diff of a commit. This lets you see whether the change might require some updates to the documentation.</figcaption></figure>

Beyond keeping product documentation up to date, HastyDocs could assist onboarding efforts for internal teams as well. For example, to accelerate onboarding, new developers could quickly view and understand the code base as they read the docs.

HasyDocs is also agnostic to code programming languages and documentation markup languages as long as they are stored in a Git repository.

## How HastyDocs works

HastyDocs assumes your code is stored in a Git repository. When you import docs and code to HastyDocs, you give HastyDocs read-only access to your repository, based on which we constantly monitor all the changes in the code. Here’s [how it works](https://www.hastydocs.com/):

1. HastyDocs connects to your repositories with code and documentation (we have read-only access).
2. When you tag parts of the code and documentation, it creates a link between the two.
3. We send you a notification once the code changes, so you know which parts of the docs to review. You no longer have to manually go through all the changes in the code base.
4. As we take link context into account, you also get notified once the content around your link changes. This way you are notified not only when your linked code changes but also when someone extends the existing functionality.

## Video demo

Here’s a video demo showing how HastyDocs works:

<iframe width="640" height="385" src="https://www.youtube.com/embed/UozbOj_AuXg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Product roadmap

This is the first version of [HastyDocs](https://www.hastydocs.com/), and we have a long roadmap of features to create &mdash; for example, integration with CI/CD processes, Pull Requests/Merge Requests on Github/Gitlab and automatic link generation. We want to prioritize these upcoming features with our first users. To learn more about HastyDocs, please sign-up on [our website](https://www.hastydocs.com/) or email me directly at jarek@hastydocs.com.

## About Jarek Piotrowski {#jarek}

Jarek Piotrowski is an ex-Business Development Director at a financial technology company where he encountered the problem of keeping documentation up-to-date and together with Marek Majde (company's CTO) and Przemek Łada decided to launch HastyDocs. Jarek is passionate about product development, user experience, and designing products that solve users' problems. In his spare time Jarek likes to travel with his family and read psychology books.
