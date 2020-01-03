---
title: "Should you ever apologize for something product-related in your documentation? Looking at Apple's dongle documentation"
categories:
- technical-writing
description: "Apple's recent dongle fiasco raises an interesting tech comm question: Is there ever a time when you, as a technical writer, should apologize for something product-related in your documentation? I looked at Apple's end-user docs about their ports but didn't see any acknowledgement that they were inconveniencing their users in an extreme way. Instead, the tone was merely straightforward and factual about which adapters you would need. When an issue is controversial or obviously of deep concern to users, documentation should address the issue head-on. You don't need to try to communicate about the issue in an emotional way (though that tone might be  welcome to users), you just need to <i>include</i> the information, mostly following Redish's documentation-as-conversation model."
bitlink: http://bit.ly/apologiesindocs
---

## Background on the Dongle/Port Fiasco

In case you haven't heard about the new ports in the new Macbook Pro laptops, the laptops removed all (standard) USB, SD Card, and Thunderbolt ports -- essentially replacing them with USB-C ports, which is an emerging standard but is by no means common. Further, despite dismissing the headphone jack on the iPhones as old tech, they do include a headphone jack on the Macbook Pro. Finally, you can't plug your new iPhone into your Macbook Pro.

For some more background on the issue, see [Apple is now officially a dongle company that happens to make smartphones and computers](https://www.extremetech.com/computing/238878-apple-now-officially-dongle-company-happens-make-smartphones-computers), which has more than 13,000 shares and seems to represent the prevalent view. The author explains:

> The absurdity of the situation is neatly captured by the following fact: None of Apple’s newest laptops can connect to its own flagship smartphones without using a dongle or purchasing a separate cable that doesn’t otherwise ship with any of Apple’ s hardware.

Here's a similar thread on Twitter:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Apple&#39;s fastest growing product category. <a href="https://t.co/d1sel4N5Yc">pic.twitter.com/d1sel4N5Yc</a></p>&mdash; Drew Breunig (@dbreunig) <a href="https://twitter.com/dbreunig/status/792034409788518401">October 28, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
 
For fun, see this video of an "Apple engineer" speaking about his work on the latest Mac notebooks:

<iframe width="560" height="315" src="https://www.youtube.com/embed/-XSC_UG5_kU" frameborder="0" allowfullscreen></iframe>

The issue of Apple's missing ports and plethora of required dongles has occupied considerable attention on tech podcasts and the tech media. 

## Apple's Dongle Docs

I decided to check out Apple's documentation pages about the ports and required adapters. Here are a few relevant pages I found where required adapters are listed:

* [Take a Tour](https://help.apple.com/macbookprothunderbolt3/late-2016/#/apddfab3bd1b)
* [Accessories](https://help.apple.com/macbookprothunderbolt3/late-2016/#/apde167c5d13)
* [Use an External Display](https://help.apple.com/macbookprothunderbolt3/late-2016/#/apd8cdd74f57)
* [Common Questions](https://help.apple.com/macbookprothunderbolt3/late-2016/#/apd89ed5b70e)

There's nothing in the documentation that hints at the inconvenience and cumbersomeness of these dongles/adapters. (Apple's docs use the term "adapter" instead of "dongle.") 

If you're trying to relate to your users, wouldn't you anticipate some of their questions and address these issues? In Ginny Redish's book *Letting Go of the Words*, she explains that documentation should be written as if you're having a conversation with your users. Redish explains:
 
> If you think of the web as conversation, you'll realize that much of your content is meant to answer the questions that people come with. you do not want an entire site to be in a section called frequently asked questions. You do want to think about what people come wanting to know and then about how to give them that information as concisely and clearly as possible. ([Letting Go of the Words](https://idratherbewriting.com/2011/04/08/book-review-letting-go-of-the-words-by-ginny-redish/))

If the Apple's tech writers were imagining what questions users might ask, surely they would have included some sections with the following titles:

* Why do I need so many adapters?
* Why is Apple insisting on USB-C for every port even when this technology is still emerging in the market?
* Why can't I plug my new iPhone into my new Macbook Pro?
* Why did Apple remove the SD Card slot?
* Why is the "antiquated" headphone jack now included in the new Macbook Pro?

You get the point: Include the questions your users have. By avoiding this issue, Apple's docs kind of seem like a more technical version of their marketing material. 

## Best practices 

I think that as a best practice, tech writers should follow Redish's advice to imagine a conversation with users. If users have specific questions, we should make these questions and issues explicit. 

Implementing this advice can be difficult because tech writers are usually overruled/bullied by product managers who don't want to say anything negative or controversial about their product ... ever. 

However, since documentation isn't in the same space as marketing content, we tend to have more flexibility to sneak things in (especially if SMEs are slow to review the content). We can be more transparent and honest, because hey, who reads the docs anyway? :)

## My own experience

It's easy to criticize Apple, but what would I do in a similar situations? What have I done in the past? 

I don't have any experience where my products caused such widespread controversy and uproar. But there are times when I sort of apologize here and there. In some image asset guidelines I recently wrote for an upcoming Fire TV UI refresh, I had trouble getting legal approval to use image assets from popular Amazon apps (because they're 3rd-party image assets). As a result, we had to use images from video shows produced by Amazon, even though most apps wouldn't be video shows. As a result, I added this note in my docs:

> (Note that Bosche, a video series rather than an app, is used here because we are restricted to showing Amazon-produced assets only, and Amazon’s main assets are video rather than individual apps. To see an actual example of an app video, check out the video from Crossy Road.) ([Image Asset Guidelines for Appstore Submission - "Trailer" tab](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/asset-guidelines-for-app-submission#firetvassets))

I felt I needed to at least acknowledge why some of the image assets weren't app-focused. 

I also wanted to include a deadline for asset submission in the docs (a question users would no doubt wonder), but I had to keep it general to "later this year." Additionally, a lot of users probably wanted to know exactly *what* the new Fire TV UI will look like. But alas, this information is not something I could share in the documentation prior to release, especially because it still might be changing. (That's more understandable, though, because almost no company shares detailed info prior to release.)

In another section of my docs, one of the configuration steps for an app was really confusing. I decided to stick this note before the long explanation of how to write the query syntax:

> Although the query syntax in this section might seem a little complex, remember that Fire App Builder lets you use any feed structure you want, without limiting you to a specific order or specification (such as Media RSS). With this flexibility, it’s unavoidable that you’ll need to use more advanced query syntax to target the elements in your feed. ([Set Up the Contents Recipe](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/fire-app-builder-set-up-recipes-contents))

At other companies, I've had situations where I disagreed with the way a task was implemented, but it wasn't so bad that I felt compelled to apologize for it in the docs. If this were the case, though, you could always call out that this is an early version of the product and that it will keep iterating/improving with each new release.

## Opportunities to be real

As a tech writer, sometimes there are issues that are controversial or sensitive, and product managers and other execs may not want you to acknowledge or address the issues in the documentation. Only when issues become so controversial that the company's non-response becomes an issue in itself does the company finally speak up. In the case of the dongles, Apple finally had to release a statement:

> “We recognize that many users, especially pros, rely on legacy connectors to get work done today and they face a transition. We want to help them move to the latest technology and peripherals, as well as accelerate the growth of this new ecosystem. Through the end of the year, we are reducing prices on all USB-C and Thunderbolt 3 peripherals we sell, as well as the prices on Apple’s USB-C adapters and cables.” ([Apple is now officially a dongle company that happens to make smartphones and computers](https://www.extremetech.com/computing/238878-apple-now-officially-dongle-company-happens-make-smartphones-computers))

It would be good to include a version of this note in Apple's docs.

## Emotional tones versus straightforward information

Apple's docs missed a point to show their humanity with this issue, but you don't have to apologize in an emotional way in documentation. For example, you don't have to say, 

> I'm sorry we took away all the ports and made you spend more than $100 in dongles that make your new lightweight, super thin Macbook Pro look somewhat laughable. But try to look at it from a future-facing perspective. You'll likely have your Macbook for a few years, and soon USB-C will be everywhere. We made the optical drive extinct, and see how that turned out?

I'm *not* saying you need an approach like that, because this sort of tone definitely breaks what is the usual professional voice that companies adopt.

What I'm saying is that Redish's approach of phrasing anticipated objections as questions and then providing answers is the way to go. You can do that without falling into jokey humor or a light-hearted tone.

I also think that technical writers can and should play stronger roles about what should or should not be communicated in documentation. In writing this, I realize that I've been too much of a "yes man" in IT groups. In more scenarios, I should push back against product managers who say "don't mention this" or "we don't want to say that." 

Although the product manager might have ultimate authority about what gets communicated about a product, we can certainly make our case more vehemently, or simply make it without consulting the product manager in the first place (following the age-old principle that it's better to ask for forgiveness than to ask permission). 

All too often I assume the product manager has the final say about everything. I'm not really sure that's the case. The product manager wouldn't normally override an engineer's decision about code. In the same way, we should probably have more spine about the communication in the documentation domain.
