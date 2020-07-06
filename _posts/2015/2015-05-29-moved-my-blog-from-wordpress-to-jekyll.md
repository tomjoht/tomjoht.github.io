---
title: Moved my blog from WordPress to Jekyll
categories:
- jekyll
- wordpress
keywords: engineering workflows
description: "I moved my blog from WordPress to Jekyll because I want to use the same publishing paradigms for both tech comm and the web. Jekyll also loads more quickly."
---

After experimenting with Jekyll as a documentation platform for the past several months, I decided to migrate my blog from WordPress to Jekyll. 

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/jekyllrblogo.png" | prepend: site.baseurl }}" alt="" />	

Although I think WordPress is a nearly perfect blogging platform, and I have extensive knowledge about building sites in WordPress, I still made the switch. 

Here are some reasons why I switched:

## Tired of the split world view
My main reason for switching probably differs from the most common reasons people switch from WordPress to Jekyll. I think that the publishing platforms we use to create technical documentation shouldn't be different from the publishing platforms we use to publish to the web.

Throughout my career I've been using MadCap Flare or MediaWiki or OxygenXML or some other tech comm tool during the day, and then switched to using WordPress to blog in the evenings. Then it's back to tech comm tools in the morning.

Well, I'm tired of this split paradigm when it comes to publishing. *Why should web publishing tools be any different from tech comm publishing tools?*

## WordPress is slow
Although WordPress offers 30,000 plugins, allowing you to build nearly anything, there's a hidden cost to each plugin. If you add more than a dozen plugins on your site, it slows down considerably. 

In the past, I've tried integrating BuddyPress (WordPress' social network platform) to build more of a community. No matter how many tweaks I made to speed up my site, the load time was around 4-5 seconds. I finally gave up on the community idea.

About a year ago, I made a relentless effort to get my site's speed down under 2 seconds. I purged every unnecessary plugin I could. I integrated MaxCDN (which creates cached versions of your site, making it static) and WP Total Cache. It worked pretty well (once I finally got the settings right). The load time (about 2 seconds) wasn't bad at all. 

Still, Jekyll sites load pages in about .5 seconds. This load time can increase SEO, since Google ranks sites higher when it can load the pages faster. 

Faster loading times also fit better with the way people use the web. People quickly jump from page to page trying to find information. If pages load quickly, you allow users to more easily move around your site and find what they need.

## Fundamental delivery paradigm of WP is wrong

The fundamental paradigm of WordPress is flawed, I think. In WordPress, your content resides in a database, and your theme files reside in another folder on your server. 

When a user makes a request for a page, WordPress's template tags make a request to the database for the content. The database serves up the content and packages it into the HTML files. The display is then returned to the user.

Why build the site dynamically every time a user makes a page request? This is part of why WP is slow. It makes much more sense to build the entire site one time and then return the pre-built pages. 

With Jekyll, you build your site first and then push it out to your server. Each time a user requests a page, there's no need to make requests to a database to dynamically assemble a site. Your site is all ready to serve. (And there is no database.)

Of course it takes a while to build your site. And interestingly, Movable Type (an earlier competitor to WordPress) died out in part because the build time to recompile your site took a while. 

But you can offload the build process to your web host by using [Github Pages](https://pages.github.com/). Github Pages will automatically build your Jekyll site when you commit to your Github repository. Who cares if it takes a few minutes for Jekyll to build your latest commit. Once it's live, you save a ton of time in delivering your site with each request.

## Other reasons

I have a few other reasons as well: 

- **I want to learn Bootstrap and JavaScript more**. With my Jekyll-based Bootstrap-based theme, I can really dig into this platform more. I can also integrate JS directly on pages (in WP, it's difficult to use JS on pages).
- **WordPress is no longer cool**. It's become mainstream. Now almost everyone has a WordPress blog. (Not the best reason, I know. But hey, I like trying new things.)
- **I'm bored with WordPress**. After using the same platform for 8 years, I'm ready to try a different paradigm.
- **I fear the massive hack**. Although I've been lucky, people's WordPress sites get hacked all the time. I fear that my 2,000 posts could go up in a puff of smoke one unfortunate morning. (Of course I have db backups, but the thought that it could so easily get deleted kind of scares me.)

## Still a lot of work to do
Although I've migrated the content and gotten most everything working, I still have a lot of work to do. Over the coming months, I'll be fine-tuning the rest of the implementation. However, I didn't want to let the fine-tuning get in the way of my blogging. Content is the main reason people to any site.


