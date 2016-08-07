---
title: "Responding to comments on the Modern Tech Writing book review"
categories:
- api-doc
keywords: 
summary: ""
thumb: 
published: false
---

The number of comments on my recent post, [Review of Andrew Etter's ebook on Modern Technical Writing](http://idratherbewriting.com/2016/07/26/modern-technical-writing-review/) has been somewhat overwhelming. In fact, this post went viral, inasmuch as tech comm posts go viral. About 1,283 people listened to the audio version of the post, there were about 1,134 page views and an average time of more than 5:13 minutes. The post had a lively discussion on techwr-l and in the comments. 

I want to look at some of the comments.

It's not as if the techniques Etter describes in Modern Technical Writing are new. I've been emphasizing static site generators, version control, lightweight markup languages, and other approaches for the past couple of years on my blog. But Etter's ebook seems to legitimize the approach, and his title "Modern Technical Writing" perhaps offended a few people who suddenly felt that their XML/CCMS-based approaches were somehow not modern but now antiquated. 

Because of this, a few people made the argument that Etter's approach would only work for "boutique-sized shops," but for "ginormous" documentation scenarios, this approach wouldn't scale. 

Bob Watson, a programmer-writer who has a lot of street cred, having done a PhD with much research on API doc writing, [noted](http://idratherbewriting.com/2016/07/26/modern-technical-writing-review/#comment-2819188210): 

> Having worked in ginormous and more boutique-sized content projects, the tips and methods described in Andrew's book are geared more towards the boutique-sized end of the spectrum. Which is fine, as there are many writers who work on projects of that size.

Martin Edic, who works for easyDITA, also [commented](http://idratherbewriting.com/2016/07/26/modern-technical-writing-review/#comment-2820720617):

> I'm sure it could work for a very small team but when you get into tens of thousands of topics (not uncommon) it would be a nightmare. And the entire publishing process enabled by a CCMS offers the advantage of eliminating constant formatting while enabling real time updates. Having multiple Jekyll sites, for example, means keeping track of what is where and somehow making them easily accessible to end users. And what about search? How do you search across all these apps with one search? Etc.,etc.

Marin continues with some more [sharp comments](http://idratherbewriting.com/2016/07/26/modern-technical-writing-review/#comment-2818952629):

>  let's imagine a part number changes that is used across multiple products and appears in multiple docs published to various media. How do you change every instance of that part number other than manually looking for them? There are so many reasons why structure was developed. The average tech writer spends as much as 40% of their time formatting their documentation for multiple delivery options. Formatting is automated in XML-based systems..

Phil T. also pointed out the difficulty of scaling these solutions. He [said](when content grows, from my experience, it's really hard to manage it all with a self-made solution. Especially when it comes to translation!):

> when content grows, from my experience, it's really hard to manage it all with a self-made solution. Especially when it comes to translation!



argument: XML and CCMS don't answer the needs of developer doc. take for example this documentation like [PlayFab](https://api.playfab.com/Documentation/Client). Much of it generated from the code. How would you integrate this kind of workflow into an XML/CCMS based system? If you can generate some doc material from code annotations, that's usually the approach engineers prefer.

second argument: Even if you have millions of doc topics, your documentation is usually composed of lots of individual projects. It's unlikely that you have one project with a million topics. There are probably some exceptions if you work in the airline industry, but by and large, big doc systems are just made up of lots of little projects. 

As such, could you not then build a system that consists of lots of individual repositories? 

But suppose you want to find every instance where you say "x" throughout your content? You can easily search through these repositories with a text editor to find all instances of "x". 

Where the model breaks down is re-using content across repositories. When I worked at Experian, we overcame this by combining all projects in the same repository. This facilitated re-use across the projects.

This brings up another point, though. With these systems, you will likely have to cobble together your own engineered solution, and if you don't have strong tech chops, or if your technical expertise is in another area outside of web publishing, you might struggle to make these technologies work for you. 

Ultimately you'll probably need to engineer your own system to manage some workflow or another. The big companies who we can point to -- Microsoft, Rackspace -- who have systems like this seem to have built their own tooling and workflows. 

But what's cool is that you don't end up with a black box, being at the mercy of a company that provides a giant tool with expensive costs. You can build your own tool to suit your needs and workflow. And you can incorporate programming workflows and techniques more directly in your content. 

If you're going to manage your content in a CCMS, you can bet that the content will be stored in either DITA or DocBook XML. And when you start storing content in XML, you seem to be at odds with developer documentation, because when you document developer tools, you almost never resort to XML. This is where the rift is. Show me a number of API doc sets that are structured in DITA, and I will completely take back everything I've said. But if you look at the vast majority of API doc sites (you can peruse more than 100 from my API doc course here), you will find that very few are storing their documentation in an XML-based CCMS and pushing out standard-looking documentation deliverables. Why is that? Because a lot of the developer documentation is driven from code, and for that which isn't, for example, if it's driven from Swagger, RAML, or API Blueprint specifications, then the output is separate.

I would say that the static site generator method is not specific to boutique shops but rather to developer documentation, because it fits well into this paradigm. This scenario usually doesn't require translation, doesn't involve massive re-use, doesn't involve documentation that numbers into the hundreds of thousands of pages, and so on. 

When you work in developer doc, you don't want to be behind a WYSIWYG interface. You want to work in the raw code, and the text editor like WebStorm feels like a natural fit if you're already testing your code in Android Studio. Using the for loops, if-else logic and filters available in Liquid feel right at home to me. The idea that I can iterate through a collection of items and do something with the content is pretty awesome. It means you can push content out into JSON or other custom formats, create your own scripts, or come up with ways to handle what you need (for example, embedding an audio player in your docs, or creating a template that you can populate with parameters.)


variables

there is a danger in tinkering too much, spending too much time on tools instead of content.

Some noted that this approach works only for 