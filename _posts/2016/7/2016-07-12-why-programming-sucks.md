---
title: "Why Programming Sucks and the fallacy of documentation in the context of code chaos"
categories:
- podcasts
keywords: peter welch, programming, documentation, chaos, order
description: "Yesterday on Write the Docs, someone shared an article titled Programming Sucks, by Peter Welch. More than just a developer monologue, this article seems to hit on universal truths about programming, so much so that the article has been translated into 10 languages and even has a professionally-read audio version on iTunes (which I bought for $2)."
bitlink: http://bit.ly/progchaos
date: 2016-07-12
tags:
- technical writing
- documentation
- technical communication
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/programming-sucks-fallacy.mp3
podcast_file_size: 5.8 MB
podcast_duration: "7:28"
podcast_length: 5797577
---

{% include audio.html %}

You can read Peter Welch's essay here: [Programming Sucks](http://www.stilldrinking.org/programming-sucks).

Welch starts by responding to criticisms of friends who work in manual labor fields and assume that a programmer's life consists of sitting calmly at a desk, playing on a computer all day. Welch's main argument is that programming can be just as hellish as the worst manual labor job, but the hell isn't in the physical exhaustion as much as the mental insanity you have to endure.

More than anything, Welch's tone is playful and full of images, turns of phrases, and the raw, blunt honesty that tends to define programming culture. Here's a passage:

>Websites that are glorified shopping carts with maybe three dynamic pages are maintained by teams of people around the clock, because the truth is everything is breaking all the time, everywhere, for everyone. Right now someone who works for Facebook is getting tens of thousands of error messages and frantically trying to find the problem before the whole charade collapses. There's a team at a Google office that hasn't slept in three days. Somewhere there's a database programmer surrounded by empty Mountain Dew bottles whose husband thinks she's dead. And if these people stop, the world burns. Most people don't even know what sysadmins do, but trust me, if they all took a lunch break at the same time they wouldn't make it to the deli before you ran out of bullets protecting your canned goods from roving bands of mutants.

If you followed my previous blog post, [Thoughts on "Documentation Avoidance for Programmers"](https://idratherbewriting.com/2016/07/09/programmer-explains-how-to-get-out-of-writing-documentation/), this article makes a nice juxtaposition. Why is programming such a hellscape to navigate? Well it doesn't take a genius to put two and two together: When no one documents anything, you end up with a lot of code that no one understands, and hell's bells start ringing.

Welch explains that despite one's expertise, no programmer fully understands how even his or her own computer works, and only has a modicum of expertise around a small fraction of the technology he or she needs to know:

>You are an expert in all these technologies, and that's a good thing, because that expertise let you spend only six hours figuring out what went wrong, as opposed to losing your job. You now have one extra little fact to tuck away in the millions of little facts you have to memorize because so many of the programs you depend on are written by dicks and idiots.
>
>And that's just in your own chosen field, which represents such a tiny fraction of all the things there are to know in computer science you might as well never have learned anything at all. Not a single living person knows how everything in your five-year-old MacBook actually works. Why do we tell you to turn it off and on again? Because we don't have the slightest clue what's wrong with it....

Would good documentation solve the problems that Welch describes in "Programming Sucks"? Only partially. It's not just that code is undocumented, but that the approaches programmers have to take to solve problems don't follow straightforward logic.

Instead of a precise and principled engineer who writes clear, logical, easy-to-follow code that follows best practices and techniques, programmers are forced into all kinds of crazy scenarios where they have to detour away from good practices to satisfy nutty business requirements. They have to merge disparate systems and tools in new, innovative/insane ways. They have to hack together makeshift, often temporary solutions where none exist because software is due for release and project managers demand working code despite the unworkability of the coding language for the scenario.

In short, programming isn't a clear and logical exercise. It's an art where someone jerry-rigs a solution that miraculously works though it's built on a bit of mystery and good luck -- until it breaks, and then the programmer moves into all-night figure-it-out modes consuming lots of sugar and becoming more and more snarky and dark.

On the other side of the fence, **documentation** strives to be clear, logical, and precise. Technical writers insist on 1-2-3 step approaches following a linear sequence. Our job is to bring order to the chaos.

To do so, we have to construct somewhat of a [narrative fallacy](https://wiki.lesswrong.com/wiki/Narrative_fallacy). The narrative fallacy is the illusion that a story develops along a clear and straightforward path based on a coherent idea or pattern (or in the context of documentation, that following these "easy" steps will achieve your goal) even when reality suggests much the opposite -- that motives are fuzzy, things happen somewhat randomly, decisions and epiphanies might be made in retrospect (or not at all), and the events can't be neatly plotted against an underlying principle or overarching lesson, nor are they connected or linear. Life is messy, and events have no meaning. There is no 1-2-3 step task to reach a goal. Programmers follow a mostly obscure path that takes them through many dark forests before they randomly stumble upon a brief opening that provides a change of view.

And yet, when you read something, especially documentation, you expect logic. You want a clear line of thought. We're taught from grade school on up that all writing begins with a thesis, an assertion which is then carefully supported in each of the following paragraphs. Each paragraph has a central idea and ties back to the overall thesis or argument.

But programming isn't like this clear line of logic -- at least according to Welch's article. Good code, Welch explains, is an illusion. Good code only exists in a special file on your computer that you occasionally open and read to calm your nerves, and then you have to close that file of good code and return to the duct tape, glue, and madness that is your reality.

Is documentation, then, an illusion? A fiction that forces a narrative fallacy onto a programmer's world, not entirely describing the programmer's true task and challenges, and in so doing causing programmers to reject documentation (as well as writing it) in the first place? I think in part, yes.

I'm not suggesting that documentation try to let go of that clear line pointing from A to B, but there might be something to the chaos of code that runs counter to the task-based steps we so carefully like to draw out. Perhaps we should not insist so sharply on the [fictitious?] steps in our documentation? Then again, perhaps this idea of order through documentation is the only thing that keeps programmers from entering total insanity.
