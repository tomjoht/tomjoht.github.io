---
title: "Git and GitHub (Trends to follow or forget)"
permalink: /trends/trends-to-follow-or-forget-git-and-github.html
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/trendsapi-documentation
series: "Trends to follow or forget"
jtype: notes_fizzled_trends
description: "This post is <a href='/trends/trends-to-follow-or-forget-intro.html'>part of a series</a> that explores tech comm trends that I've either followed or forgotten, and why. The overall goal is to better understand the reasons that drive trend adoption or abandonment in my personal career. This post focuses on Git and GitHub."
---

## What is Git and GitHub?

[Git](https://git-scm.com/) is version control for managing content, mostly code. However, you can also use Git to manage documentation content when that content is stored as plain text files, such as Markdown, HTML, or XML files. Git allows distributed teams to work on the same central source by checking content out, working in branches, and merging those branches back into the source. Before version control systems like Git, tech writers often used checkin/checkout systems built into SharePoint, or CMSs that would lock files that were in use, or had to resort to other more manual systems for collaborating on content.

[GitHub](https://github.com) is a collaborative platform for managing Git projects, often used for open-source projects on the web. When teams put their documentation on GitHub, the code usually includes the authoring framework (e.g., [Jekyll](https://jekyllrb.com), [Hugo](https://gohugo.io/)) as well, allowing others to see how the whole solution is put together, the code powering the site, the source format for the content, and more. Seeing this level of detail can be helpful for others building code, especially if the code is open-source and others can fork it. This openness and source transparency allows for social coding.

For example, back in 2016 I created a [Jekyll documentation theme](https://idratherbewriting.com/documentation-theme-jekyll/) and [put it on GitHub](https://github.com/tomjoht/documentation-theme-jekyll). As of this writing, the theme has been forked 1,022 times, and many have used it for their own documentation.

Additionally, when your content is on GitHub, contributors can create pull requests and contribute to the existing content. For distributed, online teams working on open-source projects, GitHub provides an ideal platform for managing all aspects of their code, not just version control but also automated checks, validation, workflows, and more.

{% include ads.html %}

For more information on Git and GitHub, see my post [The genius of Github and how it can transform tech comm](/2015/02/18/the-genius-of-github/). See also this Cherryleaf podcast: [GitHub for Technical Writing](https://cherryleaf.podbean.com/e/122-github-for-technical-writing/). And see these topics from my API course:

* [Version control systems (e.g., Git)](/learnapidoc/pubapis_version_control.html)
* [Manage content in a GitHub wik](/learnapidoc/pubapis_github_wikis.html)i
* [Pull request workflows through GitHub](/learnapidoc/pubapis_github_pull_requests.html)

## Why I adopted GitHub

If you have docs-as-code tooling, managing that content using Git is a natural fit. And if you have an open-source project on the web, then GitHub is the perfect setup. But even without GitHub, many companies have their own internal Git management hubs (similar to GitHub but probably not as user-friendly).

Git works well for managing documentation projects. If you set up a defined workflow that all team members follow, everyone can contribute and make changes to the same content repository. Additionally, the more familiar you become with Git, the easier it is to work with Git projects from developers. This is part of the rationale behind adopting a docs-as-code solution &mdash; it matches engineering workflows, so whenever you need to work with developer code, the workflows will likely be familiar to you.

Understanding Git workflows is especially important if you’re working in API documentation. Chances are, API reference docs will be generated from annotations in the source code. If you want to make changes, you’ll need to make them in the source code annotations. This means you’ll need to access the code repositories, understand the workflows for making changes, review the changelists with the developer teams, potentially manage merge conflicts, and push the changes through. If you follow highly similar workflows with documentation, the developer workflow will feel natural.

Likewise, developers who want to contribute to documentation will find the workflow natural as well. There won’t be a disconnect of tools and workflows between writers and developers (as would be the case, for example, if tech writers used [DITA](/trends/trends-to-follow-or-forget-dita.html) in a CCMS). And when both groups operate within the same tools and paradigms, it’s much easier to collaborate on content. Given how complicated developer documentation can be, writers often need this collaboration and review.

## Why I didn’t abandon Git and GitHub

I never abandoned Git or GitHub, but I didn’t always use them to the same degree. At one point, I added an “Edit this page” button on our docs and invited the community to make contributions. Clicking "Edit this page" would prompt users to fork the repository to make their suggested changes, which they could then submit as a pull request back to the origin. This workflow would have been fine, except that getting the docs onto GitHub was challenging.

Here’s the problem. Unless your docs are open source, chances are you'll be working on documentation in a non-public way prior to release. Most companies don’t want users to know what products are coming until they’re ready to release them. This means you need to keep your upcoming documentation internal until release day. As such, you need an internal Git project and infrastructure as well as an external one. The external Git repo then becomes more of an output than an origin source.

Theoretically, you could add an additional remote to your repository and push to that remote. However, at one company we ran into additional challenges because the internal Git repository included certain config files, required by security, that weren’t allowed to be pushed to the remote GitHub repository. It was difficult to keep those config files out of the remote. Every time they found their way into the remote, it triggered security alerts on our repo.

Additionally, if we did push content to the remote, the files would contain all the history of edits that took place before the content was approved and published. This might contain a lot of internal discussions, including references to internal bugs, that we didn't want to make public.

In short, you have to implement a lot of special workflows to push internal source content into GitHub, and even though some companies do this with docs, it’s often more of an output (similar to PDF and HTML outputs) than an origin source, which runs counter to the idea of storing the source on GitHub. And what do you get for your troubles to get source content on GitHub? Occasionally, someone might fix a broken link for you. In the end, pushing docs to GitHub wasn’t worth it in this scenario. Had I been working on an open-source project on the web (rather than corporate docs for a commercial product), the experience might have been much different. (We still used the internal Git infrastructure, though.)

Another challenge with Git was keeping the workflows simple. While I was at Amazon, we had a couple of different Git workflows without our authoring groups. I tried to keep our workflow simple, but the other group had a more sophisticated workflow, in part due to previous Git catastrophes in which internal content was merged into production prematurely, exposing all pre-release content to users before the release. It was a nightmare trying to revert it all. After that experience, the team shored up the Git processes to avert similar catastrophes. But I felt the result was an overly complicated and intimidating workflow.

Our group didn’t have as many authors, so we continued with our simpler workflow. Sure enough, eventually one of the writers somehow merged pre-release content into production. It wasn’t a straightforward error (e.g., no one merged a pre-release branch into the prod branch); the cause for the error was more subtle. Git can get complicated very quickly, and sometimes the only way to fix a Git snafu is to blow away your current snapshot and get a new one, as this [xkcd comic says](https://xkcd.com/1597/). Developers usually have a much more advanced knowledge of Git, but I admit I still get confused between rebasing and non-rebasing workflows.

At Google, although the system is still a docs-as-code system, the Git layer has been abstracted away behind the scenes to reduce the complexity. There’s an option to use Git more explicitly if you want, but it’s nice not having to figure out different commands and workflows to manage content.

This balance between complexity and simplicity has strong implications for contributors. With more complex Git workflows (or even any Git workflows, really), if you want developers to contribute, they can do so without issue. But when you expand your audience to include product managers, marketers, support groups, or others not used to working with Git, look out. Git can be a huge tech barrier to participation. Now you’re asking collaborators not only to learn your product content but to learn Git as well just to suggest edits.

Some systems, like [GitHub Desktop](/learnapidoc/pubapis_github_desktop_client.html), allow you to work with [version control](/learnapidoc/pubapis_version_control.html) without the complexity. But when you try to use these GUI tools to push your content to review control systems (where developers review diffs), it can be much more challenging. Chances are you’ll need to resort to the command line. Usually, you want to push specific snapshots of Git branches into review control systems so that others can comment on the changes in a line-by-line way. Doing so requires a lot of specialized Git knowledge that isn’t easy to figure out. Then, once you figure out how to get your content into the review control system, often only engineers comment on content this way (not PMs or other stakeholders). Less technical roles prefer more of an experience like Google Docs for making comments and edits.

## Current status

Git is the default [version control system](/learnapidoc/pubapis_version_control.html) that most developers use, and for doc teams using [docs-as-code workflows](/learnapidoc/pubapis_docs_as_code.html), they’ll adopt Git workflows as well. Learning Git, especially more robust workflows, is often more complicated than learning the [static site generator](/learnapidoc/pubapis_static_site_generators.html) (e.g., Jekyll, Hugo). But if teams want to expand their authors and contributors, they need simplified collaboration workflows that don’t have a high degree of risk if someone enters the wrong command.

Implementing safeguards and other mechanisms to control risk will likely mean reducing Git’s flexibility and power, keeping things simple but functional. This seems to always be the tradeoff with software. If you want simplicity, you have to sacrifice flexibility and power. As companies try to scale their authoring systems, UI overlays that are powered by Git but don’t require command-line mastery will become more common.
