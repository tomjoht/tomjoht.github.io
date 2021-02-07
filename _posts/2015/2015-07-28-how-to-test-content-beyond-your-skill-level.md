---
title: How do you test content that's beyond your skill level?
categories:
- technical-writing
tags: [series_testing_documentation]
series: Testing your documentation
jtype: notes_testing_documentation
keywords: testing complex content, admin server setups
description: "Sometimes with developer documentation, some of the content may be beyond your skill level to set up and test. In these cases, you can ask developers for help in setting up your system so that you can run the necessary tests. Alternatively, you can test the instructions with users and gather feedback indirectly."
weight: 1.5
---
{% include series/seriesTagTestingDocs.html %}

This is another post in my series on [testing documentation](https://idratherbewriting.com/2015/07/07/testing-your-instructions/). 

## Series recap
Testing your docs is one of the great principles of technical writing. Not only does testing all aspects of your documentation help you discover missing or inaccurate steps, it also lets you discover bugs, make recommendations for improving the product, and helps you be a power player on the team.

## Response to tweets about testing
In some brief Twitter responses to my previous posts on testing docs, a couple of people said:

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">If there are tech writers who don’t do this, if testing isn’t part of their DNA, how are they still getting paid? <a href="https://t.co/pPrup6aLr8">https://t.co/pPrup6aLr8</a></p>&mdash; Chuck Martin (@chuck_martin) <a href="https://twitter.com/chuck_martin/status/618569293538553857">July 7, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">It&#39;s a key to getting a job. I won&#39;t hire a writer if they don&#39;t test their docs. <a href="https://t.co/aCjogtbGdE">https://t.co/aCjogtbGdE</a></p>&mdash; Neal Kaplan (@NealKaplan) <a href="https://twitter.com/NealKaplan/status/618524438150017024">July 7, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

I guess testing isn't such a fascinating idea in most people's eyes. It's more like, *Duh, of course technical writers should test all their documentation. You mean you're not????*

And while I agree, I also think the ease of testing depends on how technical the content is. When I was working in GUI documentation, testing everything was the norm, because no one ever supplied any content for me, and test scenarios were easy to set up and execute.

With API and developer documentation, though, it's a different story. The content is more complicated, and sometimes it's written by engineers and submitted through technical writers for editing, clarity, polish, and publishing &mdash; but not always authoring. 

When technical writers start functioning as editors/curators/publishers more than authors, it's easy for testing to get overlooked. For example, if an engineer writes up instructions on how to install mod_fastcgi on a Red Hat Enterprise Linux server, do you say *wait a minute there, pal. Let me walk through all of these Red Hat steps and see how accurate they are?* Or do you just edit the content for clarity and publish? 

Ideally, you'd say the former &mdash; and pause everything until you've run through all the steps. But there's a certain level that's not documented. In this case, it's the setup of Red Hat Linux itself. To test the instructions, you'd first have to install Red Hat Enterprise Linux on a server, and *then* you download and install the necessary mod_fastcgi packages. 

You can certainly do this, but there's usually an assumption that the user already has Red Hat set up on their system, or else they wouldn't need to know anything about mod_fastcgi. As a technical writer, to test instructions, a lot of times you have to do some initial setup that the user is already assumed to have done.

## More examples of testing in API doc, not GUI doc

Here's another example. Let's say you have some API functions for a C# API. To test them, you'd need to install a virtual machine on your Mac (through something like Fusionware), get a Windows OS license, enable IIS, install Visual Studio, and build a sample .NET app to first generate data. Only then can you start to test the API calls &mdash; assuming you know enough about C# to make a valid application.

Can you see how in these scenarios, testing documentation is not such an easy task?

Here's another example. Let's say you're documenting how to set up an Amazon Web Services (AWS) server environment. The server architecture involves Rabbit MQ, Postgres RSD, Aerospike, Tableau, EMR, data policies in S3, and about 5 other technologies you've never heard of. The documentation is for an IT Operations team. How do you really test all of this if you've never worked with any of these technologies before? How do you even download what you need to run through step 1?

In this scenario, testing the actual steps of the architecture deployment is a huge undertaking. If you're just editing, though, you could do it in an afternoon. Again, though, if you just edit the content, the accuracy and completeness will likely be poor.

## Getting help from QA and sample applications
Fortunately, in any developer environment, there is almost always a QA team. And the QA team no doubt has written a test app that allows you to easily implement the functions you need in a sample application. Many times QA team members are more accessible and understanding than engineers, who usually feel the world isn't smart enough for them. 

Many companies also include reference or simple applications with the code they distribute. These reference applications might show how to activate the license and call the API with various methods. These kinds of sample applications are extremely helpful in getting set up because they already contain full examples of working code.

## Knowledge must be wide, not deep
Another comforting fact is that with tech writing, knowledge of technologies must be *wide* but not necessarily *deep*. For example, for our Java API, I was able to install Tomcat, deploy a couple of web apps, and follow the Java code in our sample reference app (which is a JSP page). I knew just enough about each technology to scrape by. But if I had to do more complicated tasks, such as code the reference implementation from scratch myself, I would have a tough time.

Overall, developers and QA usually understand that technical writers aren't programmers. If you ask the team for help, they can usually help set up your system with a basic implementation so you can move forward with the testing that you need to do. 

You could also research the tasks on your own and figure out how to set up the technology. Many times the setup isn't nearly as hard as it seems.

However, make no mistake. Testing docs that are extremely complex is going to be tough. The easy route is just to edit the content and get engineers to sign off on the accuracy. But without testing the instructions yourself, there will no doubt be gaps and errors, as there always is with untested instructions.

## Indirect testing
If it's really impractical to test things yourself, you can try to get target users to test the content and give you feedback. This is the sort of user testing you should do anyway. However, unless you get a lot of feedback, the users who test the instructions might be advanced users to begin with (and therefore may be skipping around in the instructions), or they may only glance through the instructions rather than really doing all of the steps.

## Conclusion
Even if it takes a long time to set things up initially, the setup will usually serve you well in the long run, because you'll be able to better understand the material, make and run your own experiments, and learn how to do things yourself. This foundation will greatly simplify documentation efforts in the future, and your role as a tech writer won't merely be that of a scribe. 