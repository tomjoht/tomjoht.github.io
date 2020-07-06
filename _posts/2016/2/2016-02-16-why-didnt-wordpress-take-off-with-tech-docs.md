---
title: Why didn't WordPress take off with tech docs?
categories:
- wordpress
keywords: 
description: "Despite the dominance of WordPress as a web publishing platform, which is used for nearly 75 million websites today, WordPress has rarely been used by technical writers as a platform for publishing technical documentation. Some of the reasons WordPress is avoided is due to its heavy LAMP stack architecture,  lack of component content re-use, and inability to publish multiple outputs such as PDF."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/14wpstatsthumb.png
---

## The popularity of WordPress
Despite the popularity of WordPress as detailed in [14 Surprising Statistics About WordPress Usage](https://managewp.com/14-surprising-statistics-about-wordpress-usage), this web CMS still hasn't emerged as a competing help authoring tool in the tech comm industry. 

<a href="https://managewp.com/14-surprising-statistics-about-wordpress-usage"><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/14wpstats.png" | prepend: site.baseurl }}" alt="Surprising statistics about WordPress" /></a>

Here are some of the staggering statistics about WordPress usage mentioned in the article:

>
> * 48% of Technorati’s Top 100 Blogs Are Managed With WordPress
> * 74.6 Million Sites Depend on WordPress
> * WordPress-Related Keywords Score 37 Million Searches Per Month
> * 40 Translations of WordPress
> * 22% of New U.S. Registered Domains Run on WordPress
> * WordPress.com Gets More Unique Visitors Than Amazon (Us)
> * WordPress.com Employs Only 229 People
> * 6 New WordPress.com Posts Every Second
> * WordPress Developers Charge $50/hr
> * 29,000 WordPress Plugins and Growing Daily
> * 98 Versions of WordPress to Date
> * 46 Million Downloads of WordPress.org
> * WordPress Is Most Popular With Business Websites
> * Akismet Is the Most Popular Plugin

With a portfolio of stats like that, you'd think that WordPress would be a common CMS used in tech comm departments as well. But as far as I can tell, WordPress is rarely used by technical writers. Why?

## Challenges in using WordPress for tech docs

Here are a few reasons:

* **WordPress is a lightweight web CMS, not a CCMS (component content management system).** As such, it isn't optimized for chunking different components and reusing those chunks in different outputs. The latter is much more common in tech doc departments.
* **WordPress isn't meant for publishing multiple outputs of content**, such as three different versions of documentation for several different audiences, or for publishing PDF, HTML, and mobile outputs. With WordPress, you have just one output: HTML.
* **WordPress requires a heavy infrastructure that consists of Linux, Apache, MySQL, and PHP (LAMP).** Setting up this infrastructure and fine-tuning it for WordPress can require more application-system-engineering knowledge than most technical writers have or want to get into. Additionally, if you have 10 different doc sites, you would need 10 different instances of the infrastructure. Alternatively, you could run WordPress Multisite, but then you have more robust platform management tasks and challenges.
* **WordPress usually doesn't meet enterprise security requirements.** WordPress sites get routinely hacked and are noted by enterprise security groups for their poor security. As such, if using a web CMS, much of the time a more robust platform like Drupal will be selected.
* **WordPress isn't ideal for updating documentation content.** WordPress is really intended for one-off articles published as blog posts, articles, or other web content that you publish once and then rarely update. With tech comm docs, however, you're constantly updating existing content with each new release, re-working and editing and cross-referencing the content to align with the changing shape of the product. When you have to find and update all of the pages in WordPress like this, it can be a pain.

Despite these shortcomings, I still think WordPress wouldn't be a poor choice for publishing tech docs. The many themes, plugins, and web hosts that specialize in WordPress make this a more accessible and functional platform than other web-based CMSs. But so far this hasn't been the case. What do you think? Why is WordPress such a common platform for web publishing but uncommon for tech docs?