---
title: "Review of \"Hashtag #TechComm: An Overview of Members, Networks, and Themes from 2016-2019\""
permalink: /blog/hashtag-twitter-article/
categories:
- academics-and-practitioners
keywords:
rebrandly: https://idbwrtng.com/hashtagtwitter
description: "In <a href='https://www.stc.org/techcomm/2021/04/29/hashtag-techcomm-an-overview-of-members-networks-and-themes-from-2016-2019/'>Hashtag #TechComm: An Overview of Members, Networks, and Themes from 2016-2019</a>, published in <i>Technical Communication Journal</i> (68.2 May 2021), Chris Lam identifies trends and themes in the tech comm field by looking 75,000+ tweets that used the hashtag <a href='https://twitter.com/hashtag/techcomm'>#techcomm</a> from 2016 to 2019. Previously, academics <a href='/2018/10/09/tech-comm-trends-more-collaboration-with-engineers/#looking-at-job-advertisements-to-extrapolate-the-evolution-of-tech-comm'>looked at job advertisements to identify trends</a>, so this Twitter analysis for data provides a new approach to identifying trends."
---

## Article summary

Lam's research questions are a bit broader than just identifying trends and themes. He also wants to identify prominent voices and networks. He writes,

> While the hashtag #TechComm has been well adopted as a way to tag tweets related to #TechComm for at least ten years, no systematic research has answered the fundamental questions related to the hashtag #TechComm including 1) who are the prominent voices in the #TechComm community; 2) what networks exist in the #TechComm community?; and 3) what content themes are being tweeted about in the #Techcomm community?

Lam had to crunch through a lot of raw data (75,000+ tweets over multiple years!) and make sense of the info. To do this, he used several tools:

- [TAGS explorer](https://tags.hawksey.info/)
- [Meaning Extraction Helper](https://www.ryanboyd.io/software/meh/)
- [AntConc](http://www.laurenceanthony.net/software/antconc/)

Here are the themes he found:

* "Theme 1: Adobe TC suite and other authoring tools"
* "Theme 2: STC and the STC Summit"
* "Theme 3: Academic #TechComm"
* "Theme 4: Professional development and self-improvement"
* "Theme 5: DITA and Lightweight DITA"
* "Theme 6: Job opportunities in technical communication"
* "Theme 7: Software documentation and Write the Docs"

Here are a few quotes from the article.

Tools, technologies, and conferences are recurring topics:

> Within the practitioner orbit, there seemed to be a focus on documentation and the tools and technologies related to software documentation. Based on the network visualizations, one of the main conversationalists was [@flacke](https://twitter.com/flacke), who identified as a documentation specialist. Further, the themes that arose in research question three further reveal that the community had focused conversations on the tools (Adobe TC Suite in theme 1), technologies (DITA and XML in theme 5), and conferences (STC and Write the Docs in Theme 2 and Theme 7, respectively) that help technical communicators in their work.

Academics and practitioners largely operate in separate orbits:

> While not totally surprising, a major finding of this analysis of the #TechComm community revealed a few key sub-communities. Based on the network analysis visualizations, there appeared to be two major orbits within the #TechComm community: academics and practitioners. There also seemed to be only limited overlap between the two communities. This confirms prior research that has pointed to a divide between practitioners and academics.

No single authoring tool dominates discussions:

> Based on the variety of tools mentioned in the tweets, there does not appear to be an “industry standard” authoring tool. For instance, Adobe TC Suite, ArborText, Sphinx, IXIASOFT, and Oasis all loaded significantly on a variety of themes. What is foundational across the tools, however, are the technologies they are built upon, including XML and DITA. That is, programs might consider a course teaching these foundational technologies and exploring how knowledge of the technology impacts the successful use of a variety of tools. Furthermore, as students learn foundational technologies, they must then also learn about foundational concepts of topic-based authoring, single sourcing, and content reuse.

## My thoughts and analysis

I have a few random thoughts, in no particular order:

* Crunching through this much data is a feat in itself, and the tools he used could be instructive for others looking to make sense of the firehose of randomness on social media. Think of other scenarios where this might apply, such as parsing through thousands of feedback comments on docs and needing to make sense of them.

* Academics don't really talk on Twitter. I once tried to follow all the tech comm academics I could find so that I could tune in to their discussions. Most of their tweets are boring "I just accepted a new position" announcements, with no actual meat about their research. I ended up unfollowing them. I once wrote a post called [Corporate exodus narratives: A close look at the tension between the corporation and academia](https://idratherbewriting.com/2019/03/01/corporate-exodus-narratives-tension-between-academia-and-corporation/), in which I said the real conversations among academics take place in private Facebook groups or in closed circles at conferences, not on Twitter. Could the same be said of practitioners? Twitter might not be the place to post about more sensitive issues.

* I've become somewhat disillusioned with Twitter after Trump showed us how the platform could be subverted to amplify falsehoods. Seriously, Twitter showed us how the voices of a few could be amplified to distort facts, motivate the gullible, and polarize society. With #techcomm, Lam notes that "... there is a core community within the #TechComm twitterverse. Those users on the outside of these core are only loosely related or involved in the community based on their connection as measured by their mentions, replies, and tweets to other members of the community." To use an analogy, it's like attending a large lecture hall with 200 people, and only 3 people are constantly raising their hands to make comments, ask questions, and dominate the discussion. Then from the substance of these 3 people, one extracts trends and themes. Often, social media gives a voice and platform to whoever shouts the loudest and most controversial opinions. That how social media works: more controversy ==> more clicks ==> more visibility. I wrote about some of my mixed feelings as a blogger in [My conflicted thoughts about the decentralized web](/2018/08/06/conflicted-thoughts-on-decentralized-web-and-survey/).

* A lot of #techcomm is "polluted" with vendors. For example, I would have excluded tweets from Adobe Tech Comm Suite and ClickHelp from the list, as these sources are tool vendors. Including them led Lam to believe that Adobe's TCS tool suite is a regular theme among practitioners. Maybe it's discussed in some circles, but I doubt it's as common as the tweets would suggest. Admittedly, I sometimes tweet sponsored posts, so I'm not innocent about Twitter pollution either.

* When academics look for trends, there are two glaring gaps that don't seem to surface as visibly as I think they should: (1) API developer docs and (2) docs-as-code tools. From my viewpoint, these trends are as big as tsunamis over a landscape. So much discussion in Write the Docs circles focuses on these areas. Though perhaps I'm in a bubble. It's good to see a more unbiased approach from Lam that looks at raw data (even if just tweets) to identify themes. But it bothers me when academics reduce these trends to the question, "Should we teach tools?" API docs is so much more than tools or Swagger. Because almost all developer docs involve an API, *API docs* is synonymous with *developer docs*. So API docs includes the whole developer documentation landscape and audience.

* Although Lam says, "The findings of this study revealed a vibrant community
of technical communicators on Twitter using the hashtag #TechComm ...," I think Twitter's appeal has waned. I don't get much from the platform anymore, and I'm always slightly anxious about posting some ill-thought tweet and getting canceled or fired. In reading Twitter, there's too much effort to sort out verbal mashed potatoes from actual insight, and most of the insights are quirky little observations that mostly just distract us from the present. I have lost interest in Twitter as a platform for engagement; instead, it's a platform for promotion or real-time news. On Twitter, I mostly just share links to new blog posts. I do, however, frequently look to see what's trending in the world, but there's rarely any trending techcomm news.

Overall, this article made me think about Twitter more. I haven't been engaging on the platform for months, and my blogging has also somewhat decreased. Am I starting to fade? Or am I just experiencing the tired, creative burnout trend of the pandemic? Sometimes I don't feel like sharing everything in such a public way. But then I get good sleep, drink some coffee, and I'm ready to post.

I'd be interested to hear your thoughts on Lam's article, <a href='https://www.stc.org/techcomm/2021/04/29/hashtag-techcomm-an-overview-of-members-networks-and-themes-from-2016-2019/'>Hashtag #TechComm: An Overview of Members, Networks, and Themes from 2016-2019</a>. Feel free to share it in the comments below or reach out to me on other channels, even on Twitter!
