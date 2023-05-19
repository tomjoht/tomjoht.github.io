---
layout: post
title: "News turns the content wheel of advertising"
permalink: /blog/news-turns-content-wheel-of-advertising
date: 2023-05-19
categories:
- technical-writing
- AI
keywords: 
rebrandly: https://idbwrtng.com/news-turns-content-wheel-of-advertising
description: "I recently tried a new approach to my newsletter: summarizing news articles. The new approach resulted in good engagement but left me feeling empty. News exploits our psychological vulnerabilities, including our novelty bias, negativity bias, and fear of missing out. We should be mindful of our news consumption and balance it with other more self-directed activities."
---

For most of my blog’s history, my newsletter has contained links to my own blog’s articles. With this approach, I could only send out about one newsletter every two weeks, depending on how prolific I was on my blog. I usually included one substantial article per newsletter.

Recently, I decided to rethink my newsletter approach. In part, I decided to emphasize the newsletter more after watching my site’s banner ads perform poorly. Advertising has never been a motive on my blog, just a side hustle. Nevertheless, I was tired of seeing advertisers fizzle after experiencing lackluster click counts on banner ads. 

In advertising campaigns, links in the newsletter get the most clicks&mdash;at least in the short term. As I thought about how to adjust my approach, I considered one of my favorite newsletters: [TLDR](https://tldr.tech/), by Dan Ni. Every day Dan sends the latest tech news in short snippets. One of the sections is sponsored, but the rest aren’t. It’s one of the few newsletters I like.

I decided that if I wanted a more successful newsletter, I should follow the TLDR approach: sending the newsletter more regularly, including news from around the web, summarizing short snippets, and keeping it mostly text-based. I reached out to Dan to ask whether he uses AI to generate summaries, but he said no. Everything is written by humans. They also have a team of newsletter editors. 

I also asked whether his text-based newsletter was intentionally minimalistic, to match the Hacker News aesthetic. He said he likes text-based newsletters, even though some recommended a more graphic approach.

## Pivoting my newsletter

To pivot my newsletter to be more like TLDR, but focused on tech comm, I gathered 4 links + 1 sponsor section for each newsletter. For each link, I summarized the article. Additionally, I interspersed banner ads between articles. I sent out the newsletter twice a week: on Tuesdays and Thursdays. 

As I gathered weekly news, I learned that it’s easy to find articles, especially with AI saturating the news. I tried using AI tools within Feedly to automatically find articles, but results were mediocre (mostly finding Medium articles). I monitored Slack, Twitter, Linkedin, Reddit, and other channels, saving links I found interesting through Get Pocket, then added them to a Google Doc titled “Next newsletter.” When I had about 8 links queued up, I stopped. On the weekends, I wrote summaries for the articles. 

Soon I found myself wanting to add my own commentary, not just summaries, so I started adding my own thoughts in brief form. After all, I’m not just a summarization engine. Like Dan with TLDR, I didn’t find AI helpful in summarizing the content. I often looked at the tech comm angle, and I pulled a quote here and there. I also contextualized the article’s significance within the larger landscape. For example, if someone launched a new tool, I provided industry context about how the tool fits into the larger space.

I found this pattern of searching for news and writing summaries like a game. Stories were out there&mdash;I just had to find them. It was easy to fill up a newsletter like this, and I could send out two newsletters per week. Unlike writing all the articles myself, commenting on news provided an easy way to build content. And with each newsletter I sent, I included a sponsored section that got clicks. The sponsored sections were getting a lot of clicks. For example, about 75 clicks per newsletter, which is about a 3.5% click-through rate for those who open the newsletter.

To streamline newsletter production, I created an [HTML template](https://github.com/tomjoht/tomjoht.github.io/blob/main/_layouts/newsletter.html) in my Jekyll blog so that I could easily copy/paste the HTML output from a post into an email campaign. This allowed me to generate a blog post with the same content as the email newsletter. I bumped up my email platform level (I use Mailjet) so that I could send more emails per month, and started following this new cadence. I continued with this new TLDR-like newsletter pattern for about 10 newsletters.

{% include ads.html %}

## How the newsletter pivot is going 

I kept telling myself that finding these links and writing summaries didn't take that long, that it was just a side hobby&mdash;a break from more regular work, like a diverting scribble on a Sunday afternoon, like doing a crossword. Plus, if I could just streamline my process more, I’d soon be more efficient. I even [built a script](/blog/create-script-to-auto-create-new-post-jekyll) to automatically create a date-based file and URL-shortened link when I write a new post. 

During this experiment, I realized why we’re surrounded by news: news makes the content wheel turn for advertising. If you want to send thousands of people an ad, the easiest way to do this is by packaging the ad within content. News is the easiest to gather and distribute. It’s a lot easier to find some tidbit of news, add some commentary, and publish it rather than originate your own content. It’s almost like making reaction videos instead of original videos.

Perhaps this is why news is everywhere and accelerating. With the decline of social media, news provides easy content. If you have access to your audience through a newsletter or other outreach mechanism, you can get your ads in front of them. All you need is a reason to keep sending that newsletter. News is the perfect content mechanism to turn the wheel of advertising. It allowed me to send two newsletters per week rather than two per month.

## News exploits our psychological vulnerabilities

Besides an easy way to create content, news appeals to use because it exploits our psychological vulnerabilities. News taps into our _novelty bias_&mdash;our minds' inclination to fixate on what’s new. The ability to stay current with the latest trends is the main reason people subscribe to my blog in the first place.

Bad news (crime, for example) also exploits our _negativity bias_&mdash;our minds’ inclination to fixate on the negative. As Johann Hari says in _Stolen Focus_, cars slow down to see a crash on the side of the road, not to see wildflowers. The more alarming or unsettling the news, the more views the news gets. That’s partly why AI is trending right now. It might not be gory, but the idea of robot takeover, job loss, career displacement, and obsoletion of knowledge skills is enough to unsettle even the most confident worker.

Bad news draws us like a moth to its flame, but the flame doesn’t make us feel good. Bad news fills us with learned helplessness (_the world is falling apart but what can I do? nothing ..._) and lowers our mental well-being. It doesn’t allow us any moments of escape or distraction but actually lowers our _eudemonia_. See Rolf Dobelli’s _[Stop Reading the News](https://www.amazon.com/Stop-Reading-News-information-overload/dp/1529342686)_ and [News consumption and its unpleasant side effect](https://pure.uva.nl/ws/files/17278406/a000224.pdf), 2017, _Journal of Media Psychology_, for more on these themes.

News can also get clicks because of FOMO, or the fear of missing out. If you don't keep up with the latest tech comm news and trends, you might worry that your skills will become obsolete. For example, AI chat interfaces are becoming more popular, and some tech writers are using prompt engineering to create these interfaces. This could make them 10x more productive than tech writers who are still using the equivalent of paper notebooks. There's a fear that, if you aren't paying attention, you might arrive to work one day and find that everyone else has already finished their projects through smart prompt engineering with AI while you're still manually coding HTML tables.

## News leaves you empty

I soon began writing fewer and fewer series posts. Most of my focus was on the next news story. Despite the success of the newsletter pivot, writing those summaries left me feeling empty. I became less of a thinker and more of a curator. I haven’t written a new post in my systems thinking series for a while. I can’t even remember what book I’m reading to advance my interest in the topic. My brain has flipped into scan mode, in which I’m constantly looking for what’s new and relevant. 

This constant search for the new&mdash;the news game&mdash;has filled me with a frenetic mindset of constantly skimming and scanning. In my mind I’m always thinking, _What’s new? What’s being released? What tech launches impact technical writers?_ And so on. It’s a hunt: finding the next story and pulling it into my newsletter.

## Acceleration of news

This bombardment of news also wears on readers, who feel inexorably drawn to what’s new but also overwhelmed by everything that’s happening. It feels like it’s all happening so fast. Is it? Or is it just someone looking to send you “news” so they can increase the number of ads shown to you, to increase your habit of expecting a daily newspaper?

For readers, the constant stream of news also flips switches in their brain too. An article that doesn’t announce anything “new” might lack appeal. Readers might find themselves asking, what new perspective or idea or technique does this author offer me? If there isn’t anything new here, we continue on to the next article. This was the case for me reading Dan Card's article [Generative AI: Productive Paths Forward](https://www.stc.org/intercom/2023/04/generative-ai-productive-paths-forward) in the March/April 2023 *Intercom*. Though well-written, the conclusions didn't seem unique or different enough to provoke thought. Of course we should become familiar with the tools. Of course they will augment our capabilities. *Next!!!*

Chemically, the nuggets of news hit our dopamine centers, giving us a small high when we discover news that might benefit us in some way. (See “[Stop Traumatizing Yourself by Watching the News](https://www.psychologytoday.com/us/blog/your-neurochemical-self/201410/stop-traumatizing-yourself-watching-the-news),” _Psychology Today_.) There’s a real sense in which someone can become addicted to news. I feel a small high when I find a nugget of interesting information that I didn't previously know.

## In need of a new model for news?

In the recent episode of Leo Laporte's This Week in Tech (TWIT), [episode 927](https://twit.tv/shows/this-week-in-tech/episodes/927), the hosts talk about the fear news organizations have about AI tools siphoning off their traffic. There’s a concern that users who want summaries of the news will ask ChatGPT for news and bypass going to the source. With [ChatGPT rolling out plugins](https://www.computerworld.com/article/3696239/chatgpt-adds-plugins-will-search-the-web-for-you.html) this week that will enable it to browse the web, that fear might become more pronounced.

However, guest TWIT host Amy Webb, who studied journalism, says news needs to reinvent itself with a more contemporary model. Twenty years ago, news organizations were also worried the web would take away their traffic, she says. Around the 1 hour mark in the podcast, Webb says:

> “I'm done with news organizations ... I'm just finished... I'm done having the conversation. I don't believe they're serious about radically reinventing a business model that makes sense of the 21st century.”

I value informative news. We need journalists to keep companies accountable, for sure, and to provide objective and rigorous examinations of current events and topics. But it seems there’s a layer of cruft on top that’s designed to generate views and engagement, like seductive entertainment. Similar to Webb, I too would like to see news reinvented, though I don't know exactly what the new model should be. Perhaps AI can get rid of the news that simply turns the wheels of advertising, while somehow leaving the investigative journalism that provides real value.

## Finding a balance?

The psychology of news intrigues me. I’m hesitant to step away from my news-focused newsletter approach, though I surely must find a better balance. Perhaps I need to moderate my approach a bit more, sharing links related to the articles I’m writing more than highlighting recent events. I also have a novelty bias and want to keep abreast of what’s new, but I dislike the way my brain flits about looking for what’s new. Overall, the positive and negative tension of news continues to hold me in its grasp. Like many, I have mixed emotions about needing to follow and read it. At the same time, news seems more important and relevant than ever.