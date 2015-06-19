---
title: "2.1 Help authoring tools"
permalink: /publishingapidocs2-1/
course: "Publishing API documentation"
weight: 2.1
---

## Can I use a help authoring tool?

Help authoring tools (HATs) refer to the common toolset often used by technical writers. Common HATs include Madcap Flare, Adobe Robohelp, Author-it, and more. Sure, you can use these tools to create API documentation. 

Here's a sample help output from Flare for the Photobucket API:

<a href="https://pic.photobucket.com/dev_help/WebHelpPublic/PhotobucketPublicHelp_Left.htm#CSHID=FAQ/FAQOverview.htm|StartTopic=Content/FAQ/FAQOverview.htm|SkinName=WebHelp"><img src="{{ "/images/publishingapidocs/hatphotobucket.png" | prepend: site.baseurl }}" alt="Publishing API docs" /></a>

## Pros of using a help authoring tool

### HATs let you handle challenging scenarios

Using a HAT has some advantages. First, you can handle some of the more challenging conditions that tech writers have to deal with:

* Content re-use
* Conditional filtering
* Versioning
* Translation
* PDF output
* Content review

### HATs reinforce the fact that API doc is more than endpoints
HATs reinforce the fact that good API documentation is more than just a set of endpoints and parameters. Good API documentation includes guides and tutorial topics as well. Developers rarely write that kind of information, yet it just as important as the reference documentation. HATs lend themselves more to these guide and tutorial topics.

## Cons of using a help authoring tool

### Most don't run on Macs
Using a HAT also presents some disadvantages. First, almost no HAT runs on a Mac. But many developers and designers prefer Macs because they have a much better development platform. For example, to make a cURL call, you just open Terminal and paste in the call. With a Windows machine, installing cURL and libcurl is much more onerous and harder to use.

### Dated UI won't help sell the product
Additionally, the output from a help authoring tool usually looks dated. In Flare's latest release, you can customize the display in pretty significant ways, so maybe it will help end the dated tripane output look and feel. 

The problem with the dated tripane look and feel is that API documentation *is* the interface that users navigate. There isn't a separate GUI interface that the help complements. The help is front and center as the information product that users get. 

If you want to promote the idea that your API is modern and awesome, you want a website that looks modern and awesome as well. In fact, you might have a UX developer create the website itself. If you lead with an outdated tripane site that loads frames, developers may not be as excited to use your API. 

### Doesn't integrate with other site components

Many of the API doc sites are single-site experiences. The API docs are usually part of the website, not a link that opens in its own window, separate from the other content. If you can output a format that another site can consume, great. But if you split and divide the user into separate sites, you're following an anti-pattern with API doc sites.


