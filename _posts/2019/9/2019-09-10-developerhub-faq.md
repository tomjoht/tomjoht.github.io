---
title: "An inside look at DeveloperHub -- hosted documentation portals for API docs"
permalink: /blog/developerhub-product-faq/
categories:
- api-doc
keywords:
bitlink: https://idratherbewriting.site/developerhubfaq
last-modified: 2026-11-24
description: "DeveloperHub is a hosted documentation platform for product docs and API references, where writers use a visual editor, developers use Git, and AI agents connect through MCP. In this Q&A, updated in November 2026, Zaid Daba'een, CEO & Founder of DeveloperHub, explains how the platform works today."
---

* TOC
{:toc}

*Note that DeveloperHub is a site sponsor.*

*Updated November 2026. I first published this Q&A with Zaid Daba'een, founder of DeveloperHub, in 2019. Documentation has changed a lot since then, from Git-based workflows to AI agents that read and write docs, so Zaid answered a fresh set of questions.*

### What is DeveloperHub?

[DeveloperHub](https://developerhub.io/?utm_source=idratherbewriting&utm_medium=hibanner&utm_campaign=c1){:rel="nofollow"} is a hosted documentation platform for product docs and API references. Writers use a visual editor, developers use Git, and docs are AI-ready from day one: llms.txt, markdown and MCP. We host everything, so a team gets a fast docs site on its own domain, with guides, API references, changelogs and landing pages in one place, without building or running a site of its own.

### Who is it for?

Teams where more than one kind of person writes the docs: technical writers, developers, product managers, support and, more and more, AI agents. Many of our customers are established companies that want roles, reviews and control over what goes live, such as OPSWAT, Yoti, Rackspace and Flux.

### Why did you build it?

I'd spent years building products, APIs and SDKs, and every time we reached the documentation phase, the options were slow. Either an engineer had to build and maintain a static site, or the team picked a tool that writers liked and developers avoided. I wanted one place where a writer and a developer could work on the same docs without either of them waiting on the other.

That's still the idea. We've been at it since 2018, and we're profitable and bootstrapped, so we build for our customers rather than for investors.

### How is DeveloperHub different from other docs platforms today?

Most docs platforms start from one kind of author. Some start from Git and add an editor on top; others start from an editor and sync to Git. We built DeveloperHub so that everyone edits the same pages, however they work:

- **Writers** in a visual editor that needs no code.
- **Developers** in Git, through two-way GitHub sync, with a check on every pull request.
- **AI agents** through MCP, with the page content they write saved as a draft until someone publishes it.

Roles and reviews come on every plan, not only with an enterprise contract, and pricing is per docs site with editors included, not per seat.

### How do writers and developers work on the same docs?

Writers use the visual editor, and developers work in Git, on the same pages. Two-way Git sync keeps every page as a file in your repo, along with the navigation, changelogs, synced blocks and how the site looks. Every pull request gets a check that catches broken links, invalid navigation or a broken API spec before it merges, and what writers publish in the editor is committed to the repo too. Nobody works on a copy, and nobody waits for someone else to make an edit.

<figure><a href="{{site.media}}/developerhub-visual-editor.png"><img style="border: 1px solid #dedede;" src="{{site.media}}/developerhub-visual-editor.png" alt="DeveloperHub visual editor with the formatting toolbar on a selected line and a reviewer's comment beside the text" /></a><figcaption>The visual editor, with the formatting toolbar on a selected line and a reviewer's comment beside the text</figcaption></figure>

{% include ads.html %}

### Can AI agents write our docs?

Yes. Our Editor MCP server, on every plan, lets Claude, Cursor, Codex or any other MCP client find, write and publish pages. It acts as the person who connected it, so it only reaches what they can already edit, and the page content it writes is saved as a draft until someone publishes it.

For automated workflows, such as a release pipeline that updates the release notes, an MCP key gives a script access without a person signing in, limited to just the tools it needs.

And for agents that work from your repo, our open-source agent skills teach them DeveloperHub's page format, how to organise a docs repo, and how to migrate docs from another tool.

<figure><a href="{{site.media}}/developerhub-ai-editor.png"><img style="border: 1px solid #dedede;" src="{{site.media}}/developerhub-ai-editor.png" alt="DeveloperHub AI Editor showing suggested changes as a diff with Accept and Reject buttons" /></a><figcaption>The AI Editor's suggested changes, shown as a diff you accept or reject before anything is saved</figcaption></figure>

### How do AI tools read docs built with DeveloperHub?

Every page has a Markdown version, and every site publishes an llms.txt index, so AI tools get clean text instead of a rendered web page. Readers can also connect their own AI tools, such as Claude Code or Cursor, to your docs through our reader MCP server, and search them from inside their editor. Readers who'd rather ask than search get answers from the AI Assistant on your site, with links to the pages it used.

### What have you learned from watching AI agents read docs?

We looked at three months of traffic to the docs sites we host, and published it as the [AI Docs Report 2026](https://developerhub.io/reports/ai-docs-report-2026){:rel="nofollow"}. A few findings stood out:

- **AI is a big share of docs readers already.** 39% of readers were AI: 30% crawlers and 9% assistants fetching pages for someone.
- **Coding agents dominate.** Claude went from 7% to 38% of AI assistant traffic to docs in three months, and about 9 in 10 of those fetches came from Claude Code.
- **Agents guess URLs.** 12% of Claude's fetches were for pages that don't exist, against 0.4% for ChatGPT. Keeping redirects for renamed pages matters more than it used to.
- **Markdown is half the size.** A docs page in Markdown is about 15 KB, against 29 KB rendered, which means fewer tokens for the same answer.
- **llms.txt is for developers' tools, not crawlers.** Only about 1 in 5,000 AI crawler fetches asked for it, and about 95% of llms.txt requests came from developers' own tools.

For writers, the lesson is that agents land in the middle of your docs, often by guessing. Pages that make sense on their own, with stable URLs, serve both readers.

### How do you handle API references?

We support OpenAPI 3.2, 3.1 and 3.0, and [OpenAPI 2.0 (Swagger)](/learnapidoc/pubapis_swagger.html), webhooks included. Every endpoint gets an interactive reference with a playground for trying requests, and code examples in more than 10 languages. You can keep the spec in your repo and let GitHub sync bring it in, push it from your CI pipeline through our API, or edit it in our visual spec editor.

Guides and API references live in the same site and the same versions, link to each other and are searched together, so readers don't have to know which half an answer lives in.

<figure><a href="{{site.media}}/developerhub-api-reference.png"><img style="border: 1px solid #dedede;" src="{{site.media}}/developerhub-api-reference.png" alt="An endpoint in DeveloperHub's API reference with nested response fields and an example response" /></a><figcaption>An endpoint from DeveloperHub's own API reference, with nested response fields and an example response</figcaption></figure>

### Can we control who sees and publishes what?

Yes, on every plan. There are four roles (reviewer, writer, publisher and admin), reviews before anything is published, and an activity log of who changed what.

From Plus, docs can be private, behind a password, email invites and magic links, your own login through JWT, or single sign-on. Audiences let you show or hide a page, or a block within it, depending on who the reader is, such as their plan or role. Single sign-on for your editors comes with Enterprise.

### How hard is it to move our docs over?

From Mintlify, ReadMe or Zendesk, it's one click when you sign up. From anywhere else, such as Docusaurus, MkDocs, Sphinx, GitBook, Confluence or Notion, our free, open-source migrate-docs skill lets your own AI coding agent do the move, and it writes a redirect for every URL that changed. On paid plans our team helps with the migration too.

### How much does it cost?

Pricing is per docs site, with editors included, rather than per seat.

- **Free:** $0 for one editor, with no time limit.
- **Plus:** $99 a month billed annually ($129 monthly), with 5 editors, your own domain and private docs.
- **Pro:** $199 a month billed annually ($229 monthly), with 20 editors, the AI Assistant for readers, search analytics, and full branding customisation with your own CSS and JavaScript.
- **Enterprise:** from $499 a month, with single sign-on for editors, white-labelling and an SLA.

Every paid plan starts with a 14-day trial that needs no card. To learn more, see [developerhub.io](https://developerhub.io/?utm_source=idratherbewriting&utm_medium=hibanner&utm_campaign=c1){:rel="nofollow"}.
