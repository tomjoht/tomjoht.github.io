---
title:  "Using AI tools to build, stage, and publish API reference docs"
permalink: learnapidoc/ai-tools-build-publish-api-docs.html
keywords:
course: "Documenting REST APIs"
weight: 14.2
sidebar: docapis
section: docapisai
path1: learnapidoc/ai.html
last-modified: 2023-07-19
---

{% include coffeeshopbook.html %}

At the core of API documentation work is building, staging, and publishing of API reference content. Whether it's [Javadoc](https://idratherbewriting.com/learnapidoc/nativelibraryapis_javadoc_tags.html), [Doxygen](https://idratherbewriting.com/learnapidoc/nativelibraryapis_doxygen.html), [OpenAPI](https://idratherbewriting.com/learnapidoc/pubapis_openapi_intro.html), or other reference output, almost every API has reference documentation that you build, stage, and publish with each release. 

Given the centrality of documentation building and publishing tasks, AI tools can be a great help when it comes to configuring scripts to perform these tasks. This is one AI area few people are focusing on, but scripts are an easy way to incorporate AI to improve your productivity and reduce the tediousness of document production.

In this article, I'll focus on shell scripts (`.sh`) because they're commonly used in Linux environments when working with files. For docs-as-code systems, shell scripts can do a lot of tasks. You run a shell script from your terminal like this: `./some-script.sh`. The script then performs a process on one or more files. However, you could just as easily create other types of scripts, such as Python scripts.

* TOC
{:toc}

## Publishing example

One product I support includes Java API documentation, including a Javadoc for the reference docs. To build the Javadoc, I roughly do the following:

* Get a link to the release build from the build management system
* Configure a build command using the release build link
* Switch into a special branch for the build
* Build the reference output for multiple API variants
* Copy the generated outputs from the build output directory to the documentation directory
* Insert a note into the pre-release builds
* Push the docs to the staging server
* Set up a changelist to review with engineers

Doing this all manually required us to follow a series of steps that took about 10-15 minutes, tediously following an internal guide through the process. Because the reference documentation is generated from comments in the source files, if we spotted something we wanted to fix in the comments, we would need to rebuild the Javadoc output and re-transfer everything to the staging server again. 

After doing this a few times per release (for example, trying to get code for links correct, figuring out some Markdown formatting, or adjusting the language in a comment), it became extremely tedious. 

One day I created two shell scripts that automated the entire process down to about a minute, with almost no cognitive load. You just ran the scripts and waited for them to process. All of the complexity was in the scripts. We fed the shell script commands a couple of parameters and then watched them work, speeding through each step of the process with breakneck speed. It almost felt like cheating.

## Building a shell script

For a developer familiar with shell scripting, creating a script to automate a build process probably isn't too hard. It depends on the complexity of the build process. But I'm a shell scripting novice, and I didn't feel like devoting a summer's worth of time learning shell scripting how-to's. (Actually, I did read through a 20-page shell scripting guide, but it didn't get me any closer to the code I needed.)

Using AI tools, I stepped my way through each piece of logic that I needed until I completed the script in about two days. Due to confidentiality of data and processes, I generalized my AI queries using pseudo code like this:

```
Build a shell script that does the following:

- Run the command foo. The output of the foo command is bar. 
- From the bar response, capture the part after path acme. 
- Store the part after the path acme into a variable called barResponse.
- Pass the barResponse variable as a parameter into the beta command.
- The output is a doc called mydocs.zip. Unzip the mydocs.zip and copy it over
to another directory here ...
- On each page of the output, insert a note after the <body> element that says ...
```

And so on. You get the point. AI would return code that worked (most of the time) and also taught me about shell scripting along the way. 

Writing pseudo code is fairly easy. If the AI tool starts recommending methods not available in your environment (e.g., configuring Flask or Ruby plugins), steer it back in the direction of shell scripts or other technology supported in your environment. The key is to write specific instructions as pseudo code.

Granted, you will need *some* technical familiarity with code to make your through this process. But if you're a technical writer, you probably have this technical acumen already. And if not, you can learn.

{% include ads.html %}

## Reference content is high value--tech writers should be involved

Due to the complexity of building and configuring files in reference generation processes, many technical writers actually delegate the reference docs to engineers. For example, tech writing teams might say they don't have bandwidth to build the reference output and will require engineering teams to do it instead. 

However, this puts the reference content in the engineer's domain, removing technical writers from the process. If technical writers don't participate in editing and crafting reference content for an API, they put themselves outside of the perhaps most valuable aspect of API documentation.

{% include random_ad4.html %}

Because reference content is high-value content, I prefer to get my hands dirty with field definitions, cross-references, identifying incomplete definitions, and so on. Here's a little-known secret about API technical writing: you don't have to be a developer to provide valuable input about language-specific API reference documentation, such as for Java or any other language. For the most part, a Java API provides various classes and methods that return data. The developers working with your API are primarily interested in the data that gets returned. Usually, the data in an API is poorly described. I rarely see developer questions about how to use the API's classes and methods; instead, developers ask for more details about the data. 

In fact, with the prevalence of AI tools to explain code, general knowledge about working with a programming language is less needed. What's essential is the clarity of information about what's specific to your API. What's specific is the data the API returns, not the constructs and mechanics of the programming language and usage.

If you want to be a key player with API documentation, you probably need to manage the building and publishing of the reference content. Maybe your company has a push-button system already in place. If so, great. Chances are, however, especially if you're working in a docs-as-code shop, there are probably custom processes all over the place, and scripts that manage it all. By creating your own shell scripts to automate part of the building and publishing of reference docs, you can stay involved as a key player with reference docs without losing bandwidth and energy in library building and publishing tasks.

{% include random_ad3.html %}

## Another script-building example

I was feeling pretty good about my first advanced shell script, so I started wondering what else I could do. I have another scenario that involves disambiguating between preview API documentation and current release documentation. I'd been generating two reference variants, but they were hard to distinguish in the developer portal. Could I write a script to identify specific pages in the preview (based on a diff of two table of contents), and then insert custom notes on those specific pages, and other notes for the release variant? 

Again, I started proceeding line by line with the logic. It didn't take more than two afternoons before I'd finished the script. This one helped disambiguate the various outputs and insert custom notes. Although I'm sure developers could have done this, they're usually too involved in writing code to focus on the documentation. (In my experience, it's rare for engineers to sink time and energy into anything related to documentation, even if it involves coding build logic.)

{% include random_ad2.html %}

## Blog example

Outside of building reference docs, you can use scripts for other tasks. A few months ago I posted a script about creating a new post on my site that populated the post with the needed frontmatter, tags, and also made a call to Rebrandly to create a shortlink for a post. See [A script that creates a new Jekyll post and populates it with YAML frontmatter, and also makes a curl call to add a Rebrandly shortlink](/blog/create-script-to-auto-create-new-post-jekyll), or view the code here: [`post.sh`](https://github.com/tomjoht/tomjoht.github.io/blob/main/post.sh).

I also created some scripts to customize the PDF build process (the output of which I publish [here](/learnapidoc/download.html)). I haven't explained much about that process, but the PDF build logic I've created for this site is pretty nifty. My PDF build command is a script here: [pdf_build_docapis_all.sh](https://github.com/tomjoht/tomjoht.github.io/blob/main/pdf_build_docapis_all.sh). This script references a page [`prince-list-all.txt`](https://github.com/tomjoht/tomjoht.github.io/blob/main/prince-list-all.txt) that has its own code to gather up all the pages for Prince XML (the PDF generation tool). After the build, another script, [`pdf_upload_docapis.sh`](https://github.com/tomjoht/tomjoht.github.io/blob/main/pdf_upload_docapis.sh), uploads the content into Wasabi, the server where I host binary assets like PDFs and images.

I also have a simple upload script for images as well, [`upload.sh`](https://github.com/tomjoht/tomjoht.github.io/blob/main/upload.sh), that lets me upload images to Wasabi from the command line and returns the code for easy copy/pasting into a site. Given how common it is to upload images, this small script has saved me lots of time over the past few years.

{% include image_ad_right.html %}

## Other applications for scripting 

Depending on your systems for technical authoring and publishing, you could create scripts for many aspects of authoring and publishing, especially as you combine the shell scripts with other command line interfaces available to you. Here are a few example applications, including the ones I've already mentioned:

* Build reference docs and copy them into your documentation system.
* Create new pages and populate them with the needed frontmatter and sections based on the doc type.
* Upload images to your web server, with responses that include copy-and-paste ready HTML code with figure references and captions.
* Generate and publish PDF versions of your content.
* Configure release processes that kick off builds based on specific events, such as a bug that gets closed or a code release.
* Identify the last time a page was edited, correlated with analytics that list the most viewed pages of your site.
* Trigger actions that kick off when people create changelists for documentation edits, such as notification workflows for specific groups or product owners of those groups.
* Create pre-staging checks (linters) on existing content, such as style checking, Markdown formatting, link validation, alt tags on images, and more.
* Convert file formats using tools such as Pandoc to automate the conversion.
* Version content after a release by archiving content and updating file names and directories.
* Perform post-publishing actions, such as updating a search index, closing bugs, or pinging groups with links to the new docs.
* Send build notifications to specific groups about the status of docs during build, staging, and publishing to keep groups informed.
* Script a process that generate bugs for each step of a release.

Look for opportunities to automate processes with scripts.

## The downsides of using AI for help with scripting

The picture I've painted so far is a positive one. However, there are a few downsides to using AI to help you with scripting. First is what happens when an engineer who actually knows shell scripting reviews your code and makes helpful, high-level suggestions to improve the logic, without realizing that you have only a superficial understanding of how it all works. This actually happened to me.

When this happens, do you openly admit that you used AI to come up with the code? Do you feed the suggestions to the AI and ask it to incorporate the suggested tweaks? Do you shrug your shoulders and just say thanks? In my case, I again interfaced with AI to incorporate the suggested script enhancements.

Consider another scenario where your AI reliance becomes extreme and constant. Suppose you've started writing all kinds of scripts and apps that you have no business creating because you don't understand how any of the code works, only that it does. At some point, you might end up so reliant on AI for code that you pass even the simplest of requests to AI, trying out its responses and changing the queries when the code doesn't work. You shortcut attempts to actually learn the syntax you're using and instead just ask AI tools to help you with every little tweak to the code. 

Well, if you'll doing a lot of shell scripting, it would be a good idea to actually learn how the code works. Fortunately, the AI code gives you a great starting point to learn, especially because most AI tools explain the code that they provide. This brings me to another point that I'll make in later post: Using AI tools to *learn* code.

But chances are, right now you're in a hurry, and you just need this *one script* for this *one task*, then you don't need to work with that scripting language for anything else ... for now. Is it really worth spending a week or two to learn it, or can you get by with partial understanding? Fortunately, you have the choice to take either path. AI has given you more options.

## Apathy from lack of understanding/expertise

There's also a sense of hollowness that follows when you let AI write the code, a sense of apathy that follows machine reliance. When we lose our expertise and self-sufficiency, we become less interested in the tasks we're performing. We see ourselves as an intermediary between the code and the machine, a kind of middle-person who articulates instructions and relays the responses, but who doesn't create the information or code anymore. This apathy can lead to boredom in our role. And with boredom, loss of interest and care.

However, again, if you see this happening, I would recommend studying the code that AI generates and using it as a springboard for your own learning and study.

## Conclusion 

AI tools empower technical writers with scripting capabilities, whether it be shell scripts, Python scripts, CLIs available at your work, or more. In particular, shell scripting can help you automate parts of your build process that are tedious, making it easier to push docs through advanced build and publish processes. In a world of doc ops, where continuous builds and publishing are becoming the norm, tech writers need as much automation as possible with these processes.