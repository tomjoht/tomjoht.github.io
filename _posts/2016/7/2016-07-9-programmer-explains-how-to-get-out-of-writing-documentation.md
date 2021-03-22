---
title: "Thoughts on Documentation Avoidance for Programmers"
categories:
- podcasts
keywords: documentation, developer, write the docs, efficiency
description: "This past week on the Write the Docs forum, there was a bit of discussion around a recent presentation titled Documentation Avoidance for Programmers. In the presentation, Peter Hilton lays out a series of tips on how programmers might get out of writing documentation."
bitlink: http://bit.ly/documentationavoidance
date: 2016-07-09
tags:
- technical writing
- documentation
- technical communication
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/documentation-avoidance.mp3
podcast_file_size: 4.7 MB
podcast_duration: "6:00"
podcast_length: 4690110
---

{% include audio.html %}

## Documentation Avoidance presentation

You can view the presentation by Peter Hilton here: [Documentation Avoidance for Programmers](https://www.infoq.com/presentations/minimal-code-documentation).

Some of the tips are ridiculous (and said  tongue-in-cheek). Hilton says you can go on Slack or IRC and ask other programmers what a particular class does (even if you already know), and then just copy their answer and use it for documentation.

Peter also mentions tactics like responding to requests for documentation by saying, "It's on the wiki" (even when you know it's not). Most likely the users will look in vain and then not really bother you again. If they do come back and say they can't find it, you can then go write it and send them the link (hoping they don't look at the timestamp).

I can't imagine any programmer actually carrying out these tactics. I think some of these tactics are delivered to produce a reverse effect: to persuade developers that not writing docs turns out to be more inefficient and problematic than writing them.

Some of Hilton's tips are a bit more practical. He mentions pair programming as a way to transfer knowledge without writing docs. He also mentions getting others, namely *technical writers*, to create the documentation.

(Keep in mind that the docs Hilton refers to here are internal programming docs whose info is intended for other programmers, not end-users consuming released products.)

## Comparisons to Shakespeare

Peter also mentioned some other interesting facts. He compared reading programming to reading Shakespeare. If you lived 500 years ago, reading Shakespeare would have made a lot more sense, since people were familiar with the idioms, language, and themes. But once you lose this context and skip 500 years into the future, reading Shakespeare requires the help of experts.

Similarly, with software, although the code may seem clear to the programmer who wrote the code, people change companies rather quickly. Within a few years, half of your team will likely be working elsewhere. Technologies also rapidly evolve. In 5 years, some new programmer will be looking at your legacy code, written in a now-deprecated platform, and like a bleary-eyed high school sophomore who looks at Shakespeare and asks *What does this mean?* the programmer will also spend endless amounts of time trying to make sense of your code.

## Developers hate writing documentation

What struck me more than anything in this presentation is the developer's tone and attitude toward writing documentation -- to developers, writing docs sucks. Developers hate doing it. They would like to get out of writing documentation at all costs. It is the most mundane, tedious activity they can imagine.

This got me thinking about how I interact with developers. Sometimes when I ask a developer question after question about how something works, I feel like I'm "bothering" the developer. I try not to ask too many questions for fear that I'm somehow overstepping my welcome. Last Friday I was instant messaging an engineer for about a half hour with a variety of questions.

But then -- during my IMs -- I thought about how much programmers hate writing documentation, and I realized that actually I was doing this programmer a favor. He and others had coded all kinds of functionality that was either not documented or poorly documented on the wiki. I kept learning about newly added features and wondered whether they were described or explained on the wiki (they weren't) or even had tickets in the issue tracking system (some didn't).

Instead of seeing myself as a nuisance to the developer with my endless questions, I was helping this developer do the documentation he really should have provided when he coded the feature. I was essentially doing the work he hated to do. In the developer's mind, it's like I'm the guy with a shovel who follows a horse and rider to clean up the occasional shit while the developer rides on. Of course my presence is welcome! *Clean away, buddy, and let me ride on in glory*.

## Why is writing developer documentation so hard

Peter says one reason developers avoid writing documentation is because it's really *hard* to write good documentation. But developers are some of the most brilliant people in the world. Why is it so hard to explain the information, especially if it's clear in their heads?

For starters, programming languages are in ... another language. Fluency in one language doesn't mean that users can easily translate the knowledge into plain English.

Also, writing good documentation takes time and effort. This often requires more patience than engineers are willing to dedicate. Programmers and engineers would usually rather be coding and building things instead of explaining them to others. With documentation, it can take a lot of effort and multiple tries before you get the organization and flow of logic just right.

Finally, experts are hampered by the curse of knowledge. They know too much and can't identify the assumptions, needed knowledge, and other building blocks that basic that users need.

There really is a strong need for technical writers to step in and provide a fresh outsider's perspective. This outsider's perspective is perhaps what, paradoxically, makes explaining complex information somewhat easier.

Overall, [Peter's presentation](https://www.infoq.com/presentations/minimal-code-documentation) is a great one to listen to.  You can follow up with any questions to “@Peter.Hilton” on the [WTD Slack forum](https://writethedocs.slack.com). You can learn more about Peter at [hilton.org.uk](http://hilton.org.uk/).
