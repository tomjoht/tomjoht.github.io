---
title: Integrating Documentation into engineering code and workflows
categories:
- jekyll
- api-doc
keywords: engineering workflows
description: "If you want to encourage engineers to write documentation, integrate your writing tools and process into their toolchain and workflow."
---

## Write the Docs video
If you work with developer documentation, definitely check out Riona Macnamara's Write the Docs 2015 presentation: [Documentation, Disrupted: How two technical writers changed Google engineering culture](https://www.youtube.com/watch?v=EnB8GtPuauw).

{% unless site.target == "pdf" %}

<iframe width="640" height="360" src="https://www.youtube.com/embed/EnB8GtPuauw" frameborder="0" allowfullscreen></iframe>

{% endunless %}

## The problem: Scattered documentation

Riona Macnamara is a technical writer at Google. Riona says that several years ago, internal documentation at Google was scattered across wikis, Google Sites, Google Docs, and other places.

In surveys at Google about the workplace, many employees said the inability to find accurate, up-to-date documentation was one of the biggest pain points.

Despite Google's excellence in organizing the world's information, organizing it internally proved to be difficult.



## Moving doc into engineering workflows

Riona says they helped solve the problem by integrating documentation into the engineer's workflow. Rather than trying to force-fit writer tools onto engineers, they fit the documentation into developer tools.

Developers now write documentation in Markdown files in the same repository as their code. Some other engineers wrote a script to display these Markdown files in a browser directly from the code repository.

The method quickly gained traction, with hundreds of developer projects quickly adopting the new method. Now instead of authoring documentation in a separate system, developers simply add the doc in the same repository as the code. This ensures that anyone who is using the code can also find the documentation.

Engineers can either read the documentation directly in the Markdown source, or they can read it displayed in a browser.

## Figuring out how to apply this

I like the idea, but I'm not entirely sure how to apply it in my situation. In Riona's environment, it looks like engineers are writing the bulk of the documentation.

Google has more than 23,000 engineers and one of the largest code bases in the world. It's only practical that developers would write the bulk of the documentation, especially for internal products.

In my situation, engineers write documentation for internal processes (such as setting up servers) and they publish it on a Confluence wiki. But I write documentation that is used by end-user-developers and field engineers. I publish this documentation on external web hosts.

My documentation is now in Jekyll. And I commit it to a code repository.

However, the documentation wouldn't fit into each code repository where the API source lives. There are numerous repositories (for different languages, platforms, and products). The instructions span across all of the various APIs and other utilities to provide instructions to real-world tasks.

Much of the content is also single sourced from one version to another.

## Publishing scenarios are more complex

Additionally, my [doc theme](http://tomjoht.github.io/documentation-theme-jekyll/) is somewhat sophisticated (because I've rigged the theme to do single sourcing). A developer could contribute pages, and I could add them to a project. But asking the developer to do any of the following might be problematic:

- add the topic to a sidebar navigation
- add an include from another file
- create a unique build of the site
- add conditional filtering on a page

## How exactly do you handle reviews via git?

I'm also shaky on the revision control software workflow. If engineers clone my repo and add a file to my pages directory, and then I edit the file and submit it back to them for review (by committing a new version), and then I edit their edits, and so forth, those are a lot of conflicts people will see when they commit to the repository. I'm not really sure how that would work.

For now, developers sometimes add readme.txt files with their code, and I add the information to the documentation (in another code repo). No one really collaborates with me in my code repo -- I just push commits to it.

Ideally, I'd like to point developers to the doc repository and provide a simple interface (like [http://prose.io](http://prose.io/) to edit the files. But clearly I'm still trying to figure out how to integrate into an engineer workflow.

## Conclusion

One thing I'm fairly confident about, though, is the decision to move away from tech-writer tools and embrace more developer-oriented tools for documentation. Using Markdown and Jekyll (a static site generator) opens up all kinds of possibilities for integration into a developer environment.

How are you integrating your doc into the engineering workflow?
