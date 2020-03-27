---
title: "Staying updated about what developers are changing -- my techniques for information sleuthing"
permalink: /blog/staying-updated-about-what-developers-are-changing-information-sleuthing/
categories:
- technical-writing
keywords:
rebrandly: https://idratherbewriting.site/informationsleuthing
description: "In an ideal world, developers include technical writers in all relevant meetings and keep them updated about changes they're making that might affect the docs. If this is the case for you, count yourself lucky. More often than not, however, technical writers are left out of the loop until the last minute, when someone remembers that the docs likely need to be updated (or should have been updated prior to release). This scenario is just as true whether everyone is working from home or in the office. One solution for this is to embrace a technique for information sleuthing."
---

Docs are rarely on the forefront of developers' minds, and as a technical writer, at some point you'll realize that important details were never communicated to you. You might only find this out when someone does a bug bash on some user flows and complains that the docs are out of date, or when others outside the development team contact you to tell you that something is "incorrect." Then you realize that somewhere, some developer made a change to something, QA tested it, and the team pushed it out to production &mdash; *all without informing the technical writer to update the documentation*. Nothing makes tech writers feel so marginalized and excluded as when this happens.

The most commonly asked for solution (by technical writers) is for others to keep them updated. Sometimes writers include a checkbox on JIRA items that indicates some doc update is needed. Or maybe by attending daily standups and other meetings, you hope to get ahead of the curve. If your process is working for you, great. If like me you still find yourself occasionally left out of the loop, rather than feeling indignant and overlooked, there is another approach: information sleuthing.

The general idea of information sleuthing is to embrace the *pull* rather than *push* method for information. Don't get upset when engineers fail to push information to you. Be grateful when they do, but don't expect it. Instead, pull the information from various sources, piecing together the changes. It's not hard to do this, given that engineering teams spend all day online and hence leave a visible footprint, but it does take some time. You can spend about 30 minutes a day just sleuthing for information.

Why am I using the word "sleuthing" here? Admittedly, it's a more playful and interesting term than simply "gathering." However, it also connotes a sense of playing detective. When you're looking for information, you're not just looking at any type of change but rather changes that affect documentation (and which weren't previously called out to you).

Here are some sources that I consult when I'm in information-sleuthing mode. The sources will vary based on the tools your engineers use.

* Quip's recent updates
* Chime chatroom
* JIRA for the sprint (sprint items)
* JIRA for the project as a whole (all updates, including the backlog)
* Launch readiness wiki
* All wiki updates
* Commit logs in repos
* Code Review requests
* Weekly update emails
* Mailing lists
* QA test scripts
* Feature roadmap and planning documents

Of course, daily standups and other meetings can provide a source of information too, but these sources tend to burn up your time with more noise than signal.

I find that when I regularly browse these information sources looking for relevant updates, I can better stay ahead of releases and anticipate changes. I also find it somewhat relaxing and fun to browse these sources. It's not mentally taxing to glance through commit logs or JIRA updates, for example.

When I do identify some important information, I'll often reach out to the person on Chime or email to get more information or to put myself on their radar.

Again, information sleuthing probably shouldn't be required in a "doc-first" type of company. But despite an engineering team's best intentions, they are often focused on code and deployment more than docs. Docs slip past their attention. But there is almost always an online footprint into changes that engineers are making, and if you follow it you can stay ahead of the game.

Just for fun, I'm including a few survey questions to gather your feedback and experience. You can see the ongoing results [here](https://www.questionpro.com/t/PGsPNZg2Sb).

<script>
EMBED_PARAMS = {};
EMBED_PARAMS.surveyID =7234748;
EMBED_PARAMS.domain ="//www.questionpro.com";
EMBED_PARAMS.src ="//www.questionpro.com/a/TakeSurvey?tt=IakgWmNzGHM%3D";
EMBED_PARAMS.width ="100%";
EMBED_PARAMS.height = "600px";
EMBED_PARAMS.border = "hidden";
</script>
<div id="div_7234748"></div>
<script src="//www.questionpro.com/javascript/embedsurvey.js?version=1"></script>
