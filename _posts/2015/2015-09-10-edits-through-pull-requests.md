---
title: Editing workflows and reviews through Github's pull requests
categories:
- api-doc
keywords:
description: "Pull requests are requests to merge edits from a branch back into the master. This workflow facilitates review of technical content on Github, but implementing it has some challenges. Namely, the reviewer would need to be familiar with code syntax, locations, and branching."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/pullrequeststhumb.png
---

## Pull request tutorial
The other day I was exploring Github's pull request workflow with more detail. I created a [tutorial for using pull requests here](https://idratherbewriting.com/learnapidoc/pubapis_github_pull_requests.html).

<a href="https://idratherbewriting.com/learnapidoc/pubapis_github_pull_requests"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/github_compare_to.png" alt="Pull request tutorial" /></a>

## How pull requests work
Here's the basic idea of a pull request. Someone wants to make a change to a file in your Github project. Rather than directly making the edit to the "master," the person creates a separate branch from the master and makes the change. Then the person creates a request (a <i>pull request</i>) to merge the branch back into the master.

The project owner who receives the pull request looks over the proposed changes in the branch, perhaps makes some alterations, and then merges the branch into the master. Once the branch has been merged into the master, the branch can be deleted. For more detail on how pull requests work, see [Using pull requests](https://help.github.com/articles/using-pull-requests/). There are even tools like [Poetica](https://poetica.com/) built around this pull request workflow.

I'm eager to try out this pull request workflow for edits to my help material. During the last review, my reviewer sent me a Microsoft Word document listing about 75 changes. In the Word document, the reviewer had three columns &mdash; one column listing the topic title, the second column listing the section title on the page, and the third column describing the edit.

Finding the actual text in my project to make the edit was tedious. It seems like the pull request method would make things easier, since the person could either make the proposed change directly in a branch, or at least add a comment there.



## Challenges with the pull request method
I think the pull request method is brilliant, but I do see a few challenges:

* Some of my content is re-used from includes or data files. For example, when I create a list of definitions for options on a page, I store the options in a data file and then pull in the definitions from the file. This lets me re-use the definitions in other parts of the project and potentially in UI help. However, someone making edits on the project will just see something like this: `{% raw %}{{site.data.definitions.myword}}{% endraw %}`. They would have to know where to look to find the material. It's the same with includes. If I'm reusing a chunk of material, the person will just see this: `{% raw %}{% include thisfile.md %}{% endraw %}`. They would have to know where the includes are stored to find that content.
* The reviewer would need to know the syntax for comments. In my project, comments would look like this: `{% raw %}{% comment %} Here's the comment... {% endcomment %}{% endraw %}`. Again, this is probably not difficult for someone to figure out, but it might hamper their feedback.
* The reviewer would need to understand how to find the actual topic in the project. The files in the repo are listed alphabetically, but in the output they're organized into different sections. The person would need to look at the URL and find the file name in the project. (Or I would need to add an "Edit me" link on the page that would take them to the corresponding file in the repo, which is probably much easier.)
* The reviewer would need to understand branches and pull requests, and I would need to diligently address the pull requests so that I don't end up trying to merge branches back into a master that has already been reworked.

My guess is that for regular reviewers, they can learn all of this. But for casual reviewers, this may be asking too much. On the other hand, casual reviewers can easily send a brief note or edit via email.
