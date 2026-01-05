---
title: "Podcast: Writing is telepathy: AI tools, automation, an intentionally offline life -- conversation with CT Smith"
permalink: /blog/ai-tools-automation-ct-smith
date: 2026-01-04
categories:
- ai
- technical-writing
- jobs
- podcasts
keywords: AI, technical writing, automation, tools, documentation, Payabli, Claude, scripting, jobs
rebrandly: https://idbwrtng.com/ai-tools-automation-ct-smith
description: "In this episode, Fabrizio (<a href='https://passo.uno'>passo.uno</a>) and I talk with CT Smith, who writes on a blog at <a href='https://docsgoblin.com'>docsgoblin.com</a> and works as a documentation lead for Payabli. Our conversation covers how CT uses AI tools like Claude in her documentation workflow, why she builds tooling that doesn't depend on AI, her many doc-related projects and experiments, and how she balances a tech writing career with an intentionally offline life in rural Tennessee. We also get into reading habits, the fear of skill atrophy from AI reliance, and where the tech writer role might be headed."
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/ai-docs-reading-ct-smith-tennessee.mp3
podcast_file_size: 52.6
podcast_duration: "01:09:49"
podcast_length: 52613876
image: podcast-ctsmith-telepathy.png
---

* TOC
{:toc}

## Video podcast

<iframe width="560" height="315" src="https://www.youtube.com/embed/Z5hSEhZ147g" title="Podcast: Writing is telepathy: AI tools, automation, an intentionally offline life -- conversation with CT Smith" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Audio only

If you just prefer the audio version: 

{% include audio.html %}

## Links mentioned

- [Docs Goblin](https://docsgoblin.com) &mdash; CT Smith's blog
- [Passo Uno](https://passo.uno) &mdash; Fabrizio Ferri-Benedetti's blog
- [12 predictions for tech comm in 2026](/blog/tech-comm-predictions-for-2026) (Tom Johnson)
- [My day as an augmented technical writer in 2030](https://passo.uno/my-day-tech-writer-2030/) (Fabrizio Ferri-Benedetti)
- [Tech Writer Web Ring](https://caseyrfsmith.github.io/webring/) &mdash; A web ring of tech writing resources
- [Rose Red Homestead (YouTube channel)](https://www.youtube.com/c/RoseRedHomestead)

## Topics covered

- **CT's background and location.** CT leads a docs team at Payabli, a payments company, and lives in rural East Tennessee—a farming community where most people don't know what tech writing is.

- **Living offline intentionally.** CT treats the internet as a tool rather than a diversion. Her family has a dedicated "computer room," and the rest of the house is for books, puzzles, and games.

- **The value of reading books.** CT argues that books have a higher quality bar than internet content and that finishing challenging books builds focus and flexibility—skills she considers an edge in 2026.

- **Docs Goblin's origin and voice.** The blog started on a dare. CT embraces a "goblin-like" persona online because masking her personality at work is exhausting enough—she wants her blog to be authentically her.

- **Why tooling matters.** CT believes tech writers who avoid tooling will get left behind. She compares it to the tractor replacing the ox—you can still do it the old way, but you'll be far less efficient.

- **CT's AI workflow.** She uses Claude Code in VS Code for throwaway scripts and changelog drafts, and regular Claude AI chat for building CLI tools conversationally. She emphasizes understanding the code she creates.

- **Building tools that don't depend on AI.** CT operates under the assumption that AI tools could become too expensive or get taken away, so she builds deterministic tooling that works without AI.

- **Fear of losing skills.** All three hosts share concerns about "getting dumb" from over-reliance on AI. Tom mentions his blog has become his "writing gym"—the only place he still writes by hand.

- **The future role of tech writers.** CT sees her career heading toward orchestration—automating what she can so human effort goes toward high-impact work. She compares it to running expo at a restaurant.

- **Systems thinking and human context.** Understanding the whole system helps you explain the right parts to users. CT notes that humans know what to leave out (for security, clarity, etc.)—something machines can't judge on their own.


{% include ads.html %}

## Transcript

**Tom:** Welcome to another podcast with Fabrizio CT and me, your host Tom. Today we're going to be talking about a lot of different things, but we have a special guest with us today—CT Smith, who you may know from her blog, Docs Goblin. And yeah, we're really excited to have you here and just wanted to welcome you.

**CT:** I'm stoked to be here actually. It's like two of my favorite people, two people I really admire, and it's like, wow, they want to talk to me. So happy to be here. Thanks for having me.

**Tom:** Yeah. Casey—just to start off, or sorry, CT—just to start off, tell us a little bit about yourself. Like, you know, where are you based and tell us a little bit about what you do? What's your role? Just to let people get to know you a little more.

**CT:** All right. I'm based in beautiful East Tennessee, USA. I work for a small payments company called Payabli. I lead the docs team there. And I mostly focus on developer docs, but again, leading a doc team, you kind of have to do a little bit of everything. And I've been in tech writing—probably, I don't even know what year it is—I've been in long enough to say that I'm mid-career at this point.

**Tom:** Nice. Nice. East Tennessee. I don't think I've ever been out there. Fabrizio, because you're based in Spain, have you been to the East Coast here?

**Fabrizio:** Actually, I haven't been to the East Coast yet. I do know the geography of it, but yeah, the only place in the US I've been is Portland, Oregon, which is cool and all, but yeah, I plan on, you know, visiting the east and the south southeast of the United States at some point.

**CT:** Well, come out here. I'll take you to Dollywood.

**Fabrizio:** Yeah. But you don't have the—there's an accent in Tennessee, isn't there? You don't sound like it.

**CT:** Yeah, I do have an accent. And the more relaxed I get, the more obvious it is. But I also have been masking for my entire career because if you are visibly southern in any way, there's a lot of judgment that comes with that.

**Fabrizio:** Yeah, that's so silly. Like I love southern accents, but then again, I'm European, so what do I know?

**Tom:** Yeah. Well, I know it can have like a taint here.

**Fabrizio:** Yeah. I know. I've heard about it.

**CT:** When I'm very relaxed though, my husband jokes—because there's a chain of grocery stores here called Ingles, and he says as soon as you—and it's the grocery store I grew up going to—and he said as soon as you walk through the door, your accent, you just—I can't understand you. It's like mountain Casey. And so I think that's really funny because it's so—and I was just at my parents' house yesterday and so my—I might still have the tail end of—I've been talking to nothing but mountain people all weekend. So yeah, it comes and it goes. It's something I struggle with. I'm trying to actively reclaim it because it is a source of shame. But anyway, not to derail the conversation with my—

**Fabrizio:** Makes me wonder like how is it to, you know, because we all—I think we all work—well, I work remotely. You work remotely, Casey. Tom, you go to the office, right? But you do work from home a few days every week, I guess. But I was wondering like how is it—because in, you know, Seattle, Barcelona, there are tech hubs. So how is it to be like a technical writer in the middle of Tennessee? Like, do people know what a tech writer is?

**CT:** Not at all. My 5-year-old son says mama writes instructions. Well, so that's just—that's how I explain it. A lot of people don't—I live in a farming community actually, and a lot of people don't even know like what tech is. They're like, "Is that like the Google?" And I'm like, "Yes, yeah, you got it. You're on the right track." So it's cool because I'm in a community where like not every—there's not a bunch of tech. But I also used to live near Tom. I lived on Kitsap Peninsula because my husband was stationed out there, and so I did encounter like a lot of people who made a commute across the water to go to Seattle to work in tech, and so it was a lot easier to find people to talk about tech with there. But again, I've been remote for so long that like it doesn't even register to me as weird, or I just talk to people online if I want to talk about work.

**Fabrizio:** Yeah. I mean, I don't know. Like, there's days where I wish I lived in a community that doesn't know anything about tech. But depends, you know.

**CT:** Well, you know, they still exist. You can come out. My neighbor's outside on the tractor right now.

**Fabrizio:** Well, you know, if I come to the east coast, I'll ping you.

**CT:** Definitely do. I'm like 5 hours north-ish of Atlanta. I'll take you to Dollywood. I'll fill you up on Pal's and give you Dr. Enuf, which is an energy drink that's local to here. And you can fly back to Spain with your own arms if you drink enough of that stuff.

**Fabrizio:** That'd be great to see. You mentioned Dollywood a while ago and in a previous chat, and I had never heard of it. I looked it up and I was stunned to learn that there's a theme park named after Dolly Parton. I'm still curious about that.

**CT:** Well, come out. It's a good place. The resorts are really nice. The people are really nice. It's just nice. Gatlinburg is like—it's overrun with—it's like a tourist town and it's hard. Sevierville, there's a lot of traffic, but once you get into Dollywood, it's like a magical experience.

---

<h3>On living offline and embracing non-tech</h3>

**Tom:** Now Casey—CT—you are remote and you also talk about some things on your site about doing earthy things. You have bees that you keep. You mill your own grain. You kind of don't want to have your smartphone dominate parts of your life. So you want to maybe be offline more, you read more. Tell us a little bit about that side of you and this sort of embrace of the non-tech while being a tech writer.

**CT:** I think it's—that's weird and everybody always wants to talk about this. So, I do—I grew up in southern Appalachia. I grew up—I'm like a second generation tenant farmer sort of situation where, you know, you're making your living toiling on the land. Where I grew up, everybody has to be very useful. So you have to know how to skin a squirrel. You have to know how to do this. You have to know how to dig a post hole. You have to know when to dig a post hole. And so I have always been—I wouldn't say earthy, but I've always been very practical because we just didn't have—oh, cat.

So we just—sorry—we didn't have—we couldn't just call somebody to come dig a post hole, you know, you had to do it yourself. And so I've always been like that. And I think what has happened with tech—like, I immersed myself when I started my career—let's just say at Salesforce—I worked in the office then, I was surrounded by tech. It was all super fun and exciting. And then after a while I realized like, okay, you can do both though. You don't have to just be a crazy lady with gray hair in her garden. You can also be a person who is online and can talk about Python or writing docs for an API.

So that's kind of where I'm at with things. I don't think that it's weird to want to do both. I do like staying offline outside of work, though, because I have found that the time that I was spending online just wasn't valuable to me. I was wasting a lot of time. I'm not even really on social media. I'm on LinkedIn, but I don't have—I have a Facebook that I'll reactivate when it comes to decluttering season and I need to put things on Marketplace, because Craigslist doesn't exist here. But I just—I'm not online a lot because there's nothing there for me really. I do go on to find book recommendations and stuff like that.

So I use the internet as a tool, and I think that that's the difference—it's a tool for me. It is not a diversion. It does not permeate every aspect of our lives. In fact, we have a computer room. Like, I'm in the family computer room right now, and that's where all the tech is, because the rest of the house is for books and puzzles and games. And I think it's okay to—it's not weird to me to do both. So, I do like bees, though, if you ever want to come see the bees.

**Tom:** You know, you mentioned bees, and now I'm thinking of this dumb post I saw on Reddit where somebody opened up a wall in the house and found a 6-foot beehive, like tons of bees behind somebody's wall. But the reason I bring this up is because yeah, I probably spend a lot of time just browsing dumb sites. Maybe that could have even been AI slop video. Who knows? I thought it was real, but anyway.

---

<h3>On reading and books</h3>

**Tom:** I'm kind of curious. You emphasized books and book reading. Do you find that—like, obviously—but tell us more about why you think books are more valuable than a lot of the content you read online. It seems like so many people these days just don't read. And it's not a given that books are where the conversation happens in groups, social settings. I mean, you said you're in a small town and so on. I mean, tell us about this. Are you finding a lot of community members who also read?

**CT:** I mean, everybody I know reads, but I think that's because I have surrounded myself with people who read. Like, for example, my neighbors are—they're both lawyers and farmers. Like, people can contain multitudes. And so I'm sure my other neighbor reads Harlequin romance novels by the bushel. I—you know, for me, the reading has been very, very valuable because again, there's a certain bar to getting published. You have to either have the money or you have to have the talent or have the connections. Anybody can say anything on the internet, which is awesome. I'm not saying that's a bad thing. I'm saying it's a lot harder to discern what is good information versus reading a book.

I just read the most unhinged book about raw milk, but the guy had clearly put so much research into it and had a bibliography, and I went and I looked up a couple of sources to make sure they were legit. And it wasn't that the ideas—I agreed with them or I liked them or anything like that. It was more that I was reading a project that someone had done and put the effort into bringing the content to life.

And because the internet is just flooded with low-effort content—and I'm not saying that some books can't be low-effort content—I'm saying it's a lot—you have a much better strike rate with reading books.

For me, reading is mainly because it's like getting a four-year degree. Like, the degree itself doesn't confer the knowledge you need to work in the field. The degree itself does not confer a job upon you. What the degree does is it shows me as an employer that you were able to do a project for four years straight that at times you probably wanted nothing to do with. Like, I didn't want to take gen ed classes and I did it anyway.

For me, book reading is the same. And it shows that when I finish a book—I mean, I do quit books if they feel like a waste of time—but if I finish a challenging book or a book that challenged my ideas about something, it keeps me flexible, but it also proves that I can see something through. And in 2026, like, I have an unrivaled attention span. I have unrivaled focus. And that alone gives me an edge over people who are reading nothing but short-form content, like you know, Instagram captions and watching reels, and that's where they get all of their information. If you're spending all your time on that, that's how your thinking is going to work. I want my thinking to be flexible and adaptable. And so I read a lot of different things. And I wasn't able to do that so much when I was stuck with the dumb low-effort content that you're flooded with on the internet.

And like, I do still use the internet. I have YouTube Premium and I pay for that because I have certain—mostly canning channels because I love canning. Pressure canning is like my favorite thing to do. So I have followed several like old women on YouTube who have these wonderful canning channels, and I don't want to be subjected to ads. But again, I put in guardrails there. I've turned off the suggested videos, and if I want something new, I have to actively seek out quality content instead of having crap just shoveled in my face.

So again, I think there's room for both. You can do the internet and you can read short-form stuff, but you can also challenge yourself. Like, I have a bunch of books over here that I'm really not all that interested in, but I'm sure there's interesting ideas in them and I'll eventually get to them.

---

<h3>On tools and the Tech Writing Tycoon game</h3>

**Fabrizio:** Well, you mentioned tools before, and you've created so many tools—like, it's one of the things that, you know, we've witnessed it in, you know, last year. But the one that caught my attention is actually a game that you created—the Tech Writing Tycoon. So tell me, like, why you created such a game?

**CT:** So I have to give you the context for how that came about. I was like at a low point. This was in October, I think. Whatever. I was kind of like—I needed a vacation. That's what it was. I needed two weeks off of work. And I got that and then I was fine. But I was basically like tired of tech writing and fantasizing about the internet being turned off forever and never having to go to work again.

And so I was like, "Nobody understands my job. Nobody I've ever worked with who isn't a tech writer understands what we do. And I'm tired of being crapped upon. And I'm tired of these people not understanding me." And so it was kind of like a reaction to—I was angry at the field. So I thought it would be fun to put together a quick game, and it was really fun. It was also very stressful because it's too real.

**Fabrizio:** Yeah. Yeah. So you said you were angry. Is the goblin thing in Docs Goblin—like, tell me about the goblin, because I mean, most of the tech writing blogs out there are like very composed, very formal persona, sometimes you know, like STC kind of things, you know, like tie and jacket, whatever. I try to be a little less formal than that, but then you've come along with the Docs Goblin. And I find that so refreshing because I think we can afford to be a little more emotional, to tell people why we are angry, you know, with stuff, why we are not satisfied, you know, what the kind of things we would like to improve, really, and with some energy there. Like, what's your take on the goblin thing, you know?

**CT:** I think it's just my personality. I have to be so buttoned up at work. I work in a regulated industry, and there's rules. And I just—I think that it's hard enough for me to be like that at work. I mean, my personality—like, internally, I'm still very much CT, but like the—my deliverables at work have to be very straight, like buttoned up and put together. And occasionally you can show some personality in a blog post.

I think that it's just my personality, and I learned at a very early age that I could only afford to mask if it was going to—I can only afford to keep my personality under control because I'm a very vibrant and kind of goblin-like person. I can only afford to do that if it's like to get a paycheck, you know?

So I'm kind of—I've always been a little rough around the edges, and I've always been kind of not afraid to look stupid. So it's cheaper and more fun for me to just be my normal self when I write on Docs Goblin. And the name itself came up because a friend dared me. He's like, "I bet you won't write." And I was like, "Come on, man. Now I have to." And so I bought the domain that day and had the site up that night, and here we are.

---

<h3>On blogging philosophy</h3>

**Tom:** I'm curious to hear a little bit more about your perspective on blogging and blog platforms. You have a manifesto on your site where you say that you want to avoid distraction by not spending a lot of time on framework, theme, ideology, having a template for everything. It's got a very plain style. And now you're sharing about the emphasis on transparency, not masking, and so on. Do you have a kind of a larger philosophy about what blogs should be like and what platforms should be like?

**CT:** No, I think that people should do what makes them happy that doesn't harm others. Again, this comes back to having to be buttoned up at work, and also like, I do believe that tech writing is a very creative field. And for a long time, I tried to convince myself that it wasn't, that I'm a professional, you know. But doing what we do, we have to be creative to solve problems. But in doing that, I'm not getting to express myself in other ways.

And I don't think that there is any one way to do a blog. Like, I enjoy both of y'all's blogs, and they're very different. You know, I've been reading Tom's site for like 10 years now. And we're very different people, and we express things differently. And I don't think there should be a rulebook for your personal sites and stuff like that. I think that everybody's different, and variety is the spice of life, and you know, the world needs all kinds.

And so I know I'm not everybody's cup of tea. People get really upset sometimes. They're like, "I don't like how you said that." I was like, "Read a different blog then. There's a web ring now."

**Fabrizio:** True.

**Tom:** Yeah. I like the web ring that you started. I mean, it's an old-school kind of thing. I didn't even know about it, honestly. I was like, what is a web ring? You know? But honestly, it's great just to have a list of tech writer blogs, and kind of a fun way to jump between them. I definitely—we'll put a link to this in the show notes—but I definitely like that.

And I do like this sense of following your own style, what draws you, what you want to write about. Even though I've had my blog for many years, there's constantly a tension between what should I write about versus what do I really want to write about. And I need to frequently tap into that and say, is this a post I want to write? Am I really writing the kind of things that I want to write, or am I just feeling tension to talk about certain themes? It's tough. It's tough to maintain that.

**CT:** Yeah. Especially because you're very visible in the field. And I could—I luckily don't have that, and I'm kind of like an insane person. Everybody's like, "Well, CT is just going to write whatever she writes." But I can definitely imagine that that's difficult for you because people want to hear your take on things, and sometimes the things that people ask about are not things that you want to write about.

**Tom:** So I never write about beginner topics. This is one thing that absolutely bores me is a lot of people are like, "Hey, how do you break into this? How am I a good fit?" I really want to write the kind of things that I personally am curious about and use it as like a web journal to play out thoughts.

**Fabrizio:** Yeah, but you know, that's why I enjoyed—like, when I also discovered your blog, like around 10, I think it was 10, 12 years ago or something like that, and I really enjoyed the fact that you were delving into topics that were advanced. So for me it was like, you know, there was distance there, and I wanted to fill that gap, you know. And that was healthy, you know. And I also get bored. It's boring to write stuff for beginners, but it's also boring to read stuff for beginners.

**CT:** True.

**Fabrizio:** I want something that challenges me, you know. And I connect that to CT's reading books, you know, difficult hard stuff—it's the stuff that makes you grow, I think.

**CT:** Yes. But also, what I particularly liked about your blog—I guess I think I remember the house that I lived in when I started reading it. I remember the room I was in. I think it might have been 2014. Maybe it was still called—it used to be called "I'd Rather Be Writing" maybe. I can't remember, but I've been reading a long time.

And I remember thinking like, "Oh, this guy is so successful and knows so much. There's so much room for me in this field." And so as a beginner reading a not-beginner blog, somebody with very opinionated topics—big opinions on topics that I wasn't even exposed to yet—I was like, "Wow, there's a lot of room to grow here." And so as a new person reading that kind of stuff, it definitely made me feel like I can specialize. So it's very helpful.

---

<h3>On connecting reading and writing</h3>

**Tom:** I think my blog has definitely opened up many doors throughout my career and made me visible. One thing I think, to connect to an earlier theme about reading though—writing and reading go hand in hand. And after reading a book, it's a natural sort of direction to review it or to post some kind of thoughts about it. Do you ever write some review-type posts of anything you're reading, or is it off-topic sometimes? Like, just curious how you connect your reading with your writing.

**CT:** Maybe I might be doing that. I do have a goal to read a certain number of work-related books this year, and I might do longer-form reviews on those because I'm doing them for work and I'm doing them to benefit the rest of my team. We have—I've started something. My team is just two people, but we both have to read at least one book a quarter and write a book report. And so, for mastery, for personal stuff, I actually just added a little blurb to my reading list on Docs Goblin because—I was like—somebody had asked me like, "How are you rating these books? Like, if you hated it, why does it have a three?" I was like, "Oh, because I learned from it." And they're like, "What?" I was like, "Okay, so I need to explain how I'm rating these books."

And I usually, when I finish a book, I'll add a few lines. I've found though that when I'm doing that, I tend to want to defend my reading choices, because like, I just read—I like Bukowski, and a lot of people don't like Bukowski and think that you're a bad person if you read him. So I reread *Factotum* a few days ago, and I had to really restrain myself when I was talking about—you know, "reread this book, it always reminds me blah blah blah." I had to restrain myself from defending my choices. And so I may not do a lot of that because I do feel like I have to defend things because I do not want people to waste their time trying to get into arguments with me about whatever it is I'm reading.

And so we will see—remains to be seen. I normally will write a few notes about what I liked about something or whether I learned something from it. But for the work stuff, I'll probably write some reviews this year.

---

<h3>Goals for the year</h3>

**Fabrizio:** Do you have any other kind of goals for this year related to work? I feel like you plan to do more experiments or more script writing, like AI stuff. Tell us more about what your plans are.

**CT:** Work plans. I actually just finished up all the plans for this. I'm working on more tooling, and hopefully this is the year where I get all the tools in place.

I'm also working on going deeper into deliverable types that I really don't enjoy doing. So I don't like doing the conceptual stuff. All I want to talk about is the shape of the API. That's what I like. It's my—I love—I mean, you give me an OAS, I'll just sit there and I'll read it. Like, I just love APIs. They're like catalogs. They're beautiful.

So I do have a work-related goal to go more into the kind of conceptual stuff, which is not what I enjoy doing. I'm fine at it. I do okay. I just don't like it. I'm going to do more of that this year just to be well-rounded. I mean, unless I get a lot of headcount and don't have to.

So that is a work-related goal. Again, I'm going to read more. I think when I step back and look at my reading list of things that I'd been collecting—like, what am I going to read next year for work—and I realized everything was centered around content design and IA, information architecture. So I'm probably—we'll see what comes out of that. We'll see what those books inspire out of me.

But for the most part, I'm mostly just going deeper in deliverable types that I'm not a personal—like, I don't like doing—because again, I'm over 40 now and I have to work to stay flexible. And that often involves doing things that I don't want to do.

**Fabrizio:** Yeah. And I hear you on the concept content type. It's—I tie that to the affinity one has with the subject matter. Like, for example, I used to work for a company that does online banking, and to be honest with you, it's—I find it so hard to not just grasp it, but, you know, like the position, what's the crude—whatever amount of—and you know, so, yeah. And I ended up working on stability probably because I just like working for software developer types, so it's software for software developers, and I like that. It's—so I struggle a little less with that.

**CT:** I would probably—I don't know. It's—yeah. I mean, to do concept documentation, you have to dive very deep into this matter. So, I'm not—I like payments. Payments is a very interesting field. Obviously, my passion is growing Comfrey and raising bees. I'm as passionate about payments as I can get about anything in tech. But I do struggle with—like, I don't—again, it goes back to I don't want to write beginner stuff, like it's boring, you know?

Like, there are already things that explain what "know your business" means. That's not, you know—our customers want us to explain it to them, and it is my job to do that. And so I have to get over that and dive more deep into that. And it's not what I want to do, but I need to do it. It's for my own sake, and you know, for my customers, I need to do it. And so I have to put aside my "I don't want to write this beginner crap"—put that aside and really do what's right for my readers, which again is like the spirit of what my job is.

---

<h3>On the importance of tooling</h3>

**Fabrizio:** I have a question for both of you, inspired by CT. So, you know, I know many tech writers that don't enjoy tooling—like, being around tools, talking about tools, developing tools. But the reality of our work, I'm seeing, at least in software, is that it's mostly about tools and the humans that use the tools, and you know, how the two get together, and then eventually there's a deliverable that comes out, you know, at our end.

But what's your stance on the importance of tooling in technical writing? I think my personal opinion is that it's pretty important and it's one of the main things that can also differentiate our craft going forward in the next year. And AI is enabling us to create those tools in an easy way. So what do you think? Like, what would you say to tool skeptics or—

**CT:** I don't know. You got to get over it, man. You—if I'm so much faster—Dave Nunez says that I have the output of like seven writers, and I would trust him because he's managed a team of writers before. Right?

So tooling for me has made my job more enjoyable because I get to outsource the menial parts of my job, and also the error-prone parts. So we have a card generator—those card components everybody has on their website now—ours are generated solely from front matter in each documentation page. And the reason I had to do that was because I was making a lot of mistakes. There were typos, or I'd mess the slug up so it wouldn't link, or I would forget to update them at all. And so I had to automate away that part of the process. And I used AI to do it because AI makes me a lot faster, and I already had the baseline level of computer science skills and coding skills that I was able to jump in very quickly.

I don't—I think if you're afraid of tooling, you're going to get left behind. Like, just point blank, the way things are going—we assume that people are going to be hiring fewer writers because we're expected to get more done with less. And if you cannot—I hate saying this—10x—if you cannot improve your output with whatever you've got at your disposal, you're just not going to be as attractive of a candidate. You're not going to—your value is going to be a lot less apparent. I'm not saying that knowing how to build tooling is, you know, going to save you from layoffs or whatever, but if you're able to do more with less, as everybody wants you to do, you're going to have a lot easier time getting to retirement age. Because that's everybody's goal, right? Is retiring.

So I would say you really have to get over it. You have to get over the fear of using AI. Like, yeah, AI may take your job eventually, but you're still getting a paycheck right now, and if it makes you go faster—I'm not saying it's going to save your job, but also like, I'm not screaming that AI is going to take our jobs. So I think that it's a tool, and you need to learn to use the tool because it's where technology is going.

When the tractor came out, you know, people were like, "Well, my ox can get it done." Yeah. Your ox can do one acre a day. This tractor can do 50.

**Fabrizio:** Right. Right.

**CT:** So, yeah, the ox can still do it. It's fine, but the tractor's more efficient.

**Fabrizio:** Yeah.

**CT:** So, I don't know. Maybe Tom has a better take than me.

---

<h3>On using AI tools</h3>

**Tom:** Yeah. Let's see. Well, I'm curious just to understand more about your direct AI tools that you're using in your doc work. You know, are you using like Claude Code, Gemini, ChatGPT? Is it integrated into your authoring tool? Is it separate? Tell us, you know, if you don't mind being more specific about tools. And what—especially if you're writing scripts, you know, if you're doing more advanced engineering kind of outputs—what's your process?

**CT:** This is actually so boring it's almost not even noteworthy, and people who are really into AI get so—you can see them get deflated when I tell them my secrets.

Our company is going with Claude. That was a decision that was made. Thank goodness, because I vibe the best with Claude. Like, I don't know what it is about my communication style. I've just had the best output with the Anthropic models.

So I can tell you exactly how I use AI at work. I use VS Code. I use Claude Code inside of VS Code. I use Claude Code for very limited things because it is still very expensive, and I'm nothing if not a penny pincher.

So I use Claude Code for—if I need to write a throwaway script—so I'll give you a real example. A few weeks ago, I had to do a new 4,000-line—there. I have a new doc. It is 400 new error codes in a table, in multiple tables. I needed to turn that HTML table into JSON output in a specific format to give to our database guy to update the messages, because I wasn't going to be updating language in a spreadsheet and then also going and doing it in my HTML tables—because again, it was a 4,000-line file. I'm not doing that manually anymore.

So I just updated it where I'm comfortable, in my editor, using my linters and things—because we use Vale. I updated it there and I said, "Claude Code, I need a script that takes this table and turns it into JSON in this format," and gave it the format that I needed, which is what the database guy gave me. And so I use Claude Code to write—it was like a 40-line script that turned that table into JSON output and CSV output, which is what the product manager wanted.

So that was an example of using Claude Code. The other thing that I use Claude Code for almost every time is—if I've done—so we use Fern definition instead of OpenAPI for a number of reasons. Sometimes I'll have an API change that touches like five endpoints, but there's also untold consequences because I had to update a type that went to several endpoints, right?

So I actually will ask Claude Code in those circumstances to draft the initial changelog for me, because again, a lot of tiny things have changed, and it's not valuable for me to go and enumerate every place where this field has changed. Claude can do that. So I get Claude Code to do that, and then I go through line by line and edit, because it still gets things wrong.

For everything else, I'm using just like the regular Claude AI chat, like on the web. I don't even use the desktop app. We have an MCP server for our docs hooked up that I will use occasionally if I'm working on something. I'm experimenting with Claude skills. I just fed our entire style guide, including our code style guide, everything. So I now have a Claude skill that can edit—do the first round of edits when you dump content in.

But if I'm scripting and it's not like a "hey, I need you to look at this exact file," I will do it in Claude AI, because again, I know enough about scripting that I can tell when something is okay. But also, I always approach it with the attitude of I want to learn. And so the conversational format is better for me.

So I approach Claude AI—again, just the web chat—and I say, "Hey," and I give it like a light PRD, or I'll give it some pseudo code for what I'm trying to accomplish—because it's way faster than me—and I'll say, "Okay, turn this into a thing." And I'm not kidding when I say that I have gotten working code every single time, first try. But I'm approaching it like I'm a product manager.

And I will say, "Hey, I understand this part, but can you explain why you did it this way?" And then I have that knowledge for next time I need to script something similar. And so that's how I do it. And again, I've built an entire CLI doing that. And remember, it doesn't have the full context for the rest of the CLI because I'm just doing it in a chat.

Again, if you wanted—I care more about making sure that all the outputs work together than some people. Again, it's easier to just do one-offs, but for me, knowing how the tooling works is just as important as having it. And so I'm never creating anything that I don't understand. Again, unless I'm doing like a one-off script, like "Hey, turn this big table into JSON"—that is lower stakes. But if it's a CLI tool that we're going to be using a lot, I want to understand how it works because I do go in and troubleshoot if the output, say a file path—I'm pretty famous for hard coding file paths and then getting in trouble for it later when I need to do something different.

And so I need to be able to troubleshoot that. And again, you could use AI for it, but I'm afraid of losing my skills if I don't at least monitor things.

So I'm really boring. It's just the two tools.

**Fabrizio:** There are times where—your workflow is very similar to mine. I feel like there are times where you—you can't afford to go autopilot for a few things. The others are more like, you know, you seek guidance, you seek feedback, or just facilitate learning.

**CT:** Yeah, that's exactly right.

**Fabrizio:** It's pretty boring stack I use.

---

<h3>On AI limits and dependency</h3>

**Tom:** But when both of you are using Claude, do you run into limits? Do you get like 10 interactions and then it says you can't do anything else until 1:00 p.m. tomorrow? Is this like a common thing?

**CT:** I've only had it happen to me twice.

**Tom:** Oh, okay.

**CT:** Okay, I think I'm using—I'm, remember, stingy by nature. And so I think very carefully, and I will say, "Hey, just give me the fix and I'll implement it," because again, I'm trying to understand my code instead of having it print the whole thing out again, which I think runs you up to your limit faster.

**Fabrizio:** Yeah.

**CT:** But I've only been locked out twice.

**Fabrizio:** It does happen to me, and it's pretty frustrating when it's like the timeout and, you know, like, "You have been a nasty kid, you know, wait till 3 p.m." But there's a couple workarounds to that when I use, especially, Claude CLI. One is switching to the API credits—like, if you buy separate API credits, you can continue your session. Or there's a feature now which is not super known, but it's like you can have like extra time—you can allot like $5, $10, $15, and Claude Code lets you know, "Okay, so you've gone through past the limits, you're in extra credits, and you're going to be billed like $5, but at least you can finish your—"

**CT:** Thank you.

**Fabrizio:** Yeah. Yeah. So I feel a bit like an addict when that happens, you know, like, "Oh, just one extra shot," you know.

**CT:** Yeah, man. Yeah. I think we might use it a little differently. I just—I've only ever run into limits twice. I got cut off of Claude Code at work, but that wasn't me. It was just like we had hit our limit that was set for the company. And I was in the middle of something, and I messaged the admin and I was like, "Hey, I'm getting this message. Did we run into a limit or something?" She was like, "Yeah, but if you really need it, I can bypass you." And I was like, "No, I've got other—I mean, I'll just use Claude AI." Like, I was using Claude Code to be lazy because I was trying to finish a thing before I left for the day. And so I was like, "Yeah, let's rapid fire. Come on. Come on. Edit for me. Come on. Let's do this."

**Tom:** Do either of you feel like we're getting to the point—or are you getting to the point—where if your AI tool service is down or not really responding, is it the equivalent of the internet being down or like Wi-Fi being out, or you just throw up your hands and say, "I can't even do anything anymore"?

**Fabrizio:** It's actually a bit worse for me. And you know, I connect that to Casey's stance. It's something that I want to revisit this year—like, you know, the computer room idea is great, you know, to better separate your professional life and your personal life. But, you know, when these services go down, I feel like I'm dumbing down, really. You know, it's like—especially if I have to code something—I wonder, you know, right now I'm contributing to the toolchain at work. It's a C# codebase. I know like the basics of C#, but I wouldn't be able to pull the things that I pull on a monthly basis if I had access to those tools. It would be like—I don't know—somebody removed like a lobe from my brain or something. That's my—

**CT:** Yeah, that's—

**Fabrizio:** And it's kind of scary. It's kind of scary.

**CT:** Yeah. Yeah. I don't feel that way at all. When it goes down, I'm just like, "Oh, I guess I'll just finish this manually or I'll just do something else." Only in cases where I'm like, "Okay, I have to get this commit in before I leave for the day. My vacation is starting"—which is what was happening last week—I was like, "I'm leaving town. I really have to get this done." So it was a mild inconvenience that Claude Code ran out on us.

But also, I—again, I'm coming at it from a scarcity mindset. So I'm always afraid that these tools are going to be taken away from me, you know, whether it's because they become prohibitively expensive—like, the other shoe drops on everything and there's not as many credits and such—or that there's going to be some sort of security issue, and we're just not going to have access anymore. You stop using AI right now.

And so I've approached it from that, and that's why I build a lot of tooling. None of my work CLI stuff relies on AI to work. It is all deterministic scripting. None of it—some things do have like an AI-enhance mode. But I operate under the assumption that eventually someone is going to make this cost so much that I won't be able to use it anymore. And so it's in my best interest to build tools that don't need it, and I will use it to build the tools.

**Fabrizio:** I don't know if it's going to be a New Year's resolution for any of us, but I recall Tom's posts on—I think they were from a couple years ago—on reducing smartphone usage. You remember that, Tom? Like, that's what inspired me to do it myself. Yeah. Remember?

**Fabrizio:** Yeah. It was super inspiring, you know, your journey to give up on the smartphone. Then you kind of came back to it. I wonder—maybe we'll see like a series on, you know, doing like AI detox or something.

**CT:** Yeah. I'm terrified of losing my edge in my brain. That's the problem. That's what keeps me grounded. And as you both know, I'm very pro-AI at work. Like, I'm like, "Yeah, jump in. Experiment." I'm not afraid of looking stupid. Like, just do it. Because it's helped me go so much faster.

But also, I'm not trying to be caught like holding the bag and my brain not work anymore if it becomes so expensive that only the most senior members of the team get to use this many credits a month. Like, I don't know if that's actually going to happen. And it's probably revealing a lot about me psychologically that that's how I operate.

But I'm very much—I'm very frugal. And I got this feedback in my annual review from my boss. He's like, "I love how you spend it like it's yours." And so I'm constantly afraid that I'm not going to have access to these kinds of tools anymore.

And so I have to be very—again, I got cut off. Somebody used so many Claude Code credits that we hit our limit. And then I was like, "Oh, I don't have this tool anymore because someone used too much." I also used a lot because I was working on a big project that needed it.

But I just don't want to get dumb is what I'm saying. Like, I think it helps to keep sharp.

---

<h3>On the fear of skill devaluation</h3>

**Tom:** Fear of skill devaluation is a real one, and it's one that I've wrestled with as well. Sadly, I mean, I—first of all, on the smartphone thing, totally come back to my smartphone. Sadly, I wish I could say that I, you know, somehow managed to pry it out of my life—

**CT:** But you were honest about it. You were honest about it, and that's what we love.

**Tom:** And at work, man, I'm so impatient if Gemini is down for whatever reason. I'm just like, "I'm not doing this by hand." Like, I know I can do this so fast otherwise. And I have really just—like, I don't write hardly anything anymore because I know I can just automate a lot of it.

So in order to keep my writing skills alive still, I will sometimes at lunch or outside of work, whatever, just write—open up a Google doc and kind of write my blog post. The blog has almost become the only space where, "Hey, I'm still writing by hand."

**Fabrizio:** Yeah. It's like the writing gym, you know.

**CT:** Yeah. No, I think that's—because I explicitly took the stance that I wasn't going to use AI to create content on my Docs Goblin. I was like, "This is going to be human-created." I have used AI whenever I moved from just doing HTML—like, plain HTML and CSS—when I moved to 11ty. And because I was like, "I need templates. I'm not—" I did use AI to migrate everything very quickly. But I'm not using it to create content at all.

At work, I have no such qualms. Like, I will use AI to—this is the thing that freaks me out and worries me a little bit—is if I get a wall of text from a product owner or a stakeholder or whatever saying, "Hey, we need a doc for this," and it's like a disorganized mess in my view. They think they are being very clear from their view.

I have been known to feed it to Claude and say, "Hey, put this in an outline format that is going to be easier for me, the tech writer, to digest. I don't even know where to start with this. It's like a treasure—"

**Fabrizio:** Oh, yes.

**CT:** And I'm worried that I'm not going to be able to do that anymore because I'm—it's a shortcut and I don't enjoy doing it.

**Fabrizio:** Especially if they produce that stuff using AI, you know, and like—this—the worst—the nightmare for me would be to face, you know—

**CT:** Yeah. Yeah. Yeah.

**Fabrizio:** I mean, the nightmare for me would be having to review hundreds of PRs made by people who have access to AI tools without me having access to AI tools. Like, I think, you know, we really want the playing field to be, you know, even for everybody. Everybody should have access to this stuff, you know. Otherwise, it becomes unfair very quickly.

**CT:** Yeah. I just—it's hard. And that is one thing that I do get frustrated—when I try to read—I do this in Write the Docs too. If somebody's question is not clear enough, I just won't answer, which is unfortunate. I just don't have the energy to parse.

And so I do—and I think that I may be devolving there. I have even less patience for unstructured content. Like, just be nice about it. If you're not communicating clearly, I'm less—and I do—maybe should reflect on that and practice making sense of things again, instead of just saying, "Hey, put this in an order that makes sense. They're all over the place."

---

<h3>On critical reading skills</h3>

**Tom:** I'm finding similar sort of tendencies. If something is unreadable, I will frequently paste it into an AI tool and just have them explain it. But—and I've worried about this too—because sometimes I'm reading a book—for example, I'm reading this book called *God, Human, Animal, Machine* by Meghan O'Gieblyn, and it's pretty—it's got a lot of philosophy in it, and it takes—I don't have a philosophical background.

So rather than really trying to sort through the ideas and sharpen my critical reading and really, you know, bend my mind, it's so much easier to find a PDF of the text, paste it into NotebookLM, and then be like, "Help me get a primer on this," you know, "explain this."

But then I think, "Gosh, am I dumbing down my critical reading skills?" Do you think that we're becoming less critical readers?

**CT:** I think that's been a fear for a long time, though.

**Fabrizio:** Yeah. I mean, my personal view here is that thanks to these tools, we have more freedom to choose what to wrestle with. Like, you want to read—you want to need—like, a philosophy book—okay, it's your choice, you do it. But I don't have necessarily—you know, I don't have to read some slop that somebody sends me, maybe at work or outside work. Like, I will just send that to Gemini because it's just not tempting, not interesting, you know.

**CT:** Well, my background is in philosophy, actually—philosophy and logic, specifically. I will say that CliffsNotes has always been around. And I will also say that if AI had existed when I was in epistemology lectures, oh, I would have absolutely used AI because I hated it. I thought it was boring. I didn't care about—was it Saul Kripke's red barn? I don't care about any of that. I don't like that. What I liked was David Hume. I only want to read David Hume.

So I can go both ways with that, Tom. Like, there are things—and like what Fabrizio said, where you can choose what to wrestle with—that's beautiful. Like, "Hey, I don't really care about learning about epistemology, but if you could summarize Kripke's red barn thought experiment for me so I have the context that I need to understand the rest of the book," I could get behind that.

But at the same time, like, I do still have the same fears, because again, it gets so easy. It's like when you have your smartphone, you're like, "I'm going to set guardrails around everything." And next thing you know, you're scrolling Reddit. You don't even have a Reddit account. You're on it anyway somehow, and you've been scrolling for four hours. It's the same kind of thing.

So for me, the danger is knowing when it's okay to use it as a tool without falling into having it explain everything. And because part—for me—you have to imagine Sisyphus happy—part of which is a philosophical thing—I know that for me, learning is part of it. Like, the struggle to learn things is part of the joy of acquiring new information for me.

Sometimes I have to fight—like, I also was three credits shy of a math degree, and I almost didn't do that because I really struggled with calculus—just Calculus 1. I was fine with everything else. There was something about calculus that was just hard for me, and I had to struggle. But it made the other math classes sweeter because I was like, "Well, at least it's not calculus."

**Fabrizio:** Yeah, and that's something that is hard to reconcile. Like, I'm still, you know—no pain, no gain, they say. And it's kind of this metaphysical idea that you have to suffer, and that knowledge kind of has to be—I don't know if knowledge has to be painful. Like, our entire craft is around making knowledge easier to learn and absorb. So I don't know, but I don't have an answer, to be honest.

**CT:** Well, it can be both. It can be both. You don't have to—part of the beauty of it is that you don't have to assent to anything. You can just say it could be both. It could be one or the other sometimes, and both at other times—both.

**Tom:** And back in college—like, 20, 30 years ago, whatever—I majored in English, but I was always drawn towards critical theory, like the lenses that different people apply to texts. I found that fascinating, and I thought I would love philosophy as well because I love the ideas. But when I would read philosophers, they were so opaque and impenetrable. It's like, yeah, go read Heidegger, go read—

**CT:** I love Heidegger, but they do that on purpose.

**Tom:** It was like, "I can't—this is not enjoyable."

**CT:** Especially the continental ones, right? The European ones?

**Tom:** Yeah.

**CT:** Continental philosophy is something else. But yeah, no, I hear you. And I thought that I was going to love—I had an English minor as well. And I thought that I was going to love reading things very critically, but I did not enjoy doing lit that way at all. And it turned me off of fiction for a very long time. I only—I'm 40 now, and I only recently started reading fiction again in September. So I get that impulse.

I wanted to do philosophy specifically because we didn't have a technical writing degree at my college, my university. And I was Googling what degree is going to make me the best writer and best reader, and it was philosophy. I also have this really toxic fantasy that eventually I'm going to go to law school, and philosophy is like the best—I don't want to be a lawyer. I just wanted to write contracts. Philosophy is like the best degree for you. People who major in philosophy have the best LSAT scores. And so that was the other consideration, but it was mainly to be a strong writer.

And I got to tell you, I learned a lot of critical thinking skills. And it—I value my philosophy degree. I know a lot of people like to joke that it's a degree that doesn't make you any money, but no degree makes you money. Like, you have to put the pieces together yourself.

**Fabrizio:** It's interesting that you mentioned critical skills, because they interviewed the AWS CEO a couple weeks ago or something like that, and he was like, "No, of course I'm not going to replace junior developers with AI. That's dumb." And what he really stressed is that, you know, new employees—new people joining tech or work or whatever—critical thinking is one of those skills that they're really going to need. And, you know, maybe AI will tell us what to do. We will have all the notions. But to put all the pieces together and know if we are going the right direction, then you need that philosophical layer.

**CT:** I speak as somebody who thinks that philosophy is overblown, and also philosophy is the greatest decision I've ever made in my life. I think it would not harm most people to take a critical thinking class or a logic class. And most of those are in the philosophy department, because that's what philosophy is.

Again, most philosophers that made it to prominence are blowhard academics, and they want their message to be—they're just trying to get printed in journals, you know? So a lot of it is difficult for no reason. But it's still—I had to do all of my exams in blue books. I had to show up and be ready to write an essay, you know.

My thesis advisor—I was very wordy. He beat that out of me. My thesis advisor would give me writing exercises where I had to explain some very complicated situation in 300 words or less. And so it was a really good choice for me. I think that most people should take at least a philosophy course or a critical thinking course because it—man, it really changed my life.

But again, people say, "You got a philosophy degree. What are you going to do with that?" I was like, "I'm going to make six figures within a year of graduating. What are you going to do?"

---

<h3>On career longevity and pivoting</h3>

**Tom:** I have a brother-in-law who's like a philosophy major, and he runs his own tech company now. He's super smart. He manages all these projects. You can tell that he's a rigorous thinker, and I can see the philosophy background.

But you said something, CT, that sparked a question in me. So somebody reached out on LinkedIn. Okay. You mentioned just a while back that you said you have this fantasy of maybe becoming a lawyer and so on, using that philosophy towards something.

So somebody reached out to me on LinkedIn. They said, "Tom, I've been following your blog for a while. One thing I'm just kind of curious about—for 20 years, you've just sort of stayed as a tech writer. Have you ever wanted to pivot into something else? You know, like, why don't you become—what have you thought about transitioning to?"

And I started thinking about that, and I think as tech has changed so much, I've been toying with this idea of emphasizing automation engineering. And like, is that the future path of a tech writer—some kind of orchestrator and automator? It's not like becoming a lawyer or anything. I feel like I've passed that window where I could pivot my career. I'm like 50 now.

But I'm just curious. Do you see—do you think that being a tech writer your whole career is like underselling potential? Like, do you think that we should—I don't know. What do you think about that? Do you ever have this question, like, "Hey, no"?

**CT:** No. Okay. No. I actually—despite how flippant I come off about everything—I love the field. Because at the end of the day, writing is telepathy. What you're doing is you're taking ideas that you have about how something works. You're converting them to symbols, either on a page or on a screen, which is also some kind of black magic in its own right. And then you're basically—if you do it right—beaming the correct thoughts into someone else's head to help them learn something or perform a procedure on another device or whatever.

And for me, that's super exciting. Any desire I have to switch careers is just because I don't want to look at screens anymore. And it has nothing to do with the field. I just don't really like being at the computer.

**Fabrizio:** Yeah, I know. I understand.

**Tom:** And now—go ahead. Sorry.

**CT:** Oh, no. I just—I understand. Like, I want to speak about the orchestration thing. I think that that is where my career is headed, because it's like running expo at a restaurant. You're not the server. You're not the cook. You're making sure all the pieces are going together at the right time so everything goes out to the customers and no one cusses you out. It's called the expediter.

And that's kind of where I see my role going, hopefully—is just automating everything that I can so that we can use our human labor to make the most impact for our readers. Because at the end of the day, I'm just trying to make it so my readers don't even know I exist. Because if the doc is there and they get their job done, they—I don't need them to be an expert in my product. I don't want them to think about my product. I want them to get what they need to get done and then go home to their families.

And so however that looks, that's what I like doing. I like making crazy information very understandable. And however I end up doing that, that's what I want my career to be.

**Fabrizio:** Yeah. My take on this is that we might see some of the hyper-specialization that has been going around in tech for a while—it might disappear or slowly vanish. And I think we'll still be technical writers, but actually, we might even drop the "technical" from it. We're just going to be writers. We're going to be folks who are whispering to machines to make them do things.

**CT:** Yeah.

**Fabrizio:** And the line between developer and writer is probably going to blur a bit. The only—my only concern with this is how many of us are going to be needed going forward.

**CT:** Yeah, I share that concern.

**Fabrizio:** There's no shortage of stuff to be documented. But you know what I mean.

**CT:** Well, there's also no shortage of people saying AI is taking our jobs. "I'm going to pivot out of this career." And it's like, yeah, I think it's going to take at least some of our jobs. I think it's going to take some people's jobs prematurely. And then there's going to be backtracking, because again, with all these companies saying, "You don't have to touch your docs. Get AI to do all of it"—you still need a human orchestrator, because the machine has context, but that's not human context.

And so I know—I feel—I try not to panic about the future, because I do want to retire as a tech writer unless something way cooler comes along that also scratches that deep need that I have to explain things. But it does freak me out a little bit. And I do think that it makes sense for us to explore the ways in which our roles might grow and change. And then, you know, as you all do, we're all experimenting with these things already.

---

<h3>On systems thinking</h3>

**Tom:** About the whole element of context, I agree that this is part of our jobs as being orchestrators—the ability to kind of bring that context to the situation. It's how we're essential.

And previously in my career, I went through a period where I was convinced that I wanted to get into systems thinking, or seeing the whole systems rather than just my little API that I'm documenting or one little sliver. And you know, as you expand out and you try to wrap your mind around every piece of the system, you realize that it's pretty vast, but it's also cross-organizational. Like, so many different organizations own different pieces that may not really pay your role's salary.

And ultimately, we had this effort to do these writing projects that were called "life of a query" or something. It would say, "Well, it starts here and it goes to this system, and then it goes to that system, and then it goes over to this tool and it processes it and this." And it was fascinating to see like, "Wow, you want to get this little piece of map data, and it goes through 20 different systems."

Zero people cared about that. Nobody cared about that. Everybody is so very focused on one little sliver of things. And as a result, I sort of abandoned it because it just wasn't fundable.

So, curious—do you see systems thinking as essential in a role, or are we too specialized now for anybody to really care about?

**CT:** I think it's important. I have to understand—I have to have the context for how everything works together in order for me to be able to explain the part of the machine that someone else needs to use. Especially because I work in payments.

So I have to understand how, say, one payments processor—what their—this is a really simplified example, but what their cutoff times are. I have to be able to understand that so I can give my readers the context they need to understand how transaction processing flows in order to do their jobs. They don't need to know every single detail. I need to know a lot more than they do so I can make sense of what I need to tell them.

And I think that that's where the humans come in. Like, what's that—there's that story about the plumber or whoever gets called to the Ford factory, and you know, there's something wrong with the boiler or something. And he goes in, and he listens to the boiler for just a second. Then he takes out his wrench and he taps it, and it comes back and it works again. And he gives the factory owner the invoice, and it's like $500. He's like, "What are you charging me $500 for? You just—you came in and you were here four minutes. You tapped it." He's like, "Well, you know, the $500 is because I knew where to tap."

And it's kind of the same thing with us, is like, you have to know enough about the system you're in in order to describe the piece of the system that your end user needs to use. Because we have several different products. Some people may never use one of them. They don't need all of that backstory, but I have to have that backstory to make sure I'm not leaving anything out. So that's my take.

**Fabrizio:** And what's interesting about this is that that system view—it might sound like very deterministic, like something that a machine could put together, an LLM maybe. But I don't think they can. I don't think they can, because the way you describe a system is always going to go through your own knowledge, your own language, your own mind, and the things that—of course, things that you know, but also things that are deeply human, like intentionality, you know, like things that people omit.

And also the tension—for example, I mean, all of us work every day with product management organizations that don't really—they don't know exactly what to do. You know, they have an idea, but they want to backtrack. And an LLM is not going to perceive those nuances because it cannot. It's not made of flesh. It's not organic.

**CT:** There's also things that we obfuscate on purpose, because again, if we're in payments, there's certain things that we leave out because it's a security risk, or it can give you clues on how to launder money, or things like that. And so the machine's not going to know that. The machine's going to go, "Yeah, cool. Tell them everything," you know. And then you have to go and sift for gold there.

I think that the human—I think that humans can do a pretty good job of giving context—machine context—to the machines, to AI, if we know—if we're trained in that. Like, here's how you write for AI. But I also think that AI—it's not—I mean, I'm going to say this, and then AGI is going to happen. But I don't think that the machine can give the human all of the context. I think we have to work together.

**Fabrizio:** Yeah. Yeah. And, you know, documentation strategy is not only about choosing what to document, but also what not to document.

**CT:** Yeah. That's—yeah.

---

<h3>Final question: Stock market predictions</h3>

**Tom:** Hey, I got a final question here. All right, CT. Since you work in payments, and the topic of finances has seemed to surface a few times during our discussion, what's your quick take—in 2026, does the stock market crash? Or does it have a soft landing?

Fabrizio, in your post on predictions, you mentioned having to drink substitute coffee because of resource scarcity. So it gave me the kind of vibes that maybe you were leaning more towards the crash. But I want to hear CT.

**CT:** Well, so again, this take is clouded by the fact that I grew up in the country, very poor. We have a saying in my family: "Sometimes God provides by providing you good sense."

And so I don't know what's going to happen with the stock market because I famously don't care about money. Like, my mortgage is paid, and I've got a retirement fund. But I'm not preoccupied with the thought of the stock market crashing.

I do have like 1,000 pounds of wheat in my basement because it stores for a long time. I do also can. I also have a very local food supply. And so—I get my milk from two miles from my house. The eggs come from the same farm. I get my produce from a man who actually rents the 40 acres right next to my house and he farms that. I preserve food in season.

And so I don't know if it's going to crash or not, but I have a family to feed, and so I just operate under the assumption that it all could crash at any time.

I'm not a finance person. I hope that your take is right, though—that it's just not going to crash. It's just going to slow down a little bit. Tom seems to know more than I do.

**Tom:** So I'm just going to—I don't know. I'm guessing as well. I mean, I think I'm just being optimistic and, you know, wishful thinking.

**CT:** But the world needs optimists, man. And I'm just going to stack my little coin and make sure we got enough firewood cut. You know, that's all I can do.

**Fabrizio:** I think I'm a little in between you both. Like, I think it's going to be bumpy, but I'm not stocking anything anywhere. Although I do have my backup batteries here in case of a power blackout or something. But yeah, and I think it's going to be bumpy for sure. But we're going to make it.

**CT:** I'm not a prepper or anything. This is just how I've always operated. We stack it to the rafters and you get through the winter without having to go to the grocery store.

**Tom:** You've got me thinking about what kind of food storage and preparation I should maybe think about, you know. Since some of my kids have gone off to college, we have some empty bedrooms. I could fill them with all kinds of prepper-type stuff.

**CT:** Well, it's good to have it. Even during COVID, it was—I was fine because I buy my toilet paper once a year, you know. But I have YouTube channels with delightful 80-some-year-old science educators who talk about food preparation if you want recommendations.

**Tom:** I'm going to subscribe to that channel. I'm so interested.

**CT:** Yeah, it's called [Rose Red Homestead](https://www.youtube.com/c/RoseRedHomestead). It's actually like an 80-year-old woman and her husband, and they're retired science educators. But they talk about safe food storage—not, and they're not crazy preppers. They're very old, elderly people who are just like, "Here's how we store food, and here's how you can make your own dehydrated soups that don't taste like crap."

**Fabrizio:** Fascinating, right?

---

<h3>Closing</h3>

**Tom:** Well, hey, we've had a good long conversation here. And usually we wrap these up at around an hour. So, do we have any last topics or thoughts we want to cover?

**Fabrizio:** I'm good.

**CT:** Okay.

**Tom:** Okay. Okay. Well, CT, thanks again for coming on to our podcast here. If people want to read more about you, learn more about you—[docsgoblin.com](https://docsgoblin.com)—any other links or sites you want to plug?

**CT:** No. I also don't really like promoting myself, and there's no pressure to read it. If you're interested in me, you can—we can connect on LinkedIn. I talk a lot there, too.

**Tom:** All right. Great. And then Fabrizio, [Passo.uno](https://passo.uno) is where you can read Fabrizio's blog. And definitely check out the 2030 post. What's that called?

**Fabrizio:** Yeah, "[My Day as an Augmented Tech Writer in 2030](https://passo.uno/my-day-tech-writer-2030/)."

**Tom:** And I will share the show notes and so on online. But thanks again for a great conversation, and I hope this year is a good one.

**CT:** Thanks for having me.

**Fabrizio:** Yeah.