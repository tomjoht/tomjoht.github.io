---
title: Slides, notes, and lessons learned at the STC Summit 2015 in Columbus, Ohio
categories:
- api-doc
keywords: stc summit, developer documentation, workshop, virtual track
description: "I recently attended the STC Summit 2015 in Columbus, Ohio. I gave both a workshop and presentation on REST API documentation. This post includes my slides, links to notes, and some thoughts."
---

## Slide presentations

Here are the slides from my workshop on REST API documentation. I have two sets of slides:

<iframe src="//www.slideshare.net/slideshow/embed_code/key/xpiI7lHFfJ037" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/TomJohnson7/documenting-rest-apis" title="Documenting REST APIs" target="\_blank">Documenting REST APIs</a> </strong> from <strong><a href="//www.slideshare.net/TomJohnson7" target="\_blank">Tom Johnson</a></strong> </div>

For detailed notes, see <a href="{{ "/learnapidoc" | prepend: site.baseurl }}">Documenting REST APIs</a>.

<iframe src="//www.slideshare.net/slideshow/embed_code/key/g4K9lnzZhSpxDn" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/TomJohnson7/publishing-api-documentation-workshop" title="Publishing API documentation -- Workshop" target="\_blank">Publishing API documentation -- Workshop</a> </strong> from <strong><a href="//www.slideshare.net/TomJohnson7" target="\_blank">Tom Johnson</a></strong> </div>

For detailed notes, see <a href="{{ "/publishingapidocs" | prepend: site.baseurl }}">Publishing API documentation</a>.

I also gave a presentation that was a shorter version of the Publishing APIs slidedeck:

<iframe src="//www.slideshare.net/slideshow/embed_code/key/6jdHcmtrVCtjXZ" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/TomJohnson7/publishing-api-documentation-presentation" title="Publishing API documentation -- Presentation" target="\_blank">Publishing API documentation -- Presentation</a> </strong> from <strong><a href="//www.slideshare.net/TomJohnson7" target="\_blank">Tom Johnson</a></strong> </div>

This presentation was recorded as part of the virtual track.

## Workshop evaluation

Overall, I think the workshop went well, but I do have some thoughts on improving it next time:

* I was probably a bit ambitious in the amount of material I wanted to cover.
* I should have given more emphasis about what to install ahead of time.
* I should have simplified the activities to make them less error prone.

Also, wifi was problematic, as it usually is. People could connect to wifi but not go online. We had to have a hotel wifi tech come down and sort things out.

Here's what I thought worked well:

* **The workshop had a good thematic arc**. I started out by explaining how to use a REST API as a developer. Then participants went through the actions of documenting a new endpoint on the same REST API. Then we explored different ways to publish the REST API.
* **Focusing on REST APIs instead of tackling all APIs was a good decision**. If you try to include Java and C++ APIs, you end up trying to explain programming in order to cover the different aspects of the API. I think people need more background and preparation before they start to tackle programming APIs. The focus on REST also met most people's needs and interests.
* **My workshop notes helped allay some of the concerns people had when they ran into snags** or didn't have cURL installed or were lost in some other way. When I showed them the detailed notes they could refer to later (the same links as above), it made people feel more reassured.



## Presentation evaluation

I also gave a 45 minute presentation that was also part of the virtual track. I thought this presentation went well. Later someone said they wished they could just see an API. In retrospect, I think I should have demo'd a bit more how some of these API publishing platforms work.

Because I was in the virtual track, I had to submit my presentation ahead of time and use a dedicated computer running Adobe Connect. I could have browsed online during the presentation, but I would've had to use the screen-sharing options inside of Adobe Connect and also sign into various sites.

The next time I present this information, though, I'll probably show the demos. Because really, the demos that I have prepared are pretty good. I took the same API information from a simple Mashape Weather API and published it across at least 5 different platforms (Github, Apiary, Swagger, Jekyll, and readme.com). Again, detailed notes are here: <a href="https://idratherbewriting.com/publishingapidocs">Publishing API docs</a>.

## Summit takeaways

I made a good decision and bad decision in making flight/hotel plans. The good decision was to stay at an off-site hotel next to a Bikeshare station. Why stay off site? I really dislike fancy hotels -- they all look the same and insulate you from the real city. Usually wifi and breakfast cost extra, and why pay so much if you're only crashing there at night?

For a third of the price, I stayed at a nearby German Village Inn two miles away. The Summit staffers don't really like people staying in off-site hotels, but no one requires you to stay at the conference hotel. If a city has a bikeshare, it makes it super easy to get around. There was a bikeshare station both next to my hotel and next to the conference hotel. Since I'm accustomed to riding my bike everywhere already, this turned out to be ideal.

My bad decision was in taking a red-eye flight to get to Ohio. First of all, getting to Ohio sucks. You have to take connecting flights because nothing is direct. I thought I could lessen the time away from my family by taking the redeye flight and sleeping on the plane, but it's hard to sleep sitting straight-upright on a plane, with no neck support. I only slept maybe 3 hrs. I never entirely recovered and was tired for a lot of the conference.

## Summit takeaways

Throughout the conference I was thinking about how to convert my workshop notes into an online course. Although many of the tutorials are things I can record and talk through using conventional video tutorial methods, I do have some conceptual sections that don't involve me clicking buttons or adding code on a screen.

For these conceptual sections, I want to try to record a "talking head" section in a video, as they're called. I'm still undecided about the level of fidelity for the talking head sections. On the high end, I could set up a green screen with lighting and use an iPad teleprompter. On the low end, I could just put the camera on a tripod outside and wing-it from a few bullet points.

I probably don't have that many conceptual sections to explain, so mostly likely I'll do the latter. I think it's better to show an illustration while explaining a concept anyway. Still, I do have an iPad, and the teleprompter method might be fun to experiment with.

Now that I've finished a season of presentations and workshops, I have more time on my hands. And I want to develop some new skills.

## Meeting people

Overall, I enjoyed talking and interacting with people. Here are a few conversation snippets:

* I enjoyed a conversation I had with an academic who let the f-bomb slip freely and was candid about why she couldn't write a guest post listing the top 10 tech comm programs in the U.S.
* Another person referred to me as a "renaissance man," which I thought was curious. I've changed my focus enough times that I guess I confuse people about what my specializations are (video? podcasts? findability? DITA? wordpress? API documentation?).
* I had the opportunity to ask John Carroll what he thought of DITA, since many DITA people claim Carroll's minimalism as foundational to tech comm. Carroll said he's always elated to see people take his work and incorporate it into their approaches. At the same time, he said any system that traps you into a fixed pattern or template can be detrimental if the content doesn't fit that pattern or template.
* Another person explained to me her dream of gamifying a translation effort to increase health and medical literacy in Africa.
* Another person told me about how she's trying to transition from photojournalism into tech comm. (I asked her a lot of questions about teleprompters and video recording.)
* Another person showed me the API she's supposed to document and had no idea about how to go about it. It turned to be a kind of .NET API (one of the various languages grouped under .NET).
* Another person explained the difficulty in migrating reference docs from a legacy system.

I know *a lot* of people, and a lot of people seem to want to talk to me.

Being a blogger and podcaster makes me extremely visible at tech comm conferences. It also amazes me what bonds form after you record a podcast with someone. It's something that people remember even years afterward and still feel connected to you. It made me think, I should do more podcasts. And I will.

## First API track

This Summit was the first time ever featuring an API track. I'm glad Chris Hester, the conference organizer, was aware enough with trends to recognize the interest and importance of API documentation. There were about 7 sessions related to API documentation, in addition to my pre-conference workshop on the topic.

In some of these sessions, newbies to API documentation required the discussions to remain at the introductory level. But during other sessions, we really jumped ahead and dove into more depth, such as during the Swagger presentation.

New this year, there was a pre-conference presentation coaching option and an on-site speaker ready room. I took advantage of both services and really got some good feedback.

Chris and another person actually gave me feedback on some other API doc presentations I'd given, and suggested ways to improve it. They said participants want to go through the actions of doing something (such as documenting an API). This helped me develop the thematic arc I used in my workshop.

In the speaker-ready room, I realized that white text on a black background doesn't stand out very well, so I changed my template.

## Interesting vendors

In attending the conference, one question I had was how to provide authentication for my documentation (I usually try to go to conferences with a few questions in mind). Our users have to log in to access content, and our current way of providing authentication (we upload content into site.com and use Salesforce to provide the authentication) isn't ideal.

I did encounter one new vendor that looked pretty cool: [Titania Software](http://titaniasoftware.com/). It's a content delivery platform that allows you to publish all of your outputs to customers in a convenient doc portal. Titania can sync with another repository, require users to log in, and even allow users to comment. It provides a comprehensive documentation portal for your content, complete with faceted filtering, search, and other features.

What's also neat is that your files don't need to be in XML or DITA to integrate with the system. They can be HTML, PDF, Word, or other formats.

The only drawback is the cost. This solution is probably $10k to implement and at least $30k per year, which isn't bad if you're a large enterprise with a lot of content. But if you're a small doc shop, it may be harder to get budget for this.

## Ohio

I attended the Northeast Ohio outing to a triple AAA baseball game. I enjoyed chatting with my game buddies, but I have to admit that, even though I'm a sports enthusiast, I find baseball boring. And Ohio is humid and muggy, but clean and pleasant.

Ohio State University and other colleges have a huge student population in the area. I walked past some bars and clubs and saw a lot of college students, I assumed. But later someone just told me no, I'm just getting older so everyone looks young.
