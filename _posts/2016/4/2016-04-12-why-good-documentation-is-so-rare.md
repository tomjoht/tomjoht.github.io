---
title: "Good documentation is rare"
categories:
- general
keywords: 
summary: "Good documentation is hard to write for a number of reasons -- operating systems, versions, technical abilities, and business scenarios often differ between tech writers and usesr. Additionally, products often evolve after the doc was written, since tech writers aren't always married to the life of the product. Support and feedback channels don't route to the doc source, crippling the writer from valuable feedback. Finally, steps are often inaccurate, and tutorials are often focused too granularly, without addressing more end-to-end scenarios."
thumb: iterativedocfeedbackthumb.png
published: false
---

## Background
Lately I've been trying to learn Android, and I've been following various tutorials. Finding a good Android tutorial that walks me through the basics in a friendly, easy-to-follow way is hard to find, especially since I'm not the target audience (i.e., a developer) of most Android documentation. 

It has made me realize that good documentation is rare. If you find a tutorial that works well for you, it is probably the result of a lot of careful testing and refinement of the instructions, which I must admit, I don't always do. 

Good documentation can be particularly hard to write for the following reasons:

## Reason 1: Operating system mismatches

Tech writers and users sometimes have different operating systems. What works on a Mac might not work on Windows. Or what works on Windows 7 doesn't work the same on Windows 10. Unless you have multiple operating systems installed, you might not realize the differences. Throw in Linux too, and you've got some variety to consider.

**Solution: Test documentation that is operating-system-dependent on on Windows, Mac, and Linux platforms.**

## Reason 2: Version mismatches

Technical writers usually document the latest version of the software, and when they publish, they're done. They usually don't stick around to update the published documentation through the life of the product. The documentation that was written for version 1.0 gets slightly out of date when 1.1 is released, and more out of date as the versions increment. Additionally, users may not be using the latest version of the product, so there could be a mismatch there as well.

Solution: Note the versions you're using to create the documentation, and provide links corresponding to different versions of the documentation. 

## Reason 3: Differing technical ability

Technical ability differs from person to person. If you're a novice trying to follow an Android tutorial, your questions and needs will vary from an iOS developer transitioning to Android development, or from a Java or C++ programmer beginning Android developer. The tech writer usually writes for his or her own level and questions, and assumes users will be similar to him or herself, but this is rarely the case.

**Solution: Test your docs with your target audience.**

## Reason 4: Business scenarios differ

Tech writers usually create documentation following the intended business scenarios and designs of the application, but sometimes users have completely different scenarios. For example, a person following an Android tutorial may want to create a TV app instead of a smartphone app. As a technical writer, you don't always know the variety of business scenarios and needs users will have.

**Solution: Provide feedback channels so you can learn when your doc falls short of the users' needs, and then evolve the doc to meet those needs.**

## Reason 5: Product evolution without doc evolution

Products don't reach end of life on their first release but rather continue to be updated incrementally, especially if the software developers follow agile methods. Unless tech writers are constantly following each update and updating all the docs to match, doc eventually drifts apart and eventually become less and less accurate.

The longer you're at an organization, the more you get pulled in different directions, since you build up a larger base of documentation you've written for various products. Eventually you have to cut ties to stay afloat with the workload.

**Solution: Stay attuned to product developments for the doc you write. If you notice releases without doc updates, log a bug to the team.**

## Reason 6: Support channels are separated from doc. 

It would help tech writers if users could give updates when they run across out-of-date information, but often the support channels are completely separated from documentation. In fact, knowledge bases themselves are usually siloed from doc. 

Tech writers don't want to deal with support, and they know if they put a contact form on the doc pages, they'll be inundated with support requests that speak more to product bugs and shortcomings than with doc-specific issues. Support people also prefer to keep support threads in their own domain. The result is that tech writers become disconnected with their users and cut themselves off from critical feedback channels.

**Solution: Provide feedback mechanisms in the doc. Also monitor support channels.**

## Reason 7: Products have their own terminology.
 
Products present a new language users must learn to live in that environment. Learning Android, I've had to learn what APK, ADB, AVD, activity, intent, fragment, context, res, and many terms more. When you learn a new product, you often learn a new language. Without a clear glossary, it can be difficult for people to understand what the doc is saying. 

Of course tech writers have to make assumptions about users' technical ability, and they can't always be explaining terms with each usage. Additionally, the longer tech writers are immersed in an environment, the more blind they become to the jargon or specialized terms used.

**Solution: Include a comprehensive glossary that captures all possible jargon.** 

## Reason 8: Tutorials don't provide an end-to-end process 

Help topics are often focused on a specific, individual task that is assumed to be done within a larger process. Because there are a number of ways users can use a product, it only makes sense to create small topics. However, tech writers often assume that the user knows how this task fits into a larger workflow. That assumption is often unfounded. Users need to see the larger picture of how to use a product in an end-to-end scenario.
 
**Solution: Show larger workflow maps that link to various task details.**

## Reason 9: Steps are simply inaccurate 

This happens often -- as a user you try following the steps for a process, but the documentation misses a step or otherwise fails. You get to step 4 and don't get the result you need to proceed to step 5, so you become stuck. This has happened to me with a number of Android tutorials. 

For example, in Google's tutorial [Building Your First App](https://developer.android.com/training/basics/firstapp/creating-project.html) step 6 says to select a **Blank Activity.** However, only an **Empty Activity** is available. This may seem like a simple name change, except that you realize in step 8 that the file `app/src/main/res/layout/content_my.xml` isn't created. Either I somehow missed the "Blank Activity," or the product evolved, or I have some other version.
 
This example is a consequence of a number of issues -- a mismatch of versions, a failure to update the docs, and absolutely no feedback channels for users to get word back to the tech writer. 

**Solution: Triple-check the steps of your documentation.**

## Larger solution: See doc as iterative, with each user a tester

Of course you can improve docs by following all the solutions I've mentioned here, such as triple-checking steps, testing on different plaforms, being careful to note the version and date, doing user-testing, and so on. But it's not usually possible to do all of this within the timeframe you're given to write the documentation. What can you do? 

I think the answer is simple. Change your mindset about when documentation is "done." Instead of seeing docs finished at launch, instead see doc as an iterative process that gets better each time someone uses the doc.

Ideally, I'd like to integrate [Disqus](https://disqus.com/home/) or [Annotator](http://annotatorjs.org/) in my docs. I think this can be a huge win. For example, I would have commented on the word "Blank" in the Google tutorial, which would have helped improve the accuracy of the docs. 

Tech writers can't be expected to catch everything, but through continual feedback from users, you can refine and improve docs. If we can learn to see docs as an iterative process that get better each time someone uses them, this is surely the key to developing great docs.

<figure><img src="{{ "/images/iterativedocfeedback.png" | prepend: site.baseurl }}" alt="Iterative doc feedback" /><figcaption>Each time someone uses your documentation, it's like conducting user feedback. The trick is to capture the user's feedback so you can improve the documentation for the next user.</figcaption></figure>

Having numerous people test your docs in real business scenarios, with different operating systems and environments, would lead to stellar docs. But if you can't capitalize on that real-world testing by capturing user feedback, it all goes to waste. The user gets frustrated because he or she can't follow a step, and there's no way to let the tech writer know there's an issue. 

Comment forms at the bottom of articles are a good idea, but an extra step would be to include the ability for users to annotate specific passages, just like Google Docs. I know that in a previous org where I conducted doc reviews through Google docs, the review process worked extremely well.

## Learning from Atlassian

About a year ago, Atlassian, known for their interactive software, announced that they were [closing comments on documentation](http://blogs.atlassian.com/2015/04/closing-comments-documentation). There are more than 70 comments on this blog post, with many people upset about this move. Here are the reasons Atlassian gave for closing comments:

<blockquote>
<p><ul>
<li>Committing to moderating page comments creates two huge problems: an ever-increasing amount of comments to moderate and, as a result, proportional overhead on the team. For a company of our size, it just doesn’t scale.</li>
<li>Only about 20% of comments are contextual. The rest are various types of requests such as support, new features, and general product inquiries. We need to promote better wayfinding from the documentation to the other, more suitable Atlassian channels, and use our limited time in the most efficient way possible. We’ll still listen to and help our customers, we’re just shifting the arena.</li>
<li>Comments languish unanswered if the IX team doesn’t have bandwidth to review them. Today, the most responsive doc space only achieves between a 60-80% response rate, with most spaces below 40%. That’s an unacceptable user experience.</li>
<li>There’s no quick or easy mechanism to archive outdated comments, meaning new readers often encounter outdated answers and workarounds in the comments.</li>
<li>We classed a trial of a ‘no-comments space’ (JIRA Service Desk) as successful. The trial ran for nearly a year and responses from our customer-facing teams have been positive.</li>
</ul>
</blockquote>

At first I thought, WRONG MOVE ATLASSIAN, you just disconnected yourself from user feedback, which is what helps make your docs better. Couldn't you just put a link before the comment form that takes people to a feature wish list or something instead of closing down all comments because only 20% are contextual?

But now I see that Atlassian has neatly added a link from each help topic into their Atlassian Answers tool. For example: 

<figure><a href="https://confluence.atlassian.com/doc/supported-platforms-207488198.html"><img src="{{ "/images/atlassiancommentbox.png" | prepend: site.baseurl }}"/></a><figcaption>This box appears at the bottom of each help topic and takes you to a forum thread for that topic.</figcaption></figure>

If you are viewing a topic (such as [this](https://confluence.atlassian.com/doc/supported-platforms-207488198.html)) and you say, wait, I have a question, to interact with Atlassian, the link at the bottom of the article takes you to this [Atlassian Answers forum](https://answers.atlassian.com/questions/topics/32768991/207488198), where you can see all questions about the specific article.

What's good about this solution is that their Answers tool allows upvoting and auto-sorts the most upvoted questions to the top. This saves people from the hassle of having to scan down, in a linear fashion, a long wall of comments, hoping someone has asked and answered your question.

Additionally, the forum software allows support engineers to more easily interact with incoming questions. This approach also keeps the size of topics down in the help content. No one likes to load a web page and see the cursor on the right shrink way up at the top because the page scrolls for ten years before you get to the end.

Overall, do I think it's a good idea? Probably. Given the volume of questions and expected interaction, putting these conversations into a more robust interactive tool can likely increase the response rate. The downside is lost SEO and a somewhat fragmented experience between the two systems.


## Conclusion

Writing good documentation takes a lot of time, which tech writers don't always have. But even if you have to publish minimal documentation at release and keep building on it with subsequent releases, you should do it. Few of us have time to write the kind of quality documentation that covers all the solutions listed above at release time, but the fallacy is that once released, we think we're done. We move on to other projects. This shouldn't be the mindset. Release should be a kind of day 1 of the documentation. Iterate and improve through continual feedback.

{{site.data.alerts.ad}}Modern companies go online with their documentation and user manuals. To start your own documentation site today, just use <a href="http://bit.ly/clickhelponlinedoctool">ClickHelp</a> &mdash; sign up and start writing in minutes using this hosted technical writing tool.{{site.data.alerts.end}}



