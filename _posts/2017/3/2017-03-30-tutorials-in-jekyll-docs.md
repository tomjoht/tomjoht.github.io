---
title: "Tutorials versus docs -- why you need both"
categories:
- jekyll
keywords: jekyll
description: "There's a new tutorials section in the Jekyll docs. I actually added this new section and contributed a couple of tutorials there. I initially did this because I wanted to become more familiar with github workflows with open source projects, but I also just like playing around with Jekyll. In adding tutorials, we decided to distinguish tutorials from docs on the site. This division between tutorials and documentation is an interesting one. Most documentation could benefit from including more tutorials because tutorials help connect the dots in how you use the various doc topics together."
bitlink: http://bit.ly/docsversustutorials
---

You can see the Jekyll tutorials here:

* [Tutorials home](http://jekyllrb.com/tutorials/home/)
* [Navigation tutorial](http://jekyllrb.com/tutorials/navigation/)
* [Order of interpretation](http://jekyllrb.com/tutorials/orderofinterpretation/)

(I actually have another tutorial on the way, but it's still under revision/discussion.)

Docs is on the [main Jekyll nav](http://jekyllrb.com/). But to get to tutorials, you have to click [Help](http://jekyllrb.com/help/) and then select Tutorials.

Why did we create a "tutorials" section instead of just adding the information to the regular [docs](http://jekyllrb.com/docs/home/)? This is a good question. Initially, I wanted to add these articles to the docs, but the project leaders were wary of diluting the docs with a lot of extra information that didn't address the core needs of users.

In the docs, you learn the basics about how to work with Jekyll. But when you need more extensive information that addresses a range of scenarios, or when you need end-to-end type information, or just need tips on how to handle this or that situation, that's where tutorials come into play.

With this approach (splitting docs from tutorials), we maintain the simplicity of the docs while also adding more advanced information deeper in the site. I was initially a bit uneasy about this division of information in the documentation, but now I like it. The tutorials section is admittedly harder to find, but this lower visibility makes it more comfortable for people to contribute.

In my own docs at work, I usually don't separate documentation from tutorials. And now that I think about it, I haven't written any tutorials for a while. But tutorials are helpful to users because they typically take users through full scenarios rather than just focusing on a single, isolated task.

At a previous company, I created a lot of tutorials for different situations. Tutorials were especially called for there because the endpoints often had different interdependencies and requirements. You needed to set up one endpoint first, populate it with some data, then use another endpoint that passed in parameters that you got from the first endpoint, and so on. This was all hard to comprehend when the docs tackled each topic in isolation. The tutorials brought it all together.

Overall, I think documentation benefits from having some tutorials that show how all the individual doc topics would be used in a full scenario. The scenario in a tutorial might not address an exact user's situation, but there's a lot of value in seeing the big picture and understanding how all the pieces fit together.

Why do we often omit tutorials from documentation? I think it's due to the perspective of the tech writer. The tech writer already has the big picture and sees how all the little doc topics fit together toward a harmonious whole because the tech writer usually authored each individual topic. To the tech writer, it seems kind of obvious how everything should fit together toward an end.

But end users haven't written all the docs, so they don't have a solid grasp of each individual topic. The user experiences each topic as an isolated task, without clearly seeing how it relates and fits into workflows and processes with other tasks.

I've written about the need for tutorials and narrative workflow topics in previous posts. See the following:

* [Narrative Workflow Topics: Helping Users Connect the Dots Among Topics](https://idratherbewriting.com/2013/09/12/narrative-workflow-topics-helping-users-connect-the-dots-among-topics/).
* [Where Topic-Based Authoring Fails: End-to-End Scenarios](https://idratherbewriting.com/2011/05/25/where-topic-based-authoring-fails/)
