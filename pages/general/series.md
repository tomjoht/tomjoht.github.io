---
title: Series
permalink: /series
layout: page
series:

  - title: Simplifying complexity
    url: /simplifying-complexity/index.html

  - title: Value arguments for docs and tech comm
    url: /2017/12/28/value-of-tech-comm-in-company-part1/

  - title: Visual communication
    url: /2016/03/12/new-series-on-visual-communication/

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

  - title: My DITA journey
    url: /2014/04/16/my-dita-journey-begins/

  - title: Quick reference guides
    url: /2008/07/06/quick-reference-guides-the-poetry-of-technical-writing/

  - title: Search engine optimization
    url: /2013/09/22/how-to-search-engine-optimize-your-help-content-or-documentation/

  - title: User-centered documentation
    url: /2008/05/30/podcast-how-to-create-user-centered-documentation-interview-with-joe-sokohl/

  - title: My journey to and from wikis
    url: /2012/06/11/essay-my-journey-to-and-from-wikis-why-i-adopted-wikis-why-i-veered-away-from-them-and-a-new-model-for-collaboration/

  - title: Findability / Organizing content
    url: /2010/05/17/new-series-organizing-content-organizing-content-1/

  - title: From overlooked to center stage
    url: /2010/04/11/if-youre-in-atlanta-next-week-be-sure-to-check-out-currents/
---

{% for item in page.series %}
* [{{item.title}}]({{item.url}})
{% endfor %}
