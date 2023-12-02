---
title: Series
permalink: /series
myseries:

- title: Reflections on Zen and the Art of Motorcycle Maintenance
  url: /zamm/why-reread-zen-and-art-of-motorcycle-maintenance.html 
- title: Sitting, standing, and walking
  url: /blog/sitting-standing-walking-introduction/
- title: Trends to follow or forget
  url: /trends/trends-to-follow-or-forget-intro.html
- title: Journey away from smartphones
  url: /smartphones/overview.html
- title: A hypothesis about influence on the web and the workplace
  url: /web-and-workplace-influence/part1-introduction-to-influencers.html
- title: Mobility
  url: /blog/bike-commuting-from-renton-to-seattle/
- title: Reflecting seven years later about why we were laid off
  url: /blog/reflecting-seven-years-later-about-layoff-intro/
- title: Simplifying complexity
  url: /simplifying-complexity/index.html
- title: Value arguments for docs and tech comm
  url: /2017/12/28/value-of-tech-comm-in-company-part1/
- title: Visual communication
  url: /2016/03/12/new-series-on-visual-communication/
- title: Basketball
  url: /2018/04/19/why-watching-nba-can-make-you-a-worse-pickup-ball-player
- title: Biking
  url: /blog/biking-the-santa-clara-loop/
- title: Testing documentation
  url: /2015/07/07/testing-your-instructions/
- title: Voiceover techniques
  url: /2008/11/14/finding-a-conversational-voice-in-video-tutorials/
- title: Seven deadly sins of blogging
  url: /2009/09/15/seven-deadly-sins-of-blogging-1-being-fake/
- title: API documentation survey
  url: /2014/12/12/i-need-your-responses-to-my-api-documentation-survey/
- title: Author in DITA and Publish with WordPress
  url: /2013/01/21/how-to-import-webhelp-from-a-help-authoring-tool-into-wordpress/
- title: DITA journey
  url: /2014/04/16/my-dita-journey-begins/
- title: Dallas STC Summit videocasts
  url: /2010/05/11/a-few-ways-to-make-the-next-stc-summit-better/
- title: Get a Job in Technical Writing
  url: /2009/09/22/how-to-get-a-job-in-technical-writing-a-7-step-guide-for-students/
- title: Innovation in tech comm
  url: /2015/02/10/sustaining-and-disruptive-innovations/
- title: Jekyll versus DITA
  url: /2015/03/23/new-series-jekyll-versus-dita/
- title: Quick reference guides
  url: /2008/07/06/quick-reference-guides-the-poetry-of-technical-writing/
- title: Search engine optimization
  url: /2013/09/22/how-to-search-engine-optimize-your-help-content-or-documentation/
- title: User-centered documentation
  url: /2008/05/30/podcast-how-to-create-user-centered-documentation-interview-with-joe-sokohl/
- title: User-centered documentation principles
  url: /ucd-introduction/
- title: My journey to and from wikis
  url: /2012/06/11/essay-my-journey-to-and-from-wikis-why-i-adopted-wikis-why-i-veered-away-from-them-and-a-new-model-for-collaboration/
- title: "Findability / organizing content"
  url: /2010/05/17/new-series-organizing-content-organizing-content-1/
- title: From overlooked to center stage
  url: /2010/04/11/if-youre-in-atlanta-next-week-be-sure-to-check-out-currents/
- title: Java notes
  url: https://idratherbewriting.com/java-introduction/
- title: JavaScript notes
  url: https://idratherbewriting.com/javascript/
- title: DITA notes
  url: https://idratherbewriting.com/ditaqrg/
---

The following are a list of series-based posts that I've written. Each series has different lengths / numbers of posts based on my interest in the series and what the series covers.

{% for item in page.myseries %}
* [{{item.title}}]({{item.url}})
{% endfor %}
