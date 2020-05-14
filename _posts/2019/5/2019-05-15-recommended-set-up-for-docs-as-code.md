---
title: "Reader question: Recommended setup for docs-as-code tooling?"
permalink: /blog/recommended-docs-as-code-tooling-setup/
categories:
- general
keywords: docs-as-code tools, hugo, jekyll
bitlink: https://idratherbewriting.site/docsascoderecommends
description: "A reader asks for my recommended docs-as-code tooling setup. I said probably Hugo with Docsy and Netlify, or maybe a solution like Readthedocs.com or Readme.com."
---

A reader asks,

> If I had to set up an infrastructure (Docs-as-Code, Git, Jekyll?. etc) is there a workflow or Udemy course you'd recommend?

I'm currently using Jekyll with GitHub Pages for this blog and my [API doc site](/learnapidoc/), and Jekyll for docs at work with [developer.amazon.com/documentation](https://developer.amazon.com/appstore/documentation) but with a custom engineering build workflow.

[Jekyll](https://jekyllrb.com/) and [GitHub Pages](https://pages.github.com/) is about the easiest setup out there and works well for small sites. But I'd actually recommend going with Hugo right now, and probably Netlify. Hugo seems to be the trending [static site generator](https://staticgen.com) these days, and many previous Jekyll sites have shifted over to Hugo. [Docsy](https://github.com/google/docsy) looks like a sweet Hugo documentation theme built by Google. The Hugo [Learn theme](https://themes.gohugo.io/hugo-theme-learn/) also looks good.

Jekyll's not bad by any means, but when your site starts growing into thousands of pages, build speed becomes a real issue, and you have to implement build shortcuts to reduce the time for local builds. I still love that GitHub Pages builds Jekyll natively, so there's still an argument for that. And I love how easy it is to create custom scripts in Liquid (which Jekyll uses).

In my [previous post about red flags](https://idratherbewriting.com/blog/red-flags-tech-writer-with-complete-control/), I mentioned that you should probably look for pre-built solutions when it comes to tools, since companies typically want you to focus on content more than tooling. If you use Docsy, you already have a starting point for your documentation theme, but you'll probably still need to do a lot of figuring out.

Some easier options (which involve third-party hosting) might be [Readthedocs.com](https://readthedocs.com/) and [Readme.com](https://readme.com/). You won't have as much control, but that also means less time spent with tool development. A lot of your decisions depend on whether you consider yourself a "tools person."

For more reading on tools, see the section on [Publishing API docs](/learnapidoc/pubapis_overview.html) in my API documentation course. Specifically, for a more in-depth analysis to the question of tools, see [Which tool to choose for API docs — my recommendations](/learnapidoc/pubapis_which_tool_to_choose.html). You might want to deep dive into your requirements and such. (If you find that everyone expects PDF books and localization workflows, then you might want to reconsider your direction with static site generators.)

Re courses on Udemy for docs-as-code, sorry. I don't believe there are many out there, as this space changes quickly. However, see Anne Gentle's book, [Docs like Code](https://www.amazon.com/Docs-Like-Code-Anne-Gentle-ebook/dp/B0784ZJWSR). She also has some case studies on her site, [docslikecode.com](https://www.docslikecode.com/). For a lengthy case study I wrote, see [Case study: Switching tools to docs-as-code](/learnapidoc/pubapis_switching_to_docs_as_code.html).
