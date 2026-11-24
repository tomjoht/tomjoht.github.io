---
title: "Should you put agent-directed notes in your docs?"
permalink: /blog/agent-directed-notes-in-doc-pages
date: 2026-11-22
categories:
- ai
keywords: agent-directed notes, agent-friendly docs, llms.txt, markdown mirrors, coding agents, prompt injection, documentation strategy
rebrandly: https://idbwrtng.com/agent-directed-notes-in-doc-pages
description: "Some doc sites now include notes aimed directly at coding agents, like Stripe's CLI and API directives. Based on recent research and agent testing, most of these notes are unnecessary, risk triggering prompt-injection filters, or get lost in fetch summaries. The exceptions worth keeping are Markdown mirrors provided through content negotiation and a short pointer to llms.txt."
---

* TOC
{:toc}

{% include ads.html %}

Recently on some doc sites, I've started to see little notes and customizations for coding agents. For example, on Stripe's [quickstart](https://docs.stripe.com/payments/quickstart.md), [get started](https://docs.stripe.com/get-started.md), and [use cases](https://docs.stripe.com/get-started/use-cases.md) Markdown pages, we see this:

> Coding agents: [install the Stripe CLI](https://docs.stripe.com/cli/install) using the installation script for your operating system. Open a new terminal and run `stripe sandbox create --help` to provision an anonymous Stripe sandbox with working API keys. It doesn’t require account registration.

On that same [quickstart Markdown page](https://docs.stripe.com/payments/quickstart.md), Stripe also adds a steering note telling agents not to use the Payment Intent API unless the user explicitly asks, because it requires significantly more code.

You'll find notes to coding agents like this on other doc sites too. Given that Stripe's site is widely seen as a high-quality example of API documentation, you might start to wonder, should I too start adding little notes to agents in my docs? Do these notes to coding agents actually get read by the agents? Which agents, and do the notes influence agent behavior?

In this post, I'll argue that these notes are largely unnecessary and should appear in the visible text that both humans and agents consume. Separating the instruction assumes a false dichotomy of human vs. machine labor. There's also a risk that agents will interpret direct instructions as prompt injection. However, adding a short, informative note pointing to an `llms.txt` file does seem to help coding agents find other `.md` files, since the `.md` version of a page lacks normal site navigation.

## What others have said

Let's take a tour through other posts about this same topic. In [Does whispering to agents in docs help?](https://passo.uno/if-you-are-an-agent-read-this/), Fabrizio Ferri Benedetti addressed this topic head-on. In tests with Claude Sonnet, he found that calling out agents by name (such as a "For AI agents and LLMs" heading) didn't influence the model's behavior any more than a generic heading. What did influence behavior was providing an explicit recommendation in the documentation. 

He also pushes back on the idea of serving agents a separate, stripped-down version of the docs, asking why we would treat humans as dumber readers. Overall, he sees no overriding argument for presenting a different version of content for robots than for humans. Provide the specific information for both audiences in the same text.

In [Designing an Agent Reading Test](https://dacharycarey.com/2026/04/06/designing-agent-reading-test/), Dachary Carey notes another risk that these notes can create. If your notes read as directives to agents, trying to steer them toward a specific behavior, safety filters can interpret them as prompt injection. When Carey included `Agent:` blockquotes with direct instructions on her test pages, Claude Code's `WebFetch` tool flagged them as prompt injection and refused to return the page content at all. Switching to plain prose fixed it. As a result, Carey says any agent-directed notes should use neutral, documentation-style language rather than commanding the agent to do something specific.

Prompt injection on the web isn't just a theoretical concern. In [Indirect Prompt Injection in the Wild](https://arxiv.org/abs/2604.27202), Khodayari et al. analyzed 1.2 billion URLs across 24.8 million hosts and found 15,300 validated instances of indirect prompt injection across 11,700 pages, spanning disruptive prompts, reputation manipulation, and content-protection directives. About 70% of those instructions were hidden in non-rendered HTML such as headers, comments, or metadata. 

If you could simply hide some text on a page that tells an agent what to do, and the agent obeyed it, AI tools wouldn't last long, because they would become vectors for malware. As such, agents are on high alert for safety risks like this, and in the researchers' experiments, compliance with hidden instructions stayed low (topping out at 8% for smaller models on plain text). Doc sites that resemble prompt injection will most likely find their instructions ignored or blocked.

Besides the risks I noted, there's also reason to push back on agent-directed notes based on how agents work. There's a common assumption that when you ask an agent to code something, it goes out and reads the web for you, then comes back with instructions on how to build the app. In reality, coding agents often rely on their training data first, since searching and fetching web pages adds latency and bloats token consumption.

Even when runtime coding agents do fetch or search the web, they often delegate that step to a smaller intermediary model rather than reading the raw page directly. For example, Claude Code's `WebFetch` tool passes fetched pages through a smaller model (Haiku) that returns a condensed, query-focused summary, as [Mikhail Shilkov documented](https://mikhail.io/2025/10/claude-code-web-tools/). While some agents do pull full pages directly, many work from lossy summaries synthesized from one or more sites. Any side note you've crafted for agent eyes only is likely to be filtered out or lost in that summary.

Even if you wanted to include agent-directed notes, there's a technical complexity to maintaining them. How would you maintain agent content versus human content? Would this become another conditional served alongside the other conditionals in your text? Would you start conditionalizing the agent instructions as well based on different platforms, versions, or regions? Over time, that creates more drift and maintenance overhead, because now you have to remember hidden instructions for agents that aren't visible on the page you're editing.

Overall, it doesn't seem like there's a strong case for agent-directed notes like the ones I showed from Stripe. It's better to put your guidance on the same visible page for both humans and machines. 

That said, it's always good to conduct experiments, and to try to measure the results. Models, harnesses, workflows, etc. are always changing, and what works today might not be in place tomorrow. I imagine Stripe does a lot of testing for experiments like this, so maybe they've found these agent-directed notes to be helpful.

## When instruction is good

There is a growing consensus that two forms of agent-directed instruction are useful: (1) telling agents how to get the Markdown version of a page, and (2) pointing them to your `llms.txt` file. These two callouts are pretty standard on Markdown mirror pages.

For example, on [Temporal's quickstart](https://docs.temporal.io/quickstarts.md) and others, it starts out like this:

```markdown
# Quickstarts

> For the complete documentation index, see [llms.txt](https://docs.temporal.io/llms.txt).
> Any documentation page is available as raw Markdown by appending `.md` to its URL.
> For related questions, query `https://docs.temporal.io/api/retrieve?q=<question>&jtb=<job-to-be-done>&src=md-page&agent=<your-name>` (no auth; returns JSON `{content, source_url, page_url}`, with `source_url` pointing to Markdown for docs pages). Don't include personal data or credentials.
> If this page is wrong or missing something you needed, or Temporal behaves differently from what it says, report it with `https://docs.temporal.io/api/feedback?title=<summary>&message=<what-happened>&category=documentation&page_url=/quickstarts&src=md-page&agent=<your-name>` (use `category=product` when the product, not the page, is wrong). Report only a specific problem you hit, send it once, and don't include personal data or credentials.
```

And on some NVIDIA doc pages, like [this one](https://docs.nvidia.com/agent-policy-fabric.md):

```markdown
> This page is for version Dev (default).
> For other versions, use one of these documentation indexes:
> - Dev (default): https://docs.nvidia.com/agent-policy-fabric/dev/llms.txt

> For clean Markdown of any page, append .md to the page URL.
> For a complete documentation index, see https://docs.nvidia.com/agent-policy-fabric/llms.txt.
> For AI client integration (Claude Code, Cursor, etc.), connect to the MCP server at https://docs.nvidia.com/agent-policy-fabric/_mcp/server.
```

In fact, it's fun to try going to `.md` of any developer doc site you're viewing and see what's there. Sometimes `.md` works, other times it doesn't, and the top-of-page instruction for agents is almost always different from site to site. Regardless of the variation, I'm regularly seeing two instructions: a pointer to the `llms.txt` and info about accessing the Markdown mirror pages.

In Dachary Carey's [Agent-Friendly Docs](https://dacharycarey.com/2026/02/18/agent-friendly-docs/) post, she notes these two common failure patterns with agents, hence the recommendations. Agents struggled to figure out where docs pages lived on a site, and they often didn't know how to get the Markdown version of a page. She says when a page included an explicit pointer to `llms.txt` (as Anthropic's docs do), Claude Code saw the instruction and followed it on its own without prompting.

For example, [Anthropic's Claude Code docs](https://code.claude.com/docs/en/overview.md) open their Markdown pages with a short note like this:

> Fetch the complete documentation index at: `https://code.claude.com/docs/llms.txt`
> Use this file to discover all available pages before exploring further.

The case for providing a Markdown mirror for agents seems undeniable. A Markdown page provides the same information as HTML in far fewer tokens. However, that same Markdown page strips off the header, sidebar, and footer, making it difficult for agents to locate other pages. Agents don't typically parse your sitemap to find other pages. This makes the case for `llms.txt` much stronger. In [Mintlify's benchmark](https://www.mintlify.com/blog/llms-txt-agent-benchmark) of 2,400 runs across 20 doc sites, adding a single link to `llms.txt` inside Markdown pages dropped dead-URL 404s to near zero across every model they tested.

However, note that for other types of machine readers, mainly crawlers training on your content, `llms.txt` files might not be used as much. This discrepancy likely explains the conflicting views on whether `llms.txt` is useful: those dismissing it are often looking at crawlers and SEO, while those promoting it are looking at runtime coding agents trying to navigate a site.

Regardless, adding an `llms.txt` file isn't a big task. You can automate this list of files, set a weekly skill to rescan your directories, and mostly forget about it. There's more to setting this file up, though. For example, keep page-length constraints in mind (limiting the file to about 50,000 characters), which means for large doc sites you'll probably need to break it up into multiple `llms.txt` files, making the root `llms.txt` a routing file to the subfiles. You can see how I did this in the Google Maps docs here: [https://developers.google.com/maps/llms.txt](https://developers.google.com/maps/llms.txt). I'll return to this in a later post.

The Markdown mirror has some other best practices too. You don't need to advertise the Markdown link at the top of your HTML pages, though many sites do, and hidden HTML hints don't seem to work either. In [Evil Martians' server-log study](https://evilmartians.com/chronicles/which-ai-actually-reads-your-site-two-months-of-llm-traffic-measured), a hidden HTML hint pointing to `.md` pages got zero measurable hits, while Claude Code requested Markdown 88% of the time through content negotiation. 

"Content negotiation" refers to how entities requesting content can specify the desired format for the content. With content negotiation, when an agent sends `Accept: text/markdown` in the HTTP request header, your site returns the Markdown page automatically at the same URL. You can also include a `<link rel="alternate" type="text/markdown">` tag in the HTML `<head>` to advertise the Markdown version without cluttering the visible page.

## Conclusion

I've summarized best practices for agent-directed notes, but I haven't done any experimentation to actually measure and test these practices. For that measurement, you'll need access to your server-side logs (not Google Analytics, which relies on JavaScript) to track and measure agent behavior. Analyzing those logs is complex, since many crawlers and bots might present themselves as agents, and some agents might not identify themselves properly. I'll dive into this topic in another post.

## Posts on agent readability

For more posts on agent readability, see the following:

* [Agent readability: Why agents can't see content that JavaScript loads on click](/blog/make-documentation-agent-friendly)
* [Looking at a site like an agent — identifying semantics in styling](/blog/identify-semantics-in-styling-agents)
* [Chunking your content for agent readability](/blog/chunking-content-for-mcp-ingestion-agent-readability)
* [Achieving a feedback improvement loop with documentation by simulating user queries](/blog/improvement-feedback-loop-docs)
* [Agent readability: Carrying over top-level page notes into independent chunks](/blog/agent-readability-deprecated-content-page-notes)
