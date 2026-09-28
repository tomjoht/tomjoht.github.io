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

The following are a few official repositories with product skills:

- **Google Cloud:** Published an [official skills repository](https://github.com/google/skills) with specialized product skills for BigQuery, Cloud Run, and Gemini, backed by SkillCreator guidelines and evaluation suites. See [Google's announcement](https://cloud.google.com/blog/topics/developers-practitioners/level-up-your-agents-announcing-googles-official-skills-repository) for details.
- **Google Maps Platform:** Released official [agent skills](https://developers.google.com/maps/ai/agent-skills) ([googlemaps/agent-skills](https://github.com/googlemaps/agent-skills)) enabling coding assistants to integrate geolocation and routing APIs zero-shot.
- **Elastic:** Open-sourced [elastic/agent-skills](https://github.com/elastic/agent-skills), establishing automated staging and drift-detection pipelines for observability and security detection rules.
- **Notion and Anthropic:** Published official skill directories ([anthropics/skills](https://github.com/anthropics/skills), Notion Devs skills for Claude) to make their platforms the default recommendation in coding assistants.

{% include ads.html %}

## A published example of a product skill

To see how a product skill works in practice, consider an example from Notion. Notion publishes a set of [skills for Claude](https://app.notion.com/p/notiondevs/Notion-Skills-for-Claude-28da4445d27180c7af1df7d8615723d0), including one called `notion-research-documentation`. The following is an abridged version of its `SKILL.md`:

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

Several characteristics stand out in this example:

- **The description drives triggering.** The `name` and `description` in the frontmatter are all the agent sees until it decides the skill is relevant. Notion's description mirrors how a user phrases a request ("searches across your Notion workspace," "turns scattered information into structured reports"), which helps the skill trigger appropriately. The description also focuses on a specific workflow rather than claiming every capability Notion offers. Avoiding overly broad triggers is critical; the risks of overreaching descriptions are discussed in [Greedy descriptions](/ai/product-skills-problems.html#greedy-descriptions).
- **The body outlines a workflow rather than a reference manual.** The Quick Start maps a four-step procedure directly to Notion's MCP tools (`Notion:notion-search`, `Notion:notion-fetch`). The skill orchestrates the underlying tools rather than restating API reference material.
- **Progressive disclosure is implemented through relative links.** Output formats and worked examples live in `reference/` and `examples/` subfolders. The agent reads them only when the specific task requires them.
- **The Common Issues section provides targeted edge-case guidance.** Empty search results and permission failures can't easily be inferred by an agent from pretraining data alone. Tech writers routinely gather this kind of troubleshooting insight from support tickets and user feedback.

For contrast, [Google Maps Platform's agent skills](https://github.com/googlemaps/agent-skills) illustrate an alternative architecture at platform scale. The installed `SKILL.md` acts as a thin governance layer containing minimal API detail. Instead, it instructs the agent to fetch a remote skills index (a JSON file listing available sub-skills by name and description), match the user's request against those descriptions, and download only the matched sub-skills. It uses an MCP documentation-retrieval tool as a fallback for anything the sub-skills omit. This approach implements progressive disclosure over HTTP, and it allows the platform team to update sub-skills on the server without requiring users to reinstall anything.

However, deferring content loading doesn't eliminate the need to select the right skill. If a remote index lists dozens of sub-skills generated per capability and per platform, many with similar descriptions, the agent must still choose among them. As discussed in [What the research says](/ai/product-skills-research.html#too-much-information-degrades-results), agents handle large, overlapping catalogs poorly. Lazy loading reduces startup token cost, but it doesn't solve the underlying routing challenge. The architecture is sound, but its effectiveness depends on keeping entries clearly distinguishable.

In practice, a product skill is a concise set of instructions and routing guidance designed for an agent. Like a quick reference guide, its effectiveness depends largely on what it omits.

Both examples organize primarily around product capabilities. Later in this chapter, [When a product skill still helps](/ai/product-skills-docs-first.html#when-a-product-skill-still-helps) discusses an alternative approach organized around decisions and boundaries rather than individual capabilities.

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
