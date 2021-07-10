---
title: Those pesky authoring tool questions, and an update on my adventures with Jekyll
categories:
- api-doc
- jekyll
keywords:
description: "At the last WTD meetup, someone wanted to know my current thoughts on using Jekyll. Is it still what I recommend? There are challenges with search, file directory fragmentation, and authentication, but only the first point is inherent with static site generators."
---

Last week I attended a [Write the Docs meetup in San Francisco](http://www.meetup.com/Write-the-Docs), at Atlassian's stylish industrial-urban themed location. About 40 *documentation enthusiasts* (as they're called in WTD lingo) showed up, and we had an excellent panel discussion about creating documentation for startups.

I recorded the event and will be publishing the videos soon (after I see *Star Wars*, that is), but I wanted to make a quick blog entry to expand on an enjoyable conversation I had with someone as I was wheeling out my bike to catch the 8:40 Caltrain train back to "rural" Santa Clara.

The fellow documentation enthusiast said he'd been following my blog and wanted to know if I still recommended Jekyll, and if so, how I had overcome challenges with translation and search.

I noted that my honeymoon phase with Jekyll had somewhat ended and I'd come to understand some of the challenges inherent in static site generators. Like some of the advice in the startup panel, I think going with an out-of-the-box tool allows you to focus more of your attention on the content instead of the tool.

That said, I want to keep writing in Markdown and Jekyll, and not be stuck with a tool that limits what I can do with content.



Here are my top three pain points with Jekyll right now:

1. Poor search
2. File directory fragmentation
3. Authentication

Only the first issue is specific to static site generators, while the latter two are inherent in any file-based output for documentation. Re translation, although I did a pilot test and didn't run into issues, I've yet to really do translation in an actual scenario.

I don't want to expand too much on the issues here.

## Search
With search, I believe [Swiftype](https://swiftype.com/) is the best solution here. They have a powerful API that allows you to configure the search &mdash; I just need to take the time to learn and apply it.

I'm coming to realize that search is not something that you simply activate, but a feature that requires a lot of planning and configuration to make it successful.

## File directory fragmentation
Re file directory fragmentation, when you have 100 different outputs, do you simply store them in different file directories, and then give users links to the right file directories?

There isn't much advice or information about "Content Delivery" in tech comm circles. At one time, people talked about "personalizing" content experiences. With personalization, users would log into a central site, and everything in the site would dynamically personalize to them. This is a possibility with databases, not static sites, but one that often leads to sluggish loading times.

Additionally, someone has to carefully manage the rights of which users can see what content, and search indexes usually have trouble reflecting those permissions.

Instead of putting all content into one massive system and then dynamically filtering the content to specific roles that pertain to logged-in users and their privileges, static sites present all the files already generated when the user arrives. The pages load lightning quick, but there's no dynamic adjustment for the user. As a result, I have a lot of different outputs. Customer experience people dislike having so many different file directories.

## Authentication

Again, this issue &mdash; authentication &mdash; isn't actually specific to Jekyll, just to authentication in general. Despite what many people say about login prompts being pointless, none of the arguments has ever convinced any of my employers. As a result, I continually face the authentication issue.

My strategy so far has been to piggyback on Salesforce's authentication. Ideally, I wanted to use Onelogin or CloudCannon, but the idea of having "one place for everything" is an idea with incontrovertible appeal to the delivery group. When you have your KB articles in Salesforce, your customer contact info in Salesforce, your license files and API libraries in Salesforce, then why wouldn't you want your docs in there too? Well, there's not a huge reason not to, except that it's a pain to upload them through their interface.

## Conclusion

A key consideration with tooling is how much time you want to spend fiddling around with tools. You could simply buy a tool and live with the limitations. Or you could use a static site generator, which gives you a lot more freedom and flexibility, but also requires more time to configure it as you want. There are good arguments for going both routes.
