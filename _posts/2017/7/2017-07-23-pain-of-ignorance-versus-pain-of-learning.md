---
title: "When the pain of ignorance exceeds the pain of learning"
categories:
- technical-writing
- podcasts
keywords:
description: "Users turn to documentation when the pain of their ignorance exceeds the pain of learning. Unfortunately, this is the worst state of mind to try to learn anything in. To address this impatient state of mind, we need to write documentation in simpler, easier to digest ways. Task-based documentation gets us part way there. But the varying starting points, unique pathway needs, and messy branching complicate the promised simple linear nature of steps. Overall, we need to increase the simplicity factor in our docs much more than we generally do."
bitlink: http://bit.ly/painofignorancevspainoflearning
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/painofignorancethumb.png
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/painofignorance.mp3
podcast_file_size: 14.3 MB
podcast_duration: "17:52"
podcast_length: 14326715
---

{% include audio.html %}

## Background story

The other morning I was trying to upload and share a simple file in a new collaborative file sharing system when I ran into some permissions and domain questions. Not wanting to read the documentation, I turned to my colleague and asked him. He had a few ideas but didn't entirely know either.

Then he hilariously commented,

>The answer is probably in the documentation, but I can't be bothered to read it.

We both had a good laugh. Only tech writers can make jabs at documentation with perfect tongue-in-cheek humor. Eventually, I did click the help and start reading the documentation, but only after the pain of my ignorance exceeded the pain of learning.

This scenario illustrates a common maxim expressed by Calvin Mooer, called [Mooer's law][1] (not to be confused with [Moore's law][2]). Calivin Mooer stated:

> An information retrieval system will tend not to be used whenever it is more painful and troublesome for a customer to have information than for him not to have it.

In other words, you only turn to the documentation when ignorance is so painful, you'd rather suffer the pain of learning instead.

We can probably graph this principle fairly easily. When the pain of ignorance is more than the pain of learning, users will choose the lesser pain.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/2017/7/painofignorance-01.svg"/>

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/2017/7/painofignorance-02.svg"/>

At the mention of learning, tech writers' ears perk up, because it's time for their documentation to hit the spotlight. But actually, the ensuing activity doesn't quite play out like we think. At the very time the user is finally prompted to choose the lesser pain of documentation, they're in a state of mind *least conducive to learning.*

We've all been there. You click fruitlessly for the needed information, dragging on for 30 minutes and accomplishing nothing. Meanwhile, people are waiting for you to send that finished document or other report. You're cranky and your blood pressure is high. You've probably eaten half your lunch out of frustration in the midst of rage-clicking because it's the only thing you can do with any efficiency. (See [4 user frustration markers][6] for more on rage clicks, random scrolling, wild mouse movements, and backtracking.)

In this state of frustration and shaken mental agitation, you're at the cliff of insanity's edge and ready to hurl your mouse at your computer screen. It's about this time that, realizing that the pain of ignorance is more than you can bear, you turn to the dreaded documentation.

The problem is that this is the *least likely state to learn anything.* As a result, the help docs usually fail you. They suck &mdash; but not so much because they're uninformative or poorly written, but because in the user's frazzled state of mind, they're impenetrable.

## The best mindset for learning

What is the [best mindset for learning?][3] According to the experts at Quora,

> In order to absorb information, play in the background baroque music. This will enhance input and recall. Also meditation. Clear the mind before the task. Another practice, eft, tap firstly to a good place and then tap the result.

Another tip:

> You need to be calm and mindful. Approach the learning process as something trivial and you will learn quickly.

Another:

> Some said (I think the sculptor Brancusi) that it is not hard to do things, the hardest part is to create in ourselves the right attitude in order to do it. I agree. Once we get the right mindset, we can do it. It is not the other way.

My favorite advice is the suggestion to "tap firstly to a good place and then tap the result." I'm not sure what kind of mental-gymnastics are required to perform the space-time travel required for this. As I struggled to understand domain permissions and organizational groups, my mind wasn't able to tap to a good place.

This is the crux of documentation. At the moment users are frustrated enough to submit to learning documentation, they're in a state least likely to get any learning done. As a result, documentation always tends to suck, no matter how good or bad it might be.

I've written before about this [emotional state of users in times of frustration][4]. I invite you to watch this fun video of my wife trying to figure out how to cancel a $40 order of Amazon books shipped to an old address:

<iframe src="https://player.vimeo.com/video/3432290" width="640" height="483" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
<p><a href="https://vimeo.com/3432290">Emotional States of Computer Users When They Need Help</a> from <a href="https://vimeo.com/tomjohnson">Tom Johnson</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

We often think of navigation patterns users take to get to our docs. Did they search? Did they go in through the homepage and use the site's navigation? Did they trace back through breadcrumbs?

Understanding physical arrival paths is only one dimension of the user journey. How did users get to your docs? Instead of considering the physical paths, think about it on an psycho-emotional level. Users exhaust their patience and calm trying to figure it out themselves. They become annoyed, frustrated, and tense. Ultimately, the pain of ignorance grows too much to bear. As a last resort, the user attempts to reduce the pain by trying to learn. That is the real "path" to documentation. It's a psychological one.

## Design patterns for the impatient/angry user?

The most logical follow-up question to address the user's state is this:

> How can we design our docs to accommodate a mindset of impatient frustration?

Across the industry, we have already embraced a common pattern to address this user behavior. The pattern is **task-based documentation.** From John Carroll to Ginny Redish and others, researchers have concluded that users "read to do."

Focusing on tasks users want to do makes perfect sense for aligning with the user's mindset. Users don't turn to docs out of a desire to abstractly learn or because they lack good reading material. Users are trying to accomplish a task, and they use the documentation as a tool to perform the tasks.

Few would argue with this mentality. Tech comm has done a good job of aligning the type of content with the type of user's mindset, right?

Yes, but ... why are users still getting frustrated? Shifting to task-based documentation didn't quite solve the "documentation-sucks" problem. Learning is still painful (otherwise everyone would be reading tech docs joyfully).

## The illusion of task-based steps

Maybe tasks themselves are problematic. With task-based docs, you provide a list of steps (1, 2, 3) for users to follow. But this linear sequence presents an *illusion* that often proves to be false in the face of reality.

Step 1 is often the most difficult step. How do you determine *where* the starting point of a task is? (Philosophically, step 1 is always problematic.) Step 1 is almost always a guess at the starting point. Do you know that the user has all the necessary utilities, software, or other configuration correctly set up? What version are they using, and what version are you docs following? What system (and what version of the system) is the user on? What language or conceptual background does the user need to first understand? What other proficiencies are you assuming the user already has or knows? Is the user ready to do this task, or should some other task be performed first?

How far back do you need to go? Are you teaching grandpa how to clone a git repo from the command line? If so, he probably will be confused if you start directly with terminal commands. Can you see how identifying the starting point for a task is often a best guess?

Good documentation usually includes a prerequisites section before the tasks. But impatient users don't often want to spend time with prerequisites before jumping in to do the task steps.

## Non-linear processes

Another problem with task-based steps is non-linearity. Only simple processes are linear. Most workflows are multi-dimensional. Reality follows complex if-x-then-do-this-but-if-y-do-that ... scenarios, where the path you follow branches in a lot of different directions.

That's why it's hard to take a user from a true start to finish, because the number of permutations and end goals usually varies. You can rarely walk a user from the absolute start to the absolute end to help them achieve their goal. Their path is too specific, and you'd have to write a dozen different similar but slightly variant paths for every business scenario and user.

As a result, tech writers split docs into lots of little sections. A page about Deploying Widgets might have the following sections:

- Set Up Widgets
- Set Up Widgets with Accessibility
- Configure Widgets for Offline Viewing
- Install Utilities for Widgets on iOS
- Install Utilities for Widgets on Android
- Troubleshoot Widgets
- Configure Widget Permissions
- Use Configurable Permissions with Widgets
- Disable Widget Permissions
- Harden Widget Security

Person A might find 2 sections relevant to his or her goals, while Person B might find 6+ sections relevant. But the order, the relevance, and the fit to the user's exact needs can rarely be predicted in an end-to-end way.

As a result, the task-based documentation requires the user to find, order, and assemble the sections he or she needs. The portrayal of the easy 1-2-3 steps to achieve the task (thanks Marketing!) was an illusion. Reality is multi-sectioned, multi-branched, and multi-pathed. It doesn't have a clear order between sections or flow of branches or paths.

At the end of the day, task-based documentation doesn't entirely get us out of the mental agony to reduce the pain of learning. Learning is still a pain the user endures. Still, tasks are the way to go.

## Everything we do is to reduce learning pain

Besides focusing on tasks, what else can we do to reduce the pain of learning? Pretty much every technique in tech comm is an effort to reduce the pain of learning doc:

- simple sentences
- short paragraphs
- subheadings
- consistent terminology
- glossaries
- screenshots and illustrations
- workflow maps
- troubleshooting sections
- context-sensitive help
- search and facets
- document metadata
- emotional language

And so on. (If you want to remind yourself what content looks like when it doesn't follow these principles, open up any academic text or essay and read it.)

These techniques help the impatient, frustrated, roiling user consume documentation. But at the end of the day, when a user doesn't want to learn, you can't do a whole lot. It's a tall task to calm the user down, get the user reading, and introduce another state of mind during a time of high stress.

As a profession, we're generally unsympathetic to the rhetoric of our content. Whether the user accesses our docs in an impatient, angry state, or on an early morning when the user's mind is fresh and open, we often don't care. If the content is accurate and thorough, we've done our jobs, right?

No, our job *is* to help the impatient user learn. We have to take our tools for simplifying complex content and amplify them ten-fold.

## Conclusion

In this post I explored several ideas:

* Most users turn to tech docs only when the pain of ignorance exceeds the pain of learning.
* At the moment users get frustrated enough to submit to learning documentation, they're in a state least likely to get any learning done.
* Most users "read to do." Task-based documentation is the best approach to suit impatient doers who want to do a task.
* Linear tasks are an illusion, since reality is more multi-pathed, branching, and messy.
* Beginning-to-end workflows are too personal and unique to document for everyone. As a result, tasks are chunked into small sections that users have to find, order, and assemble for their needs.
* How tech docs are evaluated depends on the state of mind of the user. The same tech docs can either suck or rock depending on the user's mental state.

To finish, let's return to my colleague's earlier comment:

> The answer is probably in the documentation, but I can't be bothered to read it.

My colleague expressed a deep truth about documentation and user behavior. It's something I often overlook as I patiently, methodically, and carefully work on content. But it might be good to use documentation in times of frustration, if only to realize how ridiculous it is to learn when we don't want to learn.

[1]: An information retrieval system will tend not to be used whenever it is more painful and troublesome for a customer to have information than for him not to have it.
[2]: https://en.wikipedia.org/wiki/Moore%27s_law
[3]: https://www.quora.com/Whats-the-best-mindset-for-learning-and-how-do-you-attain-it
[4]: https://idratherbewriting.com/2009/03/02/emotional-states-of-computer-users-in-times-of-frustration/
[5]: https://idratherbewriting.com/2011/01/25/making-help-content-enjoyable-to-read-impossible-quest-or-achievable-reality/
[6]: https://www.trymyui.com/blog/2016/09/15/4-user-frustration-behavior-patterns/
[7]: https://idratherbewriting.com/2011/04/08/book-review-letting-go-of-the-words-by-ginny-redish/
