---
title: "Review of Andrew Etter's ebook on Modern Technical Writing"
categories:
- api-doc
- book-reviews
- podcasts
keywords:
description: "In Modern Technical Writing: An Introduction to Software Documentation, which is an e-book you can read on your Kindle, Andrew Etter argues for a model of technical writing that involves lightweight markup languages (like AsciiDoc and Markdown), static site generators (such as Sphinx), distributed version control systems (like Git or Bitbucket), constantly iterating/updating doc content on your website based on analytics, and more. Etter's book resonated with me because it articulates so many of the principles I've felt about how documentation should be."
date: 2016-07-26
tags:
- technical writing
- documentation
- static site generators
- Andrew Etter
- modern technical writing
- version control
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/modern-technical-writing-etter.mp3
podcast_file_size: 8.4 MB
podcast_duration: "10:24"
podcast_length: 8362762
bitlink: http://bit.ly/moderntechnicalwritingetter
---

{% include audio.html %}

## Background

Recently to try to get better sleep, I switched from reading my iPhone at night to a Kindle E-reader. It turns out I really like reading from the Kindle E-reader, so much that I actually bought two of them (the Paperwhite and the Voyager). Reading from the Kindle feels more offline, so I can get immersed more fully in the content, rather than flipping back and forth between email, Reddit, Twitter, or other sites.

While reading on my Kindle, I stumbled across a book called [Modern Technical Writing: An Introduction to Software Documentation](https://www.amazon.com/Modern-Technical-Writing-Introduction-Documentation-ebook/dp/B01A2QL9SS), by Andrew Etter, published in 2016. It's is actually a short book (10,000 words), and you can read it about a half hour.

<figure style="float: right; padding: 10px;"><a href="https://www.amazon.com/Modern-Technical-Writing-Introduction-Documentation-ebook/dp/B01A2QL9SS"><img  src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/modern-technical-writing-by-andrew-etter.png" | prepend: site.baseurl }}" alt="Modern Technical Writing, by Andrew Etter" /></a><figcaption>Modern Technical Writing, by Andrew Etter</figcaption></figure>



Who is [Andrew Etter](https://www.linkedin.com/in/andrew-etter-0a013349)? He provides almost no biographical details about himself in the book, but based on my Linkedin search, he seems to be a lead writer at Palantir, which is a company in the Bay area that I actually toured when I moved out here.

Andrew's book should be required reading for every technical writer, both experienced and novice. I've never felt more at home reading a tech comm book than I have with *Modern Technical Writing*.

Admittedly the book is short, but this is good. It means he doesn't pad it with extra fluff to achieve a book-length word count. He jumps straight to the point and writes with such an easy-to-follow, conversational voice that I couldn't help but just like the guy.

What does it mean to do "modern" technical writing? From a technical angle, Etter argues that one should embrace lightweight markup languages, use static site generators, and store content in version control repositories with engineering code. Etter also argues that writers should spend most of their time researching and testing content, investigating analytics, and iterating on the doc content on their websites.

## Contributors and lightweight markup languages

With regards to documentation formats, Etter writes:

> ... one of the tenets of modern technical writing is that everyone is a contributor. Storing content directly in XML-based languages like XHTML, DocBook, and DITA dramatically reduces people's ability to contribute.... Rather than being mere deterrents (like writing in XML), specialized applications actually *prevent* people from contributing. Amazing text editors are available on every operating system, mostly for free, and writers can use whichever they like. ... For documentation, lightweight markup is free and superior in every meaningful way.

Etter compares a simple passage in written in AsciiDoc with the same passage in Docbook. The Docbook passage is about about 7 times longer than the AsciiDoc passage and contains so many nested tags it's nearly unreadable.

Rather than embrace the lightweight formats for simplicity, Etter says technical writers need to encourage contributions from those who have deep, helpful product knowledge. He says,

> The reality of the profession is that even a large team of writers cannot possibly know everything worth knowing about an application, and most companies do not have a large technical writing team. The open-source software movement, mod scene in PC games, and birth of a million obscure wikis have proven that people will happily share their expertise and passion if an easy, hospitable way of doing so exists.

## Static site generators

Etter also advocates using static site generators for documentation platforms, especially Sphinx because it has built-in search and sidebar navigation. Etter devotes a good part of the book to static site generators, explaining:

> I have perhaps an irrational bias towards static websites. I love them. I love their speed, simplicity, portability, and security. You can host static websites practically anywhere.... They have no server-side application dependencies, no databases, and nothing to install, so migrating the entire site is as easy as moving a directory.

## Websites instead of PDF

Etter also discourages spending time generating PDFs. With PDFs, users inevitably save the PDF files to their computers, and then rely on them even when the PDFs are out of date. In contrast, by publishing to a website, you can continually iterate on your content and make updates to correct misinformation or add missed content. Etter says,

> I mentioned earlier that you should build and host a website, not distribute PDFs, but it bears repeating. Even the best documentation, like software, eventually goes out of date. PDFs get downloaded onto hard drives and then sit there like day-old bagels, growing more and more stale until they're actively harmful. You can never update them. ... The whole situation gives me the chills. Hosting your content on a website gives you the power to fix inaccuracies almost instantly *and* keep your content in sync with the latest software releases.

Etter perfectly captures all the complaints I've voiced about PDFs in so many posts. Reading this, I felt like cheering and celebrating inside. His message is clear: *Modern* technical writers do not spend time writing and publishing lengthy PDFs, because people prefer to go online for more up-to-date information.

I should note that, as the book's subtitle indicates ("An Introduction to Software Documentation"), Etter is focusing on the software industry, which is an easier use case for dismissing PDF.

## Version control systems

It should come as no surprise that along with using lightweight markup languages like AsciiDoc and Markdown, static site generators, and building websites instead of PDFs, Etter also recommends using distributed version control systems, such as Git or Bitbucket, to store documentation. Etter writes,

<blockquote>If you have the opportunity to store your documentation in the same repository as its corresponding product source code, strongly consider doing so. The approach has some real appeal: <ul><li>Documentation and code branches stay in sync.</li><li>Developers are more likely to contribute if they don't have to clone a separate repository.</li></ul></blockquote>

Etter compares Git with Bitbucket, as well as interacting with these repositories through GUI clients and the command line. Etter also says that if it makes sense, you should also store your doc content in the same repository as the code, since it reduces documentation drift and encourages contribution.

## How to spend your time

Beyond a discussion of tools and workflows, Etter offers some advice for writing good content. He says,

> ... producing content that people will read and find useful is, like, *really hard.*

Instead of writing all day, Etter says technical writers should spend 90% of their day learning (through  testing and research), and only 10% writing. You write only after you have a good understanding of how the system works.

In a section called "Don't Write," Etter explains:

> Technical writers, first and foremost, are testers and researchers. Your job is to know what people want to achieve and precisely how to achieve it. Communicating that knowledge is the last step of the process and really shouldn't comprise more than 10% of your time.

Figuring out what to write does require a lot of time and effort. But it's not so much figuring out *how* something works as much as determining *what* information is relevant to users. In a sea of possible product information, what do users actually need or want to know?

## Grinding out knowledge

Finally, Etter says,

> Technical writers need to be grinders, willing to slowly but surely chip away at the block of ignorance until a beautiful sculpture emerges -- or something like that, anyway.

Little by little, one procedural step at a time, we chip away at ignorance and build a body of useful documentation that users find helpful.

## Conclusion

In a concise 10,000 word ebook, Etter articulates a unified approach that provides an alternative to the XML + Component Content Management System approach that is so commonly advanced in tech comm circles. To summarize, this approach includes the following:

* Lightweight markup languages
* Static site generators
* Integration with engineering code
* Contributions from experts
* Storage in distributed version control systems
* Testing and researching more than writing
* Websites instead of PDFs
* Constant iteration and updating of content

We have far too many books espousing the benefits of XML and championing component content management systems as the model for contemporary tech comm solutions. These models seem outdated and part of another era, one that will eventually be replaced by this lightweight, more flexible, developer-centric approach towards documentation.

For now this modern model seem more applicable to small teams and companies, particularly with developer documentation, but who's to say that the model won't grow to fit large-scale teams and companies as well.

## Where to get the book

You can read [Modern Technical Writing here on Kindle](https://www.amazon.com/Modern-Technical-Writing-Introduction-Documentation-ebook/dp/B01A2QL9SS). If you have a [Kindle Unlimited subscription](https://www.amazon.com/gp/kindle/ku/sign-up?ie=UTF8&*Version*=1&*entries*=0), it's free. (If not, it's $3.99.)

By the way, if you're thinking of buying a Kindle E-Reader, I recommend the [Kindle Paperwhite](https://www.amazon.com/Kindle-Paperwhite-Ereader/dp/B00AWH595M)).

If you don't have a Kindle, there are a lot of Kindle reading apps you can use on your smartphone or even the cloud.
