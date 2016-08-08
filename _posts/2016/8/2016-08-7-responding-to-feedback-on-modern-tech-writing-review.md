---
title: "Responding to comments on the Modern Tech Writing book review"
categories:
- api-doc
keywords: 
summary: ""
thumb: 
published: false
---

The number of comments on my recent post, [Review of Andrew Etter's ebook on Modern Technical Writing](http://idratherbewriting.com/2016/07/26/modern-technical-writing-review/) has been somewhat overwhelming. In fact, inasmuch as tech comm posts go viral, this post went viral. About 1,283 people listened to the audio version of the post, and there were about 1,134 page views and an average time of more than 5:13 minutes. The post had a lively discussion on techwr-l and in the comments. 

I want to respond generally to at least one comment trend in comments -- the idea that Etter's solution won't scale.

By the way, it's not as if the techniques Etter describes in Modern Technical Writing are new. Lots of people (myself included) have been emphasizing static site generators, version control, lightweight markup languages, and other approaches for a long time. But Etter's ebook seems to legitimize the approach, and his title "Modern Technical Writing" perhaps offended a few people who suddenly felt that their XML/CCMS-based approaches were being labeled antiquated. 

In their responses, a few people made the argument that Etter's approach would only work for small shops. For larger documentation scenarios, this approach wouldn't scale. 

For example, Bob Watson, a programmer-writer who has done research on API documentation, [noted](http://idratherbewriting.com/2016/07/26/modern-technical-writing-review/#comment-2819188210): 

> Having worked in ginormous and more boutique-sized content projects, the tips and methods described in Andrew's book are geared more towards the boutique-sized end of the spectrum. Which is fine, as there are many writers who work on projects of that size.

Martin Edic, who works for easyDITA, [commented](http://idratherbewriting.com/2016/07/26/modern-technical-writing-review/#comment-2820720617):

> I'm sure it could work for a very small team but when you get into tens of thousands of topics (not uncommon) it would be a nightmare. And the entire publishing process enabled by a CCMS offers the advantage of eliminating constant formatting while enabling real time updates. Having multiple Jekyll sites, for example, means keeping track of what is where and somehow making them easily accessible to end users. And what about search? How do you search across all these apps with one search? Etc.,etc.

Marin continues with some more [commentary](http://idratherbewriting.com/2016/07/26/modern-technical-writing-review/#comment-2818952629) later:

>  let's imagine a part number changes that is used across multiple products and appears in multiple docs published to various media. How do you change every instance of that part number other than manually looking for them? There are so many reasons why structure was developed. The average tech writer spends as much as 40% of their time formatting their documentation for multiple delivery options. Formatting is automated in XML-based systems.

Phil T. also pointed out the difficulty of scaling these solutions. He [said](http://idratherbewriting.com/2016/07/26/modern-technical-writing-review/#comment-2820114467):

> when content grows, from my experience, it's really hard to manage it all with a self-made solution. Especially when it comes to translation!

These commenters make some good points, so let's take a look at them and see if we can explore them in more detail. The points might be summarized as follows:

1.  For a project of tens of thousands of topics, the solution would be a nightmare.
2.  You can't identify and change a component that appears in multiple places.
3.  Translation becomes problematic.
4.  When you have multiple delivery options, this approach becomes inefficient.


## For a project of tens of thousands of topics, the solution would be a nightmare.

I've been a tech writer for about a dozen years, and I've never worked on a project that includes tens of thousands of topics. I may be an outlier, but almost all documentation at companies I've worked for include lots of different writers working on small projects. A company may have 20+ products, but the documentation for each product tends to be fairly self-contained and rarely exceeds 500 topics per project. Additionally, rarely do the topics from one project get re-used in the other projects. 

When I think of possible projects that might have tens of thousands of topics, with much of the content re-used in various places, I haven't had much exposure to these scenarios. 

Sometimes writers work on different pieces of a larger puzzle, but again, the larger puzzle is a tapestry of various software applications. The documentation may all be published on the same website, but each product's documentation is segmented off from each other.

In fact, I don't think it's possible for one writer to actually manage content that consists of tens of thousands of topics. Unless you write a lot faster than I do, or unless you're merely curating content contributed by a small army of engineers, I just don't see too many scenarios where I actually need to worry about scaling to that size. Basically every large project can be broken down into smaller projects that fit the individual writer's capacity. 

But if I were working on something on a massive scale, then perhaps I would have a different perspective. But I am starting to think that these scenarious are somewhat rare.

## You can't identify and change a component that appears in multiple places.

This idea assumes that you can't re-use components in a static site generator model. Actually, you can. I talked about this in my series comparing DITA versus Jekyll. See [Creating re-usable chunks (conref) in Jekyll versus DITA](http://idratherbewriting.com/2015/04/01/creating-re-usable-chunks-conref-in-jekyll-versus-dita/). In fact, re-using content is easier in a static site generator than it is with DITA, because DITA requires the content to be "valid" in every place it's re-used. This means a note that appears inside a list might not be valid if the note appears outside the list.

But it does get difficult if you have re-use across projects. For example, suppose you have 5 different technical writers working on 5 separate projects, with each project self-contained in its own repository. How do you re-use a topic from Project A into Project B? That is more difficult. 

When I ran into this scenario at a former company, we changed our repository model from separate repos to the same repo. Now everyone worked in the same repo but in different folders. As long as you didn't edit other people's content without letting them know, we didn't run into too many merge conflict scenarios.

Still, the idea of every writer working out of the same repository is a little different. Technical writers aren't used to version control workflows, so many of these concepts may be new. But working in the same project has a number of benefits:

*  You can see what other writers are doing by looking at their commit logs.
*  All projects can be controlled by the same stylesheets, templates, and other project files.
*  Writers can help each other out by solving problems that others run into.

However, writers who aren't ready to release content will either need to work in separate branches or withhold from committing until they're ready to commit and publish the content.

## Translation becomes problematic.

Translation is something I'm working on right now. Although most translation shops can readily consume HTML and XML, consuming Markdown is less standard and sometimes more problematic since Markdown has different flavors. However, in my tests with two translation agencies, both have had Markdown filters that could process tha Markdown syntax just fine. I'll write more on this topic later.

## When you have multiple delivery options, this approach becomes inefficient.

Again, I'm not sure why static site generators can't handle multiple delivery options. You can generate out multiple HTML sites, and you can even push out different PDF deliverables. However, my experience in publishing PDF using Prince XML with Jekyll is that it's possible but kind of tricky. You should avoid PDF if you can, for all the reasons that you should avoid fax machines and pagers.

## Other reasons




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