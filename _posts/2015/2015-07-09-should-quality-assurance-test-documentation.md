---
title: Should QA test documentation?
categories:
- technical-writing
tags: [series_testing_documentation]
series: Testing your documentation
jtype: notes_testing_documentation
keywords: quality assurance, testing, documentation, rigorous review
description: "The past few years, I've allowed doc to be treated as an external product, separate from the software engineering code. In reality, doc would probably benefit tremendously from a more strict integration with the engineering code review cycles, with the review split between QA and product management."
weight: 1.1
---
{% include series/seriesTagTestingDocs.html %}

In my previous post, [The key to writing good documentation: Testing your instructions](https://idratherbewriting.com/2015/07/07/testing-your-instructions/), I noted that although quality assurance teams can review documentation, my experience is that they review it like a robot. They don't comment qualitatively, noting whether something is clear or not, whether the message is on target, whether the tasks represent the user's workflow and business needs. Instead, they analyze the steps strictly for accuracy (which does have benefits, of course).

However, I'm starting to think that my approach with documentation has been too laissez-faire in terms of its insertion into the engineering process. Engineering code goes through rigorous review by QA and product managers weeks before release, but most teams are happy to move documentation outside of this process. Just having the doc finished is enough. If done, they can "check a box" and include it in the product, without reviewing it more than cursorily.

But maybe this approach is wrong. If you insert documentation into a similar workflow as engineering code, you would submit the documentation to QA in time for review. This means you would need to finish the documentation usually two weeks before the release cycle.

This can be difficult since it's hard to write documentation when code is still developing. A lot of times features aren't yet fixed, so it's hard to create documentation for them. Still, the sacrifices necessary to insert code into QA's review process might be worthwhile, since the benefits would outweigh the added pressure to finish the doc early.

## QA review of documentation

Let's say that QA cuts you some slack and allows you to submit doc to them one week before release. If so, QA will need some clear guidelines on what they're supposed to test. QA might test the following:

* **Functionality within the doc system itself.** Do links work? Do navigation items work? Does search work? Are there formatting issues anywhere?
* **Code samples in pages.** Are the code samples accurate? Do the code samples correspond to the latest version? Is there a code sample for each of the main tasks?
* **Accuracy of steps.** For each task, are the steps to follow accurate? Are there any missing steps?
* **Coverage of release notes.** For each feature in the release, is the documentation updated appropriately? Do the release notes address each of the points of the release?
* **Is there a help button in the interface pointing to the documentation?** Does the right doc set open for the right user role? Does the help open in a new window?

If you don't give QA guidelines, they won't know what to test. Just as QA needs to know what the system is designed to do in order to test it, QA needs to know what the doc is designed to do in order to test it. The poor reviews I've gotten from QA in the past were probably because I didn't give them any guidelines about what to check.

## Product management review of documentation

I wouldn't task QA with qualitative assessment of documentation. For that, I would assign product marketing or product management. A product manager or marketer can review the documentation with the following questions in mind:

* Are all the key concepts explained in a clear and understandable way?
* Do the tasks represent the needs of the user?
* Does the messaging align with the messaging in marketing materials?
* Is any internal-only information exposed in the documentation?
* Is the documentation a visually appealing, easy-to-consume information product?

Product managers and marketers do wonderful jobs assessing the doc content qualitatively. But they don't necessarily have the time or expertise to conduct the technical assessment. QA is much better for that. At the same time, QA is usually poor at qualitative assessment.

## Pros of inserting doc into an official review process

The pros of inserting documentation into an official engineering review process are as follows:

* **You become accountable to a tighter deadline.** I work best with deadlines, so knowing exactly when documentation is due can be helpful in prompting me to actually get it done. If there's no fixed deadline (except the final release date of the product), other tasks can easily get in the way. But if I know the doc is due on X date so that both engineering and product management can review it, that can be helpful.
* **You keep pace with the application development.** If you only release every two months, it can be easy to fall behind and find that, at the last moment, you have a ton of documentation to write. But if you keep pace with each sprint, submitting documentation for review at these sprint intervals, it might help you keep up the rhythm of engineering development.
* **Doc is a part of the product and should be treated that way.** By not including doc in the formal code review process, I think documentation tends to get marginalized. If it's not a product, why should people care? But if it is a product, part of the user experience, then it takes on greater importance. Because documentation is an important company product, it should be treated with more rigor in the code review life cycle.

## Cons of inserting doc into an official review process

The cons of inserting documentation into an official review process are as follows:

* **Deadlines are too early.** It may seem like a good idea to insert doc into the review process when the deadline is far in the distance, but when it comes right down to it, you may not have the time to meet those early deadlines. Code and application features just aren't finished in time to write good documentation by the time QA wants it. Additionally, at the very time you ask QA to review the doc, they're busy testing all the code.
* **The real feedback you need is from users.** While the internal review is probably worthwhile, it pales in comparison to the real review you need to do with actual users. The product manager and QA review may give the appearance of an officially reviewed and tested doc when in reality, you need actual user feedback to assess and test the documentation. You might just be fooling yourself with these internal tests.

## Conclusion

Although I sometimes like having doc be outside the engineering review process, I'm going to experiment with inserting doc into the official code review process, split between both QA and product management. I'm confident that if I give both QA and Product Management or Marketing clear guidance on what to test, these internal groups can provide a lot of worthwhile and helpful input for improving the documentation.

Inserting docs into the code review process will also help me avoid time crunch situations in which I'm cramming to finish the docs before release, and everyone is too busy to review the help in any detail.

{% include series/seriesTagTestingDocs_next.html %}
