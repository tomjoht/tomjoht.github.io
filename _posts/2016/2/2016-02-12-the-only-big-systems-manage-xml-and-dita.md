---
title: Is the only way to plug into a documentation CCMS through DITA/XML?
categories:
- dita
- jekyll
keywords: 
description: "If you want to manage your content in a system and take advantage of more robust documentation management, it seems like your content needs to be in DITA or XML for the system to parse and process it. Almost no component content management systems handle anything like Markdown or other unstructured content. This requirement will likely always push large teams toward DITA/XML."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/ditaxmlccms.png
---

After my post the other day about choosing various [models for single-sourced content](https://idratherbewriting.com/2016/02/11/the-problem-with-single-source-publishing/), one person added the [following comment](https://idratherbewriting.com/2016/02/11/the-problem-with-single-source-publishing/#comment-2510062908):

>The beautiful thing about structured authoring with DITA is that you don't have to make that choice up front. If you're marking up your content correctly with @audience or other filtering attributes, applying a taxonomy, or both, then your source is ready for whatever tooling or delivery you choose to use....

This encouraged me to publish some realizations I've had about tools for some time. If you want to scale your documentation management in a more robust component content management platform (CCMS) or other system, you pretty much need to have your documentation in a structured format like DITA, Docbook, or some other XML flavor in order to work with the system. 

Almost all of the documentation platforms built to manage large amounts of technical documentation require a structured format. There are some exceptions, but I don't think any CCMS out there will manage Markdown content. 

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/systemstoscale-01.svg" | prepend: site.baseurl }}" alt="Plugging content into robust systems" />

At most, if all your content is in Markdown, you can convert it into HTML and manage it in a web CMS (or add a Markdown plugin in the CMS to do it for you). However, web content management systems (such as Drupal or WordPress) are typically made for publishing one-off web articles for websites and blogs, not for managing tech docs that have requirements involving multi-channel output, translation, cross-references, related links, content re-use, variables, and more.

A lot of people have told me that Jekyll looks like a neat tool, but they wonder whether it would scale to accommodate larger tech writing teams and documentation. Certainly tools like Github and Bitbucket allow you to collaborate and manage large amounts of files, as has been clearly demonstrated by many software developers using revision control to manage files. 

With Github, you can see updates others make, commit versions, branch the content, revert to previous versions, manage pull requests, fork repos, and more. 

What you can't do, however, is manage tech docs in ways that let you do the following:

* Check for broken links in the output
* Check for formatting errors
* Surface related content
* Include metadata about where each topic or chunk is used in the project
* Manage a table of contents in an easy interface
* Automate tags and categories in a one-click way
* Create logins and access groups that control the content users can see
* Dynamically populate code samples based on properties in user profiles
* Configure faceted filtering
* Integrate a robust search natively, and more.

The more I use Jekyll, the more I think that it doesn't scale. You need more robust, sophisticated systems (both content management systems and content delivery systems) to manage and publish large amounts of technical documentation with complex re-use and other requirements. 

Don't get me wrong. You can do a heck of a lot with a file-based approach and a good revision control tool like Github. You can probably do 80% of the core of what you need to do.

But whereas DITA allows you to start out with a file-based approach and quickly scale up to more advanced platforms and tooling (as the commenter pointed out), it doesn't seem to be the case with static site generators like Jekyll where your source format is Markdown and HTML. The only way you scale up is by writing custom plugins and code to accomplish some of these similar features.

On the other hand, while it seems that a CCMS or CMS is inevitable to scale, I frequently hear that most CMS implementations fail, and I balk at the idea that I would need to spend $100k per year for a system to manage and publish my web content. 

Any large system is going to impose a lot of constraints and rigidity about what you can and can't do with the content. The custom JavaScript wizardry you might be doing could easily be restricted as the system turns its gears to parse and process your content.

Maybe this is the price you pay to avoid broken links and formatting errors while also including rich metadata, faceted filtering, keyword search, and other features present in more robust tooling. If you want to be free of "the system" and write your own code, you have to also accept the risks and vulnerabilities that come along with that approach.
 