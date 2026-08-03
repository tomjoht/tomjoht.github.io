---
title: "Product skills"
permalink: ai/product-skills.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-08-02
order: 11
---

{% include_relative draft_notice.html %}

The first chapter of this course focused on internal skills — skills you build to automate your own authoring tasks, like editing Javadoc comments or generating release notes. But as I noted in the [scope discussion](/ai/skills.html), there's a whole other side to skills: skills built for *external* users of your documentation. This chapter takes up that side. Product skills are quick reference guides for your documentation, written for machine consumption — they give AI coding agents a high-level map of your product and route them to the right places in your docs.

Before digging into what product skills look like and what roles tech writers should play with them, it's worth understanding why product skills exist at all. The short answer: a huge share of your documentation traffic is no longer human.

## Documentation traffic from AI agents

Technical documentation is experiencing a structural shift as automated requests become a dominant portion of web traffic. In June 2026, Cloudflare CEO Matthew Prince [shared Cloudflare Radar data](https://www.tomshardware.com/tech-industry/artificial-intelligence/bots-have-now-passed-human-traffic-online-cloudflare-boss-laments-says-agentic-traffic-wasnt-expected-to-eclipse-real-people-until-next-year) showing that automated systems now generate 57.5% of HTTP requests to web content, surpassing human traffic at 42.5% — the first time since the web opened to the public that machines account for the majority of its requests. The crossover came sooner than even Cloudflare expected: Prince had predicted it wouldn't arrive until 2027, then conceded in his announcement, *"Welp, that happened faster than I predicted."* These automated requests include crawlers ingesting content, monitoring tools, and AI coding agents.

Looking specifically at developer documentation portals, an April 2026 [Mintlify study](https://www.mintlify.com/blog/state-of-ai) analyzed 790 million requests and found that 45.3% of traffic comes from coding agents, nearly matching human browser requests at 45.8%.

Two caveats before you extrapolate from these numbers. First, they measure different things: Cloudflare's 57.5% counts all automated requests across the whole web — crawlers, scrapers, monitoring bots, everything — while Mintlify's 45.3% isolates coding agents on documentation portals specifically. Second, both count *requests*, not readers. Agents are wildly more request-hungry than humans — Prince's own illustration is that a human shopping for a camera visits five websites, while an agent doing the same task visits 5,000. So the share of your *audience* that is agentic is much smaller than the share of your traffic. The shift is real, but the raw percentages overstate it.

{% include ads.html %}

## Developer tooling

The Mintlify study also found that Claude Code and Cursor together account for 95.6% of all identified AI agent traffic.

Developers increasingly rely on agentic coding tools such as Claude Code, Cursor, Windsurf, Replit, Lovable, Codex CLI, Antigravity, and Gemini CLI. Developers commonly work in both the terminal and a side pane (often through an extension) in their preferred IDE, such as VS Code.

## Machine-readable formats

To serve these machine consumers without token bloat, the industry is standardizing on lightweight, machine-readable Markdown formats such as `/llms.txt` files, `SKILL.md` files, and per-page Markdown mirrors of documentation pages. The token argument is straightforward: a documentation page's HTML arrives wrapped in navigation, scripts, and styling that an agent pays for in tokens without benefiting from, while clean Markdown delivers the same content at a fraction of the cost. Explicit structure helps too — headings, lists, and code blocks give agents natural seams for chunking and citing content, compared to fishing meaning out of div-heavy HTML.

But format alone turns out not to be the fix. Mintlify ran a [2,400-run benchmark](https://www.mintlify.com/blog/llms-txt-agent-benchmark) comparing four ways of serving the same docs — HTML, plain Markdown, Markdown with a link to `/llms.txt`, and Markdown with `/llms.txt` inlined — and plain Markdown was arguably the *worst* performer. Without a map, agents started guessing at `.md` URLs and hit more 404s than they did on HTML. What fixed it was the map: a single link to `/llms.txt` dropped agent 404s to near zero across every model tested, at almost no token cost. (Inlining the full file worked too, but burned more tokens for the same benefit.)

That finding is worth sitting with, because it previews the theme of this whole chapter: the binding constraint on the agent experience isn't the format of your content — it's whether the agent can reliably *find* the right content. Clean Markdown makes each fetch cheap; the map makes the fetches land. Product skills, as you'll see, are essentially this same insight applied one level up.

## The new reader

The most startling change is that nearly half of your developer documentation traffic is an AI coding agent, not a human reader. On the other hand, most of the agentic traffic is directed from human requests. Humans are like the puppetmasters directing the agents with goals, tasks, and other purposes. So it's not as if the agentic traffic constitutes a new, alien intelligence disconnected from any human goals and direction.

Even so, the non-human agent reader poses a new challenge. How do you optimize your content for AI agent consumption, even if the agent is acting on behalf of the human user many times? The topics in this chapter work through that question — starting with how the industry's answer evolved from MCP servers and `llms.txt` files to product skills.

<hr/>

*Continue to the next topic: [From developer experience to agent experience](/ai/product-skills-agent-experience.html)*
