---
title: "Updating from redcarpet and Pygments to Kramdown and Rouge on Github Pages"
categories:
- jekyll
keywords: rouge, pygments, kramdown, github-pages, bug with backticks, pre code blocks, syntax highlighting
description: "Github Pages is a sweet service that builds your Jekyll site for you when you commit changes to a Github repo. If you were using redcarpet and Pygments, you now should switch to Kramdown and Rouge to stay updated with the recommended Markdown filter and syntax highlighter supported by Github Pages. Switching to Kramdown requires you to both update your configuration file and usually use 3 spaces when inserting code blocks within list items instead of 4."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/githubkramdowncrapthumb.png
---

## Updates to Markdown filter and syntax highlighters

I use [Github Pages](https://pages.github.com/) to publish content for my Jekyll-based blog, and I've also used it for authoring tech docs with Jekyll. When you commit changes to your Jekyll site stored in a Github repo, Github Pages will automatically perform the process of building the Jekyll site for you.

Jekyll processes HTML from Markdown using the Markdown processor that you specify in your configuration file. Github recently adopted Kramdown as their only Markdown processor, which will go into effect after May 1. redcarpet is the Markdown processor I was using. redcarpet will no longer be supported by Github Pages.

Additionally, a plugin for processing code blocks with syntax highlighting also changed. Instead of Pygments, Rouge will now be the only syntax highlighter supported by Github Pages. Github announced these changes in a recent <a href="https://github.com/blog/2100-github-pages-now-faster-and-simpler-with-jekyll-3-0">blog post</a>:

>GitHub Pages now only supports Rouge, a pure-Ruby syntax highlighter, meaning you no longer need to install Python and Pygments to preview your site locally. If you were previously using Pygments for highlighting, the two libraries are feature compatible, so we'll swap Rouge in for Pygments when we build your site, to ensure a seamless transition.
>
>Traditionally, highlighting in Jekyll has been implemented via the {% raw %}{% highlight %}{% endraw %} Liquid tag, forcing you to leave a pure-Markdown experience. With the kramdown and Rouge as the new defaults, syntax highlighting on GitHub Pages should work like you'd expect it to work anywhere else on GitHub, with native support for backtick-style fenced code blocks right within the Markdown.

## How to make the updates to use Kramdown and Rouge

If you were using redcarpet and Pygments, and you want to switch to Kramdown and Rouge, you need to make an update in your configuration file. For example, if you previously had this:

```yaml
highlighter: pygments
markdown: redcarpet
redcarpet:
  extensions: ["no_intra_emphasis", "fenced_code_blocks", "tables", "with_toc_data"]
```

Just change it to this:

```yaml
highlighter: rouge
markdown: kramdown
kramdown:
  input: GFM
  auto_ids: true
  syntax_highlighter: rouge
```

Make sure you specify the Github Flavored Markdown parser by adding `input: GFM`. Otherwise backticks won't be processed. 

## Follow Kramdown's indentation syntax for code blocks within lists

{{site.data.alerts.warning}}There's one more change you need to make. This change is not called out in the Github announcement, and its absence has caused a lot of confusion and reports of bugs, so I wanted to call out this needed update. {{site.data.alerts.end}}

With Github-flavored Markdown, when you insert a code block within a list, you can indent the code block **4** spaces. 

But with Kramdown, you must line up the indent of the code block with the first non-space character after the list item marker (e.g., `1.`). Usually this will mean indenting the code block **3 spaces** instead of 4.

Thomas Leitner, the developer leading Kramdown, [explains it as follows](https://github.com/tomjoht/kramdowntest/issues/1#issue-135448518):

> The gist is that the indentation for the list contents is determined by the column number of the first non-space character after the list item marker.
>
> Examples (edit: I replaced the leading spaces with underscores so it looks correct):
> 
> `*_some text` -> 2 spaces indentation
>
> `*___some text` -> 4 spaces indentation
>
> `1._some text` -> 3 spaces indentation

If you have 4 spaces instead of 3, Kramdown will set off the code with `code` tags instead of `pre` tags. This will make a huge difference, since `code` tags render inline whereas `pre` renders as a div block.

## A Kramdown/Rouge test
 
As a test, I published a [sample Jekyll site here built by Github Pages](https://idratherbewriting.com/kramdowntest/jekyll/update/2016/02/05/welcome-to-jekyll.html) that contains the Kramdown/Rouge configuration. The page has code blocks both inside and outside of list items. 

The repo is here -- [kramdowntest](https://github.com/tomjoht/kramdowntest) -- if you want to clone it and play around with it.
