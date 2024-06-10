---
title: "Thoughts on Docs as code being a broken promise"
permalink: /blog/thoughts-on-docs-as-code-promise
date: 2024-05-21
categories:
- api-doc
- tools
keywords: 
rebrandly: https://idbwrtng.com/thoughts-on-docs-as-code-promise
description: "In response to Sarah Moir's post, 'Docs as code is a broken promise', I agree that Git's complexity can be a major hurdle for writers, especially when generating diffs for review. Simpler Git workflows and tools with visual interfaces for merging and diffs are essential for making the process smoother. Despite its challenges, I still prefer docs-as-code over proprietary tools because of its advantages, like using Markdown and generating diffs for review."
---

* TOC
{:toc}

Sarah Moir has an excellent post titled [Docs as code is a broken promise](https://thisisimportant.net/posts/docs-as-code-broken-promise/) in which she argues, in a nutshell, that docs-as-code systems might have more problems than benefits. Although I've been a proponent of docs-as-code for a long time, I'm familiar with most of the challenges that Sarah mentions in her post. And I agree that the difficulty of Git is a big hurdle.

Back when I was at Amazon, and we'd just [implemented a Jekyll docs-as-code system with our docs](/2017/11/21/switching-to-docs-as-code/), I quickly became aware that Git was the most complex part of the whole process. We had to develop strict Git branching workflows to make sure the process worked. During one reorg, our teams split and one team adopted a more complex Git workflow. They evolved their workflow because of a situation in which a writer merged prematurely unreleased content into production, causing all kinds of mayhem. After that, they ratcheted up the complexity level of their Git workflow to levels requiring a steep learning curve. I remember one new writer admitting that she was afraid to make a change for fear of making a mistake with the Git workflow. The workflow made you think twice about fixing a simple typo.

In contrast, I kept our group's Git workflow much simpler. I didn't want to do the whole rebase technique. We also had a smaller team with less release complexity. Plus, I have to admit, the complexities of advanced Git were more than I wanted to master. However, one day a new writer did manage to merge unreleased content into a production branch. I'd always assumed it was a rookie mistake, but when I dug into how it happened, I realized it was really confusing. No one merged a development branch directly into production &mdash; somehow a merge during a previous history of the branch had elements of a development branch in it already or something. 

I agree that Git is far too complex to be all that practical for a team of writers of varying technical levels to adopt. If you can lock Git down to a subset of commands and interactions only (such as by superimposing a framework overlay that enforces the available commands), that seems ideal. It would be far less flexible and powerful, but also more practical as a tool writers could adopt.

Another aspect of Git that was challenging to adopt at Amazon was capturing a snapshot between release branches exactly right so that reviewers could see a diff in the Review Board tool. I can't remember all the details, but it definitely wasn't easy. Even so, the diff was crucial in the review process.

While writers struggled with Git, engineering teams had more advanced and flexible Git workflows &mdash; and they never seemed to explicitly document what those workflows were. All the engineers seemed to understand Git intuitively. I routinely looked to find where they documented their Git workflows but could never find it.

When I joined Google, I was relieved to find that the tools team had built an interface layer on top of Git that simplified everything. I haven't had to use advanced Git commands for a few years except for pushing updates to my Jekyll blog. If someone pushes a change to a file that I'm actively editing in my workspace, I can either merge the changes with a visual merge editor, or I can simply take out the part of the file I changed, revert the file from my changelist, sync to head to get the latest updates to the file, and then manually put my changes back in. I admit that the latter is usually faster.

Additionally, with the tooling system in place, I don't have to perform Git commands to get a diff of my changes. The system just automatically gets my changes (most of the time). Reviewers won't review content without seeing a diff of the changes. In a recent update, I made the mistake of creating a new file instead of moving the old one, which meant the new file didn't have a diff because it lacked history. The reviewer asked me to update the changelist with the diff instead. When I did, he promptly completed the review. 

Diffs are a huge time saver for reviewers; almost everyone expects to see a diff. Sure, if you move lines around, the diff isn't so clean. But most of the time, the diff presents a good sense of what's changed. I can't imagine going back to a system that wouldn't have diffs. Would people use track changes in Microsoft Word or something? I'd almost say that docs-as-code is worth it for the diff functionality alone.

{% include ads.html %}

I'm also fond of other aspects of docs as code, such as writing in Markdown (instead of XML), working directly in a text editor (Visual Studio Code), writing doc build scripts (especially easy with AI now), interacting with commands in the terminal, and more. 

I don't want to build my own themes and maintain the site's design, though. This expands the complexity of the tech writer's responsibility beyond what any writer should have to focus on. If you take upon yourself the burden of also being a UX developer, designer, as well as a content creator, your bandwidth will be cut in half and no one will even know that you're doing all the extra work &mdash; they'll think that the platform looks the way it does out of the box. Like, oh, is that site built with Hugo? Without realizing that Hugo is just a template engine and there's a whole bunch of website code that someone has to design.

When people ask me for docs-as-code advice, I usually recommend that they go the *buy* instead of *build* route. Larger teams with more resources to build tools and workflows can build their own platforms and workflows, but for the lone writer or small team of writers, it doesn't make much sense to try to build your own. Today there are plenty of docs-as-code commercial options for documentation. Overall, even with the challenges inherent in docs-as-code systems, I still prefer them over proprietary, closed source tools. Fortunately, I think some proprietary tools now build on top of Git and provide a simplified interaction model.

For more reading on the topic, see the following:

* [Git and Github (Trends series)](/trends/trends-to-follow-or-forget-git-and-github.html)
* [Version control systems (such as Git)](/learnapidoc/pubapis_version_control.html)
* [Docs-as-code tools](/learnapidoc/pubapis_docs_as_code.html)
* [Static site generators](/learnapidoc/pubapis_static_site_generators.html)
