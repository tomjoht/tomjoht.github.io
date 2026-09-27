---
title: "The docs-first approach"
permalink: ai/product-skills-docs-first.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 16
---

{% include_relative draft_notice.html %}

The last four topics set up a problem and then complicated it. Agents can find your pages, fetch them cheaply, and query for facts on demand, but they still choose badly when several of your products could answer the same request. The industry's answer is the product skill. [The research](/ai/product-skills-research.html) says skills help, but least of all in software, and only when they stay small. [The problems](/ai/product-skills-problems.html) mostly turn out to be costs of publishing a separate file rather than costs of the content inside it.

Put those together and a different conclusion follows. The content an agent needs in order to choose well is content your documentation should already contain. When it's missing, the fix is to write it into the docs, not to build a second artifact that only agents can see. A product skill written to carry information that doesn't exist in your documentation is duplicate work, and it reaches a fraction of the audience. This topic makes that case, describes what to write, and then covers the narrower situation where a skill still earns its place.

## Why the docs are the better target

Four arguments convinced me, listed in rough order of how much weight I'd give them. The first one is close to decisive on its own.

**Reach.** A product skill only helps users who installed it, and [Anatomy and distribution](/ai/product-skills-anatomy.html) laid out how fragmented that installation is. Four channels that don't talk to each other, and a user on the wrong channel gets nothing. Your documentation, in contrast, reaches every agent that fetches a URL, on every platform, through every tool, with no installation step at all. It also reaches humans. Think about your own users for a minute. They're coming from all kinds of platforms and running all kinds of AI tools, and most of them will never install your skill file. But if an agent consumes your docs directly, it gets what it needs regardless. Honestly, I can't construct a version of this comparison where the skill comes out ahead.

**Drift.** Anything you copy into a skill is a second copy of something your docs already say, and copies fall out of sync. The [second source of truth](/ai/product-skills-problems.html#a-second-source-of-truth) problem is a maintenance cost you take on voluntarily, and content that lives in one place can't disagree with itself.

**The gap is a documentation gap.** The reason agents can't tell your overlapping products apart is that nobody wrote the comparison. That's [Conway's law](https://en.wikipedia.org/wiki/Conway%27s_law) showing up in the docs, where each writer's mandate ends at a product boundary and the space between products belongs to no one. We ship the org chart, and we always have.

But notice that human developers have been paying for this gap for years, asking coworkers and hunting through third-party blog posts to get answers the portal should have given them. In other words, the missing comparison isn't an agent problem that happens to also affect humans. It's a documentation defect we've tolerated because humans were good at routing around it. Fixing a documentation defect with an agent-only file leaves the defect exactly where it was.

**The measured wins have been docs-side.** Mintlify's benchmark found that a single link to `/llms.txt` dropped agent 404s to near zero at trivial token cost, and that clean Markdown made every fetch cheaper. Against that, the [SkillsBench](https://arxiv.org/abs/2602.12670) figure was a +4.5 point gain for skills in software engineering, the weakest of every domain tested. The cheap interventions with the broadest reach have all been improvements to how documentation is written and served.

{% include ads.html %}

## Assume the model already knows your product

Find out what's actually missing before you write anything. The model arrives knowing a great deal about your product, probably more than you'd expect. Your public documentation is in its training data, along with your repositories, the Stack Overflow questions about your API, and every tutorial anyone wrote when you launched. The +4.5 point figure measures exactly this. There's little room left to teach a model things about software that it already absorbed.

So run the experiment first. Open a fresh session with no skill loaded and ask the model to do the thing a user would ask for. Ask which of your products fits a described scenario. Ask it to write an integration. I've done this with the APIs I support, and what comes back is humbling. It's mostly correct, occasionally out of date, and confident throughout.

In other words, everything the model got right is content you don't need to write, and everything it got wrong is your actual backlog. That list turns out to be much shorter than your product surface, and it won't look anything like a table of contents.

## What to write into the product overview

Where should this content go? For me, the answer is the page your documentation probably already has and probably underuses, which is the overview or landing page for a product or product family. In my experience that page tends to be the thinnest and most marketing-shaped page on the whole portal, full of value propositions and light on the judgment a reader actually needs. As such, it's probably the natural home for the systems-level content that nobody currently owns.

Six things belong there. Each one shares a property, which is that the model can't derive it and retrieval won't assemble it from pages that don't contain it.

**Disambiguation between overlapping products.** Say which product wins under which conditions, in plain terms, on the page a reader lands on first. If your portfolio has several products that could answer the same request, that comparison might be the highest-value paragraph on your whole site, and it's almost always missing. I find this genuinely odd, given how often users ask for it.

**Architectural and environmental constraints.** Models reach for whatever pattern dominated their training data. If an API is server-side only, say so where someone about to call it from browser code will see it. If an SDK behaves differently on mobile than on web, state it at the decision point rather than in a footnote.

**Composition and sequencing.** Which products are designed to be used together, in what order, and what the handoff looks like. Agents assembling multi-service integrations guess at this constantly, and the guesses look plausible.

**Deprecations and anti-patterns.** Training data is full of your old API versions, superseded auth flows, and community workarounds you've spent years discouraging. Name the deprecated thing and the thing that replaced it, with dates. This is one of the few things that reliably overrides a stale prior.

**Constraints that can't be inferred.** Rate limits, quota behavior under load, regional availability, licensing and attribution requirements, compliance rules. None of this follows from an endpoint signature.

**Precise vocabulary.** If your domain uses a common word in an uncommon way, define it operationally. Paul Bakaus, whose design skill Impeccable works by giving models exact professional meanings for words they understand only loosely, put it this way in [Laurie Voss's writeup](https://www.linkedin.com/pulse/how-do-you-write-good-skill-theres-actual-data-now-laurie-voss-hbhdc/): *"An adjective with nothing behind it is just a nice apostrophe. You really have to tell the agent what you mean."*

Notice that every one of these serves human readers too. A developer landing on your portal for the first time wants the same comparison, the same constraints, and the same warnings that the agent needs. That's my test for whether I'm writing documentation or writing for machines. If a section would be useless to a human reader, I'd be suspicious of it.

## Where to put it so retrieval finds it

Writing the content is necessary but not sufficient, and I want to be fair here, because this is the strongest argument the skill camp has. Retrieval is reactive and chunked. It returns passages matching the query, and a developer who says "build a delivery app" produces a query that matches your product pages, not your comparison page. The comparison surfaces only if the agent already suspects there's a choice to make, which is the thing it doesn't know. You can write a perfect overview and watch an agent never retrieve it. Follow these three habits as a fix:

**Repeat boundaries on the pages that will be retrieved.** Don't confine "use this instead of that" to a central comparison page. Put a short version on each product's own page, where a query about that product will actually land.

**Make each page state what it is not for.** A page that says "this API is server-side, use the JavaScript SDK for browser code" carries its own disambiguation into whatever chunk gets retrieved.

**Write in the words users use.** Your chat logs and support tickets show how people actually phrase these requests, which is rarely how your feature matrix phrases them. [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html) covers this in more detail.

None of this is exotic. These are ordinary documentation techniques, the same things you'd do to help a human who arrived on the wrong page, and they happen to be what makes content retrievable at the moment of the decision.

## When a product skill still helps

Having argued the docs case this hard, I should be honest about what's left over. Two situations remain where a skill does something the documentation can't.

**A skill can be a compressed mirror of the overview.** If you've written the systems-level content and an ablation test still shows agents going wrong, a skill that restates the same judgments in abbreviated form is a reasonable hedge against retrieval failure. The important constraint is that it carries no information that isn't in your docs. It's a shorter version of the same content, not a different artifact, which keeps the drift surface small and means a user without the skill loses nothing except convenience.

**Some content genuinely isn't documentation.** Executable scripts for pricing math or quota estimation, which the model runs rather than reads, since language models do arithmetic badly. Harness-specific workarounds, such as an instruction repeated twice because a particular agent ignores it the first time. Directives phrased at a machine rather than a reader. This category is real, though it tends to be pretty small.

That's the whole case for publishing one, as far as I can tell. It's considerably narrower than the industry's case, and I like it better for exactly that reason. It makes the skill a supplement to good documentation rather than a parallel corpus you maintain for machines.

### What that skill looks like

The published examples in [Anatomy and distribution](/ai/product-skills-anatomy.html#anatomy-of-a-product-skill) are all inventories of what their product can do. A skill built as a compressed mirror looks different, because it organizes around the choices agents get wrong and points at canonical documentation for everything else. I couldn't find a published example that does this well, so here's a sketch of the shape I have in mind.

```
---
name: acme-platform-routing
description: Decides which Acme API to use for a given task and flags
  the constraints that break common implementations. Use when a request
  could plausibly be served by more than one Acme product, or involves
  maps, geocoding, or place data in a browser or mobile app.
---

# Choosing an Acme API

Canonical docs: https://developers.acme.com/overview
Always confirm details against the docs. This file carries the
decisions, not the reference.

## Which product

| If the user needs... | Use | Not |
|---|---|---|
| A static map image | Embed API | Maps JS (heavier, needs a key per session) |
| An interactive map in a browser | Maps JS SDK | Routes API (server-side only) |
| Travel time between points | Routes API, server-side | Distance Matrix (deprecated 2025) |

## Constraints that break builds

- Routes API is server-side only. Calling it from browser code
  fails CORS. In a client-side app, proxy it or use Maps JS.
- Place IDs from Places v1 are not valid in v2 endpoints.

## Do not use

- `acme.maps.legacy.*` (removed 2026-03)
- API keys in client-side code without referrer restrictions
```

Notice what isn't in there. No endpoint reference, no parameter tables, no capability inventory. Every fact in it is a judgment the model gets wrong on its own, and every one of them should also appear on the product overview page the skill points at. The skill is a compressed restatement, which is what keeps it from becoming a [second source of truth](/ai/product-skills-problems.html#a-second-source-of-truth).

The practical sequence is short. Write it in the docs, always, because that's the work with the broadest reach and it serves both audiences. Place it where retrieval will find it. Then measure whether agents still get it wrong, and only then consider a compressed skill on top, built to the shape sketched above.

## Where I'm uncertain

A few open questions are worth naming rather than papering over. I don't know how much of the retrieval-placement problem is solvable through writing alone. Making each page carry its own boundaries helps, but there may be a class of query where nothing you write gets retrieved at the right moment, and I'd want that measured rather than assumed in either direction.

I also don't know how well this scales for very large portfolios. Cross-product disambiguation across thirty overlapping products is a substantial writing project, and it crosses team boundaries in ways that tend to get political. The organizational difficulty of getting it approved might well be harder than the writing itself. That's probably a good part of why it doesn't exist today, and of course publishing a skill doesn't make that underlying problem any easier.

What I'd defend is the direction rather than any particular estimate of how far it gets you. Improving the documentation is cheaper, reaches further, lasts longer, and serves the readers you already had. A product skill is worth building when you've done that work and measured a remaining gap, not as a substitute for doing it.

The three topics that remain are about carrying that out. [Roles for tech writers](/ai/product-skills-tech-writer-roles.html) takes up who owns the work and why it usually lands nowhere, [Mining users' AI chat sessions](/ai/product-skills-chat-analysis.html) takes up how you find the failures worth fixing, and [Reimagining the documentation experience](/ai/product-skills-reimagining-docs.html) takes up the deliverables that become worth building once documentation is the primary artifact.

<hr/>

*Continue to the next topic: [Roles for tech writers with product skills](/ai/product-skills-tech-writer-roles.html)*
