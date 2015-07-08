---
title: "Pingdom reports with WordPress on Bluehost/MaxCDN versus with Jekyll on Github"
categories:
- general
keywords: 
summary: ""
published: false
---

## Pingdom reports

Pingdom is a service that checks your website for performance. For free, you can configure Pingdom to periodically check your site and let you know when it's down.

## Pingdom reports with WordPress on Bluehost with MaxCDN

When my blog was on WordPress, hosted on Bluehost and using MaxCDN (a CDN network), here were the average response times:

<img src="{{ "/images/bluehostpingdom.png" | prepend: site.baseurl }}" alt="WordPress on Bluehost with MaxCDN" />

## Pingdom reports with Jekyll on Github (no MaxCDN)

After moving my blog to Jekyll and hosting on Github, here are the average response times:

<img src="{{ "/images/githubpingdom.png" | prepend: site.baseurl }}" alt="Jekyll on Github" />

I could integrate MaxCDN, but I'm not sure if there would be much benefit, since MaxCDN just creates static files cached in different regions of the world to speed download time. Jekyll already creates static files, and I guess I'm not that convinced that download times vary so much in different parts of the world. 

However, for a better comparison, I would need to somehow need to account for the regional location when measuring download times.