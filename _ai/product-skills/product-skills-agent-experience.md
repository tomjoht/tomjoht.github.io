---
title: "From developer experience to agent experience"
permalink: ai/product-skills-agent-experience.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-08-02
order: 12
---

{% include_relative draft_notice.html %}

As we look to make content consumable by agents, we shift from the developer experience (DX) to the agent experience (AX). As Mintlify noted in their [2026 State of AI report](https://www.mintlify.com/blog/state-of-ai), *"Documentation is becoming infrastructure that serves two audiences at once. For human readers, docs still need to be clear, navigable, and well-organized. For AI agents, they need to be structured, comprehensive, and easy to parse programmatically."*

Product skills are the industry's current answer to the AX problem, but they weren't the first attempt. Understanding the earlier attempts — and why they fell short — explains why skills are shaped the way they are.

## Historical attempts

When documentation teams first started making the AX shift, they put their docs onto Model Context Protocol (MCP) servers. However, MCP servers that contained entire bodies of documentation created massive token consumption. The token bloat spiked latency and API cost while also degrading reasoning accuracy, because models struggled to separate relevant instructions from verbose noise.

To be fair to MCP, the problem wasn't the protocol. It was *eager loading*. Nothing about MCP requires stuffing your docs into the context window. But in a typical setup, every connected server's tool definitions load into the agent's context at the start of the session, whether the agent ever uses them or not. Connect a few servers and you've burned thousands of tokens before the first prompt. Docs teams that dumped whole documentation sets behind MCP tools compounded the problem, but the eager-loading flaw was there even in modest setups. Contrast this with skills, which cost the agent almost nothing (a name and a one-line description) until the agent decides the skill is relevant.

A benchmark study titled [SkillComposer](https://arxiv.org/abs/2606.32025) (arXiv:2606.32025, June 2026) confirmed the pattern: flooding an agent's context window with an exhaustive skill library degraded coding accuracy and inflated token consumption, while selective routing substantially raised pass rates. (I'll come back to the specific numbers in [Problems with product skills](/ai/product-skills-problems.html).)

Notably, docs MCP servers built around a *search tool*, where the agent queries and gets back only relevant chunks on demand, never had this problem. They remain genuinely useful. Mintlify hosts one per docs site, and tools like Context7 provide the same on-demand lookup across thousands of libraries. So MCP is still used. It's the plumbing for how agents connect to your docs, tools, and skills. The emerging pattern is complementary rather than competitive: the skill provides the know-how (a map telling the agent where your docs are and when to query them, including through an MCP search tool), while MCP provides the live access. The canonical docs stay on your developer portal. In short, the first wave of docs-on-MCP conflated *storage* with *delivery*. The fix wasn't abandoning MCP. It was moving from eager delivery to on-demand routing.

Another effort toward AX was the [llms.txt proposal](https://llmstxt.org/), which in its own words proposes *"adding a `/llms.txt` markdown file to websites to provide LLM-friendly content"* — a file that *"offers brief background information, guidance, and links to detailed markdown files."* The ecosystem then extended the convention beyond the spec itself: docs platforms commonly generate a companion `/llms-full.txt` containing the full concatenated documentation content, plus per-page Markdown mirrors of individual doc pages.

In practice, then, the `llms.txt` convention bundles three different ideas, and they've fared very differently:

- **The `/llms.txt` index file** works as a map, not a feed. There's little evidence that major AI systems fetch it unprompted, and a static link list provides no procedural lift — it can't tell an agent *how* to do anything. But as navigation it measurably works: Mintlify's [2,400-run benchmark](https://www.mintlify.com/blog/llms-txt-agent-benchmark) found that when docs pages link to `/llms.txt`, agent 404 errors drop to near zero at trivial token cost. Solving wrong-URL guessing is real value — it's just not the same thing as making agents reason better.
- **The `/llms-full.txt` concatenated dump** has the opposite problem: feeding an entire documentation corpus into an agent creates verbose noise and inflates token consumption — the same overload that sank docs-on-MCP. (The Mintlify benchmark found the milder version of this too: inlining the full `/llms.txt` file into every page fixed the same 404s as linking to it, but at a higher token cost for the same benefit.)
- **Per-page Markdown mirrors**, meaning each documentation page served as clean Markdown alongside the HTML, turned out to be the quiet win, with one caveat. Anthropic, Cloudflare, Mintlify, and others auto-generate these, and agents consume them constantly. But the same benchmark found that Markdown *without a map* actually performed worse than HTML, because agents guessed at `.md` URLs and 404'd more. Skills don't replace this layer; they *depend* on it, and complete it. A product skill routes an agent to URLs, and those URLs serving clean Markdown instead of navigation-heavy HTML is exactly what makes the routing cheap. But something still has to do the routing.

Seen this way, `llms.txt` wasn't wrong so much as incomplete: it solved the format problem but not the routing problem.

In both failure scenarios, docs-on-MCP and documentation dumps, the mistake was overloading the AI with too much information. It's the equivalent of giving a plumber who shows up at your door a 1,000-page textbook on hydrodynamics when what the plumber really needs is details about how to fix a leaky faucet. Giving too much information to an AI creates overwhelm, sends it down too many different directions, and paralyzes the analysis so that it's worse than operating without it.

The art of figuring out the right context for the AI to be successful is what's known as [context engineering](https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models).

{% include ads.html %}

## Enter product skills

The latest evolution for context engineering is to provide AI with product skills, which are like quick reference guides for your documentation. The product skill provides a high-level map to your content and functions like a routing hub so that AI can find your content. Your documentation lives on the same developer portal it always did.

The following are a few official skills repositories:

- **Google Cloud:** Published an [official skills repository](https://github.com/google/skills) with specialized product skills for BigQuery, Cloud Run, and Gemini, backed by SkillCreator guidelines and evaluation suites. See [Google's announcement](https://cloud.google.com/blog/topics/developers-practitioners/level-up-your-agents-announcing-googles-official-skills-repository) for details.
- **Google Maps Platform:** Released official [agent skills](https://developers.google.com/maps/ai/agent-skills) ([googlemaps/agent-skills](https://github.com/googlemaps/agent-skills)) enabling coding assistants to integrate geolocation and routing APIs zero-shot.
- **Elastic:** Open-sourced [elastic/agent-skills](https://github.com/elastic/agent-skills), establishing automated staging and drift-detection pipelines for observability and security detection rules.
- **Notion and Anthropic:** Published official skill directories ([anthropics/skills](https://github.com/anthropics/skills), Notion Devs skills for Claude) to make their platforms the default recommendation in coding assistants.

Often the product skills follow a "one skill per product" structure. The skill's directory offers a `SKILL.md` file along with a reference subfolder (among other subfolders, such as scripts and assets). You can pack more granular product detail into the reference subfolder. If you've worked through the first chapter of this course, this structure will look familiar — it's the same [skill anatomy](/ai/skills-structure-creation.html) as an internal authoring skill, just pointed at a different audience.

Skills operate on a principle of progressive disclosure, which is [Anthropic's term](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) for loading skill content in stages. The agent reads only the skill's name and description at startup, which costs roughly 100 tokens per skill. If the description matches the task, the agent reads the body of `SKILL.md`. Only if the body points to something else does the agent open the reference files or run the bundled scripts. Nothing deeper than the description costs you anything until it's needed. As [Addy Osmani put it](https://addyosmani.com/blog/agent-skills/), *"Progressive disclosure is how you get a twenty-skill library into a 5K-token slot without poisoning the well."*

You'll occasionally see this called progressive *discovery* instead. The two describe the same mechanic, but they aren't interchangeable labels: progressive disclosure is the established term, borrowed from UX design and used in Anthropic's documentation, while progressive discovery is an informal alternative some developers prefer because the agent is the one doing the finding. Either way, the point is the same. It keeps you from overwhelming the AI with too much information.

Product skills are currently the main strategy most documentation teams have embraced to make their content discoverable and consumable by agents.

## Anatomy of a product skill

So far I've described product skills abstractly, so let's look at a real one. Notion publishes a set of [skills for Claude](https://app.notion.com/p/notiondevs/Notion-Skills-for-Claude-28da4445d27180c7af1df7d8615723d0), including one called `notion-research-documentation`. Here's an abridged version of its `SKILL.md` — I've trimmed sections and shortened lists (the full file runs about 100 lines):

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

- **The description does the heavy lifting.** The `name` and `description` in the frontmatter are all the agent sees until it decides the skill is relevant. They're the trigger. Notion's description is written the way a user would phrase the request ("searches across your Notion workspace," "turns scattered information into structured reports"), which is what makes the skill fire at the right moments.
- **The body is a workflow, not a manual.** The Quick Start maps a four-step procedure onto Notion's actual tools (`Notion:notion-search`, `Notion:notion-fetch`). Those are MCP tools, so the skill is orchestrating the MCP plumbing, which is the complementary pattern I described earlier.
- **Progressive disclosure is visible in the links.** Output formats, advanced search options, citation styles, and worked examples all live in `reference/` and `examples/` subfolders. The agent reads them only when the task calls for it.
- **The "Common Issues" section carries some of the highest-value content.** Empty search results and permission failures are the gotchas an agent can't reliably infer from its training data, and they're exactly the kind of knowledge tech writers accumulate from support tickets and user feedback.

For contrast, [Google Maps Platform's agent skills](https://github.com/googlemaps/agent-skills) show the routing idea taken to its logical end at platform scale. The installed `SKILL.md` is a thin governance layer that contains almost no API detail itself. Instead, it instructs the agent to fetch a remote skills index, which is a JSON file listing available sub-skills by name and description, then match the user's request against those descriptions and pull down only the matched sub-skills, with an MCP documentation-retrieval tool as a fallback for anything the sub-skills don't cover. It's progressive disclosure served over HTTP. This architecture also neatly sidesteps the staleness problem: the platform team can update sub-skills server-side without users ever reinstalling anything.

When tech writers ask what a product skill actually is, this is the answer: a hundred or so lines of curated routing and know-how. It's a quick reference guide whose reader happens to be a machine.

## How product skills reach users

So you've written a product skill. How do users actually get it? This part of the ecosystem is younger and messier than the skill format itself, and it confused me at first. (Notion distributing skills as downloadable zip files felt strange until I understood which channel those zips serve.) As of mid-2026, distribution happens through four parallel channels.

**A GitHub repo is the canonical home.** Nearly every official skills publisher, including Google Cloud, Google Maps Platform, Elastic, and Anthropic, puts its skills in a public repo with `SKILL.md` files in a predictable structure. This matters more than it sounds, because the tooling described below treats GitHub itself as the registry. There's no separate package server to publish to. You push to a repo, and the repo path becomes the thing people install.

**A CLI installs from that repo.** Vercel's [skills.sh](https://www.skills.sh/) and its open-source [`npx skills` CLI](https://github.com/vercel-labs/skills) are the closest thing the ecosystem has to npm. A user runs `npx skills add googlemaps/agent-skills`, and the CLI fetches the skill from GitHub and writes it into the right configuration directory for whichever agents they have installed, whether that's Claude Code, Cursor, Windsurf, Copilot, Codex, Gemini, or others. No manual copying, no per-tool instructions to document. The site layers discovery on top of this with a trending leaderboard built from the CLI's anonymous install telemetry. This is the channel [Google Maps Platform leads with](https://github.com/googlemaps/agent-skills) in its own README.

**Agent-native packaging offers a second route.** Some harnesses have their own installation systems that can carry skills. Gemini CLI has extensions, installed with `gemini extensions install <repo-url>`. Claude Code reads skills straight off the filesystem, from `~/.claude/skills/` for personal skills or `.claude/skills/` inside a project, and its plugin system can bundle skills together with hooks and MCP server configurations for team distribution. The pattern to notice is that the plugin or extension is the wrapper, while the skill is still just a `SKILL.md` file inside it.

**Direct upload is the channel for non-developers.** claude.ai, the chat product rather than the coding tools, takes custom skills only as [uploaded zip files](https://support.claude.com/en/articles/12512180-use-skills-in-claude) through its settings. The skill then appears in that user's own skills list. Anthropic has been adding organization-level provisioning for Team and Enterprise plans, but the details here have shifted more than once, so check the current help documentation before planning around it. This is exactly why Notion ships zips. Its audience includes people who use Claude through the browser and will never open a terminal, and for them the zip upload is the only door into the house. It's a clunky flow, since you download a file from a docs page and then upload it into a settings screen, and I'd expect it to be a transitional artifact rather than the end state. But it's not as strange as it first looks. It's simply the one channel that reaches non-technical users.

**Native placement mostly doesn't exist.** You might assume the endgame is getting your skill built into Claude or Gemini natively, so that users never install anything. For all but a handful of companies, that channel isn't real. The skills that ship inside the platforms are the platforms' own, such as Anthropic's built-in PowerPoint, Excel, Word, and PDF skills, plus a small curated set of partners. There is no open submission pipeline where hundreds of vendors get their skills into a model's defaults, and given the context-window economics described earlier, there probably never will be one at that scale. What vendors compete for instead is being one install command away, which means publishing where the registries and marketplaces will surface them.

The practical upshot for a documentation team is short. Publish the GitHub repo with `SKILL.md` in the conventional location. Put the one-line install command in your docs next to the getting-started content. Offer a zip if your audience includes people using Claude in the browser. And don't hold the launch waiting for native placement that isn't coming. Google Maps Platform's repo is a reasonable template, offering the same skill through three front doors: `npx skills`, a Gemini CLI extension, and an import-by-URL flow for app builders like Lovable. That's less a strategy than an honest reflection of where the ecosystem is, which is fragmented enough that no channel is safe to ignore yet.

<hr/>

*Continue to the next topic: [Problems with product skills](/ai/product-skills-problems.html)*
