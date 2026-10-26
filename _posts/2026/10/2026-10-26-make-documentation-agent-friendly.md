---
title: "Making documentation pages agent friendly"
permalink: /blog/make-documentation-agent-friendly
date: 2026-10-26
categories:
- ai
- writing
keywords: agent-friendly docs, AI agents, markdown mirror, Cloudflare Workers, llms.txt, content negotiation, JavaScript, code tabs, page size, truncation, hallucination, chunking, MCP, Agent-Friendly Documentation Spec
rebrandly: https://idbwrtng.com/make-documentation-agent-friendly
description: "This week I'm working on making our doc site agent friendly. Most agents read pages through fetch tools that don't run JavaScript, so content that loads only when someone clicks is invisible to them, while content that's merely hidden with CSS still comes through. Long pages are another problem, because agents truncate them and then fill the gaps with guesses. This post covers which JS patterns can stay, why long pages need splitting, and how I set up a Markdown mirror with a Cloudflare worker."
linkedin: https://lnkd.in/p/gmiDHbii
---

* TOC
{:toc}

This week one of my primary tasks is to make our documentation site agent friendly. Over the years, writers have incorporated several JS-driven techniques to try to make pages more human friendly. This might involve buttons that you click to reveal hidden content, thereby making the initial page less daunting and only showing content that the reader wants to see when they choose to see it. 

## Content agents can and can't see

This pattern can still work for agents, but only under one condition. The fetch tools that coding agents use to read pages generally don't run JavaScript, click buttons, or choose filters. They make an HTTP request, convert the HTML to Markdown, and work from that. (Mikhail Shilkov's [breakdown of Claude Code's web tools](https://mikhail.io/2025/10/claude-code-web-tools/) walks through this process step by step, and Anthropic's [web fetch tool docs](https://platform.claude.com/docs/en/agents-and-tools/tool-use/web-fetch-tool) note that it doesn't support pages rendered with JavaScript. Browser-based agents can click, but that isn't how most coding agents read docs.) 

As a result, what matters is where the content lives, not whether JS is involved. If JS only shows and hides content that's already in the HTML, agents still get that content, because their converters ignore the CSS that hides it. That's why the Agent-Friendly Documentation Spec [warns about tabbed content](https://agentdocsspec.com/spec/web/content-structure/) serializing into one long document. However, if JS fetches or builds the content after someone clicks, agents never see it. (In Vercel's [controlled probes](https://vercel.com/kb/guide/make-your-documentation-readable-by-ai-agents), a client that didn't run JavaScript couldn't retrieve an answer that existed only in a JavaScript payload. In other words, if the content isn't in the HTML, it's not there.)

As a result, I'm undoing the implementations that keep content out of reach of agents, favoring more conventional stacked sections instead of hidden sections requiring clicks. JS isn't going away entirely, though. An easy test is to check how your page looks in the markdown mirror view, that is. Is the content easily accessible? If not, fix it. 

A few JS conventions still remain, because their content is already in the HTML:

- **Code tabs** -- the tabs that sort code into different languages, such as Java \| Kotlin \| curl, can remain. Reason being, when you choose the MD view, the code in different tabs just stacks nicely on top of each other, with each snippet as its own code block. Short snippets don't add much length. Tabs cause problems mainly when each tab holds an entire tutorial. In one [test by Dachary Carey](https://dacharycarey.com/2026/02/19/agent-web-fetch-spelunking/), a MongoDB quick start repeated the same tutorial for 11 drivers and clients, the page's Markdown source ran about 258k characters, and an agent asking for the Python version never reached the Python tab.
- **Expandable text** -- same reason, as long as the text is in the HTML rather than loaded on click. This content isn't lost in the MD view. (I even use an expandable button to show a long code example later in this post.)
- **Filterable tables** -- same reason, as long as all the rows are in the HTML and the filter just hides them.

{% include ads.html %}

## Long pages and truncation

Another casualty: long pages that exceed 50k characters. The [Agent-Friendly Documentation Spec](https://agentdocsspec.com/spec/web/page-size/) uses 50k characters as its passing threshold for page size. This works out to roughly 8,000 words, which seems like more than enough for most pages. However, some documentation pages, mostly reference material of some kind, can get up to 100k characters or more.

Different agents stop reading at different points, so there isn't a standard cutoff. The [reference MCP fetch server](https://github.com/modelcontextprotocol/servers/tree/main/src/fetch) cuts pages off at 5,000 characters by default, while Claude Code [truncates at about 100 KB of text](https://mikhail.io/2025/10/claude-code-web-tools/). The 50k target is meant to fit comfortably within most of these limits.

If you want to test things out, ask an agent to fetch the page and quote its last line, and then check that quote against the actual page. Don't just ask the agent whether it read the whole page, since agents' self-reports about truncation aren't reliable. Rhyannon Rodriguez reached that conclusion after [testing how Cursor fetches web pages](https://rhyannonjoy.github.io/agent-ecosystem-testing/docs/anysphere-cursor/cursor-interpreted-vs-raw) as part of the Agent Ecosystem Testing project. If the agent can't quote the last line, or quotes something that isn't there, you know that it stopped consuming the content before that point. This makes anything below its truncation line invisible to the agent. And what happens when there are invisible spaces, i.e., gaps? AI tools might fill in those gaps with guesses, i.e., hallucinations, which can be wrong.

## How agents fill in the gaps

I've seen this fill-in-the-gap behavior firsthand. When writing a strategy doc at work, I was using an agent to add references for the claims. I'd already given the agent quite a few sources, but some parts of the doc didn't have any sources behind them. The agent wanted to add references for those parts too, and that's where it went off the rails.

It started grabbing details here and there from the sources and extrapolating how they could be used as evidence. The connections were plausible in places, but they were clearly a stretch. I realized that this is likely where agents go astray, when they have to fill in the gaps.

Truncated pages put agents in the same situation. Agents often don't notice when a page has been cut off, so they don't know what they're missing. In Rodriguez's [Cursor tests](https://rhyannonjoy.github.io/agent-ecosystem-testing/docs/anysphere-cursor/cursor-interpreted-vs-raw), the agent treated partial content as complete because the excerpts read coherently on their own. When you leave gaps in your content, agents might fill them in with predictions, drawing on their training data or inferring from what they did read. For a page that's 75k characters, if the agent consumed only the first 50k characters, it might still answer confidently about something in the last 25k. But when you check that answer against the page, that's where you start to see factual accuracy take a hit.

This is also why agents work better in tech comm contexts when you feed them a lot of rich source material. With enough source material, the agent doesn't have to fill in gaps. Instead, its job is to summarize, reduce, reorganize, and rephrase the material. In other words, it doesn't have to invent anything.

## Breaking up long pages

To avoid the fill-in-the-gap-with-guesses syndrome, we have to chunk our content so that agents aren't truncating their consumption of the page early. This means breaking up long pages. Exactly how we break up the pages depends on the content, but generally this might mean sacrificing some fancy JS mechanisms that let human readers hide, show, and filter content on one long page in a more readable way. In that case, the JS itself isn't what hurts agents, but the long page that it made workable for humans does.

This means that yes, in some ways, making content more agent-accessible means tradeoffs for human accessibility. But not in a huge way. The design patterns are simply more plain pages, more first level and second level groupings of pages, rather than all-in-one-pages.

## The Markdown mirror

I mentioned earlier about looking at the markdown mirror of pages. That's the page that appears when you add `.md` at the end of a page URL, a convention that comes from the [llms.txt proposal](https://llmstxt.org/). (Some sites use `.md.txt` instead, so the convention varies. For example, the Google Maps Platform docs at developers.google.com/maps/documentation serve their Markdown at `.md.txt` URLs, such as [https://developers.google.com/maps/documentation/javascript/overview.md.txt](https://developers.google.com/maps/documentation/javascript/overview.md.txt).) Try it on my site with this page: [https://idratherbewriting.com/blog/make-documentation-agent-friendly.md](/blog/make-documentation-agent-friendly.md). What appears is the markdown version of this content.

Markdown has far fewer characters than HTML, which makes it the syntax of choice for token-constrained agents. (Cloudflare measured one of its own blog posts at 16,180 tokens as HTML and 3,150 tokens as Markdown, according to its [Markdown for Agents](https://blog.cloudflare.com/markdown-for-agents/) post.) Agents that fetch the regular HTML page convert it to Markdown themselves, but serving your own Markdown lets you control that conversion and leave out navigation and other page chrome.

## Setting up a Markdown mirror with Cloudflare

Setting up a markdown mirror for your site is pretty easy, by the way, but only because of AI. My domain is proxied through Cloudflare, so requests for my pages pass through Cloudflare's network before they reach my web host. [Cloudflare Workers](https://developers.cloudflare.com/workers/) let you run your own code on those requests. (Cloudflare also offers a no-code option called [Markdown for Agents](https://developers.cloudflare.com/fundamentals/reference/markdown-for-agents/) on its paid plans.) I set up a worker that serves a Markdown version of a page when the URL ends in `.md` or when the request asks for Markdown with an `Accept: text/markdown` header. The markdown-mirror worker code is about 500 lines, so I've collapsed it below. The collapsed code is still in the HTML, so it also serves as a test. If you view the [Markdown version of this page](/blog/make-documentation-agent-friendly.md), the full code appears there without any clicking.

<button type="button" class="btn btn-info" data-bs-toggle="collapse" data-bs-target="#workerCode" aria-expanded="false" aria-controls="workerCode">Show the worker code &raquo;</button>
<div id="workerCode" class="collapse" markdown="1">

```javascript
/**
 * Cloudflare Worker: Markdown Mirror for I'd Rather Be Writing
 * Serves a clean Markdown version of any page when the URL ends in .md
 * or when the request's Accept header asks for text/markdown.
 */

const SITE_ORIGIN = 'https://idratherbewriting.com';
const LLMS_TXT_URL = `${SITE_ORIGIN}/llms.txt`;
const MIRROR_USER_AGENT = 'Cloudflare-Markdown-Mirror/1.1';
const CACHE_SECONDS = 3600;

export default {
  async fetch(request, env, ctx) {
    const method = request.method.toUpperCase();
    const url = new URL(request.url);

    const isMdExtension = url.pathname.endsWith('.md');
    const acceptsMarkdown = (request.headers.get('Accept') || '').toLowerCase().includes('text/markdown');

    // Only GET and HEAD requests that ask for Markdown are handled here
    if ((method !== 'GET' && method !== 'HEAD') || (!isMdExtension && !acceptsMarkdown)) {
      return fetch(request);
    }

    try {
      return await serveMarkdown(url, method, isMdExtension, ctx);
    } catch (err) {
      // Never break the site. If anything goes wrong, fall back to the normal response.
      console.error('Markdown mirror error:', err && err.stack ? err.stack : err);
      return fetch(request);
    }
  }
};

async function serveMarkdown(url, method, isMdExtension, ctx) {
  const originBase = url.origin.includes('workers.dev') ? SITE_ORIGIN : url.origin;

  // 1. Resolve the path of the HTML page this request maps to
  let targetPath = url.pathname;
  if (isMdExtension) {
    targetPath = targetPath.slice(0, -3); // Strip .md
    if (targetPath === '' || targetPath.endsWith('/')) {
      targetPath += 'index.html';
    }
  }

  // 2. Check the edge cache. The cache key is separate from the HTML page's URL,
  //    so a cached Markdown response can never be served to a browser.
  const cache = caches.default;
  const cacheKey = new Request(`${originBase}${targetPath}?markdown-mirror=1`, { method: 'GET' });
  const cached = await cache.match(cacheKey);
  if (cached) {
    return method === 'HEAD'
      ? new Response(null, { status: cached.status, headers: cached.headers })
      : cached;
  }

  // 3. Fetch the HTML page from the origin
  let originRes = await fetchOrigin(new URL(targetPath, originBase));

  // Extensionless .md requests (e.g. /ai/product-skills-docs-first.md) map to .html pages
  if (originRes.status === 404 && isMdExtension && !/\.html?$/i.test(targetPath)) {
    const htmlRes = await fetchOrigin(new URL(`${targetPath}.html`, originBase));
    if (htmlRes.ok) {
      originRes = htmlRes;
    }
  }

  if (!originRes.ok) {
    if (!isMdExtension) {
      return originRes; // Let the origin's own error page through
    }
    return textResponse(`Page not found: ${url.pathname}`, originRes.status, method);
  }

  // Images, PDFs, feeds, llms.txt, and other non-HTML files pass through unchanged
  const contentType = (originRes.headers.get('Content-Type') || '').toLowerCase();
  if (!contentType.includes('text/html')) {
    return originRes;
  }

  // 4. Convert the HTML to Markdown
  const canonicalUrl = originRes.url || new URL(targetPath, originBase).toString();
  const html = await originRes.text();
  const markdown = convertHtmlToMarkdown(html, canonicalUrl);

  // 5. Return the Markdown and cache it at the edge
  const headers = {
    'Content-Type': 'text/markdown; charset=utf-8',
    'Cache-Control': `public, max-age=${CACHE_SECONDS}`,
    'Vary': 'Accept',
    'Link': `<${canonicalUrl}>; rel="canonical"`,
    'Access-Control-Allow-Origin': '*'
  };
  const mdResponse = new Response(markdown, { status: 200, headers });
  ctx.waitUntil(cache.put(cacheKey, mdResponse.clone()));

  return method === 'HEAD' ? new Response(null, { status: 200, headers }) : mdResponse;
}

function fetchOrigin(originUrl) {
  return fetch(originUrl.toString(), {
    headers: {
      'User-Agent': MIRROR_USER_AGENT,
      'Accept': 'text/html'
    }
  });
}

function textResponse(body, status, method) {
  return new Response(method === 'HEAD' ? null : body, {
    status,
    headers: { 'Content-Type': 'text/plain; charset=utf-8' }
  });
}

// ---------------------------------------------------------------------------
// HTML to Markdown conversion
// ---------------------------------------------------------------------------

const PH = String.fromCharCode(0xE000);      // Wraps code placeholders (a private-use character)
const INDENT = String.fromCharCode(0xE001);  // Marks intentional indentation that cleanup must keep
const BLOCK_TOKEN = (n) => `${PH}B${n}${PH}`;   // Placeholder for a fenced code block
const INLINE_TOKEN = (n) => `${PH}I${n}${PH}`;  // Placeholder for an inline code span

function convertHtmlToMarkdown(html, canonicalUrl) {
  // Extract metadata
  const title = extractTitle(html);
  const description = getMetaContent(html, 'name', 'description').replace(/\s+/g, ' ');
  const dateMatch = html.match(/"datePublished":\s*"([^"]+)"/i);
  const date = (dateMatch ? dateMatch[1] : getMetaContent(html, 'property', 'article:published_time')).split('T')[0];

  const blocks = [];
  const inlines = [];

  let content = extractMainContent(html);

  // Remove scripts, styles, comments, and form widgets first, so that markup
  // inside script strings (like the ads' document.write calls) can't confuse
  // any of the steps that follow
  content = content
    .replace(/<!--[\s\S]*?-->/g, '')
    .replace(/<(script|style|noscript|template|svg|form|button|select|textarea|nav)\b[\s\S]*?<\/\1>/gi, '')
    .replace(/<input\b[^>]*>/gi, '');

  // Remove page chrome and in-post ads. Ads (div.comicBlock) appear in the middle
  // of pages, so they're removed here instead of being treated as the end of the page.
  content = removeElements(content, 'div', classPattern('comicBlock', 'courseProgress', 'lastModifiedDate', 'subheading'));
  content = removeElements(content, 'ol', classPattern('breadcrumb'));
  content = removeElements(content, 'ul', /\bid\s*=\s*["']markdown-toc["']/i);
  content = removeElements(content, 'p', classPattern('page-meta', 'sponsoredLabel'));
  content = removeElements(content, 'span', classPattern('pageCategories'));

  // Remove the draft notice but keep the other callouts (Note, Tip, Important, Warning)
  content = content
    .replace(/<div\b[^>]*\bclass\s*=\s*["'](?:[^"']*\s)?alert(?:\s[^"']*)?["'][^>]*>\s*<i\b[^>]*\bfa-flask\b[^>]*>[\s\S]*?<\/div>/gi, '')
    .replace(/<i\b[^>]*\bclass\s*=\s*["'](?:[^"']*\s)?fa(?:\s[^"']*)?["'][^>]*>\s*<\/i>/gi, '')
    .replace(/<div\b[^>]*\bclass\s*=\s*["'](?:[^"']*\s)?(?:alert|summary)(?:\s[^"']*)?["'][^>]*>([\s\S]*?)<\/div>/gi, '<blockquote>$1</blockquote>');

  // Protect code from the cleanup steps below. Code blocks keep their exact
  // whitespace and get a fence that's longer than any backtick run inside them.
  content = content.replace(/<pre\b([^>]*)>\s*(?:<code\b([^>]*)>)?([\s\S]*?)(?:<\/code>\s*)?<\/pre>/gi,
    (match, preAttrs, codeAttrs, code, offset, whole) => {
      const lang = detectLanguage(`${codeAttrs || ''} ${preAttrs}`, whole.slice(Math.max(0, offset - 300), offset));
      const text = decodeHtml(code.replace(/<[^>]+>/g, '')).replace(/^\n+|\s+$/g, '');
      const fence = '`'.repeat(Math.max(3, longestRun(text, '`') + 1));
      return `<div>${BLOCK_TOKEN(blocks.push(`${fence}${lang}\n${text}\n${fence}`) - 1)}</div>`;
    });

  content = content.replace(/<(code|kbd|samp)\b[^>]*>([\s\S]*?)<\/\1>/gi, (match, tag, code) => {
    const text = decodeHtml(code.replace(/<[^>]+>/g, '')).replace(/\s+/g, ' ');
    if (!text.trim()) return '';
    const ticks = '`'.repeat(longestRun(text, '`') + 1);
    const pad = text.startsWith('`') || text.endsWith('`') ? ' ' : '';
    return INLINE_TOKEN(inlines.push(`${ticks}${pad}${text}${pad}${ticks}`) - 1);
  });

  // Whitespace in HTML isn't significant, so collapse it. Line breaks are
  // re-created from the block-level tags below.
  content = content.replace(/\s+/g, ' ');

  // Embedded media becomes links
  content = content.replace(/<iframe\b([^>]*)>(?:[\s\S]*?<\/iframe>)?/gi, (match, attrs) => {
    const src = getAttr(attrs, 'src');
    if (!src || !/(?:youtube\.com|youtu\.be|vimeo\.com|loom\.com)/i.test(src)) return '';
    const label = escapeBrackets(getAttr(attrs, 'title') || 'Video');
    return `<p>[Video: ${label}](${absoluteUrl(src, canonicalUrl)})</p>`;
  });
  content = content.replace(/<(audio|video)\b([^>]*)>([\s\S]*?)<\/\1>/gi, (match, tag, attrs, inner) => {
    const source = inner.match(/<source\b([^>]*)>/i);
    const src = getAttr(attrs, 'src') || (source ? getAttr(source[1], 'src') : '');
    if (!src) return '';
    const label = tag.toLowerCase() === 'audio' ? 'Audio' : 'Video';
    return `<p>[${label}](${absoluteUrl(src, canonicalUrl)})</p>`;
  });

  // Figures and images, with absolute URLs
  content = content.replace(/<figure\b[^>]*>([\s\S]*?)<\/figure>/gi, (match, inner) => {
    const img = inner.match(/<img\b([^>]*)>/i);
    if (!img) return `<div>${inner}</div>`; // Not an image figure, so keep its contents
    const src = getAttr(img[1], 'src');
    if (!src) return '';
    const alt = getAttr(img[1], 'alt');
    const capMatch = inner.match(/<figcaption\b[^>]*>([\s\S]*?)<\/figcaption>/i);
    const caption = capMatch ? capMatch[1].trim() : '';
    const captionText = stripTags(caption);
    let out = `<p>![${escapeBrackets(alt || captionText || 'Image')}](${absoluteUrl(src, canonicalUrl)})</p>`;
    if (alt && captionText && captionText !== alt) {
      out += `<p><em>${caption}</em></p>`;
    }
    return out;
  });
  content = content.replace(/<img\b([^>]*)>/gi, (match, attrs) => {
    const src = getAttr(attrs, 'src');
    if (!src) return '';
    return `![${escapeBrackets(getAttr(attrs, 'alt'))}](${absoluteUrl(src, canonicalUrl)})`;
  });

  // Links, with absolute URLs (same-page #anchors are left as-is)
  content = content.replace(/<a\b([^>]*)>([\s\S]*?)<\/a>/gi, (match, attrs, inner) => {
    const text = inner.replace(/<[^>]+>/g, '').replace(/\s+/g, ' ').trim();
    const href = getAttr(attrs, 'href');
    if (/\/cdn-cgi\/l\/email-protection/i.test(href)) return '(email address hidden)'; // Cloudflare email obfuscation
    if (!href || /^javascript:/i.test(href)) return text;
    if (!text) return '';
    return `[${text}](${absoluteUrl(href, canonicalUrl)})`;
  });

  // Inline formatting
  content = content
    .replace(/<(strong|b)\b[^>]*>([\s\S]*?)<\/\1>/gi, (m, tag, inner) => (inner.trim() ? `**${inner.trim()}**` : ''))
    .replace(/<(em|i|cite)\b[^>]*>([\s\S]*?)<\/\1>/gi, (m, tag, inner) => (inner.trim() ? `*${inner.trim()}*` : ''))
    .replace(/<(del|s|strike)\b[^>]*>([\s\S]*?)<\/\1>/gi, (m, tag, inner) => (inner.trim() ? `~~${inner.trim()}~~` : ''))
    .replace(/<br\s*\/?>/gi, '\n')
    .replace(/<hr\b[^>]*>/gi, '\n\n---\n\n');

  // Tables become Markdown tables instead of runs of cell text
  content = content.replace(/<table\b[^>]*>([\s\S]*?)<\/table>/gi, (match, inner) => convertTable(inner));

  // Headings (remove <h1> since the title is already emitted at the top)
  content = content
    .replace(/<h1\b[^>]*>[\s\S]*?<\/h1>/gi, '')
    .replace(/<h([2-6])\b[^>]*>([\s\S]*?)<\/h\1>/gi, (match, level, inner) => {
      const text = stripTags(inner);
      return text ? `\n\n${'#'.repeat(Number(level))} ${text}\n\n` : '';
    });

  // Definition lists and expandable sections
  content = content
    .replace(/<dt\b[^>]*>([\s\S]*?)<\/dt>/gi, (m, inner) => `\n\n**${stripTags(inner)}**\n`)
    .replace(/<dd\b[^>]*>([\s\S]*?)<\/dd>/gi, '$1\n\n')
    .replace(/<\/?dl\b[^>]*>/gi, '\n\n')
    .replace(/<summary\b[^>]*>([\s\S]*?)<\/summary>/gi, (m, inner) => `\n\n**${stripTags(inner)}**\n\n`)
    .replace(/<\/?details\b[^>]*>/gi, '\n\n');

  // Lists (with numbering and nesting) and blockquotes, including callouts inside list steps
  content = convertListsAndQuotes(content);

  // Paragraphs and other block elements become paragraph breaks
  content = content
    .replace(/<\/?p\b[^>]*>/gi, '\n\n')
    .replace(/<\/?(?:div|section|article|header|footer|main|aside|figure|figcaption|center|address)\b[^>]*>/gi, '\n\n')
    .replace(/<[^>]+>/g, '');

  // Decode HTML entities, then clean up whitespace line by line
  content = decodeHtml(content)
    .replace(/\[email\sprotected\]/gi, '(email address hidden)')
    .split('\n')
    .map((line) => line.replace(/\s+/g, ' ').trim())
    .join('\n')
    .replace(new RegExp(INDENT, 'g'), ' ')
    .replace(/\n{3,}/g, '\n\n')
    .trim();

  // Restore code blocks (keeping any list indentation or blockquote prefix) and inline code
  content = content
    .replace(new RegExp(`^([ >]*)${PH}B(\\d+)${PH}[ ]*$`, 'gm'), (match, prefix, n) =>
      blocks[Number(n)].split('\n').map((line) => `${prefix}${line}`).join('\n'))
    .replace(new RegExp(`${PH}B(\\d+)${PH}`, 'g'), (match, n) => `\n\n${blocks[Number(n)]}\n\n`)
    .replace(new RegExp(`${PH}I(\\d+)${PH}`, 'g'), (match, n) => inlines[Number(n)]);

  // Build the final document
  const frontMatter = [
    '---',
    `title: ${JSON.stringify(title)}`,
    date ? `date: ${date}` : null,
    description ? `description: ${JSON.stringify(description)}` : null,
    `canonical_url: ${canonicalUrl}`,
    '---'
  ].filter(Boolean).join('\n');

  return [
    frontMatter,
    '',
    `> For AI agents: a documentation index is available at ${LLMS_TXT_URL}. Markdown versions of all pages are available by appending .md to any page URL.`,
    '',
    title ? `# ${title}\n` : null,
    content,
    ''
  ].filter((part) => part !== null).join('\n');
}

// Returns the article content: everything inside <div id="content"> up to the
// "end page/post content" comment that closes the article
function extractMainContent(html) {
  const start = html.match(/<div\s+id=["']content["'][^>]*>/i);
  if (!start) {
    const body = html.match(/<body\b[^>]*>([\s\S]*)<\/body>/i);
    return body ? body[1] : html;
  }
  const rest = html.slice(start.index + start[0].length);

  const end = rest.search(/<!--\s*end (?:page\/post )?content\s*-->/i);
  if (end !== -1) {
    return rest.slice(0, end);
  }
  const fallback = rest.search(/<div\s+class=["'](?:share-buttons|footer|disqus|recent-posts)|<footer\b/i);
  return fallback !== -1 ? rest.slice(0, fallback) : rest;
}

function extractTitle(html) {
  let title = getMetaContent(html, 'property', 'og:title');
  if (!title) {
    const match = html.match(/<title\b[^>]*>([\s\S]*?)<\/title>/i);
    title = match ? decodeHtml(match[1]) : '';
  }
  return title.replace(/\s*\|.*$/, '').replace(/\s+/g, ' ').trim();
}

function getMetaContent(html, attrName, attrValue) {
  const tags = html.match(/<meta\b[^>]*>/gi) || [];
  for (const tag of tags) {
    if (getAttr(tag, attrName).toLowerCase() === attrValue.toLowerCase()) {
      return getAttr(tag, 'content').trim();
    }
  }
  return '';
}

// Reads an attribute value, whether it's double-quoted, single-quoted, or unquoted
function getAttr(attrs, name) {
  const match = attrs.match(new RegExp(`(?:^|\\s)${name}\\s*=\\s*(?:"([^"]*)"|'([^']*)'|([^\\s"'>]+))`, 'i'));
  if (!match) return '';
  const value = match[1] !== undefined ? match[1] : (match[2] !== undefined ? match[2] : match[3]);
  return decodeHtml(value || '');
}

// Matches a class attribute that contains one of the given class names as a whole token
function classPattern(...names) {
  return new RegExp(`\\bclass\\s*=\\s*["'](?:[^"']*\\s)?(?:${names.join('|')})(?:\\s[^"']*)?["']`, 'i');
}

// Removes every <tag> whose attributes match attrPattern, including all nested content.
// If the element's end can't be found, only its opening tag is removed, so content is never lost.
function removeElements(html, tag, attrPattern) {
  const openRe = new RegExp(`<${tag}\\b([^>]*)>`, 'gi');
  let result = '';
  let last = 0;
  let match;
  while ((match = openRe.exec(html)) !== null) {
    if (match.index < last || !attrPattern.test(match[1])) continue;
    const afterOpen = match.index + match[0].length;
    const end = findElementEnd(html, tag, afterOpen);
    result += html.slice(last, match.index);
    last = end === -1 ? afterOpen : end;
    openRe.lastIndex = last;
  }
  return result + html.slice(last);
}

// Finds the end of the element that opened just before `from`, or -1 if it has no end
function findElementEnd(html, tag, from) {
  if (tag === 'p') {
    // A <p> can't contain block elements, and its closing tag is optional in HTML,
    // so it ends at </p> or at the next block-level tag, whichever comes first
    const re = /<\/p\s*>|<(?:p|div|h[1-6]|ul|ol|dl|table|blockquote|pre|section|figure|hr)\b/gi;
    re.lastIndex = from;
    const match = re.exec(html);
    if (!match) return -1;
    return match[0][1] === '/' ? match.index + match[0].length : match.index;
  }

  // Count nested tags of the same name until the element closes
  const re = new RegExp(`<(/?)${tag}\\b[^>]*>`, 'gi');
  re.lastIndex = from;
  let depth = 1;
  let match;
  while ((match = re.exec(html)) !== null) {
    depth += match[1] ? -1 : 1;
    if (depth === 0) return match.index + match[0].length;
  }
  return -1;
}

function detectLanguage(attrs, before) {
  let match = attrs.match(/\blanguage-([\w+#.-]+)/i) || attrs.match(/\bdata-lang=["']([^"']+)["']/i);
  if (!match) {
    // Rouge wraps fenced code blocks in <div class="language-xyz highlighter-rouge"><div class="highlight">
    match = before.match(/<div\b[^>]*\blanguage-([\w+#.-]+)[^>]*>\s*<div\b[^>]*\bhighlight\b[^>]*>\s*$/i);
  }
  const lang = match ? match[1].toLowerCase() : '';
  return ['plaintext', 'text', 'none'].includes(lang) ? '' : lang;
}

// Rows and cells are split on their opening tags, since HTML lets closing tags be omitted
function convertTable(inner) {
  const rows = [];
  for (const row of inner.split(/<tr\b[^>]*>/i).slice(1)) {
    const cells = row.split(/<t[hd]\b[^>]*>/i).slice(1)
      .map((cell) => cell.replace(/<[^>]+>/g, ' ').replace(/\s+/g, ' ').trim().replace(/\|/g, '\\|'));
    if (cells.length) rows.push(cells);
  }
  if (!rows.length) return '';

  const width = Math.max(...rows.map((r) => r.length));
  const pad = (r) => r.concat(Array(width - r.length).fill(''));
  const lines = [pad(rows[0]), Array(width).fill('---'), ...rows.slice(1).map(pad)]
    .map((r) => `| ${r.join(' | ')} |`);
  return `\n\n${lines.join('\n')}\n\n`;
}

// Converts lists and blockquotes from the innermost element out, so a list inside a
// blockquote, or a callout inside a list step, keeps its structure and indentation
function convertListsAndQuotes(html) {
  const innermost = /<(ul|ol|blockquote)\b([^>]*)>((?:(?!<\/?(?:ul|ol|blockquote)\b)[\s\S])*?)<\/\1>/i;
  let guard = 0;
  while (innermost.test(html) && guard++ < 2000) {
    html = html.replace(innermost, (match, tag, attrs, inner) =>
      (tag.toLowerCase() === 'blockquote' ? convertQuote(inner) : convertList(tag, attrs, inner)));
  }
  return html;
}

function convertList(tag, attrs, inner) {
  const ordered = tag.toLowerCase() === 'ol';
  let n = parseInt(getAttr(attrs, 'start'), 10) || 1;
  const items = [];
  // Items are split on their opening tags, since HTML lets </li> be omitted
  for (const item of inner.split(/<li\b[^>]*>/i).slice(1)) {
    const text = blockText(item.replace(/<\/li\s*>/gi, ''));
    if (!text) continue;
    const marker = ordered ? `${n++}.` : '-';
    const indent = INDENT.repeat(marker.length + 1);
    const lines = text.split('\n');
    items.push(lines.map((line, i) => (i === 0 ? `${marker} ${line}` : (line ? indent + line : ''))).join('\n'));
  }
  return `\n\n${items.join('\n')}\n\n`;
}

function convertQuote(inner) {
  const lines = blockText(inner).split('\n');
  return `\n\n${lines.map((line) => (line ? `> ${line}` : '>')).join('\n')}\n\n`;
}

// Turns a fragment of HTML into lines of text, keeping paragraph and line breaks
function blockText(html) {
  return html
    .replace(/<\/?p\b[^>]*>/gi, '\n\n')
    .replace(/<\/?(?:div|section|figure|figcaption)\b[^>]*>/gi, '\n\n')
    .replace(/<[^>]+>/g, '')
    .split('\n')
    .map((line) => line.trim())
    .join('\n')
    .replace(/\n{3,}/g, '\n\n')
    .trim();
}

function absoluteUrl(href, baseUrl) {
  const value = (href || '').trim();
  if (!value || value.startsWith('#') || /^(?:mailto|tel|data):/i.test(value)) return value;
  try {
    return new URL(value, baseUrl).toString()
      .replace(/ /g, '%20')
      .replace(/\(/g, '%28')
      .replace(/\)/g, '%29');
  } catch (err) {
    return value;
  }
}

function longestRun(text, char) {
  let longest = 0;
  let current = 0;
  for (const c of text) {
    current = c === char ? current + 1 : 0;
    if (current > longest) longest = current;
  }
  return longest;
}

function stripTags(html) {
  return (html || '').replace(/<[^>]+>/g, '').replace(/\s+/g, ' ').trim();
}

function escapeBrackets(text) {
  return (text || '').replace(/[[\]]/g, '\\$&');
}

const NAMED_ENTITIES = {
  amp: '&', lt: '<', gt: '>', quot: '"', apos: "'", nbsp: ' ',
  mdash: '—', ndash: '–', hellip: '…', lsquo: '‘', rsquo: '’', ldquo: '“', rdquo: '”',
  laquo: '«', raquo: '»', bull: '•', middot: '·', copy: '©', reg: '®', trade: '™',
  rarr: '→', larr: '←', times: '×', deg: '°', sect: '§', para: '¶'
};

// Decodes entities in a single pass, so "&amp;lt;" correctly becomes "&lt;" (not "<")
function decodeHtml(str) {
  if (!str) return '';
  return str.replace(/&(#x[0-9a-f]+|#\d+|[a-z][a-z0-9]*);/gi, (match, entity) => {
    if (entity[0] === '#') {
      const isHex = entity[1] === 'x' || entity[1] === 'X';
      const code = isHex ? parseInt(entity.slice(2), 16) : parseInt(entity.slice(1), 10);
      return code > 0 && code <= 0x10ffff ? String.fromCodePoint(code) : match;
    }
    const named = NAMED_ENTITIES[entity.toLowerCase()];
    return named !== undefined ? named : match;
  });
}
```

</div>

Of course AI just wrote this. It took a few tries and tests, though, to ensure that all elements were represented. At first, the code choked on my inserted ads. Other issues also had to be ironed out.

Look at your markdown mirror code and make sure that all content is represented as desired, because this is the view agents get when they ask for Markdown. Some agents, such as Claude Code, Cursor, and OpenCode, request Markdown automatically through the `Accept` header ([Checkly](https://www.checklyhq.com/blog/state-of-ai-agent-content-negotation/)), and others find the `.md` URLs through links in your [`llms.txt`](https://llmstxt.org/) file. Agents that fetch the regular HTML page use their own converter instead.

## Chunked content for MCP servers

The markdown mirror view isn't the view all agents will see, though. There are different agents with different purposes. The markdown mirror is more for agents that fetch pages from your site at run-time for specific coding tasks. Some documentation sites also make their content available through an [MCP](https://modelcontextprotocol.io/) server, which might search an index where the content has been split into smaller passages, or chunks. That's another view that also merits more discussion.

Chunking is a design choice made by whoever builds the index, and splitting at headings is a common approach. For example, [Chroma's chunking guide](https://docs.trychroma.com/guides/build/chunking) recommends splitting Markdown at h2 headings and then recursively trying inner headings. CT Smith's [search and chat design](https://docsgoblin.com/blog/26-10-17-jev-and-embeddings.html) on the Docs Goblin blog splits pages at `##` and `###` headings and never cuts a paragraph, list, or code block in half. When the chunker follows your headings, the way you structure a page shapes what an agent retrieves.

## Conclusion

Overall, understanding the view that agents have of content has opened my eyes in a way. I find myself regularly looking at the Markdown version of the page to see just how the content looks. It's pretty plain, serving up content in Markdown syntax (including Markdown table syntax). I go into more detail on these problems, with sources, in [Making docs accessible to agents](/ai/product-skills-agent-friendly-docs.html), a topic in my agent skills course.

When I notice issues, they are among the easiest to fix, but you can't just fix a single instance on your site. Treat each instance as a larger pattern to fix across your entire content.

----

<small>Note: AI helped me find & summarize resources to corroborate a lot of the assertions in this post.</small>
