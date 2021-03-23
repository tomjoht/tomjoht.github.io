---
title: "Write the Docs Podcast episode 1: New podcast from the Write the Docs community"
categories:
- technical-writing
- wtd-podcasts
keywords: podcasts, write the docs
description: "The Write the Docs community now has a podcast available. The podcast follows a discussion-based format with several co-hosts talking about recent articles or topics related to tech comm. The podcast is available on almost every podcast platform."
bitlink: http://bit.ly/wtdpodcastepisode1
---

## Write the Docs Podcast details

You can view the new Write the Docs podcast here: [podcast.writethedocs.org](http://podcast.writethedocs.org). I'm one of the co-hosts, along with Jared Morgan, Carlee Potter, and Chris Ward. Jared and Carlee are based in Australia, and Chris is in Berlin (though he's English/Australian).

Here's the first episode:

<iframe width="560" height="315" src="https://www.youtube.com/embed/o1_TXiltVfA" frameborder="0" allowfullscreen></iframe>

## How the podcast started

I felt there was a need for a discussion-based podcast similar to Leo Laporte's This Week in Tech (TWIT), so I asked around on the Write the Docs [#podcast Slack channel](https://writethedocs.slack.com/messages/podcast/) channel if others were interested. Jared, Carlee, and Chris all wanted to do a podcast too.

Although we'll be the core co-hosts, we're also planning to rotate in other WTD community members as well. Right now the podcast is in its early stages, and we have just one episode recorded.

The podcast is a group effort, with everyone pitching in, from the recording to the post-editing to the website and more.

## Building the podcast site

I helped build the site, so I want to mention a few details here. To build the site, we started with this [Soundcast HTML theme](http://preview.themeforest.net/item/soundcast-podcast-responsive-theme/full_screen_preview/15691831?_ga=1.186618985.1798318015.1478823039). I then converted it to Jekyll. The conversion to Jekyll is surprisingly simple. At some point I want to write a more detailed guide on how to convert a site to Jekyll, but basically converting an HTML site to Jekyll involves the following:

* Add a _config.yml file to the project.
* Define a layout in the _layouts folder.
* Insert the {% raw %} {{content}} tag {% endraw %} into the layout where you want page content to appear.
* Add front matter tags into your pages, with the layout specified.
* Use for loops to iterate through lists of content.

The most difficult part was modifying the HTML from the original theme to exclude all the layouts that we didn't need or want.

The heart of any podcast site is the media RSS feed. You can see this feed at [http://podcast.writethedocs.org/itunes.rss](http://podcast.writethedocs.org/itunes.rss). The RSS feed is how you syndicate your site across different channels, such as [iTunes](https://itunes.apple.com/us/podcast/write-the-docs-podcast/id1178393510) and [Stitcher](http://www.stitcher.com/podcast/write-the-docs-podcast).

The template for the media RSS feed is [here](https://github.com/writethedocspodcast/writethedocspodcast.github.io/blob/master/itunes.rss). In some places, the template gets values stored in the _config.yml file.

The template also loops through the latest posts that have `podcasts` as a category and inserts values from the frontmatter in those posts into the RSS feed automatically. You can see the [frontmatter for the post here](https://github.com/writethedocspodcast/writethedocspodcast.github.io/blob/master/_posts/2016-11-19-episode-1-this-week-in-tech-comm.md).

## Subscribe to the Podcast

Enough of the technical details. I encourage you to subscribe in some form or another -- whether iTunes, Stitcher, Pocketcast, Youtube, RSS, Email, or some other method. We hope to publish regular podcasts here, with at least a monthly cadence, if not more frequently.

Let us know if you have any topic requests or feedback.
