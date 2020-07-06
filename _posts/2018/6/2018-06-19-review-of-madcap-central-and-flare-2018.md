---
title: "MadCap Flare 2018 and MadCap Central Review for the May 2018 Release -- Guest post"
categories:
- technical-writing
keywords:
description: "The following is a guest post from <a href='#unacogavin'>Una Cogavin</a>, a certified MadCap Advanced Developer and Flare consultant. In this post, Cogavin reviews Flare 2018 and Central and explains the features she finds most useful in these tools."
bitlink: http://bit.ly/flarecentralcogavin
---

*Note: MadCap Software is one of the sponsors of this site.*

## Introduction

MadCap Software recently released their latest versions of MadCap Flare ([MadCap Flare 2018](https://www.madcapsoftware.com/products/flare/)) and [MadCap Central](https://www.madcapsoftware.com/products/central/).

MadCap Flare is a powerful, XML-based application for technical documentation that allows you to create, manage, and publish content to a variety of formats, including print, online, desktop and mobile. MadCap Central is a cloud-based, centralized solution for MadCap Flare project hosting. It also includes build automation, task management, checklists, and team collaboration, contribution, and review functionality. Yes, you can integrate all those processes with a single tool! I was eager to get the latest releases to see how MadCap Software has progressed in their goal to make my life easier, at least at work!

My favorite new features in MadCap Flare are the HTML5 side navigation output and the cloud-based contribution and review workflow. They have also incorporated the Analyzer tool into MadCap Flare, which is a great add-on. And now you get MadCap Mimic included in the MadCap Flare license (though it is still a separate download and install). There are other new features and improvements, but I'm going to focus this review on my favorites.

## HTML5 Side Navigation Output

When MadCap introduced the HTML5 top navigation output type, everyone went wild for it, including me. It brought a fresh, modern look to online Help systems. However, I soon stumbled upon the difficulty of having too many major topic categories, which couldn't easily fit across the top navigation bar.

Not a problem &mdash; you just needed to put your information architecture hat on and narrow down the categories, or you might have added links to landing pages where you mapped out the lower-level categories there. In either case, for large documentation sets, you ended up creating a large and intricate web of navigation. It really did seem like the side navigation system was best for large sets of documentation, so you might have gone back to the HTML5 tri-pane target.

You wanted your side navigation back! But you also wanted a modern looking frameless HTML5 site.

Now you can have HTML5 side navigation within minutes. And you can easily add top navigation too. I achieved this by using the HTML5 left navigation output type and then adding a table to the project's home page that included hyperlinks, drop-downs, proxies, and cross-references.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/HTML5-LeftNav-1.png" style="border: 1px solid #dedede"/>

I added a table with one row to the default Home.htm page, and inserted as many columns as needed. In the first column, I added a hyperlink to an external knowledge base, but it could have easily been a cross reference to an internal topic if the help system included the knowledge base content.

In the second column, I added a drop-down text tag and then inserted cross references to eLearning topics. In the third column, I added a concepts proxy to point to training content. In the fourth column, I used a relationships proxy. (I don't have the relationship proxy working yet within this context, but I am hopefully.) And in the fifth column, I added another hyperlink to an external site.

The end result was a HTML5 left navigation help system that also included top navigation and great search capabilities. I was pretty happy with the output.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/HTML5-LeftNav-2.png" style="border: 1px solid #dedede"/>

But, of course, I would like MadCap to create some new types of TOC proxies that allow me to customize and build this alternate top navigation with the HTML5 side navigation output type.

## Cloud-based Contribution and Review Workflow

Depending where you work, getting a SME to review content can be a technical writer's biggest achievement. I've always tried to remain flexible and to adapt to the reviewer's work style. (Do they want to chat? Use MS Word? Write large slabs of content? etc.) However, there are plenty of times when more than one reviewer needs to provide feedback.

I like to include the product manager, a QA engineer, and a technical support engineer in the review. In fact, the more people who review the content, the better! This makes a review workflow potentially more complex as not everyone will have the same work style. And usually reviewers do not have access to or have the skills to use a particular reviewing tool.

Reviewing is a necessary task, but it can be time-consuming for the writer, especially when reviewers disagree on the content. Providing a single review source in which subject matter experts can concurrently edit, review and see each other’s comments is a huge help. And when the tool is easy to use and does not require a client to be downloaded, you are on to a winner.

MadCap Software has launched a new cloud-based, streamlined, contribution and review workflow for MadCap Central. Subject matter experts do not need to have a MadCap Flare license, but your organization must have a MadCap Central license with users invited to Central as either Authors or Subject Matter Experts. Central gives you the ability to make this distinction when inviting users to your Central license.

To send a file or topic for review, in MadCap Flare, select the Review menu, select one or more files from the content explorer, and click Send for Review. When the Review Wizard appears, choose the Send to MadCap Central option and click Next.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/Flare-Author1.png"/>

When the Reviewers list appears, select the Central users to whom you want to send the review, then click Send. These are the users that have been invited to your Central license as either Authors or SMEs. Even full authors can review and contribute to files in Central.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/Flare-Author2.png"/>

The reviewer gets a notification that he or she has content to review and edit. When a subject matter expert signs in to MadCap Central, he or she will see a simple user interface with a list of files to review. The reviewer clicks on a file in the Pending list to open it. The reviewer can directly add content, delete and edit content, or add comments.

The reviewer will see all the other edits that the other reviewers have provided and edits among Authors and Subject Matter Experts can happen simultaneously. When the reviewer is done, he or she clicks Submit. If you submit changes and realize that you have forgotten to add something, then you can view the file in the submitted tab and make more changes.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/Editor-SME.png"/>

Once all the reviewers submit their reviews and contributions, you can view and incorporate the feedback in MadCap Flare. To review the feedback, select the Review menu and then click File Reviews. Select Inbox and a list appears showing all the submitted reviews. (Note that a file only appears here if all reviewers have submitted feedback on the file.)

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/Flare-Author3.png" style="border: 1px solid #dedede"/>

Opening the reviewed file closes the review process in MadCap Central. (The file's status changes to Closed.) You must close the review before you can accept or reject changes and incorporate the feedback into the MadCap Flare source file. (Hint, if you want to just see what reviewers have been saying, then open the file within MadCap Central. As the author you can make edits to your sent files in Central as well, and your changes will be tracked.)

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/Flare-Author4.png"/>

You can accept and reject changes using the buttons in the Changes section of the Review menu. However, you will not see these changes in the source file until you click the Accept the file button.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/Flare-Author5.png"/>

MadCap has kept the workflow and user interface simple and intuitive. Reviewers should not have any problems adopting this new review process. I'm delighted with it!

## Summary

MadCap Software continues to integrate with the best third-party products when they are clearly industry standards and leaders (for example, supporting Git and sending build notifications to Slack). They are good at making sure their tools fit into existing best-of-breed environments, and they understand how centralizing tools and tasks help to provide a more streamlined documentation process.

If your group is small or you do not have access to software development environments (for example, you work in the financial, educational, or health care industries), you get everything you need out-of-the-box by adding a MadCap Central license. In addition, Central scales as your team grows, giving you the flexibility to easily manage source control, tasks, contributions from SMEs, and programmatic builds.

Overall, I am very happy with the new MadCap Flare and MadCap Central releases. There are some additional new features in the new releases that motivate you to upgrade as soon as possible. For example, MadCap Flare now supports Elasticsearch, which brings you the power of Google Search while allowing you to keep your content private. I've only touched on a couple of my favorites here, so go to [New Release: MadCap Flare 2018 Now Available](https://www.madcapsoftware.com/madcap-flare-2018/#content) to see all the new features.

## About Una Cogavin {#unacogavin}

Una Cogavin is a certified MadCap Advanced Developer and Flare consultant. She is a director of The Docs Team, which specializes in converting all types of legacy content to MadCap Flare. In addition, The Docs Team supports software start-ups with an out-of-the-box, virtual, on-demand technical publications team. See [www.thedocsteam.com](http://www.thedocsteam.com) for more information.
