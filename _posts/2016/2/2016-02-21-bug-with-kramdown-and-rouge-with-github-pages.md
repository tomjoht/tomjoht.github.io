---
title: "Verifiable Bug with code blocks inside list items using Kramdown and Rouge on Github Pages"
categories:
- jekyll
keywords: rouge, pygments, kramdown, github-pages, bug with backticks, pre code blocks, syntax highlighting
summary: "[Github Pages](https://pages.github.com/) is a sweet service that builds your Jekyll site for you when you commit changes to a Github repo. However, as much as I like Github Pages, they currently have a bug with code blocks in lists with their Kramdown and Rouge Markdown processing and syntax highlighting. If you're experiencing issues, note that this is a verifiable bug that the Github team is working to fix."
thumb: githubkramdowncrapthumb.png
---

## About the bug

I use [Github Pages](https://pages.github.com/) to publish content for my Jekyll-based blog, and I've also used it for authoring tech docs with Jekyll. When you commit changes to your Jekyll site stored in a Github repo, Github Pages will automatically perform the process of building the Jekyll site for you.

Jekyll processes HTML from Markdown using a Markdown processor that you specify in your configuration file. Github recently adopted Kramdown as their only Markdown processor, which will go into effect after May 1st. redcarpet is the Markdown processor I was using. Apparently redcarpet will no longer be supported by Github Pages.

Additionally, a plugin for processing code blocks with syntax highlighting also changed. Instead of Pygments, Rouge will now  be the only syntax highlighter. Github announced these changes in a <a href="https://github.com/blog/2100-github-pages-now-faster-and-simpler-with-jekyll-3-0">blog post</a>:

>GitHub Pages now only supports Rouge, a pure-Ruby syntax highlighter, meaning you no longer need to install Python and Pygments to preview your site locally. If you were previously using Pygments for highlighting, the two libraries are feature compatible, so we'll swap Rouge in for Pygments when we build your site, to ensure a seamless transition.
>
>Traditionally, highlighting in Jekyll has been implemented via the {% highlight %} Liquid tag, forcing you to leave a pure-Markdown experience. With the kramdown and Rouge as the new defaults, syntax highlighting on GitHub Pages should work like you'd expect it to work anywhere else on GitHub, with native support for backtick-style fenced code blocks right within the Markdown.

In an ideal world, all you would need to do is make some updates to your configuration file. If you previously had this:

```
highlighter: pygments
markdown: redcarpet
redcarpet:
  extensions: ["no_intra_emphasis", "fenced_code_blocks", "tables", "with_toc_data"]
```

Just change it to this:

```
highlighter: rouge
markdown: kramdown
kramdown:
  input: GFM
  auto_ids: true
  syntax_highlighter: rouge
```

However, and this is where the frustration starts to surface, because there's a bug with Kramdown/Rouge and syntax highlighting when you have code blocks within list items.

I noted this bug in the Jekyll talk forum here: [Issues with converting from Redcarpet / Pygments to Kramdown / Rouge](https://talk.jekyllrb.com/t/issues-with-converting-from-redcarpet-pygments-to-kramdown-rouge/1937). The responses suggested I try various techniques to remove previous github-pages gems and re-run bundle install to get the github-pages gem dependencies, which I did.

However, the problem still persisted, so I decided to revert to redcarpet and pygments in my configuration file. It still works on Github Pages (until May 1), except that each time you commit, you get this warning message send to your via email:

> The page build completed successfully, but returned the following warning:
>
>You are currently using the 'redcarpet' Markdown engine, which will not be supported on GitHub Pages after May 1st. At that time, your site will use 'kramdown' for markdown rendering instead. To suppress this warning, remove the 'markdown' setting in your site's '_config.yml' file and confirm your site renders as expected. For more information, see <a href="https://help.github.com/articles/updating-your-markdown-processor-to-kramdown/">https://help.github.com/articles/updating-your-markdown-processor-to-kramdown</a>.
>
>GitHub Pages was recently upgraded to Jekyll 3.0. It may help to confirm you're using the correct dependencies: <a href="https://github.com/blog/2100-github-pages-now-faster-and-simpler-with-jekyll-3-0">https://github.com/blog/2100-github-pages-now-faster-and-simpler-with-jekyll-3-0</a>
>
> For information on troubleshooting Jekyll see: [https://help.github.com/articles/troubleshooting-jekyll-builds](https://help.github.com/articles/troubleshooting-jekyll-builds)
>
> If you have any questions you can contact us by replying to this email.


I grew tired of these messages, so I decided to write Github Support describing the issue. Here's an excerpt from their response:


> Hi Tom,
>
>I am really sorry for the headache this is giving you, and thank you for your patience.
>
>You have fallen afoul of a bug we identified recently where multiline code blocks inside a numbered list won't get processed. We hope to get it fixed but I can't give you a timeline on it at this stage.
>
I did some testing for a couple of hours to try and find a work around and your code blocks will work fine if we un-indent them, but that will break the list.
>
>...
>
>The list+code block issue is definitely being looked at. I can't make any promises about redcarpet and pygments support though, but I will pass your feedback on to the Pages team.

It's great to learn that this is a verifiable bug and not something specific to my configuration or plugins. By the way Github, it would be great if you could mention this bug and its status in your [Troubleshooting Jekyll Builds](https://help.github.com/articles/troubleshooting-jekyll-builds/), in your [announcement email](https://github.com/blog/2100-github-pages-now-faster-and-simpler-with-jekyll-3-0), or in the message failed response. 

## A kramdown test
 
As a test, I have a [sample Jekyll site here built by Github Pages](http://idratherbewriting.com/kramdowntest/jekyll/update/2016/02/05/welcome-to-jekyll.html) that contains the Kramdown/Rouge configuration. The page has code blocks both inside and outside of list items. You can see that when list items contain code blocks, instead of `pre` tags, `code` tags get inserted instead. 

<figure><a href="https://leanpub.com/getstartedtechwriting"><img src="{{ "/images/githubkramdowncrap.png | prepend: site.baseurl }}" alt="Github / Kramdown / Rouge issues" /></a><figcaption>See how when you insert a code block inside a list, the wrong syntax highlighting gets applied? The syntax highlighting works fine outside the code blocks. </i></figcaption></figure>

I used several techniques for the code blocks &mash; ruby syntax highlighter code, backticks, and tildes.

The repo is here -- [kramdowntest](https://github.com/tomjohnson1492/kramdowntest) -- if you want to clone it and play around with it.

## Dogfooding your content

What puzzles me is why Github's technical writers didn't discover this issue in the first place. I mean, doesn't Github's docs have some examples of code blocks within list items?

Sure enough, they do have code blocks within lists, which you can see, for example, in [Fork a repo](https://help.github.com/articles/fork-a-repo/).
 
This must mean that Github's documentation team isn't actually using Github Pages, which, if I remember correctly from my conversations with Github tech writers, is actually the case. Github's doc team has some custom plugins they've developed to do validity checking and other tasks on their Jekyll sites, and since plugins aren't allowed in Github Pages, they have to build their site locally and deploy it instead of building it through the Jekyll hooks on Github Pages servers.

This is understandable, but to me this experience reinforces the need to dogfood your own processes as much as possible. If Github's doc team restricted themselves to Jekyll with Github Pages, the whole community might benefit from the plugins they make available as well as early identification of any bugs. 

But to give Github some credit, they do highly dogfood their products. Internally, I know the company uses Github repos extensively to share and publish content (rather than using Confluence or Sharepoint). And the tech writers are using Jekyll along with Github repos, which is really encouraging.