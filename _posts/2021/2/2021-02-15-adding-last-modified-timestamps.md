---
title: "Adding last modified timestamps to content"
categories:
- technical-writing
- apidoc-site-updates
permalink: /blog/adding-last-modified-timestamps-to-documentation/
keywords: product overviews
description: "Recently I received feedback from someone saying that they couldn't tell when my <a href='/learnapidoc/docapis_measuring_impact.html'>API documentation quality checklist article</a> was published. This was embarrassing to me because printing timestamps on pages was one of the quality characteristics in the checklist. So I decided to add last-modified timestamps to every page. Unfortunately, this is a much harder task than it initially seems."
rebrandly: https://idbwrtng.com/lastmodifiedtimestamps
---

## Programmatic ways of adding timestamps

You can programmatically add a timestamp to your pages if they're managed with Git. And in fact, Jekyll (what I use for my sites) has a [last-modified-at plugin](https://github.com/gjtorikian/jekyll-last-modified-at) that can do this automatically. This plugin looks at the git log and finds the last commit date for the page. Seems easy, right? In fact, if you don't want to use a plugin (because GitHub Pages doesn't allow it), you could use a [pre-commit Git hook](https://toroid.org/git-last-modified) that will update a metadata value for the page you're modifying prior to commit.

However, programmatically adding the last-modified timestamp to the page based on the actual last commit in Git isn't a great idea. Sometimes I update pages to change some metadata in the frontmatter (the page's weight value that determines page order). Other times I might update the ad tags on the page. Other times I fix a broken link. If the content isn't reviewed, revised, or edited, but the last-modified timestamp gives readers the impression that it was recently updated, then this small change to the page distorts the value of the last-modified timestamp.

What readers expect when viewing the last-modified tag is the date when the content was last edited in some marginally significant way. Because there's no way to retrieve this date programmatically, I manually added a `last-modified` property to the frontmatter and then manually populated this field with a time value following `yyyy-mm-dd` format (so that the date format can be manipulated by date filters).

## Git History plugin

Although I could use `git log` to check commit history for a file, I found it easier to use a more visual GitHub plugin called [Git History](https://github.com/pomber/git-history). You can use this plugin in a couple of ways.

You can browse to the file in GitHub. You'll then see a new button that says "Open in Git History":

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/githistoryscreenshot2.png" alt="Open in Git History" />

Clicking Open in Git History opens the file in a view like this:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/githistoryscreenshot3.png" alt="Browser view of Git history" />

You can also just go to the file in GitHub and then replace `github.com` with `github.githistory.xyz` in the address bar. This way, you can just update the URL with each page permalink rather than going into the GitHub GUI each time. Either way opens up the same history view.

In the history view, the changed text appears in a bold white font while the unchanged appears more off-white. Looking at the above screenshot, I see that on Jan 18, 2021, I added a `last-modified` property to the frontmatter. If I were to programmatically print the last-modified timestamp to the page, it would select Jan 18, 2021. However, this edit was trivial and unrelated to the content itself.

You can see different commit histories by selecting a different timestamp at the top. I moved further back along the timeline until I could see changes to the actual content of the page. Back on Aug 4, 2020, I changed the page title. The same date I also added the original page as well.

<img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/githistoryscreenshot1.png" alt="Browser view of Git history" />

So for my `last-modified` timestamp, I chose `2020-08-04`. Unfortunately, when I update the page again, I'll need to manually remember to update this date. But at least now I have a baseline of real last modified dates.

## GitHub button to see file in GitHub

I also added a small GitHub button after the "Last updated" timestamp on pages.

<a href="/learnapidoc/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/github_button_last_modified.png" alt="GitHub button" /></a>

Clicking this button takes you the page in GitHub. Once there, you can click **History** to see the commit history for the page. This way you can more easily see the file's history.

## Time to add this timestamp

How long did it take to go through each page in my API doc course and update the last-modified date? I worked on this on and off for several afternoons. It's tedious and boring. The only way to make this task more do-able is by watching some Netflix show on the side.

But now readers can know whether the content is up to date. And I can also run scripts to identify pages that haven't been updated in a while.

The challenge of maintaining this [API doc site](/learnapidoc/) is that pages frequently go out of date. If you want to create a step-by-step tutorial using any tool or API, chances are the same content will be out of date within a year. As the number of pages grows, it becomes increasingly challenging to keep it updated. Even so, I like having a body of documentation that I can edit, update, and add to rather than just writing one-off blog posts.

## Showing a list of recently modified posts

Now that I had timestamps showing recent modification dates, I wanted to show a list of the most recently updated pages. Sounds easy, right? Actually, comparing pages by date is tricky (note that I'm specifically referring to pages, not posts in Jekyll). The approach, as far as I can tell, is to convert dates to unix time, which is the number of seconds since 1970. Then based on the current unix time, you can do comparisons to determine whether the last modified property on the pages fall within the date range you specify. This stack overflow thread [In Jekyll, how to show “posts from last week”](https://stackoverflow.com/questions/46672231/in-jekyll-how-to-show-posts-from-last-week) has a code sample that I needed for this logic.

Based on this code (see the [source here](https://raw.githubusercontent.com/tomjoht/learnapidoc/main/_docs/introduction_to_rest_apis/whats_new.md)), I generated a list of recently updated pages in a [What's new](/learnapidoc/docapis_whats_new.html) page here. I couldn't figure out how to properly sort the dates, but at least it shows the most recently updated pages.
