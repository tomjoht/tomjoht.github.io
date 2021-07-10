---
title: "Thoughts on docs-as-code after 3 years -- it works!"
categories:
- api-doc
keywords:
description: "I've been quite happy with our current docs-as-code implementation. It's worthwhile to periodically reflect why the docs-as-code approach tends to work so well."
bitlink: http://bit.ly/docsascodecheckin
---

## Checking in after using docs-as-code for several years

I've both written and presented about [docs-as-code](https://idratherbewriting.com/2017/06/02/when-docs-are-not-like-code/#first-what-we-mean-by-docs-like-code) off and on for a number of years. I started using [Jekyll](https://idratherbewriting.com/about-jekyll/) at my previous job at 41st Parameter / Experian, and then helped lead the effort to [implement docs-as-code](https://idratherbewriting.com/learnapidoc/pubapis_switching_to_docs_as_code.html) with my role on the Amazon Appstore doc team (we publish at [developer.amazon.com](https://developer.amazon.com/documentation/)). I'd just like to check in and say, docs-as-code works. Docs-as-code is the way to go.

If you've been hesitant about embracing docs-as-code because it might seem like another fad or newfangled approach, don't worry. Once you get used to it, there's no turning back.

I know that people get stubborn about tools and tend to put blinders on. Note I'm not singling out Jekyll here as the best tool by any means but rather am referring to the whole genre of docs-as-code tools (which I described at length in [Publishing tool options for developer docs](/learnapidoc/pubapis_docs_as_code.html)). This genre could mean any static site generator (Jekyll, Sphinx, Hugo, etc.) and publishing platform (Github, S3, Netlify) along with a variety of continuous delivery processes. Many of the tools and workflows are highly similar.

Before I get into why it's working so well, I'd just to add some acknowledgements about assumptions. Note the following:

* I work with developer documentation, and these tools fit well with engineers who want to write or contribute to the docs.
* I'm kind of a techie when it comes to doc tools. I like tinkering around with these things. For example, I created our Jekyll theme and the logic in most of our includes.
* We had an engineering team built out the continuous delivery pipelines and infrastructure for us. (Otherwise, I would have used a third-party service for this aspect.)
* I don't have heavy localization or PDF requirements.

## The positives

Why do I like docs-as-code tools and workflows so much? Why is docs-as-code working so well? Here are the top 5 reasons:

* **Flexibility and customization**: If I want some functionality, I can just create it. Or I incorporate Bootstrap and use the appropriate code snippet, or I can incorporate use a JS library, or write my own code. I don't outgrow the tool, because the tool accepts whatever code I want to give it.

* **Use of engineering infrastructure**: We plug into our company's engineering infrastructure for our implementation. From internal git repositories to continuous delivery pipelines and test scripts, engineering groups already have this infrastructure, and they know how to build with it. We can leverage this existing platform and suite of tools.

* **Use of Git**: Git offers an ingenious way to collaborate. Branching, merging, pushing, and pulling &mdash; there's a reason Git serves as the foundation for how people work in software. Git is flexible enough to accommodate many workflows and processes, but you can also limit your use to some specific subset of commands.

* **Open source scalability**: Most static site generators are open source, so they easily scale to fit your growing team's needs. Does an engineering team want to write and update their own content? Adding new writers to the team? Great, they just need to download Atom editor and start writing content. No licenses, no fees, no constraints around cost. Just provision them in your repository.

* **Simplified publishing workflow**: Not having to manually publish docs is probably the best aspect of docs-as-code. With just a few git commands, I can deploy updates across hundreds of files. More than anything, the continuous delivery workflow has simplified my life. Having been in previous tool situations that made publishing docs a hell, the continuous delivery method is all the more sweet.

## The negatives

Okay, so not to sound like I'm in a honeymoon phase with a tool, I'll note a few negatives with docs-as-code:

* **Localization worfklows**: Most static site generators weren't built with localization in mind. They just weren't. We hacked out our localization process, and it works, but it's kind of tedious and klugey. Fortunately, I don't work with localized files more than 1-2 days a month, so it hasn't been an issue. (Part of the klugey-ness is also due to the localization requirements on our particular website as well.)

* **Longevity of open source projects**: I kind of wonder how long Jekyll is going to be around. The project has transitioned the original maintainers three times since its beginning in 2008, which is remarkable. The work of the volunteers astounds me. I'm glad that GitHub embraced Jekyll into its tooling workflow. Even so, there's no monetization model around Jekyll. If it folds one day, it wouldn't surprise me. (As a side note, I feel bad about taking so much from open source projects without giving back.)

* **Growing degree of custom scripts**: I'm a bit worried about the growing number of custom scripts and innovations I've made with our Jekyll site. I have about a dozen different includes that do everything from glossary lists and notes/alerts/cautions to images, drop-down selectors, and more. If we have to transition to another tool, we can always just grab the HTML output, since HTML is a standard, but we'd need to figure out how to reproduce the same efficiencies in the source. I'm pretty sure we'll be on Jekyll for quite a while.



## More reading

See the following posts for more information:

* [Case study: Switching tools to docs-as-code](https://idratherbewriting.com/learnapidoc/pubapis_switching_to_docs_as_code.html)
* [Docs-as-code tools](https://idratherbewriting.com/learnapidoc/pubapis_docs_as_code.html)
* [Documentation, Disrupted: How Two Technical Writers Changed Google Engineering Culture](https://www.youtube.com/embed/EnB8GtPuauw)
* [Recording of Docs-as-code tools and workflows presentation](https://idratherbewriting.com/2018/03/09/docs-as-code-tools-and-workflows-denver-presentation/#slides)
* [Docs Like Code, by Anne Gentle](https://www.docslikecode.com/book/)
