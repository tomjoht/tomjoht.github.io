---
title: Can you replace a CCMS with version control such as Git or Mercurial?
categories:
- jekyll
keywords: git, bitbucket, ccms, collaboration, sharing, content re-use, global project linking
description: "Instead of resorting to an expensive Component Content Management System (CCMS) to facilitate content re-use and collaboration across projects, you can probably get by with some basic version control tools that software developers have been using to collaborate on projects for years."
---

For most of my technical writing career, although I've often worked with other technical writers, the projects have usually been independent of each other. The other technical writers worked near me but on other projects. We coordinated with styles and tools, but we didn't have to push topics from one project into another.

Now, however, I'm documenting a product whose primary purpose is to be a component integrated into other products at the same company. As a result, a lot of my documentation needs to be integrated into the documentation of other products.
 
Previously with the Jekyll theme I set up, I architected it so that each project was entirely independent from other projects. However, sharing content across independent projects doesn't work. There's no way to push Topic A located in Project 1 into Project 2 when each Project 1 and 2 are siloed off from each other.

I started to look into options for a Component Content Management System (CCMS) to facilitate sharing of content across projects. But looking at CCMS options wasn't helpful, since most CCMSs require DITA as the format, cost tens or hundreds of thousands of dollars, and are complex to implement. They don't really make sense unless you have a large team of writers (e.g., 25-100 writers) with a big corporation budget.

I was reading an article by Eliot Kimber about how to accomplish the same collaborative sharing of content through version control systems and other free tools. In [DITA without a CMS: Tools for Small Teams](http://drmacros-xml-rants.blogspot.com/2014/01/dita-without-cms-tools-for-small-teams.html), Eliot says:

>At IBM we had nothing more than mainframes and line-oriented text editors along with batch composition systems yet we were able to author and manage libraries of books with sophisticated hyperlinks within and across books and across libraries. How did we do it? Mostly through some relatively simple conventions for creating IDs and references to them and a bit of discipline on the part of writing teams. 

He then explains the major components needed for this solution:

>The net of my current thinking is that this tool set: 
 <ul><li>git for source content management</li>
 <li>DITA Open Toolkit for output processing</li>
 <li>Jenkins for centralized and distributed process automation</li>
 <li>oXygenXML for editing and local production</li>
 </ul>

Eliot's article gave me a lot of hope that I could reproduce the basic collaborative features without a CCMS. 

To facilitate collaboration, I decided to re-architect my Jekyll theme to allow multiple projects within the same theme. We moved each writer's project as a subfolder into the same Jekyll project. 

We then put the project into Mercurial, which is revision control similar to Git. Our developers already have a whole workflow and architecture set up around Mercurial, so we just plugged into it.

Then each writer on the team cloned the project and started committing to it. There's a bit of a learning curve to collaborating with version control, but our workflow is pretty simple and we didn't run into too many merge conflict situations. For the most part, we each work on files within our own sub-directories. (As long as you pull before committing, you avoid most merge conflict situations.)

So far it's going pretty well. Like Github, the browser-based interfaces of version control show you all the recent commits and a diff of the pushed files. Seeing the list of updates from other team members reminds me of my days working with Mediawiki, when I could see that changes that various community members were making to the project each day.

It's cool to see what other writers are working on, and to be part of the same overall project. When everyone worked independently, even if they were sitting in the desk next to me, I wasn't sure what they were actually doing.

Can version control software really replace the need for a component content management system? There are some CCMS features that version control can't replicate, such as:

* Workflows with authoring and publishing (moving content from draft to finished to review statuses, with email notification to different people based on the document's status, etc.).
* Browser-based reviewer interfaces and review tickets (similar to what you see in easyDITA).
* Automated results matching to indicate redundant content, which you can then consolidate into the same source to reduce translation costs (e.g., Paligo has this).
* Options for additional metadata about the content, such as creation date, author, status, revision number, product, and other tags.

With version control systems, you can still collaborate, but you don't have the layer of robustness that a CCMS provides. But do you really need all of these extra features? Software developers have been using version control to collaborate on projects for years. They basically solved the collaboration problem decades ago. Technical writers can simply leverage the same tooling. 

Some companies have built more elaborate web interfaces around version control. Platforms like Github and Bitbucket (from Atlassian) give you a lot more collaborative capabilities. These platforms provide pull requests, allow you to log issues, add notes on a wiki, comment on commits in a line-item fashion, and more.
 
At the next STC Silicon Valley chapter meeting on November 16, Richard Mateosian will be talking about [version control workflows for help content](http://www.stc-siliconvalley.org/2014/10/08/version-control-workflows-for-help-content/). If you're interested in this topic, you can expect this meeting to provide a lively and interactive discussion. 

Well, that's it for now. If you're using version control to collaborate with other writers, I'm interested to hear any tips or feedback about what's working well or what you find challenging. 