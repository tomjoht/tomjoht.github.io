---
title: "Discoveries and realizations while walking down the Docs-as-Code path"
categories:
- api-doc
- podcasts
keywords:
description: "This past week I had some good discussions with developers about the right directions in our doc-as-code project at work. I say good discussions, but actually they were challenging. The outcome led me to realize more details about embracing docs as code. The more you treat docs as code, the more you may have to set aside some common tech writer models of handling content and instead embrace the software code workflows entirely. Some of these principles include storing only source code in repositories, building from a build management system, and reducing build pipelines to work with 1 or 2 larger repositories only."
bitlink: http://bit.ly/docsascodepathrealizations
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/docsascoderealizations.mp3
podcast_file_size: 19.8 MB
podcast_duration: "23:59"
podcast_length: 19821010
---

{% include audio.html %}

## Background

To provide a little background, at my work we are developing a system to build our Jekyll outputs from a build management system directly into a larger website. The idea is to commit content into an internal git repo, build the Jekyll output, grab the body content, and insert it into a web template used for the site. Sounds like a common docs-as-code approach, right? Yes, but there are challenges.

One challenge we faced was in determining the right content architecture &mdash; specifically, how to divide up the content. With two teams of writers (about 10 writers total), and approximately 15 or so distinct products, each with their own documentation, what is the right content architecture? Should we have lots of little repos &mdash; that is, one repo per product? Or should we have 1 or 2 repos that consolidate documentation for a lot of different products?

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/reposize-01.svg"/>

I've tried both, and I opted for smaller repos based on the following reasons:

* Shorter build times
* No concern about repo size warnings
* Fewer merge conflicts with writers
* More distinct publishing pipelines
* More autonomy for authors
* Less visual clutter in the project

The long build times with Jekyll is a real issue when it comes to scaling your project. When you have a few hundred files in the Jekyll project, it can take 45 seconds or longer to build the project each time.

Additionally, when you have lots of writers creating and merging branches in the same repo, it's easier for someone to screw things up. Someone could change a common file (such as default config file) in conflicting ways. Another writer might a bunch of custom scripts in the project root that creates a ton of visual clutter. Another writer might commit large media files that get included in the output, making it difficult for others to transfer the output to a review server.

Small repos avoid pretty much all of these issues. The small repo model is largely the model you would follow when using a tool such as Flare, for example. Each doc set is its own independent project.

However, small repos have an equally challenging set of issues. The problem with small repos is ensuring a consistency of theme files across all the repos. Suppose you have 20 separate repos for each of your product docs. How do you make sure each individual project can get the same theme files?

I tried three separate approaches to distribute theme files:

* RubyGems and Bundler
* Submodules
* Subtrees

In the end, none worked, and I ended up using the large, consolidated repo approach. But I'd like to describe some of my efforts with these other attempts and explain why they failed.

## RubyGems and Bundler

RubyGems and Bundler is the approach Jekyll uses to distribute themes. RubyGems is a package management service where you can upload gems (chunks of code). You can then use Bundler to manage your gems.

Bundler is tricky because right from the start you're working in an open-source environment with your theme. This might cause legal complications requiring approval. (You can use a different gem management server other than RubyGems, but then you'd probably have to deploy and manage your own server.)

I actually did get legal approval and developed a Jekyll theme with a gem-based theme distributed through Bundler. You can see it [here](https://github.com/amzn/jekyll-doc-project).

The method for distributing files through RubyGems and Bundler works fairly well, though there are some glitches in overwriting files (especially static files), and you can't easily share content assets. For example, suppose you want to share content assets (by this I mean re-usable docs) through your `_includes` in the gem. Well, packaging the content inside the gem is kind of heavy as a means of distribution. (See [Jekyll themes](https://jekyllrb.com/docs/themes/) for more details.)

In the end, it didn't matter because our build management system couldn't build Jekyll using Bundler (running `bundle exec jekyll serve`). Our build management system could only build using the vanilla `jekyll serve`. So the Bundler and RubyGems approach had to be discarded.

## Git submodules

Option two was to use a [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules). A git submodule is a git repo inside a git repo. Although a lot of people say submodules are confusing and tricky, I found submodules to work quite well and to be intuitive for our use case. (The trick is to `cd` into the submodule directory and run git `push` and `pull` commands as normal.)

What I liked best about submodules is the ability to push upstream from any submodule instance. And you can easily branch content and switch branches from within the submodule. It worked really well.

However, with submodules, there's a vacuum in a git repo with those submodule files. The submodule directory is empty, and just contains a pointer to another git repo where the files are stored. Normally this architecture would be fine in a git-based system, but our build management system could not build Jekyll projects that had submodules in the repo. The submodule files just weren't there, and pulling the submodule in as a dependency wasn't something the engineers could figure out how to do.

I found this frustrating, because one thing build management systems are supposed to do is handle dependencies. With a Java project, you can build a package that is used in many different projects. Each project can declare a dependency on another package and simply pull in the code as a dependency. But apparently, Java packages and documentation are kind of like apples and oranges. The dependency logic couldn't be applied to a documentation repo.

I have to say at this point, I began to realize that build management systems are a black box to me. I know very little about them, other than they're engineering territory. It would have been nice to know the full limits of our build system early on, but since engineers were operating on a premise that we were treating docs like code, and they already had code workflows integrated for other parts of the site, it seemed like replicating similar workflows but with docs would be a no-brainer. It wasn't.

I also realized that engineers operate under the constraints of larger systems that they don't design themselves. Especially at large companies, there are build management systems that are similar to highway infrastructure that engineers simply use. Either the roads work and get you to your destination, or they don't. Engineers aren't going to start constructing new highways to accommodate special needs and directions for your project. The infrastructure was built long ago and is likely maintained by an entirely separate team.

## Git subtrees

Although submodules failed, the next trick up my sleeve was to use [git subtrees](https://help.github.com/articles/about-git-subtree-merges/). (The neat thing about code is that there are at least 17 ways to do something, so if one approach fails, you can usually try 16 other approaches.) Subtrees are like a remote added to your git repo. The files are present, but git knows to treat the subtree directory a bit differently.

You explicitly pull the subtree to get the files. With subtrees, you can't easily push changes upstream, nor can you easily switch between branches. (Technically, you can, but it's complex and wasn't a workflow I was going to suggest for our team.)

What's confusing about subtrees is the git syntax. It's just weird and kind of different. But after some trial and error, I got it working.

While the build management system could build Jekyll with subtrees (all the files are present), it turns out that engineers didn't want to create separate pipelines and workflows for all of these separate repositories.

I had a vision of a lot of little rivers [repos] flowing independently into one large ocean. But having separate repos for each project would have created a lot of engineering work, maintenance, and overhead. Creating all of these separate build processes across the many repos was a task that engineers felt was unnecessary, especially given the small size of some of the repos. I had to rethink the content architecture.

## HTML in repos?

At this point, I began to question why we were using a build management system at all and suggested that each writer build the HTML output locally and upload it to a repo that just contained different folders for the built output of each project.

Each product's source would still exist in its own independent repo, but when writers built the output locally, they would copy the HTML into a master repository that would run through the rest of the publishing pipeline. After all, it wasn't as if we were using special plugins or had anything unique going on in the Jekyll build process with the build management system. And with all the limitations of building from the build management system, why not just start with the HTML output?

However, this idea was dead in the water and didn't even earn 5 minutes of discussion among engineers. There are a couple of immutable principles of development that engineers are entirely persuaded toward:

* You store source files in source control.
* You push your source control into a build management system to build the output.

## Problems in storing output in source control

HTML files are the built output, not the source. If you store HTML in a git repo, several problems result. First, there's no way to know if the content is the canonical source. With git, one writer who commits conflicting changes will be prompted with merge conflicts if another writer makes conflicting changes.

But with HTML outputs, this conflict resolution is much more fuzzy, because you're no longer working with the source. You can't know how the built output from Writer 1 compares with the built output from Writer 2, because the build times won't necessarily correlate with the timestamps of when they changed the source and committed the changes. Putting the output in the source violates the whole idea of source control, and engineers wouldn't even consider it with any seriousness.

Another problem with building locally is the inconsistency of output. Suppose each writer builds their own output using their own Jekyll gem instance. While this seems fine, with software management, it's not a good practice. Writer 1 might have Jekyll version 3.5, while writer 2 has Jekyll version 2.1. The Jekyll theme might use code that works well for version 3.5 (like the `relative_url` tag), but which Jekyll 2.1 won't recognize.

Take this a step further. Suppose Writer 3 is really tech savvy and integrates a few Jekyll plugins the others don't have. Writer 3 leaves and Writer 1 inherits the plugin-dependent projects. Now Writer 1's builds will fail until he or she can figure out how to exactly replicate the build environment of Writer 3.

If you have inconsistent build outputs from different writers, you're more likely to introduce bugs or other problems in the output. It's smarter to have one centralized build mechanism that everyone uses and enforce a consistent output.

With doc content, it didn't seem like a huge risk that there would be inconsistencies in the build. But software is much more exacting. It would be a release management nightmare to have each programmer build outputs on his or her own machine given the large variety of versions, frameworks, and other packages that different developers might have.

Further, if you allow each writer to build on their own machines, you can't enforce validation scripts. Sure, you could recommend that writers run scripts to check for broken links, missing images, and misspellings. But by centralizing the build process to the server, you can enforce these checks.

## Submitting to the Engineering way

It took a few heated battles before I finally gave up trying to do things my way and submitted to the engineers' recommendations. Although they'd never managed a Jekyll project or written documentation as technical writers, they were familiar with software development workflows and followed best practices for software building and development.

As we worked through these scenarios, we settled on having just two repos, one for each team. Each repo would have the doc for many different products, and multiple writers would work from the same repo. We wouldn't use a subtree or submodule to source the theme files across the two repos &mdash; it would be easier to just make updates of theme files in both repos. This would also allow writers to use Jekyll's \_includes feature to share content across the team's subprojects.

After I consolidated the repos, I felt that it was, in fact, the right decision. Some projects were really small, and by having all content together, it was easier to spot inconsistencies or errors across projects and see how other writers are approaching things.

It does take 45 seconds to run `jekyll serve` given the amount of content in each repo, but I found a workaround to shorten build times. My workaround involves creating a project-specific config file and cascading it with the default config. For example:

```
jekyll serve --config _config.yml,configs/config_acme.yml
```

The config_acme.yml (which overwrites values in the default \_config.yml) would exclude certain directories from the default config and set published false for all the docs not relevant. This shortens the build time down from 45 seconds to 3 seconds.

## I pledge allegiance ...

I learned a lot by working on this project. First and foremost, I realized that if you are going to use a docs-as code model, you have to abide by the principles of software development. If you try to implement a different workflow, you'll run up against a brick wall with developers, since that's not how things are done. I don't know what all the principles of software development are, but the following seem to be common practices:

* You don't store build artifacts in a source repository.
* You don't store binaries (non-text files, such as images, zip files, PDFs, etc.) in a repository.
* You build the output from one centralized location using a build management system.
* You limit the number of production build pipelines for your content.
* You push content into a staging area before production.

I'm not sure if the software development model aligns well with the needs of documentation development. In many ways, it works out. But when I want to fix a small typo, will the software management process be overkill? Will I be able to easily iterate with my content based on incoming feedback? Is building from a build management system really better and easier than building the HTML output locally and uploading it individually?

I wrote about some of these reservations previously here: [Limits to the idea of treating docs as code](https://idratherbewriting.com/2017/06/02/when-docs-are-not-like-code/). My main concern is that software development demands a heavy release process to ensure no bugs exist in the software. Software isn't designed for any single individual to push quickly to production without going through stringent QA testing and hardening. In fact, for one of my projects at work, the project manager prefers to limit new versions to quarterly releases because the QA process required for each release is so time intensive.

When following a docs-as-code model, as we saddle our documentation processes with build management servers and software release pipelines, will we someday find that doc isn't quite the same as code? Will pushing out that quick fix to address the typo or missing detail become more effort than it's worth? Probably.

At the same time, I think the docs-as-code tooling is moving tech writers in an inevitable direction that is good. Embedded with engineers, we're floating down the river, being pushed and pulled by the river's ebbs and flows, and the more we align with docs as code, the more we tie the future directions of doc to the future directions of code. The infrastructure of technology is being built by engineers, and they are optimizing the workflows around these principles and tools. By piggybacking onto engineering principles, workflows, and tools, we get cutting-edge infrastructure for docs.

Sure, some of these engineering principles, workflows, and tools may seem kind of odd, or might not fit well. For example, dependency management doesn't seem to include documentation dependencies. But by and large, there are many more advantages than disadvantages. One of the primary advantages is Git.

Git is an ingenious tool for collaboration. Git allows you to implement content architecture models that involve either small repos or large repos, with a variety of workflows. Sure, it's a little confusing at first &mdash; until you learn the part of Git you need to know. Then it becomes almost second nature.

Without git (or another distributed version control system), how would you collaborate with content projects? You could check files in and out of SharePoint. You could buy into a proprietary CMS for managing content, which might lock files that are in process. But Git is just better.

## Doc in the future

Want to see what documentation looks like in 10 years? If you follow docs-as-code, you just need to look at the future of software. If we align documentation with the same principles, tools, and workflows as software, we have a clear vision of where we're headed.

Within software, at least two trends stand out to me:

* REST APIs
* Software as a Service (SaaS)

Local downloads of code are becoming less and less common. Instead of delivering JAR files for Java developers to integrate into their projects, we often provide REST APIs for developers to retrieve the information dynamically over the web.

Additionally, rather than having users download an executable file and install a program locally, most software now exists as an online service. For example, look at even the most commonly used application: Microsoft Word. Sure, you can buy a locally downloadable version, but the newer model is the cloud-based version, Word 365. Most people skip Word altogether and just use Google Docs, which exists only as an online service. Many doc tools have followed similar cloud platforms: Corilla, Paligo, Mindtouch, ClickHelp. SaaS is the indisputable trend.

These trends don't just impact how we *deliver* docs. Putting docs on a web page (rather than sending out PDFs or packaging the help as file within a local executable) has become standard practice for some time. These trends impact the way documentation is authored and how content is structured among teams as well.

Rather than having individual instances of a project (whose theme files and other code one tries to keep in sync), more writers hook into centralized systems to do their work. There might actually be a documentation CCMS, but more commonly, there's a master repository for doc with a centralized pipeline, workflow, and other logic. You might even have a [monorepo](https://developer.atlassian.com/blog/2015/10/monorepos-in-git/) for doc.

How do you share content around the system? To share content across multiple large repos, I think at some point content-based APIs will become more common. We've seen just one example of this so far: [Contentful](https://www.contentful.com/). But my guess is that content-based APIs will be more common in the future. Whatever techniques developers use to share code and information, doc will follow.
