---
title: "Podcast: Tech writing and Zen and the Art of Motorcycle Maintenance, with Dan Grabski (ZAMM series)"
permalink: /blog/zen-motorcycle-maintenance-dan-grabski
date: 2023-11-18
categories:
- writing
- podcasts
- api-doc
keywords: 
rebrandly: https://idbwrtng.com/zen-motorcycle-maintenance-dan-grabski
description: "In this episode, I chat with Dan Grabski, a senior content developer based in Portland, both about his recent WTD talk titled 'Zen and the Art of Manually Creating API Documentation' and Robert Pirsig's 'Zen and the Art of Motorcycle Maintenance.' Dan explains the importance of focusing not just on technical details of implementations but also on integrating the people side &mdash; on understanding the perspectives of different users and stakeholders involved. Dan provides examples from his engineering background to illustrate how intuition develops from experience, how to avoid spectator mode through hands-on exploration of APIs, on carving out time to devote to continual learning, and the value of incremental progress. Overall, it's a great conversation about engaging more deeply with technology to write better documentation."
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/zenmotomaintenancegrabski.mp3
podcast_file_size: 30.7
podcast_duration: "42:12"
podcast_length: 30710938
image: podcastthumbzengrabski.png
series: "Zen and the Art of Motorcycle Maintenance"
sidebar: sidebar_zamm
weight: 1.1
---

{% include audio.html %}

<iframe width="560" height="315" src="https://www.youtube.com/embed/0RIZR7I480k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

You can view Dan's Write the Docs 2023 Portland talk here: [Zen And The Art Of Automanually Creating API Documentation - An Inquiry Into Process](https://www.youtube.com/watch?v=UHVAKNdvihE). You can also [follow Dan Grabski on Linkedin](https://www.linkedin.com/in/dangrabski/).

{% include ads.html %}

## Transcript

You can view a literal transcript in the [YouTube version](https://www.youtube.com/embed/0RIZR7I480k). The following is a more readable version of the transcript:

**Tom**: Welcome to another episode of the I'd Rather Be Writing podcast. I'm Tom Johnson and I'm talking today with Dan Grabski, a technical writer in Portland with an interesting background. We're going to be talking about some of the topics in Zen and the Art of Motorcycle Maintenance by Robert Pirsig, as well as Dan's talk at Write the Docs that followed similar themes. 

So Dan, before we jump in, can you introduce yourself a bit &mdash; where you're based, what you do, and who you are?

**Dan**: Thanks for having me on, Tom. My name is Dan Grabski. I'm based in Portland, Oregon in the beautiful Pacific Northwest. My original background is actually in mechanical and electrical engineering &mdash; I went to the University of Rochester and got degrees in those fields. I worked in professional motorsports for about 10 years. I was in IndyCar racing, lived in Indianapolis for a while, did engineering with teams, traveled around the world. 

When the economy went downhill in 2009, I had some friends living in Portland and moved out here. I ended up making the jump to the semiconductor industry, where I was still doing engineering but did more and more technical writing. I went through a couple other jobs and most recently I've been working in fintech. For about two years I worked as a software engineer, and about a year and a half ago I transitioned to join our tech content team as a technical writer while still retaining some of the software engineering work I had been doing. So I've got a foot in both worlds, so to speak.

**Tom**: You really do have an interesting background. I thought you'd be the perfect person to talk to about this topic because you clearly have a mechanical engineering background and software development mindset. I don't even know how to describe what I was trying to say, but you're used to working on things.

The talk you gave at Write the Docs in Portland in 2023 was titled [Zen in the Art of Automanually Creating API Documentation: An Inquiry into Process](https://www.youtube.com/watch?v=UHVAKNdvihE). I didn't make it to the last Write the Docs conference, so I was just listening to the recordings. This one really jumped out at me &mdash; you're a great presenter, so it was very easy to follow your train of thought and understand. 

Can you tell us a little about that presentation &mdash; what was your main point or argument?

**Dan**: The secret that's not really a secret is that it was actually my first conference presentation too. So it was still something new, but I got to lean on other experiences I've had. 

The real core of what I was getting at is that there's a lot of focus on the technical bits of how we can automatically create API documentation &mdash; what tools and software we have that can do this for us. But there's not as much insight into how this will interact with the people throughout the process. 

You've got software engineers writing specs, product managers, coders, technical writers, and end users. A lot of Zen and the Art of Motorcycle Maintenance brought to mind for me is that there really is a relationship between the technical aspects and having a deeper understanding of how we're interacting with it &mdash; what's the basis of that interaction and the technical side. 

It feels like it's easier to get a deeper understanding so you don't just have that surface level insight anymore. You can understand that this documentation is being used by a software engineer with 20 years experience or guys in a strip mall office starting their first startup who have never seen code before. It can really run the gamut, and having that insight helps you tailor the documentation. It also hopefully lets you be more agile and keep up with changes more easily.

**Tom**: You're saying you really wanted to focus on the actual people using the API, not just the technical process of publishing it. You were talking about different user types and internal processes as well as external users, right?

**Dan**: Yes, and I brought up this example &mdash; in a professional situation you sometimes feel like you're talking past each other. You think the other person is not understanding, and they say you're not understanding. It's not that people aren't understanding each other, it's just that they're focused on different values. 

The technical merits of both sides of the argument may be sound, but that doesn't make it easier to talk about sometimes. Being able to step back a little and understand your project manager has one set of values, a software engineer another set, a manager another set &mdash; it helps to tailor your message to different people. 

You're not trying to pull one over on somebody, you're trying to address their values directly. That insight at least helps you tailor the documentation, and hopefully lets you be more agile.

**Tom**: I like that point of view of having all these different perspectives going on, and different people see things differently. There's not just a single path through a topic. 

Did you reread Zen and the Art of Motorcycle Maintenance before your talk, or was this a book you'd read long ago that came to mind when you were thinking about these things?

**Dan**: I had read bits of it a long time ago but never sat down and went through the whole thing. Write the Docs was going to be close, just a couple miles from my house. I literally woke up one morning and thought "Maybe I can do a talk on this." 

I sat down and read through my copy, taking a bunch of notes. I wish I could say it was this long journey to find an amazing talk, but it was a light bulb moment &mdash; hey, this is a thing, and it was able to come together pretty well.

**Tom**: When I was listening to your talk, I was thinking about when I read this book around age 17 after graduating high school. I had a motorcycle then so that's probably why I started reading it, but I didn't understand much of it. It's a long 400 page book without a very explicit plot &mdash; it's the narrator's struggle to reconcile his previous self with his current self and his kid. There are a lot of discussions about quality, intuitive thinking, and our relationship with technology. It's not an easy book to plow through.

But I like your application of the technology and people duality that you're collapsing and showing integration between. I think that's a very sound takeaway. I'm wondering if you have any more thoughts on some of the book's themes &mdash; what resonated with you that jumps out?

**Dan**: To back up a bit &mdash; it's a slog to get through and some parts are very dated, like perspectives on mental health that we've improved on today. I don't advocate reading and applying everything verbatim to real life. 

You see a lot of business books trying to apply Eastern ideas to management in a template, which absolutely doesn't work. I think taking some of the ideas and looking through the lens of technical writing is the way to go.

Early on, the book talks about his friend who takes his nice motorcycle to the shop for any work, because he doesn't care to figure out what's going on behind the scenes. Robert Pirsig wants to take it apart and work on it himself. I like the idea that handling setbacks and problems gets easier if you understand a little of the mechanics.

You don't need to know everything about carburetors or spark plugs, but knowing some basics of how a 4-cycle engine works can help. For example, you don't want to put a stainless bolt in a stainless fastener without lubricant, because it will seize up. If you understand these metal interactions, you can handle issues better.

It doesn't give you all the knowledge to fix everything, but you can handle more on your own and be ahead of the game. Harley owners say everything rattles loose eventually &mdash; you can Loctite bolts and nuts, but if you don't think that's an issue, parts might fly off until your shifter falls off on the highway. 

It's an extreme example, but I like bringing that idea of deeper understanding into writing documentation. I dealt with an API that had great factual documentation on every endpoint and function. There were probably 20-30 endpoints, but trying to put it together was painful. It felt like a database developer had made it &mdash; perfect for a database, but not for me trying to get data from the service.

I was hitting five different endpoints for what should have been a pretty straightforward use case. It looked database-oriented, when really users needed certain data grouped together from a user perspective. The nuts and bolts of the docs were excellent, but not the end goal. A little more thought into the final use would help.

**Tom**: There's a lot to unpack there, but one part that jumps out is this inclination to try things yourself to deepen understanding. I think we often fall into spectator mode with docs &mdash; I'm documenting APIs but never calling them or integrating them. I'm just getting info from engineers and writing it down. 

Do you think to write really good docs you have to use the product, not be in spectator mode?

**Dan**: I definitely think it's a huge help. On my current team I'm the only developer &mdash; the rest are writers. I've been helping guide them to use Postman to hit our API. I'm almost leading them through our software development onboarding so they do what a customer would do. 

It's not the same as what an engineer would do, but even surface-level understanding and seeing it play out brings insight. Otherwise you might spend months writing docs, then learn customers use the API differently and have to rewrite things. I like being able to see the process play out the way an end user does. You might realize an endpoint doesn't have data you expected, which is really important.

I'm not proposing writers need to become developers, but at least a "ride along" with someone experienced can efficiently transfer knowledge. In software, pair programming puts people with different experience together &mdash; one drives the keyboard while the other looks over their shoulder. You get really efficient knowledge transfer, and technical writers get to see the process like their users do. 

For example, you might realize you need an authorization token for an endpoint. It doesn't take a whole lot &mdash; just being able to have that surface understanding by seeing it play out can be really important.

**Tom**: You're making me think about how in many cases I've relapsed into spectator mode. But I'm also thinking about the book's themes of people's relationship with technology. Pirsig's friend John doesn't want to do any motorcycle maintenance himself, similar to a tech writer not wanting to learn how it works.

It seems better for a tech writer to not have that mindset &mdash; to want to learn, try things out, and experience the technology even superficially. How do people cross from spectator to tinkerer? 

**Dan**: It's very tough, especially with professional time demands saying you need to get docs done by a deadline, and no easy way to carve out time for indirect work. 

I remember an excellent article called "Being Glue" about unpromoted work &mdash; organizing meetings, admin work, interfacing between teams. It's critical but not a ticket getting done or PR merged, so some say it's not real work. I'm an evangelist for making time from the top down for learning. 

I've had interns and teams where I said let's block out two hours a week for learning &mdash; watch videos on new skills. It's silly you have to be draconian about it, but without that support it's difficult. I took the attitude of "If nobody else will do it, I will" &mdash; be the person with enough pull to keep it going despite pushback. It's so critical, though companies always say they care about professional development. Often policy and values don't match up &mdash; that's a critical gap needing fixed.

If there's no time for learning, like joining engineers on a tech days project, it just doesn't happen. You have to be intentional about it. I acknowledge it's not an option for some companies, and I want to tell them they need to do this! That's why I evangelize it, because it's so important. You have to make intentional time for it.

I think that's a great point. I try to take an hour here and there to read documents I know I should get to, and learn about a topic. It does provide good space.

I think even when people buy into learning and growing, there's a mental hurdle of it being painful to learn something new. My coworker described it as rearranging your mental furniture. For example, I bike to work and was good at adjusting pad brakes by squeezing a cable. 

At some point the industry switched to hydraulic disc brakes, and I didn't want to learn them. There's a block in me, similar to resistance testing an API because it seems tedious and hard. One part that resonated with me in the book is the humorous example of some bicycle assembly instructions that start by saying you need "great peace of mind" to build this bike. That peace of mind seems necessary to absorb new things without frustration and stress.

How do you get into that peaceful state of mind that enables enjoyable learning?

**Dan**: Full disclosure &mdash; I've never made the switch to hydraulic brakes either! But that's funny about the instructions requiring peace of mind. Partially it's cultural, but it is important. You can get angry at technology, but that won't change how it interacts with you &mdash; only how you interact with it. Your emotional state doesn't affect technology positively or negatively.

But it completely affects how you interact with people, and they'll interact differently with you based on your emotional state. You're tailoring your message to what you're working with &mdash; technology doesn't have feelings, so being logical and working through it helps smooth things out a bit. Getting angry invariably makes your process less clearheaded, and things go more wrong.

It's really difficult to do perfectly &mdash; I still get frustrated when things go wrong. But taking time to step away and reset is invaluable. Big change is hard &mdash; moving to a new city not knowing anybody, trying to rearrange your living room because you're frustrated. But you can take the journey in chunks and make it manageable. 

It won't completely solve every problem, but it's a tactic of &mdash; how can we break this down into smaller steps? And acknowledging the worth of little improvements &mdash; we all want to make things better, not just whittle away hours. "Don't let the perfect be the enemy of the good" &mdash; it's better to make small improvements than get down on yourself and make it hard.

I like your bringing in of incrementalism. When I listened to your talk I wondered why you focused on it. It seems like an Eastern idea &mdash; gradual, continuous improvement. But I think it applies to learning difficult concepts and technologies too &mdash; spend 20-30 minutes getting familiar rather than trying to cram it all in one day. It makes things more approachable.

I wanted to ask more about this larger idea of quality in the book. Pirsig maddeningly never defines quality, saying its undefinability is part of its nature. But my sense is engineers often proceed intuitively through problems. Like with an API &mdash; there might not be docs, or they might not be helpful. Engineers seem to guide themselves without specific steps, going with the flow. Is that a real phenomenon or just my impression?

**Dan**: With my engineering background, it's a little different than software but similar concepts. In university, you take classes on mechanical systems, thermodynamics, etc to learn the building blocks for the working world. The constant joke was that your first job was when you really started to learn engineering.

The intuitive feel doesn't just come out of nowhere &mdash; there's a lot of foundational work behind it. Like Pirsig working on his motorcycle, he didn't just know how to fix it. For example, righty tighty lefty loosey &mdash; if you don't have that basic knowledge, there's no way to develop an intuition of how things should fit together. There are core concepts, laws, and rules assembled in a way that makes sense for the project.

When I played jazz music in high school, I went to a camp with professional musicians and we talked about improvising. One sax player said he didn't just blast into solos &mdash; after 50 years, he had "licks" ingrained that he knew to use for certain songs and keys. Before going into a solo, he said he "programmed the licks into his sax." The solo was amazing, and he broke it down into the building blocks he put together to make it work.

It takes a lot of experience to build that intuition. Initially it can be frustrating not having that intuition for how things work. But over time you gain building blocks, and then one day you just know what documentation an API needs that nobody else thought of because of your experience. It starts coming together with work &mdash; it's not fully inborn without any background.

**Tom**: I really like your jazz example. My daughter plays saxophone, and I saw the group do an improv session. I wasn't sure if they had just memorized parts, but she explained it like you did &mdash; they practice a ton and have certain licks and techniques that build up to it. It's reassuring because I think that's a more mature view of the learning process.

Well Dan, we've been chatting a while and covered a lot of great topics. I've really appreciated your perspective, and I liked your talk a lot. I'll put it in the show notes &mdash; any last topics or resources you want to point people to?

**Dan**: The amount of resources out there is staggering. I've lost track of how many times in a professional environment I've felt like I was talking past someone. Even just learning basic skills for stepping back and rearranging your preconceptions can bring a lot of value.

I made a point in my talk about assuming good faith in the workplace. I wish that were the case universally, but it's not. We need to be conscious that people are acting in good faith so these tools will work. If not, which sadly happens, we can try to apply the tools but they won't work. That's not a failing on our part for trying in good faith &mdash; it's on the other person. 

You can get really frustrated when that happens. It does suck. There are other issues that come with it too. But we're still doing our best, and maybe we find a better environment to use those skills. It's not our failing &mdash; we're doing the best we can.

**Tom**: I think those are great closing thoughts. Much of Pirsig's talk about motorcycles applies to understanding ourselves and different viewpoints in the workplace and beyond. The real turning point in the book is when he connects with his son, communicating openly. Your takeaway lines up well with the book's themes of understanding different perspectives. Thanks for coming on the show, I really appreciated it and I'll link to your talk in the show notes.

**Dan**: Thanks for having me on, it was a lot of fun!

