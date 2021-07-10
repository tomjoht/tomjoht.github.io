---
title: "My Calm Meditation app -- another experiment to test my docs"
categories:
- api-doc
- technical-writing
keywords:
description: "I recently created an HTML5 web app called Calm Meditation. If you have a Fire TV, you can check out the app by searching for it in the Amazon Appstore. I'm not really into meditation, but I needed some sample video content to test out a web app framework I'm documenting. The idea I came up with for generic video content involved nature still scenes with some background music. I think it worked out okay, actually. There's a whole genre of these types of apps, apparently."
bitlink: http://bit.ly/calm-meditation-app
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/calmmeditationappthumb.png
---

You can view my Calm Meditation app in the Amazon Appstore [here](https://www.amazon.com/Id-Rather-Be-Writing-Meditations/dp/B071DRTYG2/ref=sr_1_1).

<a href="https://www.amazon.com/Id-Rather-Be-Writing-Meditations/dp/B071DRTYG2/ref=sr_1_1"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/calm-meditation-app.png"></a>



On your Fire TV, search for "Calm Meditation." (The app doesn't work on Kindle tablets.)

My primary role at Amazon involves creating documentation for third-party developers creating Fire TV apps. Previously, I wrote about how I created an [Android app from the Write the Docs podcasts](https://idratherbewriting.com/2017/04/09/write-the-docs-app-on-fire-tv/). HTML5 web apps differ from Android apps in that they use web technologies (HTML5, JS, CSS) instead of Java and Android APIs. I didn't want to have two different apps with the same content, so I set about to capturing some generic video content last weekend to build the web app.

With my 6-year-old riding beside me on her bike, we ventured down the [San Tomas Aquinas trail](http://www.rhorii.com/STACT/SanTomasTrl.html) with an iPhone and tripod in hand, periodically capturing 2-minute still scenes from the trail and accompanying canal. I then uploaded the videos to YouTube and chose some Ambient background music. I also grabbed some interesting Buddha quotes to use in the descriptions.

The result? Some quasi-meditational videos that look decent enough to be a real app. My kids love it (anything that appears on the TV screen gets their attention). My six-year-old said we should call it "The Calm App." When you're stressed out, you go and watch a few videos while focusing on some slowly moving element (e.g, blades of grass, ripples in water, passing cars) to focus your attention on nothingness. It kind of works. I'm not into meditation myself, as I don't have the patience for it (sadly), nor yoga. But I had a lot of fun creating this app!

I also created a companion site that contains the videos: [idratherbewriting.com/calm-meditation](https://idratherbewriting.com/calm-meditation/). I created the site to generate an [MRSS feed](https://idratherbewriting.com/calm-meditation/feed.xml), which is one way to configure the media in the app framework. The web site uses the generic Jekyll theme (Minima) and is [hosted on GitHub](https://github.com/tomjoht/calm-meditation). (If you need an MRSS template, check out the [feed.xml file](https://github.com/tomjoht/calm-meditation/blob/master/feed.xml) in the source. Jekyll is awesome for creating feeds like this.)

Creating the videos was a fun activity for both me and my daughter. But the real reward came in trying to configure a new app framework (release date coming soon) using my video content. The dev team thought a short FAQ was pretty much all that was needed. Well, as you can probably guess, as I was going through the "simple" app that was *so easy to use, it wouldn't require hardly any documentation*, I had about 30 questions and identified several significant problems. I wouldn't have this insight without actually going through the same process as developers would, using actual content.

The most important activity in creating documentation is to run through the tasks you're instructing your user to do. It's only then that you can truly evaluate the information accuracy and needs.

For more details on testing your app, see the following sections in my API doc course:

* [Set up a test environment](https://idratherbewriting.com/learnapidoc/testingdocs_test_environment.html)
* [Test all instructions yourself](https://idratherbewriting.com/learnapidoc/testingdocs_test_your_instructions.html)
* [Test your assumptions](https://idratherbewriting.com/learnapidoc/testingdocs_testing_assumptions.html)

Creating this kind of video content was easy, so I may create more "meditation" apps in the future. Who knows, I may even start using them to meditate.
