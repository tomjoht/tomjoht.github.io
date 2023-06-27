---
title: "Chapter PDFs for API doc course"
permalink: /blog/chapter-pdfs-for-api-doc-course
date: 2023-06-25
categories:
- api-doc-site-updates
keywords: 
rebrandly: https://idbwrtng.com/pdf-options-api-doc-course
description: "I made some updates to the PDF options for my API doc course. Previously, I had one massive PDF that was 900+ pages. I split that long PDF into chapter PDFs instead, making each chapter PDF about 50-75 pages in length. I also put the chapter PDFs into the <a href='https://www.buymeacoffee.com/learnapidoc/extras'>Buy Me a Coffee Shop</a> digital downloads feature and priced them at $3 each or $20 for all."
---

## Reasons for the change 

Why did I do this? First, no one reads a 900-page PDF, much less prints it. I knew this single long PDF wasn't ideal, but I didn't have the code logic in place to create smaller PDFs. My first task, then, was to update the code logic to build individual chapters. This pivot wasn't hard, but I'll omit the explanation here because otherwise this post will get into too many technical details. I'm planning a later tutorial on how I generate these PDFs, but basically, I'm using Prince XML. I also upgraded my Prince XML license to a commercial license so that I could sell the generated PDFs.

I also had to figure out a strategy for cross-references. I ran into the age-old strategy of how to handle cross-references to pages not included in the output. For example, many chapters link to pages in other chapters. If I only print one chapter, the links to other chapters end up with "p. 0" in the Prince output. I could suppress the page numbers, but then the links would result in broken references. DITA tries to solve the problem through reference tables, but I've never been a fan of separating links from their mention in the text. (Plus, I'm not using DITA.)

Instead, here's what I did. For any links pointing outside the chapter, I used an absolute URL. For links pointing within the chapter, I used a relative URL. Then I included a style that looks to see whether the link is absolute or relative; if absolute, an external icon appears after the link. If relative, Prince includes the page number as cross reference.

For the online experience, however, I didn't want the external icon to appear after links pointing to other chapters because there isn't the same chapter paradigm on the web. So for web links, the external link only appears on links that take people away from the site. (The styles differ for print versus web.)

My general principle is this: If the link takes you outside of your expected context, an external icon should appear. The link should always work, both in print and on the web.

As an added complexity, screenshots with links pointing to external URLs should not have an external icon. 

The CSS for this is a bit complex and involves `not` and `has` pseudo selectors, which ChatGPT helped me with.

## Why charge for PDF downloads?

Another question is why charge for PDF downloads? Two reasons. First, advertising on my site hasn't been as strong as the past. Second, most online endeavors fizzle without some monetary reward. By charging for the PDFs, I'll be more motivated to make sure the content is accurate and current. 

I used the Buy Me a Coffee platform because it seemed to work well for donations. Their platform allows you to offer digital downloads as well (not just buy-me-a-coffee donations).

I included a link to the chapter PDF download on each chapter page. I also included the download links in a [Downloads](/learnapidoc/download.html) button on my top navigation. 

When users purchase a PDF, the successful purchase reveals a hidden URL for the PDF. I didn't want to manually upload and download the digital assets on Buy Me a Coffee's site, which would have been tedious. Instead, I have the whole build and upload process scripted so that it's just a couple of terminal commands&mdash;one command to build all the individual chapter PDFs, and another command to upload them. I'm hosting the PDFs in my same Wasabi storage service, which is a fork of AWS and allows similar terminal commands for asset management. I love being able to script a process like this. It's literally two commands to generate 15 individual PDFs (plus a zip file) and then upload them online.

{% include ads.html %}

## Why PDF?

One final question: why provide PDF at all? First, PDF is greatly underrated as a deliverable. Most people prefer to output web pages only, without realizing that web content is hard to consume at length. I prefer to read printed matter much more than web content. If I want to read something more than a couple of pages, I'll print it out.

Also, the PDF offering is my implementation of the freemium course model. All the same content is online for free, but if you want a PDF format, that costs a little extra. You can read content on the web as much as you want to see if it's worth reading offline as a PDF. Also, users who pay for reading material are more likely to read it because they've invested in it.

I previously had an EPUB option as well, but producing that EPUB required extra configuration that I decided to pause for now. I'll pick that back up later. I wanted to first get PDF right and then expand to EPUB later. Trying to tackle both at the same time was too much. Also, PDF was about 80% more popular than EPUB anyway.

By the way, for more discussion of offline reading, see Kayce Basques' recent post [Software engineers want offline docs](https://technicalwriting.tools/posts/offline-docs/), which summarizes the Hacker News discussion of the thread [Zeal is an offline documentation browser for software developers (zealdocs.org)](https://news.ycombinator.com/item?id=36135955). By offline, the discussion focuses on content you can read like a web page but without a wifi connection. For me, I'm rarely offline. When I say offline, I usually mean off-computer or off-internet. My attention span is too fragmented to read anything online for more than a few minutes without being distracted by another link or site or task. When I'm offline, I can read in a less interrupted way.

