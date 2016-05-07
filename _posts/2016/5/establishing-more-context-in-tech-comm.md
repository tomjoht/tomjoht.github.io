---
title: "How do you establish more context in a topic-based writing model?"
categories:
- general
keywords: 
summary: ""
thumb: 
---

## Background

One of the recent presenters in our STC Silicon Valley chapter were two tech writers from Palo Alto Networks, who spoke about how they constructed their documentation portal. The portal is a great example of doc portals, and one that you can learn a lot by studying. You can see their slides here. 

During the presentation, I asked why they chose to minimize the number of topics in the table of contents and instead put more of the sublinks within the main content view. For example, if you go to https://www.paloaltonetworks.com/documentation/71/pan-os/pan-os, you'll see that the TOC navigation tree on the left is fairly minimal, but when you click a topic, there a number of sublinks to navigate.

I asked why they didn't load up the TOC with all the topics, as is customary with tech docs. They said they wanted to preserve the context for the information. When you chop things into little pieces, you lose the necessary context that the user needs to understand the larger picture. This is often the problem with DITA-authored content -- writers chunk the material in such a granular way that all context is lost.

I've written in the past about chunking and context. As I've been documenting a new project lately, I want to preserve the context for users in helpful ways. So here's what I've been doing. I'm drafting the content in one long topic, rather than a lot of little topics.

Right now the topic is about 6,000 words long, and when I finish this project, I anticipate the entire documentation will be about twice this length. At that point, I plan to divide the content into a 10 step tutorial with a strong emphasis on moving through all the steps sequentially. This organization makes sense for the project -- it's about building an app -- and I'm a fan of holding the user's hand as much as possible through a process.

I wonder if this approach will lead me to avoid content that is fragmented and disconnected with other. In the past, often my approach in documenting things has been to create new topics for each task the user has to do, and then connect all the tasks together into a sidebar navigation. The result is that the content doesn't necessarily cohere together as one whole, but rather remains fragmented and disjointed. 

For users who jump to a specific topic, it probably doesn't matter which approach you follow. But what about those users who are going through a beginning-to-end process and need all that context?



## 

http://www.stc-siliconvalley.org/2016/03/06/march-21-2016-building-a-documentation-portal/