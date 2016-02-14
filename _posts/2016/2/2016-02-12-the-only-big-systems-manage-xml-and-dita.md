---
title: Is the only way to plug into a documentation CCMS through DITA/XML?
categories:
- dita
- jekyll
keywords: 
summary: "If you want to manage your content in a system and take advantage of more robust documentation management, it seems like your content almost always needs to be in DITA or XML for the system to parse and process it. This will likely always push large teams toward DITA/XML."
published: false
---

After my post yesterday about choosing various [models for single-sourced content](http://idratherbewriting.com/2016/02/11/the-problem-with-single-source-publishing/), one person added the [following comment](http://idratherbewriting.com/2016/02/11/the-problem-with-single-source-publishing/#comment-2510062908):

>The beautiful thing about structured authoring with DITA is that you don't have to make that choice up front. If you're marking up your content correctly with @audience or other filtering attributes, applying a taxonomy, or both, then your source is ready for whatever tooling or delivery you choose to use....

This leads to some thoughts I've had about tools. If you want to scale your documentation with management in a more robust component content management platform (CCMS) or other system, you pretty much need to have your documentation in a structured format like DITA or some other XML format in order to work with the system. 

Almost all of the documentation platforms built to manage large amounts of technical documentation require a structured format. There are some exceptions, but I don't think any CCMS out there will manage Markdown content. 

At most, if all your content is in Markdown, you can convert it into HTML and manage it in a web CMS (or add a Markdown plugin in the CMS to do it for you). However, web content management systems (such as Drupal or WordPress) are typically made for publishing one-off web articles for websites and blogs, not for managing tech docs that have requirements involving multi-channel output, translation, cross-references, related links, content re-use, variables, and more.

A lot of people have told me that Jekyll looks like a neat tool, but they wonder whether it would scale to accommodate larger tech writing teams and documentation. Certainly tools like Github and Bitbucket allow you to collaborate and manage large amounts of files, as has been clearly demonstrated by many software developers using revision control to manage files. 

But I've often wanted to plug my documentation content into a system to get the following benefits:

* No broken links in the output
* Validity and error checking for formatting
* Surfacing of related content
* Logins and rights groups that control the content users can see
* Dynamically populated code samples based on properties in user profiles
* Metadata about where each topic or chunk is used int he project
* Better table of contents management
* Exclusion or inclusion of files in the output
* Automatic tagging
* Faceted filtering
* Robust search, and more.

The more I use Jekyll, the more I think that it doesn't scale. You need more robust, sophisticated systems (both content management systems and content delivery systems) to manage large amounts of technical documentation with complex re-use and other requirements. In order to plug into these systems, your content usually needs to be in DITA or XML.

<img src="{{ "/images/systemstoscale-01.svg" | prepend: site.baseurl }}" alt="Plugging content into robust systems" />

On the other hand, I frequently hear that most CMS implementations fail, and I balk at the idea that I would need to spend $100k per year for a system to manage and publish my web content. 

Any large system is going to impose a lot of constraints and rigidity about what you can and can't do with the content. The custom JavaScript wizardry you might be doing could easily be restricted as the system turns its gears to parse and process your content.

But maybe this is the price you pay to avoid broken links and formatting errors while also including rich metadata, faceted filtering, keyword search, and other features present in more robust tooling.
 