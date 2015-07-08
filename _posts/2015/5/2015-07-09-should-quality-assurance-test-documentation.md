---
title: Should QA test documentation?
categories:
- user-centered-documentation
keywords: 
summary: "Overall, I think I’ve been going about documentation in a poor way. I’ve allowed doc to be treated as an external product, separate from the software. In reality, doc would probably benefit tremendously from a more strict integration with the code review cycles, split between QA and product management."
published: false
---

In my previous post, [The key to writing good documentation: Testing your instructions](http://idratherbewriting.com/2015/07/07/testing-your-instructions/), I noted that although quality assurance team can review documentation, my experience in having QA team members review doc is that they review it like a robot. They don’t comment qualitatively, noting whether something is clear or not, whether the message is on target, whether the tasks represent the user’s workflow and business needs. Instead, they analyze the steps strictly for accuracy.

However, I’m starting to think that my approach with documentation has been too laissez-faire in terms of its insertion into the engineering process. Engineering code clearly goes through review by QA and product managers, but most teams are happy to move doc outside of this process. Just having the doc finished is enough. If done, they can check and box and include it in the product.

But maybe this is wrong. If you insert documentation into a similar workflow as engineering code, you would submit the documentation to QA in time for review. This means you would need to finish the documentation usually two weeks before the release cycle. This can be difficult since it’s hard to write documentation when code is still developing. A lot of times things don’t work right, so it’s hard to create documentation for it. 

## QA review of documentation

Let’s say that QA cuts you some slack and allows you to submit doc to them one week before release. If so, QA will need some clear guidelines on what they’re supposed to test. QA might test the following:

* Functionality within the doc system itself. Do links work? Do navigation items work? Does search work? Are there formatting issues anywhere? 
* Code samples in pages. Are the code samples accurate? Do the code samples correspond to the latest version? Is there a code samples for each task that merits one?
* Accuracy of steps. For each task, are the steps to follow accurate? Are there any missing steps? 
* Coverage of release notes. For each feature in the release, is the documentation updated appropriately? Do the release notes address each of the points of the release?
* Is there a help button in the interface pointing to the documentation? Does the right doc set open for the user role?

If you don’t give QA guidelines, they won’t know what to test. Just as QA needs to know what the system is designed to do in order to test it, QA needs to know what the doc is designed to do in order to test it. 

## Product management review of documentation

I wouldn't task QA with qualitative assessment of documentation. For that, I would assign product marketing or product management. A product manager or marketer can review the documentation for the following:

* Are all the key concepts explained in a clear and understandable way?
* Do the tasks represent the needs of the user?
* Does the messaging align with the messaging in marketing materials?
* Is any internal-only information exposed in the documentation?
* Is the documentation a visually appealing, easy-to-consume information product?

Product managers and marketers do wonderful jobs assessing the doc content qualitatively. But they don’t necessarily have the time or expertise to conduct the technical assessment.

## Pros of inserting doc into an official review process

The pros of inserting documentation into an official review process are as follows:

* **You become accountable to a deadline.** I work best with deadlines, so knowing exactly when documentation is due can be helpful in prompting me to actually get it done. If there’s no fixed deadline, other tasks can easily get in the way. But if I know the doc is due on X date so that both engineering and product management can review it, that can be helpful in structuring my time.
* **You keep pace with the application development.** If you only release every two months, it can be easy to fall behind and find that, at the last moment, you have a ton of doc to write. But if you keep pace with each sprint, submitting doc for review at these intervals, then it might help you keep up the rhythm of engineering development. 
* **Doc is a part of the product and should be treated that way.** By not including doc into the formal review, I think it tends to get marginalized. If it’s not a product, why should people care? But if it is a product, part of the user experience, then it takes on greater importance. Documentation is important and should be treated with more rigor in the code life cycle.

## Cons of inserting doc into an official review process

The cons of inserting documentation into an official review process are as follows:

* **Deadlines are too early.** It may seem like a good idea to insert doc into the review process when the deadline is far in the distance, but when it comes right down to it, you may not have the time to meet those early deadlines. Code and application features just aren’t finished in time to write good doc for them to meet those early deadlines. You may really be putting yourself into a tight time crunch.
* **The real feedback you need is from users.** While the internal review is probably worthwhile, it pales in comparison to the real review you need to do with actual users. The product manager and QA review may give the appearance of an officially reviewed and tested doc when in reality, you need actual user feedback to assess and test the documentation. You’re just fooling yourself with these internal tests.
* **You have less pressure if you’re not in the code review process.** It’s kind of nice not having so much pressure put upon you to kick out world-class doc weeks before release time. Why would you want to induce a stress ulcer when you can sit back and continue to update doc on the fly as needed even after release?

## Conclusion

Although I like the low-key nature of my job, I'm going to experiment with inserting doc into the official review process, split between both QA and product management. I'm confident that if I give clear guidance on what to test, these two internal groups can provide a lot of worthwhile and helpful input into improving the documentation.


