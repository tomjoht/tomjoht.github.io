---
title: "Anatomy and distribution of a product skill"
permalink: ai/product-skills-anatomy.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 13
---

{% include_relative draft_notice.html %}

The previous topic, [From developer experience to agent experience](/ai/product-skills-agent-experience.html), identified a gap that none of the delivery layers solves: knowing which of your products to recommend. The industry's answer to that gap is the product skill. This topic covers the practical shape of that artifact, specifically what the file contains and how it reaches users.

I'll start by describing how teams currently build and distribute product skills. In subsequent topics, I'll evaluate whether a separate skill file is the most effective way to deliver this guidance.

## Structure of a product skill

Product skills usually follow a "one skill per product" structure. The skill's directory holds a `SKILL.md` file along with a reference subfolder, and often other subfolders for scripts and assets. More granular product detail goes in the reference subfolder. The layout follows the same [skill anatomy](/ai/skills-structure-creation.html) as internal authoring skills, targeted at an external audience.

In many organizations, this structure mirrors the org chart. One skill per product means one skill per team, which causes the skills to inherit the silos already present in the documentation. In this setup, no individual skill owns the space between products. For a portfolio with a handful of distinct products, that division works. For a portfolio with thirty overlapping products, it reproduces the very disambiguation problem an agent needs help with.

Skills also operate on a principle of progressive disclosure, which is [Anthropic's term](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) for loading skill content in stages. The agent reads only the skill's name and description at startup, which costs roughly 100 tokens per skill. If the description matches the task, the agent reads the body of `SKILL.md`. Only if the body points to additional material does the agent open reference files or execute bundled scripts. Nothing deeper than the description consumes tokens until it's needed. As [Addy Osmani put it](https://addyosmani.com/blog/agent-skills/), *"Progressive disclosure is how you get a twenty-skill library into a 5K-token slot without poisoning the well."*

You'll occasionally see this called progressive *discovery* instead. The two phrases describe the same mechanic. Progressive disclosure is the established term borrowed from UX design and used in Anthropic's documentation, while progressive discovery is an informal term used by some developers because the agent searches for relevant tools. Either way, the principle is the same: load only what's relevant to avoid overwhelming the model with too much information.

## Who is publishing product skills

The following are some of the official repositories with product skills. Several of them come from the 41 repositories that Dachary Carey audited for her [Agent Skill Report](https://agentskillreport.com/), which [What the research says](/ai/product-skills-research.html#restating-the-docs-can-make-output-worse) covers in more detail.

- **Cloudflare:** Publishes [cloudflare/skills](https://github.com/cloudflare/skills), with about 14 skills covering Workers, Durable Objects, Wrangler, the Agents SDK, and deploying Next.js apps on Cloudflare.
- **Elastic:** Open-sourced [elastic/agent-skills](https://github.com/elastic/agent-skills), establishing automated staging and drift-detection pipelines for observability and security detection rules.
- **Google Cloud:** Published an [official skills repository](https://github.com/google/skills) with specialized product skills for BigQuery, Cloud Run, and Gemini, backed by SkillCreator guidelines and evaluation suites. See [Google's announcement](https://cloud.google.com/blog/topics/developers-practitioners/level-up-your-agents-announcing-googles-official-skills-repository) for details.
- **Google Maps Platform:** Released official [agent skills](https://developers.google.com/maps/ai/agent-skills) ([googlemaps/agent-skills](https://github.com/googlemaps/agent-skills)) enabling coding assistants to integrate geolocation and routing APIs zero-shot.
- **HashiCorp:** Publishes [hashicorp/agent-skills](https://github.com/hashicorp/agent-skills) as plugins for Terraform and Packer. Most of its 20 skills cover Terraform tasks, such as writing providers, running acceptance tests, and refactoring modules.
- **Microsoft:** Publishes [microsoft/skills](https://github.com/microsoft/skills), with about 200 skills for the Azure SDKs and Microsoft Foundry. Most skills cover one SDK in one language, so the same service often has separate skills for Python, .NET, Java, and TypeScript.
- **MongoDB:** Publishes [mongodb/agent-skills](https://github.com/mongodb/agent-skills) for tasks such as schema design, query optimization, connecting to a cluster, and Atlas Search. Carey was the quality owner for MongoDB's first official skills.
- **Notion and Anthropic:** Published official skill directories ([anthropics/skills](https://github.com/anthropics/skills), Notion Devs skills for Claude) to make their platforms the default recommendation in coding assistants.
- **Payabli:** Publishes [integration skills](https://github.com/payabli/integration-skills) for its payments API, organized by integration task, such as accepting payments, paying vendor bills, and handling disputes.
- **Stripe:** Publishes its skills in [stripe/ai](https://github.com/stripe/ai), alongside its agent SDKs and MCP server details. The repo packages the same 10 skills as separate plugins for Claude Code, Codex, Cursor, and other agents. One of them, `upgrade-stripe`, is the subject of a case study by Carey in [What the research says](/ai/product-skills-research.html#restating-the-docs-can-make-output-worse).
- **Supabase:** Publishes [supabase/agent-skills](https://github.com/supabase/agent-skills) with only two skills, one for working with Supabase in general and one for Postgres best practices.

{% include ads.html %}

## A published example of a product skill

To see how a product skill works in practice, consider an example from Payabli, a payments company. [CT Smith](https://docsgoblin.com/), who leads Payabli's documentation team, maintains a set of [integration skills](https://github.com/payabli/integration-skills) for Payabli's API. (CT joined Fabrizio and me on the podcast in January 2026 to talk about [AI tools, automation, and an intentionally offline life](/blog/ai-tools-automation-ct-smith). She's also the author of [*WTFM*](https://wtfmbook.com/), a practical guide to standing up docs at a startup.) One of her skills, `payabli-bills`, helps an agent capture vendor bills and pay them. The following is its complete `SKILL.md` as of September 2026, with line breaks added for readability:

```
---
name: payabli-bills
description: >-
  Use when building accounts-payable automation on Payabli — capturing vendor
  bills (manual entry or OCR) and paying them through Pay Out. Distinct from raw
  payouts (payabli-send-payments): a bill is a captured vendor invoice that you
  then pay. Reads payabli-integration.md on load if present.
metadata:
  author: payabli
  version: "0.1"
---

# Payabli bills (AP automation)

Capture vendor bills and pay them.

## Load fundamentals first

If `payabli-fundamentals` is not already loaded, load it now, then
continue.

## On load

If `payabli-integration.md` exists at the repo root, read it; honor its
`## SDK` value.

## Capture a bill

Create a bill with `POST /Bill/single/{entry}` — identify the vendor
with a nested `vendor` object (`vendor: { vendorNumber }`) — a top-level
`vendorNumber` is rejected. Plus amount, due date, and an optional bill
image. A bill needs only a top-level `netAmount`; unlike invoices, line
items aren't required — but if you *do* send `billItems`, their
`itemTotalAmount` must sum to `netAmount` exactly (the API adds nothing
on top), or the create fails with `400` ("Sum of BillItems does not
match Bill TotalAmount"). Bulk-import with
`POST /Import/billsForm/{entry}`.
https://docs.payabli.com/guides/pay-out-developer-bills-manage.md

Set `status: 1` (Active) on create so the bill is immediately
payout-eligible. `-99` is **Cancelled** — don't use it.

**Bill OCR is a standalone capture path** — Payabli's OCR engine
extracts bill data (line items, amounts, vendor details) from a PDF or
image. It is its own feature, not part of vendor enrichment. Extract via
`POST /Import/ocrDocumentForm/{typeResult}` (multipart) or
`/Import/ocrDocumentJson/{typeResult}` (base64), with `typeResult` set
to `bill`. https://docs.payabli.com/guides/pay-ops-developer-ocr-use.md

When you create a bill from an OCR result, **build the
`POST /Bill/single` payload explicitly** from the fields you actually
need — `billNumber`, `netAmount`, `dueDate` (plus any other dates), the
nested `vendor: { vendorNumber }`, and `status: 1`. Don't spread the raw
OCR envelope (`responseData.resultData`, or the full response with
attachments / `totalAmount` / `discount` / `billItems`) into the create
call: the shapes don't line up, and you'll get
`400 "field BillNumber empty"` or
`400 "The sum of netAmount and discount is more than the total from the original bill"`.
Map the extracted values onto a clean bill instead, keeping the
`netAmount == sum(billItems)` rule above.

## List bills

List bills with `GET /Query/bills/{entry}`. Filter by `vendorNumber(eq)`
or `vendorId(eq)` — **`idVendor(eq)` is silently ignored and returns
every bill**, so never use it to scope to a vendor. Query basics (filter
syntax, pagination) → `payabli-reporting`.

## Pay the bill

Bills are paid through Pay Out — see `payabli-send-payments`. One payout
can pay multiple bills for the same vendor. (A raw payout can skip bill
creation with `doNotCreateBills: true`.)

## Bills vs. invoices

A **bill** is money **out** (a vendor's invoice that you pay); an
**invoice** is money **in** (you billing a customer —
`payabli-invoices`).
https://docs.payabli.com/guides/platform-bills-vs-invoices.md

## Boundaries

- Payout mechanics, vendors, and vendor enrichment →
  `payabli-send-payments`
- Customer-facing invoices → `payabli-invoices`
```

The description does more than advertise the skill. Besides saying when to use it, the description says what the skill isn't for and names the sibling skill that handles that case ("Distinct from raw payouts (payabli-send-payments)"). Because the `name` and `description` are all the agent sees until it decides to load the skill, that one clause helps keep the skill out of payout tasks and points the agent somewhere useful. [Greedy descriptions](/ai/product-skills-problems.html#greedy-descriptions) covers why this kind of exclusion matters.

### How the skill differs from the docs

The most instructive comparison is with Payabli's documentation for the same task, [Manage bills with the API](https://docs.payabli.com/guides/pay-out-developer-bills-manage). The docs page runs about 3,000 words, and most of that is request and response examples in cURL and eight programming languages. It explains what bills are, which statuses make a bill eligible for payout, how credits and partial payments work, and how to import bills in bulk. The skill covers the same task in about 470 words and has no code blocks at all. What does the skill keep? What does it leave out? And what does it add that a docs page usually doesn't say?

The answers show how differently you write for an agent's reasoning than for a person's understanding:

- **The skill is built around the agent's likely mistakes.** The docs page teaches how bills work and shows a complete, correct request. The skill assumes the agent can already write a request, and it concentrates on the places where a reasonable guess fails. An agent that has seen many payment APIs might put `vendorNumber` at the top level of the payload, assume the API totals the line items for it, or pass an OCR response straight into a create call. Each of those guesses is plausible, and each one fails, so the skill names the guess and the fix together.
- **Error messages appear verbatim.** The skill quotes the 400 responses word for word, such as "Sum of BillItems does not match Bill TotalAmount." When a request fails, the error text and the skill are both in the agent's context, so a verbatim match lets the agent connect the failure to its fix instead of guessing at a cause.
- **Silent failures get flagged in advance.** The `idVendor(eq)` filter doesn't return an error. It's silently ignored, and the query returns every bill. A person might notice that the results look wrong, but an agent has little reason to question a successful response, so the skill flags the problem before it happens.
- **Directives replace explanations.** Where the docs explain what each bill status means, the skill says to set `status: 1` and not to use `-99`. When the skill does explain something, the explanation is short and attached to an action, as in "the shapes don't line up."
- **The skill directs what the agent reads, and when.** It tells the agent to load a shared `payabli-fundamentals` skill first and to read a `payabli-integration.md` file at the root of the user's repo (if one exists) to find out which SDK to use. It links to the Markdown versions of the docs pages, and it ends by routing payouts and invoices to sibling skills. A docs page can suggest next steps, but it can't tell its reader to check a file in their own project before writing any code. In effect, the docs serve as the skill's reference folder, which may be why the skill gets by without code samples. The project file picks the language, and the docs supply the full examples.

None of this makes the docs page less useful. The page does a job the skill doesn't attempt, which is teaching a person how the bills API works, and it's already pretty well set up for agents. It opens with a note that points agents to Payabli's `llms.txt` index and to Markdown versions of every page, and it ends with an "Often confused with" section that separates bills from invoices. The skill builds on that foundation rather than repeating it. 

In other words, the docs explain how the API works, and the skill tells an agent where it's likely to go wrong. It reads less like a user guide and more like the notes an experienced integrator would pass to a new teammate.

### How a set of skills fits together

So far this topic has looked inside a single `SKILL.md`. However, most publishers ship several skills for one product, and the agent has to find the right one for each task. The `payabli-bills` skill shows how Payabli handles this. It loads a shared `payabli-fundamentals` skill first, and its description and Boundaries section send the agent to sibling skills such as `payabli-send-payments` and `payabli-invoices`. All of the skills are installed locally, and they route to each other by name. The set is also organized around integration tasks, such as paying bills or handling disputes, rather than around product features.

[Google Maps Platform's agent skills](https://github.com/googlemaps/agent-skills) take a different approach. The installed `SKILL.md` acts as a thin governance layer containing minimal API detail. Instead, it instructs the agent to fetch a remote skills index (a JSON file listing available sub-skills by name and description), match the user's request against those descriptions, and download only the matched sub-skills. It uses an MCP documentation-retrieval tool as a fallback for anything the sub-skills omit. This approach implements progressive disclosure over HTTP, and it allows the platform team to update sub-skills on the server without requiring users to reinstall anything. The sub-skills are also organized around product capabilities rather than integration tasks.

However, deferring content loading doesn't eliminate the need to select the right skill. If a remote index lists dozens of sub-skills generated per capability and per platform, many with similar descriptions, the agent must still choose among them. As discussed in [What the research says](/ai/product-skills-research.html#too-much-information-degrades-results), agents handle large, overlapping catalogs poorly. Lazy loading reduces startup token cost, but it doesn't solve the underlying routing challenge. The architecture is sound, but its effectiveness depends on keeping entries clearly distinguishable. Payabli's approach is closer to what [When a product skill still helps](/ai/product-skills-docs-first.html#when-a-product-skill-still-helps) recommends later in this chapter, which is a skill that sends the agent to the documentation and repeats only the facts that break builds.

## How product skills reach users

After you've authored a product skill, how does it reach users? As of mid-2026, distribution occurs through several parallel channels.

**A GitHub repo is the canonical home.** Most official skills publishers, including Google Cloud, Google Maps Platform, Elastic, and Anthropic, host skills in public repositories using conventional directory structures. Installation tooling treats GitHub as the registry, so the repository URL serves as the package identifier.

**A CLI installs from that repo.** Vercel's [skills.sh](https://www.skills.sh/) registry and its open-source [`npx skills` CLI](https://github.com/vercel-labs/skills) function similarly to a package manager. When a user runs `npx skills add googlemaps/agent-skills`, the CLI fetches the skill from GitHub and writes it to the appropriate configuration directory for detected tools, such as Claude Code, Cursor, Windsurf, Codex, or Gemini CLI. The site also provides discovery features and install rankings based on anonymous telemetry.

**Agent-native packaging offers a second route.** Some harnesses provide dedicated packaging systems. For example, Gemini CLI supports extensions installed with `gemini extensions install <repo-url>`. Claude Code reads skills directly from the filesystem (`~/.claude/skills/` for personal skills or `.claude/skills/` within a project), and its plugin system can bundle skills with hooks and MCP configurations. In practice, the plugin or extension is generally a wrapper around a standard `SKILL.md` file.

**Direct upload reaches web chat users.** The web version of Claude (claude.ai) accepts custom skills as [uploaded zip files](https://support.claude.com/en/articles/12512180-use-skills-in-claude) through user settings. Notion provides downloadable zip files for this reason: many of its users interact with Claude through a browser rather than a command-line interface. This flow requires downloading a zip from a documentation page and manually uploading it into application settings.

**Native placement is generally unavailable.** It's tempting to assume skills can be embedded directly into models like Claude or Gemini so that users never have to install anything. In practice, platforms reserve native inclusion for their own internal tools (such as Anthropic's built-in document skills) and a small group of launch partners. There's currently no open submission process for third-party skills to be included by default in major models.

For a documentation team, the practical recommendation is straightforward: publish the skill in a public GitHub repository with `SKILL.md` in the conventional directory, provide the one-line install command alongside your getting-started documentation, and offer a zip download if your audience includes web-based chat users. Don't delay publication waiting for native marketplace placement. Google Maps Platform illustrates this approach by making its skill available via `npx skills`, a Gemini CLI extension, and direct URL imports.

<hr/>

*Continue to the next topic: [What the research says about product skills](/ai/product-skills-research.html)*
