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

The [previous topic](/ai/product-skills-agent-experience.html) ended on a gap that none of the existing delivery layers close, which is knowing which of your products to reach for. The industry's answer to that gap is the product skill. This topic covers the practical shape of that artifact. It covers what the file contains, and how it gets to your users.

Read it as a description of what teams are currently building rather than as a recommendation to build one. The distribution section deserves particular attention, because the reach limits it describes turn out to matter a great deal when this chapter weighs skills against the alternative in [The docs-first approach](/ai/product-skills-docs-first.html).

## Who is publishing them

The following are a few official skills repositories:

- **Google Cloud:** Published an [official skills repository](https://github.com/google/skills) with specialized product skills for BigQuery, Cloud Run, and Gemini, backed by SkillCreator guidelines and evaluation suites. See [Google's announcement](https://cloud.google.com/blog/topics/developers-practitioners/level-up-your-agents-announcing-googles-official-skills-repository) for details.
- **Google Maps Platform:** Released official [agent skills](https://developers.google.com/maps/ai/agent-skills) ([googlemaps/agent-skills](https://github.com/googlemaps/agent-skills)) enabling coding assistants to integrate geolocation and routing APIs zero-shot.
- **Elastic:** Open-sourced [elastic/agent-skills](https://github.com/elastic/agent-skills), establishing automated staging and drift-detection pipelines for observability and security detection rules.
- **Notion and Anthropic:** Published official skill directories ([anthropics/skills](https://github.com/anthropics/skills), Notion Devs skills for Claude) to make their platforms the default recommendation in coding assistants.

Often the product skills follow a "one skill per product" structure. The skill's directory offers a `SKILL.md` file along with a reference subfolder (among other subfolders, such as scripts and assets). You can pack more granular product detail into the reference subfolder.

This structure mirrors the org chart. One skill per product means one skill per team, so the skills inherit the silos your documentation already has, and no skill owns the space between products. For a portfolio with a handful of clearly distinct products, that's fine. For a portfolio with thirty overlapping ones, it reproduces the problem an agent most needs help with. If you've worked through the first chapter of this course, this structure will look familiar, since it's the same [skill anatomy](/ai/skills-structure-creation.html) as an internal authoring skill, just pointed at a different audience.

Skills operate on a principle of progressive disclosure, which is [Anthropic's term](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) for loading skill content in stages. The agent reads only the skill's name and description at startup, which costs roughly 100 tokens per skill. If the description matches the task, the agent reads the body of `SKILL.md`. Only if the body points to something else does the agent open the reference files or run the bundled scripts. Nothing deeper than the description costs you anything until it's needed. As [Addy Osmani put it](https://addyosmani.com/blog/agent-skills/), *"Progressive disclosure is how you get a twenty-skill library into a 5K-token slot without poisoning the well."*

You'll occasionally see this called progressive *discovery* instead. The two describe the same mechanic, but they aren't interchangeable labels. Progressive disclosure is the established term, borrowed from UX design and used in Anthropic's documentation, while progressive discovery is an informal alternative some developers prefer because the agent is the one doing the finding. Either way, the point is the same. It keeps you from overwhelming the AI with too much information.

{% include ads.html %}

## Anatomy of a product skill

So far I've described product skills abstractly, so let's look at a real one. I'll admit I had trouble finding good examples. Published product skills are still scarce, and the ones I could find mostly document a product's capabilities rather than steer an agent between products. So treat this as an illustration of the format rather than a model to copy. Notion publishes a set of [skills for Claude](https://app.notion.com/p/notiondevs/Notion-Skills-for-Claude-28da4445d27180c7af1df7d8615723d0), including one called `notion-research-documentation`. Here's an abridged version of its `SKILL.md`, with sections trimmed and lists shortened. The full file runs about 100 lines.

```
---
name: notion-research-documentation
description: Searches across your Notion workspace, synthesizes findings
  from multiple pages, and creates comprehensive research documentation
  saved as new Notion pages. Turns scattered information into structured
  reports with proper citations and actionable insights.
---

# Research & Documentation

## Quick Start

When asked to research and document a topic:

1. **Search for relevant content**: Use `Notion:notion-search` to find pages
2. **Fetch detailed information**: Use `Notion:notion-fetch` to read full page content
3. **Synthesize findings**: Analyze and combine information from multiple sources
4. **Create structured output**: Use `Notion:notion-create-pages` to write documentation

## Output Formats

Choose the appropriate format based on request:

**Research Summary**: See [reference/research-summary-format.md]
**Comprehensive Report**: See [reference/comprehensive-report-format.md]
**Quick Brief**: See [reference/quick-brief-format.md]

## Common Issues

**"No results found"**: Try broader search terms or different teamspaces
**"Too many results"**: Add filters or search within specific pages
**"Can't access page"**: User may lack permissions, ask them to verify access

## Examples

See [examples/] for complete workflow demonstrations:
- [examples/market-research.md] - Researching market trends
- [examples/technical-investigation.md] - Technical deep-dive
```

Notice a few things about what this skill is, and isn't:

- **The description does the heavy lifting.** The `name` and `description` in the frontmatter are all the agent sees until it decides the skill is relevant. They're the trigger. Notion's description is written the way a user would phrase the request ("searches across your Notion workspace," "turns scattered information into structured reports"), which is what makes the skill fire at the right moments. Note also what it *doesn't* do. It stakes out one job rather than claiming every task Notion can perform. That restraint is harder than it looks, and I treat the failure to exercise it as its own problem in [Greedy descriptions](/ai/product-skills-problems.html#greedy-descriptions).
- **The body is a workflow, not a manual.** The Quick Start maps a four-step procedure onto Notion's actual tools (`Notion:notion-search`, `Notion:notion-fetch`). Those are MCP tools, so the skill is orchestrating the MCP plumbing, which is the complementary pattern I described earlier.
- **Progressive disclosure is visible in the links.** Output formats, advanced search options, citation styles, and worked examples all live in `reference/` and `examples/` subfolders. The agent reads them only when the task calls for it.
- **The "Common Issues" section carries some of the most useful content.** Empty search results and permission failures are the gotchas an agent can't infer from its training data, and they're the kind of knowledge tech writers accumulate from support tickets and user feedback.

For contrast, [Google Maps Platform's agent skills](https://github.com/googlemaps/agent-skills) show the routing idea taken to its architectural limit at platform scale. The installed `SKILL.md` is a thin governance layer that contains almost no API detail itself. Instead, it instructs the agent to fetch a remote skills index, which is a JSON file listing available sub-skills by name and description, then match the user's request against those descriptions and pull down only the matched sub-skills, with an MCP documentation-retrieval tool as a fallback for anything the sub-skills don't cover. It's progressive disclosure served over HTTP. The architecture also sidesteps the staleness problem, since the platform team can update sub-skills server-side without users reinstalling anything.

It's the reference implementation for lazy loading at scale, with one caveat, which is that deferring the content doesn't defer the *choosing*. If the remote index lists dozens of sub-skills generated per capability and per platform, many with descriptions that sound alike, the agent still has to disambiguate among them. The selection findings covered in [What the research says](/ai/product-skills-research.html#too-much-information) show that agents handle large, overlapping inventories poorly. Lazy loading moves the token cost without solving the routing problem on its own, and an index built by generating one entry per capability can make that problem bigger. The architecture is sound. Whether it helps depends on what you put in the index and how distinguishable the entries are.

When tech writers ask me what a product skill actually is, that's the answer I'd give. A hundred or so lines of curated know-how, plus the routing needed to deliver it. It's a quick reference guide whose reader happens to be a machine, and as with any quick reference guide, most of the craft is in what you leave out.

Notice that both examples organize around a product's capabilities, listing what the product can do. That's the prevailing shape, and it's worth keeping in mind for later, because the approach this chapter ends up recommending produces a skill organized around something else entirely. I sketch that alternative shape in [When a product skill still helps](/ai/product-skills-docs-first.html#when-a-product-skill-still-helps), once the argument for it is on the table.

## How product skills reach users

So you've written a product skill. How do users actually get it? Which channel do you publish to? Do you need to support all of them? This part of the ecosystem is younger and messier than the skill format itself, and as of mid-2026, distribution happens through four parallel channels.

**A GitHub repo is the canonical home.** Nearly every official skills publisher, including Google Cloud, Google Maps Platform, Elastic, and Anthropic, puts its skills in a public repo with `SKILL.md` files in a predictable structure. This matters more than it sounds, because the tooling described below treats GitHub itself as the registry. There's no separate package server to publish to. You push to a repo, and the repo path becomes the thing people install.

**A CLI installs from that repo.** Vercel's [skills.sh](https://www.skills.sh/) and its open-source [`npx skills` CLI](https://github.com/vercel-labs/skills) are the closest thing the ecosystem has to npm. A user runs `npx skills add googlemaps/agent-skills`, and the CLI fetches the skill from GitHub and writes it into the right configuration directory for whichever agents they have installed, whether that's Claude Code, Cursor, Windsurf, Copilot, Codex, Gemini, or others. No manual copying, no per-tool instructions to document. The site layers discovery on top of this with a trending leaderboard built from the CLI's anonymous install telemetry. This is the channel [Google Maps Platform leads with](https://github.com/googlemaps/agent-skills) in its own README.

**Agent-native packaging offers a second route.** Some harnesses have their own installation systems that can carry skills. Gemini CLI has extensions, installed with `gemini extensions install <repo-url>`. Claude Code reads skills straight off the filesystem, from `~/.claude/skills/` for personal skills or `.claude/skills/` inside a project, and its plugin system can bundle skills together with hooks and MCP server configurations for team distribution. The pattern to notice is that the plugin or extension is generally just a wrapper, while the skill is still a plain `SKILL.md` file sitting inside it. I like that the format stayed this simple.

**Direct upload is the channel for non-developers.** claude.ai, the chat product rather than the coding tools, takes custom skills only as [uploaded zip files](https://support.claude.com/en/articles/12512180-use-skills-in-claude) through its settings. The skill then appears in that user's own skills list. Anthropic has been adding organization-level provisioning for Team and Enterprise plans, but the details here have shifted more than once, so check the current help documentation before planning around it. This is exactly why Notion ships zips. Its audience includes people who use Claude through the browser and will never open a terminal, and for them the zip upload is the only door into the house. It's a clunky flow, since you download a file from a docs page and then upload it into a settings screen, and I'd expect it to be a transitional artifact rather than the end state. But it's not as strange as it first looks. It's simply the one channel that reaches non-technical users.

**Native placement mostly doesn't exist.** You might assume the endgame is getting your skill built into Claude or Gemini natively, so that users never install anything. For all but a handful of companies, that channel isn't real. The skills that ship inside the platforms are the platforms' own, such as Anthropic's built-in PowerPoint, Excel, Word, and PDF skills, plus a small curated set of partners. There is no open submission pipeline where hundreds of vendors get their skills into a model's defaults, and given the context-window economics described earlier, there probably never will be one at that scale. What vendors compete for instead is being one install command away, which means publishing where the registries and marketplaces will surface them.

The practical upshot for a documentation team is short. Publish the GitHub repo with `SKILL.md` in the conventional location. Put the one-line install command in your docs next to the getting-started content. Offer a zip if your audience includes people using Claude in the browser. And don't hold the launch waiting for native placement that isn't coming. Google Maps Platform's repo is a reasonable template, offering the same skill through three front doors: `npx skills`, a Gemini CLI extension, and an import-by-URL flow for app builders like Lovable. That's less a strategy than an honest reflection of where the ecosystem is, which is fragmented enough that no channel is safe to ignore yet.

<hr/>

*Continue to the next topic: [What the research says about product skills](/ai/product-skills-research.html)*
