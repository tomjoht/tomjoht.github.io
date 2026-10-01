---
title: "Making docs accessible to agents"
permalink: ai/product-skills-agent-friendly-docs.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-10-01
order: 17
---

{% include_relative draft_notice.html %}

The docs-first approach rests on an assumption that's easy to skip past. If agents are supposed to get their guidance from your documentation, they have to be able to read it. However, many documentation sites are built in ways that work well in a browser and poorly for an agent. What does an agent actually see when it fetches one of your pages? Does it see the content behind your tabs? Does it get past your bot protection, or does it get a challenge page instead? And if your pages load their content with JavaScript, does the agent see anything at all?

This topic walks through how agents read documentation pages, the ways pages become hard or impossible for agents to read, and what to do about each one. [From developer experience to agent experience](/ai/product-skills-agent-experience.html) introduced Markdown mirrors and `/llms.txt` as delivery layers. This topic covers the practical work of making those layers function, along with the other problems that keep agents from reading a page. The last section shows how to score a whole site against these problems with AFDocs, an open-source tool built on the Agent-Friendly Documentation Spec.

## How agents read a page

Most coding agents don't read your page in a browser. They make an HTTP request, convert the HTML response to Markdown or plain text, and cut the result off at a size limit. Many then pass what's left to a smaller model that answers whatever the agent asked about the page, so the agent works from a summary shaped by its own question rather than from the page itself ([Shilkov](https://mikhail.io/2025/10/claude-code-web-tools/)). These fetch tools generally don't run JavaScript or click on anything. Anthropic's web fetch tool, for example, doesn't support pages rendered with JavaScript ([Anthropic](https://platform.claude.com/docs/en/agents-and-tools/tool-use/web-fetch-tool)).

The details vary by tool, which is part of what makes this work tricky:

- **Claude Code** converts HTML to Markdown with the Turndown library, truncates the result at about 100 KB of text, and passes it to a smaller model before Claude sees it ([Shilkov](https://mikhail.io/2025/10/claude-code-web-tools/)). Only certain trusted sites that serve Markdown under that limit skip the extra step ([Gurgone](https://giuseppegurgone.com/claude-webfetch)).
- **Cursor** asks for Markdown through content negotiation ([Checkly](https://www.checklyhq.com/blog/state-of-ai-agent-content-negotation/)). Its size limits range from about 28 KB to more than 240 KB, depending on which fetch method it picks ([Rodriguez](https://rhyannonjoy.github.io/agent-ecosystem-testing/docs/anysphere-cursor/cursor-interpreted-vs-raw)).
- **GitHub Copilot's** fetch tool returns relevance-ranked excerpts, averaging about 13,000 characters, rather than whole pages ([Rodriguez](https://rhyannonjoy.github.io/agent-ecosystem-testing/docs/microsoft-github-copilot/copilot-interpreted-vs-raw)).
- **The reference MCP fetch server** cuts content off at 5,000 characters by default, although the model can ask for a higher limit or for later chunks ([MCP fetch server](https://github.com/modelcontextprotocol/servers/tree/main/src/fetch)).

In other words, the same page might arrive nearly whole in one tool, as excerpts in another, and as its first 5,000 characters in a third. Agents also tend not to notice when content is missing. In testing, agents sometimes treated filtered excerpts as the complete page, because the excerpts read coherently on their own ([Rodriguez](https://rhyannonjoy.github.io/agent-ecosystem-testing/docs/anysphere-cursor/cursor-interpreted-vs-raw)).

Several fixes in this topic overlap with web accessibility practices, such as text alternatives for images and descriptive headings. The overlap isn't complete, though. Screen readers work from the page a browser has already rendered, so they see JavaScript-generated content that most agents miss. The same fixes also help any documentation chatbot or MCP server that indexes your published site, since its ingestion step fetches pages much the way an agent does.

## Content that isn't in the HTML

Some failures keep content from reaching the agent at all. These are the most damaging problems in this topic, and they're easy to miss, because the page looks fine to anyone viewing it in a browser.

**Client-side rendering.** If your docs are a single-page app that builds each page in the browser, the HTTP response contains framework code, styles, and navigation, but no documentation. The server still returns a 200 status, so the agent has no reason to suspect a problem. It tries to work from the navigation links or falls back on its training data. 

In one set of controlled probes, a client that didn't run JavaScript couldn't retrieve an answer that existed only in a JavaScript payload ([Vercel](https://vercel.com/kb/guide/make-your-documentation-readable-by-ai-agents)). The framework itself usually isn't the cause, since most modern frameworks can render pages on the server. To fix the problem, turn on server-side rendering or pre-rendering for documentation pages. If only some templates load content in the browser, such as a page whose code samples change with a language picker, you can fix those templates instead of rebuilding the whole site. API reference explorers that render endpoint documentation in the browser from an OpenAPI file have the same problem, often on the pages agents need most, so pre-render those as static HTML too.

**Content that loads on interaction.** Tabs or accordions that fetch their content when someone clicks, "show more" buttons, infinite scroll, and pages reachable only through a search box all hide content from agents, because agents don't click or type. Content that's in the HTML but hidden with CSS is a different case. Converters ignore CSS, so agents usually do get that content, which causes the tab problem described in the next section.

**Images, embeds, and tooltips.** Converters keep an image's alt text and URL, not the image itself, so a diagram or a screenshot of code reaches the agent as whatever the alt text says. Code samples embedded through JavaScript or iframes often don't arrive at all, and neither do definitions that appear only in hover tooltips. Write code as text rather than screenshots, give diagrams alt text that states what they show, link videos to transcripts, and put tooltip definitions in the page text or a glossary.

## Content that arrives in an unusable form

Other failures deliver the content, but in a form that pushes the important parts out of reach or scrambles their structure. The fixes here are mostly about page design rather than infrastructure.

**Boilerplate before the content.** Navigation menus, sidebars, and inline CSS or JavaScript count against an agent's size limit just like your prose does. Turndown, the converter Claude Code uses, doesn't remove any elements by default, and it outputs the text of any tag it has no rule for, so the contents of an inline `<style>` block can come through as raw CSS ([Turndown](https://github.com/mixmark-io/turndown)). The overhead adds up quickly. Cloudflare measured one of its own blog posts at 16,180 tokens as HTML and 3,150 tokens as Markdown, an 80% reduction ([Cloudflare](https://blog.cloudflare.com/markdown-for-agents/)). Move CSS and scripts into external files, which agents generally don't fetch, and keep the markup before your main content short.

**Long pages.** Anything past an agent's limit is gone, and the agent often doesn't notice. Limits vary widely, from 5,000 characters for the MCP fetch default to about 100 KB for Claude Code, so a page that fits comfortably in one tool can get cut off in another. Split long tutorials and reference pages into smaller pages that each make sense on their own. Avoid slicing one topic into numbered windows, though, since an agent that gets one window doesn't have a complete answer.

**Tabs and dropdown filters.** Because hidden tab panels are still in the HTML, a page with eight language tabs converts into one long stream that contains every variant in source order. An agent might see only the first few variants before the cutoff, and asking for a specific language doesn't help if that tab falls past it. (In one [test of a MongoDB tutorial](https://dacharycarey.com/2026/02/19/agent-web-fetch-spelunking/) by Dachary, a request for the Python version came back with no Python at all.) Repeated headings inside tabs, such as "Step 1" and "Step 2," make the problem worse, since nothing tells the agent which variant a step belongs to. Put each major variant on its own page, or at least add the variant to each heading ("Step 1 (Python)"), and put the most commonly used variant first.

**Tables.** Tables are mostly fine, with some caveats. When you serve Markdown yourself, simple tables come through intact, because Markdown has a table syntax. When the agent converts your HTML instead, the result depends on its converter. Turndown's default rules don't include tables (table support comes from a separate plugin), so a converter running the defaults turns each cell into its own paragraph and loses the rows and columns ([Turndown](https://github.com/mixmark-io/turndown)). Even a good converter can't express merged cells, or lists and code blocks inside cells, because Markdown tables can't contain block-level elements ([GFM spec](https://github.github.com/gfm/#tables-extension-)). 

Very large generated tables cause a different problem, since they can push the rest of the page past an agent's limit. To keep tables usable, serve Markdown, keep tables to simple rows and columns, state critical facts such as constraints in prose rather than only in a table cell, and put explanatory prose before large tables so that truncation removes rows rather than explanation.

{% include ads.html %}

## Pages the agent can't reach

The failures in this section stop an agent before it reads anything. They also tend to be invisible from the inside, since the people who run a docs site rarely browse it the way an agent does.

**Bot protection.** CDN bot management and firewall rules tuned for scrapers often can't tell an agent fetching docs for a developer from abuse. In the same controlled probes mentioned earlier, a server that returned `403` to agent user agents blocked both a plain fetch client and one that ran JavaScript ([Vercel](https://vercel.com/kb/guide/make-your-documentation-readable-by-ai-agents)). These failures are often hard to spot. A challenge page or rate limit that a person clicks through or never notices can stop an agent cold, and some limits start only after the first few requests, so a quick check in a browser looks fine while a multi-page agent session fails. Exempt documentation routes from aggressive bot enforcement. Where you do need limits, return a `429` status with a `Retry-After` header rather than a silent challenge page, which gives the agent a clear signal to back off ([Vercel](https://vercel.com/kb/guide/make-your-documentation-readable-by-ai-agents)). Test by fetching several pages in a row rather than one.

**robots.txt rules.** Blocking AI crawlers such as ClaudeBot or GPTBot in `robots.txt` affects training crawlers, which identify themselves. It mostly doesn't affect coding agents, because many of them send generic or browser-like user-agent strings. In one test, Claude Code identified itself as `axios/1.8.4` and Cursor as a version of Chrome ([Checkly](https://www.checklyhq.com/blog/state-of-ai-agent-content-negotation/)). A few agents do identify themselves, such as OpenAI's Codex, which sent `ChatGPT-User` in the same test, so a broad rule against AI user agents can still catch them. Decide about training crawlers and agent fetches separately.

**Login walls.** An agent that hits a login wall gets a `401` or `403` error, a login page served with a 200 status, or a redirect to a single sign-on provider on another host. In each case, it falls back on training data or goes looking for blog posts about your product, sometimes without telling the user. If you must gate some documentation, keep the reference docs public, publish a public `/llms.txt` that describes what exists, ship docs with your SDK, or offer an MCP server that handles authentication on the agent's behalf.

**Moved and broken URLs.** Agents often guess at URLs, and without a map of the site, they request pages that don't exist ([Mintlify](https://www.mintlify.com/blog/llms-txt-agent-benchmark)). Moved content makes this worse, because a URL that an agent remembers from training might no longer work. Same-host redirects with a `301` status work well, since the HTTP client follows them without the agent noticing. Claude Code doesn't automatically follow redirects to a different host. It reports the new URL instead, and the agent has to make a second request ([Shilkov](https://mikhail.io/2025/10/claude-code-web-tools/)). 

JavaScript redirects don't work at all for a client that doesn't run JavaScript. Soft 404s, meaning error pages served with a 200 status, are worse than real 404s, because they remove the signal that tells the agent a page doesn't exist ([Vercel](https://vercel.com/kb/guide/make-your-documentation-readable-by-ai-agents)). Keep URLs stable, redirect on the same host when you must move content, and return a real `404` for missing pages.

## Serve Markdown versions of your pages

Serving Markdown sidesteps most of the conversion problems above, because the agent gets clean content instead of whatever its converter makes of your HTML. Fix the HTML first, though, since many agents never ask for Markdown. Serve the Markdown in two ways:

- **`.md` URLs.** Make each page available at its normal URL with `.md` appended, such as `/guide/authentication.md`. Agents use these URLs when `llms.txt` or a note on the page tells them the URLs exist.
- **Content negotiation.** When a request includes `Accept: text/markdown`, return the Markdown version from the normal page URL, with a `Content-Type: text/markdown` header and a `Vary: Accept` header so that caches keep the two versions separate ([MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Content_negotiation)). In one test, Claude Code, Cursor, and OpenCode requested Markdown this way, while Codex, Gemini CLI, Copilot, and Windsurf didn't ([Checkly](https://www.checklyhq.com/blog/state-of-ai-agent-content-negotation/)). In a larger study, 65% of agent fetches asked for Markdown ([Vercel](https://vercel.com/kb/guide/make-your-documentation-readable-by-ai-agents)). The Markdown is usually much smaller than the HTML, by 74% in one measurement, and the cache setup matters, because a misconfigured cache can serve Markdown to a person's browser ([Pandiyan](https://dineshpandiyan.com/blog/serving-markdown-to-ai-agents/)).

How you build the Markdown depends on your tooling:

- **Documentation platforms.** Many hosted platforms generate Markdown versions automatically. Mintlify generates `.md` versions, `/llms.txt`, and `/llms-full.txt` for the sites it hosts ([Mintlify](https://www.mintlify.com/blog/what-is-llms-txt)). Read the Docs answers `Accept: text/markdown` requests on its hosted sites with no configuration ([Read the Docs](https://docs.readthedocs.com/platform/latest/reference/markdown-for-agents.html)). Fern generates both index files as part of the docs build ([Fern](https://buildwithfern.com/post/optimizing-api-docs-ai-agents-llms-txt-guide)). Check whether your platform does this, and whether the feature is turned on.
- **Static site generators.** Generate a Markdown version of each page at build time from the same source as the HTML, so the two versions can't drift apart. The [llms.txt site](https://llmstxt.org/) lists plugins for several generators and content management systems.
- **Your CDN.** Cloudflare's [Markdown for Agents](https://developers.cloudflare.com/fundamentals/reference/markdown-for-agents/) converts HTML to Markdown at the edge when a request asks for it, with no code to write. It's available on Pro, Business, and Enterprise plans, strips navigation, headers, footers, scripts, and styles, and handles pages up to 2 MB. Unless your server sets its own `Content-Signal` header, Cloudflare adds one that tells crawlers your content can be used for AI training, which you might or might not want.
- **A worker or edge function.** On this site, I added a Cloudflare worker in about five minutes that serves the Markdown version of any page, both when you append `.md` to the URL and when a request asks for Markdown.

## Check the Markdown you serve

A Markdown generator is a second rendering pipeline, and it needs its own quality checks. People look at your HTML every day, but almost nobody reads the Markdown, so it can stay broken without anyone noticing. That happened on this site. My worker stopped converting each page at the first ad block in the article, so agents that asked for Markdown got only the content before that ad, often less than a fifth of the page. The skills overview, for example, came through as 382 of its roughly 1,980 words. Nothing looked wrong in a browser, and the problem only showed up when the word counts of the Markdown and HTML versions were compared. Check for these problems:

- **Missing content.** A Markdown pipeline can drop sections, stop partway through a page, or skip pages entirely while the HTML looks fine. Compare the Markdown and HTML versions of a sample of pages, and check the last section of each.
- **Unclosed code fences.** An unclosed code fence turns everything after it into code, so the agent reads the rest of the page as literal text rather than as instructions.
- **Relative links.** Agents often lose track of a page's original URL once its content passes through a summarizing model or gets split into chunks, and a link like `/guide/auth` means nothing without it. Use absolute URLs in the Markdown you serve.
- **Wrong content types.** Make sure each `.md` URL returns Markdown with a `text/markdown` content type, not an HTML error page with a 200 status.

## Help agents find the better versions

Agents rarely discover a Markdown mirror or an `/llms.txt` file on their own. They mostly find these files through links. In one study, 86% of agent fetches of `llms.txt` came through a link rather than a guessed path, and about a third of the runs that reached the file went on to use a page it listed ([Vercel](https://vercel.com/kb/guide/make-your-documentation-readable-by-ai-agents)). [Mintlify's benchmark](/ai/product-skills-agent-experience.html#markdown-and-llmstxt-solve-format-and-navigation-problems) showed what happens once agents do find the file, with a link to `/llms.txt` cutting their 404 errors to near zero. Content negotiation is the exception to the discovery problem, since agents that send `Accept: text/markdown` get Markdown without knowing anything about your site. To help agents find the rest:

- **Publish an `/llms.txt` index.** The format is a Markdown file with an H1 heading, a short summary in a blockquote, and lists of links ([llms.txt proposal](https://llmstxt.org/)). Link to the Markdown version of each page with absolute URLs, and keep the file small enough to fit in a single fetch. For a larger site, use a short top-level index that links to section-level index files. Point the index at your current release, so agents skip outdated versions ([GitBook](https://www.gitbook.com/blog/what-is-llms-txt)). Some platforms also generate an `/llms-full.txt` that concatenates every page into one file, which suits APIs small enough to fit in a context window ([Fern](https://buildwithfern.com/post/optimizing-api-docs-ai-agents-llms-txt-guide)).
- **Point to it from every page.** Add a one-line note at the top of each page, in both the HTML and the Markdown, that tells agents where to find the index and the Markdown versions. The documentation from [Anthropic](https://code.claude.com/docs/en/overview), [Cloudflare](https://developers.cloudflare.com/fundamentals/reference/markdown-for-agents/), and [Payabli](https://docs.payabli.com/guides/pay-out-developer-bills-manage) all includes a note like this. You can also advertise each page's Markdown version with a `<link rel="alternate" type="text/markdown">` tag in the page's `<head>` ([Vercel](https://vercel.com/kb/guide/make-your-documentation-readable-by-ai-agents)). Some sites hide the note visually and leave it in the HTML for converters. If you do, keep in mind that screen readers still announce visually hidden text.

## How to test your docs

You can check most of these problems in a few minutes without special tools. Pick a handful of representative pages, such as a long tutorial, a page with tabs, an API reference page, and a page with a large table, and then do the following:

1. Fetch a page without a browser, and search for a phrase that appears near the end of the page in your browser. (Pick a phrase without quotation marks or apostrophes, since the HTML might encode them differently.)

   ```
   curl -s https://docs.example.com/guide/auth | grep -c "a phrase near the end of the page"
   ```

   A count of `0` means the phrase isn't in the HTML the agent receives.

2. Request the Markdown version both ways, and check that each response starts with your content rather than navigation:

   ```
   curl -s -H "Accept: text/markdown" https://docs.example.com/guide/auth | head -40
   curl -s https://docs.example.com/guide/auth.md | head -40
   ```

3. Check the response headers for `Content-Type: text/markdown` and `Vary: Accept`:

   ```
   curl -sI -H "Accept: text/markdown" https://docs.example.com/guide/auth
   ```

4. Compare the Markdown with the HTML. Check the last section of the page, the last tab, and the last rows of any large table.

5. Ask your agent to fetch the page and quote its final paragraph, or a sentence from the last tab. Then check the quote against the page. Agents sometimes report that they read a whole page when they didn't.

## Score your site with AFDocs

The checks above work well for a handful of pages, but they don't scale to a site with a few hundred. Which pages have the problem? Is it one template or the whole site? And when you fix something, did the fix change anything, or did you just test a different page? For a site-wide view, you can use [AFDocs](https://afdocs.dev/), an open-source command-line tool that scores a documentation site against the [Agent-Friendly Documentation Spec](https://agentdocsspec.com/). The spec grew out of Dachary Carey's research on how agents fetch documentation. It defines 28 checks in seven categories, and they line up closely with the problems in this topic, including client-side rendering, page size, tabbed content, soft 404s, Markdown that drifts from the HTML, and bot protection. AFDocs runs those checks, weights each one by how much it affects agents, and returns a score from 0 to 100 with a letter grade ([AFDocs](https://afdocs.dev/what-is-agent-score)).

AFDocs requires Node.js 22 or later. To score your site, do the following:

1. Run the scorecard against your docs site:

   ```
   npx afdocs check https://docs.example.com --format scorecard
   ```

   AFDocs finds pages through your `llms.txt` file and sitemap, samples up to 50 of them, and runs all 28 checks. The scorecard shows an overall score, a score for each category, and a fix suggestion for each check that fails or warns ([AFDocs](https://afdocs.dev/quick-start)). The tool waits between requests and limits how many it sends at once, so it shouldn't put much load on your server.

2. Read the interaction diagnostics before the individual check results. These diagnostics flag problems that come from a combination of checks, such as a site that serves Markdown at `.md` URLs but gives agents no way to find it. Also keep in mind that some failures cap the score no matter how well the rest of the site does. A missing `llms.txt` file caps the score at 59 (D), and a site where three-quarters or more of the sampled pages are empty JavaScript shells caps at 39 (F) ([AFDocs](https://afdocs.dev/agent-score-calculation)). In other words, a low score might mean that one critical thing is wrong rather than many things.

3. List the specific pages behind each problem:

   ```
   npx afdocs check https://docs.example.com --verbose --fixes
   ```

   The scorecard summarizes what's wrong, while this output names the pages where each check failed.

4. Fix a problem, and then re-run only the related checks. For example, the first command below rechecks your `llms.txt` file, and the second checks a single page for rendering and size problems:

   ```
   npx afdocs check https://docs.example.com --checks llms-txt-exists,llms-txt-valid,llms-txt-size
   npx afdocs check https://docs.example.com/guide/auth --sampling none --checks rendering-strategy,page-size-html
   ```

   By default, AFDocs samples pages at random, so two runs can test different pages and produce different scores. When you compare a score before and after a fix, add `--sampling deterministic` so that both runs test the same pages. Also, if your CDN caches the Markdown, purge the cache before you re-run, or the scan might test the Markdown from before your fix.

5. Add AFDocs to your build so that regressions get caught before they ship. The command exits with code `1` when any check fails, and AFDocs includes test helpers for Vitest, so you can run the checks in GitHub Actions or another CI system ([AFDocs](https://afdocs.dev/ci-integration)). If you check a local build rather than the deployed site, skip the checks that only your production server can answer, such as content negotiation and cache headers. The `markdown-content-parity` check, for example, compares the Markdown and HTML versions of each sampled page, which is the same comparison that exposed the ad-block problem on this site.

When I ran the scorecard against the AI course on this site (`https://idratherbewriting.com/ai/`), AFDocs sampled 50 pages, made 588 requests, and returned an overall score of 98 (A). Six of the seven categories scored 98 or higher:

```
Overall Score: 98 / 100 (A)

Category Scores:
  Content Discoverability              100 / 100 (A+)
  Markdown Availability                100 / 100 (A+)
  Page Size and Truncation Risk        100 / 100 (A+)
  Content Structure                     98 / 100 (A)
  URL Stability and Redirects          100 / 100 (A+)
  Observability and Content Health      76 / 100 (C)
  Authentication and Access            100 / 100 (A+)
```

The grade hides two failures, though. The `markdown-content-parity` check found substantive differences between the Markdown and HTML versions of 23 of the 50 pages, with an average of 21% of the HTML content missing from the Markdown. The `markdown-link-portability` check found links in the Markdown of 4 pages that didn't resolve. Both checks carry a medium weight, and AFDocs scores multi-page checks in proportion to how many pages pass, so the failures barely moved the overall score. The scan also warned that the `llms.txt` note on each HTML page appeared past the halfway point of the page rather than near the top, because the sidebar navigation came before the note in the HTML. In other words, the grade is a fair summary of whether agents can reach the content, but the individual check results are where problems like these show up.

An interaction diagnostic grouped the failing pages and traced both symptoms to the Markdown pipeline, which turned out to be only partly right. A comparison of the Markdown and HTML versions of three flagged pages showed that none of the article text was missing. The gap was page chrome, such as the course progress list, the "Last updated" line, the author bio, and the footer, which the Markdown version leaves out. The broken links weren't a pipeline problem either. They were relative links in pages that had moved from the API course into the AI course, so they were broken in the HTML too. Marking the human-only elements with a `data-markdown-ignore` attribute tells AFDocs to leave them out of the parity comparison, and rewriting the links fixed the rest. (A check of every internal link in the course, rather than only the sampled pages, turned up 31 broken links across 6 pages.) As such, the scan is a good pointer to where to look, but the fix usually takes some reading of the actual pages.

After the fixes went live, a second scan returned 100 (A+), although it still reported broken links on 2 pages and a parity difference on 1 page. The broken links came from Markdown that the Cloudflare worker had cached before the fix. The Markdown responses carry a four-hour cache lifetime, so for a few hours the HTML had the corrected links while the cached Markdown still had the old ones. The parity failure probably has the same cause, since a comparison of fresh Markdown against the HTML for all 50 pages showed no missing article text. It's also worth noticing that a site can score 100 while two checks fail, which is one more reason to read the check results rather than the grade.

There are a few caveats to keep in mind. AFDocs is still in early development (version 0.x), so check names and output formats might change between versions ([AFDocs](https://afdocs.dev/about)). If your docs platform can't support some checks, such as serving Markdown, you can list only the checks you control in a config file so the score reflects what you can act on ([AFDocs](https://afdocs.dev/improve-your-score)). More importantly, the score measures whether agents can reach and read your pages, not whether the content helps them finish a task. A site can score an A and still have a tutorial that skips a prerequisite. To see how your own agent handles the reading failures described in this topic, point it at [agentreadingtest.com](https://agentreadingtest.com/).

## Where to start

If you can only do a few things, start with the problems that block agents entirely. Make sure your content is in the HTML, and check that bot protection lets agents through, since nothing else matters when an agent gets an empty shell or a challenge page. After that, serve Markdown and check it against the HTML, publish an `/llms.txt` index and point to it from every page, keep pages small, and keep URLs stable.

Most of this work is configuration rather than writing, which makes it some of the cheapest work in this chapter. A reasonable first step is to run the AFDocs scorecard against your site, run the five manual checks against your five most-visited pages, and note what's missing.

<hr/>

*Continue to the next topic: [Roles for tech writers with product skills](/ai/product-skills-tech-writer-roles.html)*
