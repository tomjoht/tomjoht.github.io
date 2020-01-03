---
title: "Updating a single page versus updating the documentation as a whole"
categories:
- technical-writing
keywords:
description: "This past week I made some contributions to the Jekyll documentation, and in making the pull requests, I realized why technical writing is often so difficult. Making a request to one documentation topic often requires you to adjust other topics as well. So often we place the bar for contribution at whether someone can write. In reality, it's not just whether someone can construct clear, grammatically correct sentences. It's whether the person can integrate the information into a larger documentation set."
bitlink: http://bit.ly/singlepageversuswhole
---

## Documentation topics are interconnected

Although at times documentation of a new feature simply involves adding a new page, more often the new feature affects a getting started section, a sample app, other pages that reference the feature, tutorials, code samples, and more. Changing one topic can set off a cascade of other needed edits across the entire documentation set.

As such, it may be particularly difficult for people with a narrow focus to contribute holistically to documentation. For example, developers usually work on one slice of the software pie. They dive deep into coding a specific feature.

Developers may write up coherent documentation on a single page describing how that feature works, but integrating that information into the larger documentation set requires them to be familiar with all the other parts of the documentation, with all the other existing features, the styles and conventions used in other areas, and more. They have to know what other content exists, and how their contribution fits into that content.

Developers have rarely read all the documentation for a product, so the task of contributing in a holistic way to the documentation becomes more difficult and time-consuming. The required analysis and integration into larger information structures requires a wider, more encompassing view into documentation. It requires someone who has a broader (though probably shallower) knowledge of all topic areas rather than a deeper (but narrower) knowledge.

As the trend toward more specialized knowledge increases, we risk creating silos within the same documentation set. By silos, I mean standalone pieces of information that are complete unto themselves, but likely redundant, overlapping, and inconsistent when viewed as a whole against other documentation topics.

## Github's model for contributing

On Github, a common model for soliciting contributions from others is to add an "Edit in Github" button on the page. This button takes the user to the source in Github that needs to be updated. While I think this simplicity is worthwhile, it also doesn't acknowledge the more challenging task of updating the documentation as a whole instead of  updating just one page. Documentation isn't an island &mdash; it's all interconnected.

Fortunately, with the "Edit in Github" button, you're not limited to just editing a single page. Clicking the Edit in Github button prompts you to fork the repo and create a new branch (called "patch-1" by default). After making this fork, you can then clone your repo locally (specifically cloning the patch-1 branch), make additional edits on multiple pages against that patch-1 branch, and then submit all the edits in your branch as a pull request.

(For an introduction to the Git pull request workflow, see this presentation by Rhonda Glennon: [Github for Documentation](https://www.youtube.com/watch?v=812E14gFgb4&t=2803s).)

The problem is that reviewers who see lots of edits across many different files may feel overwhelmed in processing the pull request, because now they need that all-encompassing view of the doc set as a whole to evaluate the changes. It's much easier to break apart the pull requests into separate requests so that the changes can be evaluated in smaller chunks &mdash; that is, assuming the changes aren't all part of one larger update that ripples across the docs.

In summary, it's not just an ability to write that matters when it comes to contributing to documentation. It's the ability to integrate information into a larger, coherent whole that makes the role of technical writing unique, valuable, and challenging.
