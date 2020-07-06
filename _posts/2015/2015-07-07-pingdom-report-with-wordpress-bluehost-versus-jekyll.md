---
title: "Pingdom reports with WordPress on Bluehost/MaxCDN versus with Jekyll on Github"
categories:
- technical-writing
keywords: maxcdn, bluehost, jekyll, github, speed, performance
description: "My blog is both faster and more stable with Jekyll on Github than it was with WordPress on Bluehost with MaxCDN."
---

[Pingdom](https://www.pingdom.com/) is a service that checks your website for performance, measuring download speed, outages, and more. For free, you can configure Pingdom to periodically check your site and let you know when it's down.

When my blog was on WordPress, hosted on Bluehost and using MaxCDN (a CDN network), here were the average response times:

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/bluehostpingdom.png" | prepend: site.baseurl }}" alt="WordPress on Bluehost with MaxCDN" />

After moving my blog to Jekyll and hosting on Github, here are the average response times:

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/githubpingdom.png" | prepend: site.baseurl }}" alt="Jekyll on Github" />

I could integrate MaxCDN with Jekyll, but I'm not sure if there would be much benefit, since MaxCDN just creates static files cached in different regions of the world to speed download time. Jekyll already creates static files, and I guess I'm not that convinced that download times vary so much in different parts of the world. 

Overall, the performance is faster and there are rarely outages.