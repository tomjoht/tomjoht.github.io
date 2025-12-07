---
title: "The isolation and loneliness of tech writing may get worse as AI accelerates"
permalink: /blog/isolation-loneliness-worsens-with-ai
date: 2025-12-04
categories:
- ai
- technical-writing
keywords: isolation, loneliness, artificial intelligence, technical writing, remote work, mental health, future of work
rebrandly: https://idbwrtng.com/isolation-loneliness-worsens-with-ai
description: "Isolation is something I've been thinking about lately. Although I have an abundant professional network and support probably 100+ engineers, PMs, and others, at times I do experience a sense of isolation in my role. I'm not sure if it's the holidays, or because now that I'm 50, I'm apparently at the <a href='https://www.washingtonpost.com/health/2025/12/03/loneliest-americans-aarp-survey/'>bottom of the \"U-shaped happiness curve,\"</a> but I'm trying to understand how to navigate a world where my relationships with colleagues are increasingly transactional (purely information-based) and lack more social aspects. There are several reasons for isolation, and good reason to believe that AI will only increase our isolation."
image: tech-writer-isolation-thumb.jpg
linkedin: https://www.linkedin.com/posts/tomjoht_new-post-the-isolation-and-loneliness-of-share-7403166763301060609-e1dW
---

* TOC
{:toc}


## Tech writers are spread thin to maximize coverage

I'm on a team of about 10 tech writers, spread out between Washington and California. My small team covers a sizable organization, supporting a wide variety of geospatial APIs and products. My focus is on automotive APIs.

Even if you're based in a location with other writers (whether on your team or not), you might not be working on the same projects. Writers are sometimes too scarce to double up on the same projects. Instead, it's like we're covering an entire continent of products, so we're spread out to maximize documentation coverage across the organization. (I might be overstating this. During lunch with some other tech writer managers, they told me that they do have multiple supporting writers working more closely together.)

I'm not even sure how many teams I support. Maybe 12 different teams or more, with varying documentation needs at different times? Obviously I'm not colocated with all of these teams, but I am embedded with the highest priority project team (I chose to sit with them). Even so, I don't interact with them as much as I thought I would. It's probably my own fault for that, though.

Part of the reason why I don't interact more is likely AI. And I believe AI will spread writers even more thinly across an organization. The trajectory with AI so far is fewer employees covering more products, using AI to augment/expand their reach. 

For example, a team that loses a writer (due to retirement, competition, or layoffs) might not backfill the role. Instead, the other writers might pick up the slack and add another 1-2 projects to their coverage. Not always, but sometimes. With each writer lost, the remaining writers risk becoming distributed even more. When resources become scarce, depth is sacrificed in favor of breadth as a survival strategy.

As AI tools become more capable, the AI agents might function as junior tech writers managed by a single human writer. Perhaps it's too early to say this, but give it a few years and it could be the norm. Your immediate team — the ones you interact with regularly on the same projects — might consist of a collection of virtual, nameless (or cutely named) robots. Your human colleagues could slowly be replaced, one by one.


## Reasons to meet with engineers are decreasing

Let me get into some reasons why AI might worsen isolation. In a [WTD Australia presentation](https://idratherbewriting.com/blog/write-the-docs-australia-techcomm-times-of-pandemic/) I gave last year, I mentioned that AI has reduced my need for face-to-face interactions with engineers. Previously, if a feature was confusing, or if the engineer had a lot of changes, they would schedule 30 minutes with me to brain-dump all the info.

I no longer need to meet with engineers to get an explanation of a feature, or to gather their review comments. I can use AI tools to get me 80% of the way through a topic, drawing upon source material like API reference, product requirements, engineering designs, bugs, other changelists, and so on. To write release notes, I use the file diffs of a changelist that contains the updated reference documentation. (I also generate all the reference documentation for the APIs I support; I do this partly to have direct access to the file diffs.)

I only need the engineers to review the documentation changelists I send them. Most of the time, they LGTM (Looks Good To Me) the content straight away, or have just a few small changes. Before I send the CL, I've already verified the content using various AI validation processes, so there's not a strong need to actually meet with engineers. And in fact, it's easier if they can just write down their comments in the changelist (rather than vocalizing them to me). With their comments written down, I can click “Suggest fix” and AI will automatically propose a change that addresses the engineer's comment.

In fact, just this week I finished writing release notes for a massive release for one of the SDKs I support; the release had 4,500 changed lines in the reference docs, with 45 new elements added. I used AI to generate the release notes (it still took a day due to all the validations I ran). But the result? LGTM, with hardly any face-to-face interaction. No pre-meeting about all the elements being released, no review meeting where I chat with engineers about the updates I made, no extensive revisions. It seems I nailed the release notes perfectly on the first try (or Gemini did, rather). 

The next day I made numerous complex updates to various [API quick reference diagrams](/ai/prompt-eng-api-qrgs.html). It took half a day and involved reflecting the 45 new elements across some massive API diagrams. The result? LGTM again. Dang it, I also seemed to get it perfect on the first try. No need for any interaction with engineers to chat, verify, redo, or rethink any of the updates.

The same thing happened for two more updates related to the release. Each time, engineers just wrote LGTM, to the point where I started wondering if they were even reviewing the content at all. I've also gotten really good at error checking and validation. I often put my changes through 3-4 different AI sessions and checks to verify the changes before I send out my CLs.

During one update, there was a point where an engineer came over to my desk, though. I noticed the same method had both a singular and plural instance, which I assumed was a clear mistake. The engineer came over to give me a long, convoluted, and poorly articulated reason for the inconsistency. After about 10 minutes, I decided to just ignore this temporary oddity in the code and not make a big deal out of it. Explaining the reason would have drawn much more attention to it, and apparently both methods were being deprecated in the next release. 

The reduction in friction (no more engineer-filled meetings to exchange information and ideas) is often sold as a benefit, but it comes with a psychological cost. A study published in the *Journal of Applied Psychology* (and analyzed by Marlynn Wei in *[Psychology Today](https://www.psychologytoday.com/us/blog/urban-survival/202507/is-ai-making-us-lonelier-at-work)*) found that the more employees collaborated with AI, the more they felt "socially deprived" and lonely. The studies say that AI lacks the social cues ("facial expressions, eye contact, body postures, and gestures") that we humans have been biologically wired for. Absent these social cues, we feel a void. Wei summarizes the study's findings:

> Researchers found that the more employees collaborated with AI, the more they felt socially deprived and lonely, particularly for those who already experienced attachment anxiety. Working with AI throughout the day led to:
> 
> * A greater need for social connection
> * Increased loneliness and social isolation
> * Higher rates of insomnia and alcohol use after work
> * Stronger effects in individuals with attachment anxiety

This deprivation didn't just stay at work; it spilled over into their personal lives. The idea that alcohol consumption and insomnia increase the more you use AI is frightening. The study involved 794 workers across 4 countries. Maybe it's time to schedule some more coffee chats!

Wei writes, "The resulting loneliness around increasing AI interactions at work can be deep and unconscious, showing up as insomnia, demotivation, resignation, numbness, detachment, disconnectedness, or disillusionment." In other words, the efficiency we gain by skipping that 30-minute braindump with an engineer might be paid for with our own mental well-being.

Personally, I haven't experienced the alcoholism and insomnia Wei describes. I'm also trying to pay more attention to the social cues when I talk to people, looking at their gestures, eye movements, body language, etc., wondering if this is the human interaction I need.

{% include ads.html %}

## Work from home policies

In addition to a reduction in meetings, in-office presence is also diminishing. My work has a 3-day in-office policy, which means that on Mondays and Fridays (when people in my particular org can WFH), in-office workers are scarce.

I tend to come in not only Tuesday, Wednesday, and Thursday, but also on those optional WFH days because my psychology is wired to work best in-office. There are also a number of other regulars who come in on those optional days. But some days, especially Fridays, there are so few people at work that it feels like I've broken into a building while it's closed and I can roam the empty halls or peruse empty conference rooms as I wish. But it's also so empty it's depressing. 

I regularly deliberate which is more depressing: to work from home all day (where it feels like I'm trapped in my bedroom), or to work in an empty office building where I feel like most of the world has disappeared. I often choose the latter.

<figure><img src="{{site.media}}/tech-writer-isolation.jpg" alt="Tech writer isolation" /><figcaption>Tech writer isolation</figcaption></figure>

You might think that with so few people at work on the optional days, we'd all recognize that we're the only ones here and so go out and eat lunch together, but people don't really do that. The tech workers are mostly younger, and sometimes the younger generation doesn't speak to people they don't already know. I've seen this behavior across my 4 kids (who range from 15 to 25 years old). They get very uneasy when they see one of their parents talk with a complete stranger. Maybe this is a social repercussion of the pandemic, but it's the norm.

Data backs up this observation. In an article in Stanford News, Melissa De Witte explains research from Stanford psychologist Jamil Zaki, who wrote *[Hope for Cynics: The Surprising Science of Human Goodness](https://www.hachettebookgroup.com/titles/jamil-zaki/hope-for-cynics/9781538743065/?lens=grand-central-publishing)*. Zaki says Gen Z has a distinct "hesitancy" about interacting with others, largely because they drastically underestimate "how warm, open-minded, friendly, and trustworthy others are." Despite the "bleak assumptions" many of us have towards each other, Zaki explains:

> "Our team found that students here are immensely warm and friendly. They desperately want to connect with each other. But they don't realize everyone else wants that as well, and underestimate their peers' kindness and empathy."

In other words, many of us are trapped in a self-fulfilling prophecy of awkwardness, assuming rejection before a conversation even begins. Of course, I could break the ice and wander from desk to desk asking if people want to eat lunch with me, but I'm not that outgoing or inclusive, so I often return silence for silence, assuming they don't want to connect, when they probably do. I've incorporated the same Gen Z mentality as well, it seems. I still have a lot of things to work on.

## Social technology provides an interactive element

So far, I've argued that I'm having fewer doc review meetings and less time in office. Now let's analyze another interesting phenomenon that accounts for increasing isolation. The social aspect of technology provides a stand-in for human interactions. Social media and apps, as well as conversational AI tools, allow us to interact with our devices and screens rather than the people around us.

Nothing reinforced this more than a recent experience. Last week I was stuck on a Seattle Sounder train for 2 hours due to some technical failures (a lightning storm wiped out the Burlington Northern Santa Fe, BNSF, command center in Texas, disabling switches in Washington). We literally sat there for 2 hours, about 40 people per car, all focused on our phones or computers. Not one of us struck up a conversation with another human during this time. Instead, we showed perfect patience and silence. 

Basically, everyone retreated into their own little digital shell, even during a shared physical crisis that would have, in decades past, likely brought people together in conversation. But instead, the shared crisis only manifested in individual digital withdrawal. Any spare moment became an opportunity to pursue digital information and entertainment rather than to talk with anyone around us.

With so much social isolation, is it any wonder why there's a growing interest in using AI tools as friends or companions? This isn't a turn I've taken, but sometimes I have considered the social role that AI tools play. During one afternoon I thought about referring to Gemini as Jim, but this mode lasted only a short time. I don't see myself developing AI friends. Partly, the AI sessions max out after about 15 conversational turns, and AI shows no interest in becoming my friend (it just wants to help with my tasks). 

Regardless, in a strange way, AI is starting to fill the social gaps that it helped create. In other words, technology has isolated us more from each other, and in that social void, we've latched on to AI as a social replacement, driving us even further away from each other. Few things seem more dystopian than a world where humans primarily interact with technological replacements for social interaction.

## Hyper-productivity leads toward utilitarianism

Let's turn to another accelerator of isolation: the factory-like efficiency mindset. I get so ingrained with boosting productivity, it's easy to see all tasks as utilitarian toward that efficiency goal. It seems like all my time and thoughts are oriented toward pushing out more docs. This leads to a state in which every idle moment seems like a waste. Every conversation with surrounding engineers and product managers is transactional, oriented around task completion. After 5 minutes chatting with someone, I feel anxious that I'm not working on something. At some point, I'd like to have a 30 minute conversation with someone without feeling like I was wasting my time and avoiding work.

A while ago, when I was working from home, I had a dystopian vision of what this world might soon look like. In this vision, all tech writers were partitioned out into task completers, like a Mechanical Turk setup. Different project leaders had split up documentation tasks into individual bugs, and these bugs would appear as a list of tasks available to all tech writers at the company. Each morning you logged into the system and would see a list of tasks appear, which you could accept. You competed against other tech writers for the tasks and were scored and ranked by the number of tasks you completed and their accuracy rate.

Each morning was just the same — you show up at your computer station at home, see the list of tasks, assign some to you, and work on them. The tasks were all somewhat independently listed and random, with no particular alignment on the same projects. You just get some doc tasks, then leverage AI to work through them and then post the solution (some paragraphs or pages of documentation). Each day you work through 10+ tasks, working as an isolated individual. (As grim as this sounds, are we not sort of there already?)

This dystopian vision was probably influenced by reading [Karen Hao's *Empire of AI*](/blog/book-review-empire-of-ai-karen-hao), specifically the chapter on Kenyan AI workers who seem to have a similar setup for AI-related tasks. And I'm not persuaded that the model would actually be efficient. 

I'm not the only one sensing less social interaction in the workplace. In [The quiet death of workplace friendships](https://carmenvankerckhove.substack.com/p/the-quiet-death-of-workplace-friendships), Carmen Van Kerckhove says that while AI drives up efficiency and output, it removes the "messy chaos" of human interaction. Workplaces are becoming "quiet" and empty. Algorithms can handle tasks, but they can't provide the camaraderie, celebrations, or commiseration that make work bearable. 

Van Kerckhove says that when we transition into the workplace from high school and college, we lose the social infrastructure we once had:

> "For most adults, work becomes the last place where friendship can happen without effort. The job provides what grown-up life otherwise lacks: consistent proximity to the same people, shared challenges, common enemies to unite against." 

During a time where uncertainty and anxiety are increasing, we're losing the social relationships that can provide support we need. 

Van Kerckhove also says that work is becoming "gigified." As more roles shift to freelance or contract work, colleagues are turning into competitors. This fosters a "scarcity mindset" where peers hoard information and treat generosity as a transaction rather than collaborating or mentoring one another. Van Kerckhove says, 

> "... we're rapidly dismantling this social infrastructure through two powerful forces. The gig-ification of white-collar work is turning colleagues into competitors, all bidding for the same contracts. Meanwhile, AI automation is eliminating the need for human colleagues altogether. Whether your coworkers become rivals or get replaced by algorithms, the result is the same: the end of accidental workplace connection."

And so companies are becoming quiet. Human-to-AI interactions are replacing human-to-human interactions, and it's "happening just as adult friendship has become nearly impossible to maintain naturally."

I feel this. As AI becomes more capable, I need colleagues (engineers, PMs, and other writers) less and less. When I do interact, I'm stuck in the transactional mindset. The factory efficiency mode champions the checkbox over the conversation. My brain becomes wired to always be working on the next task, to minimize human-to-human contact that doesn't have a specific transactional purpose. The result is a relentless push towards efficiency, but mixed in with some of Marx's alienation of labor, because I specialize too granularly to understand or feel satisfied by the larger output of my work.

## Conclusion and possible countermeasures

Admittedly, the picture I've painted so far is bleak. I've made arguments that the future will be dystopian, with reduced human relationships and contact. In short, the trajectory of our profession points toward increasing solitude. We're already distributed across large orgs, acting as the sole writer for many teams. AI accelerates this fragmentation by automating away the interactions we once required, since AI can handle much of the writing without face-to-face interaction/input from engineers or PMs. As we retreat into hyper-efficient, transactional workflows, we lose the social infrastructure that makes work meaningful. We trade camaraderie for productivity, and the workplace becomes increasingly silent.

However, I have one small idea about how to possibly counter this increasing loneliness. It's just an idea, not something I've implemented. (But my blog is a place where I think through these ideas, so I'll give it a shot here.)

My idea for a countermeasure involves being more ambitious at work, tackling the kinds of impossible-to-achieve projects that can't be completed alone but rather require collaboration and information gathering from other humans. I'm thinking of ambitious projects that attempt to fill Grand Canyon-like vacuums of informationless corporate chasms, or which push past the edges of what we think is possible and hence require seemingly superhuman efforts, made possible with advanced AI but also requiring much more collaboration (often cross-functional) than we're accustomed to.

The idea of thinking bigger is something I mentioned in a recent podcast with Fabrizio — I don't think we're [setting our aims high enough with AI](https://youtu.be/NyFwlVnpvPE?si=62bfoyTsxU_vzcdn&t=2695). I'm too content to use AI to drive productivity through the bugs in my queue, rather than trying to climb Everest. To climb Everest, we'll need to rely on many people around us to get there. This really might be the one thing that saves us from the dystopian future: trying to achieve the impossible. The impossible will force human collaboration, along with intense AI usage.

Too often people working with AI start off small, such as fixing styles or auto-completing a sentence. While worthwhile, these tasks don't live up to the transformative potential of AI. If we try to step off a cliff into the unknown, we might find that more ambitious projects (the kind we didn't think were possible) require more collaboration, review, and interaction to achieve. And that more social activity could provide a countermeasure to loneliness and isolation.

Now, back to reality. To address the social gaps I've described, I'm making sure to add some more activities to my schedule. I started attending the [Seattle Intellectual Book Club](https://www.meetup.com/seattle-intellectual-book-club/) again, started a series of biweekly AI coffee chats with other tech writers at work, have settled into a regular rhythm with early morning basketball at a [nearby Seattle gym](https://pugetsoundbasketball.com/hod-game-calendar/), have continued my [AI Book Club](/ai-book-club) with a new schedule of reading and discussion, started a podcast with [Fabrizio Ferri-Benedetti](https://idratherbewriting.com/podcasts/) (we're several episodes in), attend the [Write the Docs Seattle monthly chats](https://www.meetup.com/write-the-docs-seattle/), and have conversations with other soccer dads on the sidelines during practices and games. In short, I look for opportunities to interact with the humans around me.

## Works cited 

De Witte, Melissa. "[Why Is Social Connection So Hard for Gen Z?](https://news.stanford.edu/stories/2025/03/social-connections-gen-z-research-jamil-zaki)" *Stanford Report*, 20 Mar. 2025.

Johnson, Tom. "[Documentation Theater and the Acceleration Paradox -- Podcast Episode 3 with Fabrizio Ferri-Benedetti](https://idratherbewriting.com/blog/podcast-episode-3-documentation-theater-acceleration-paradox)." I'd Rather Be Writing, 30 Nov. 2025.

Johnson, Tom. "[WTD Australia Event Recording -- 'Remote Discussion: Techcomm in the Times of Pandemic'](https://idratherbewriting.com/blog/write-the-docs-australia-techcomm-times-of-pandemic/)." I'd Rather Be Writing, 31 May 2020.

Najmabadi, Shannon. "[The Loneliest Americans, According to a Survey of 3,000 Adults](https://www.washingtonpost.com/health/2025/12/03/loneliest-americans-aarp-survey/)." The Washington Post, 3 Dec. 2025.

Van Kerckhove, Carmen. "[The Quiet Death of Workplace Friendships](https://carmenvankerckhove.substack.com/p/the-quiet-death-of-workplace-friendships)." Pack Light Live Full, 13 Aug. 2025.

Wei, Marlynn. "[Is AI Making Us Lonelier at Work?](https://www.psychologytoday.com/us/blog/urban-survival/202507/is-ai-making-us-lonelier-at-work)" Psychology Today, 14 July 2025. 
