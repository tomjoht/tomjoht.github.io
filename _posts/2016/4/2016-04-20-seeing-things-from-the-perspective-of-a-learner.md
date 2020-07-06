---
title: "Seeing things from the perspective of a learner"
categories: [general]
keywords: learning theory, documentation strategies, knowledge, ignorance, curse of knowledge
description: "To write documentation that users find helpful, you have to understand the mindset of someone who doesn't possess all the knowledge that you have. You have to understand what it's like not to know -- even not to know some of the most basic assumptions. Trying to capture this state of un-knowledge and remember all the questions you have is critical to writing documentation that speaks to this type of user."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/goodspacesthumb.png
---

## Background

Although I've been writing tech docs for more than a decade, and have been constantly learning the products I need to document, I don't think I've always been a careful observer of the learning process. However, as I've been trying to ramp up on Android these past weeks, I've started to shift into learning mode a lot more. The shift has been somewhat fascinating and has made me realize a lot of things.

First, you don't often have the advantage of *not* knowing a product. (Yes, ignorance is sometimes advantageous.) The balance between knowing and not knowing is the tension that undergirds the whole profession of technical writing.

I was reading through some documentation for a particular product today, and the documentation was over my head. High-level architecture, file setup, and other decisions the author was writing about were beyond my immediate concerns. I simply wanted to know where to start. How to I begin building this Android app? I wanted the writer to lead me down a 1-2-3 type approach. 

And most importantly, I wanted the 1-2-3 steps to work for me, on my Mac, with my version of Android Studio and Gradle, and all of those other dependencies that have to be aligned just right to allow the harmony of the spheres.

## My epiphany about when to start writing doc

I've always thought that I can't start writing documentation for a product until I have a decent understanding of it. I often just take random notes here and there and don't actually start writing anything formally until I've successfully completed various tasks and have a decent grasp of how the system works.

But I had a thought today. *What if this is the wrong approach?* What if this approach leads to the same kind of blah documentation I was reading earlier &mdash; the kind that speaks at such a high level, paints details that go over my head, and doesn't lead me easily through a process? What if the approach that leads to poor documentation starts from a point of view of knowing &mdash; in particular, knowing too much.

As a technical writer, I'm writing for the perspective of someone who does *not* know. As a result, maybe I should start writing down all the questions I have **now**. Sure, I wouldn't have many answers, but in this state of *not knowing*, I could capture all of the questions that other beginning users might also have.

It could be that later, these questions might turn out to be unnecessary, easily answered, frivolous, or totally off the mark. Usually the more you know, the more you start to refine the set of relevant information that you should document, throwing out these "dumb questions." *That throwing away*, however, might be what leads to poor documentation. In contrast, keeping to those questions might just be a great way to structure your docs to help guide users who are in a state of not knowing.

Overall, this is where I think good documentation gets written:

<figure><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/goodspacesforwritingdocs-01.png" | prepend: site.baseurl }}" alt="The best documentation is written in this space between knowing and not knowing." /><figcaption>The best documentation is written in this space between knowing and not knowing. You can't really write doc until you know the system you're writing about. But you also can't write good doc if you're blind to all the things that someone who doesn't know has questions about.</figcaption></figure>

## We all start at different levels

I know this approach commits the common fallacy of assuming the writer is the user. I know that if I were an Android developer, my questions would be quite different. But being a non-developer, surely I'm the lowest-common-denominator in terms of skill and knowledge. 

This approach might dumb down the content too much, but then again, I've rarely heard users complain that instructions are too easy. Users can easily skip past parts they already know. And in some ways, realizing that you already know things makes you feel kind of smart. In short, it might not be bad to assume the user is as ignorant as me.

So although I don't understand the products I'm documenting yet, I'm starting to write that documentation now &mdash; in the form of a lot of questions. Later, after I've ascended into product understanding and awareness, the list of questions I created as a novice user might help me navigate back into that sphere of not knowing. Awareness of this state of not knowing is surely one of the keys to writing great docs.
