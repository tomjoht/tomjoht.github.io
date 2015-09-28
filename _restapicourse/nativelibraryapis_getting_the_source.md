---
title: "Getting the Java source"
permalink: /nativelibraryapis_getting_the_source/
course: "Documenting REST APIs"
type: notes_docapis
weight: 7.2
---

## About the sample project

In order to understand documentation for Java APIs, it helps to have a context of some sort. As such, I created a simple little Java application to demonstrate how the various tags get rendered into the Javadoc.

The sample Java project is a little application about different tools that a coyote will use to capture a roadrunner. There are two classes (ACMESmartphone and Dynamite) and another class file called App that references the classes. 

This program doesn't really do anything except print little messages to the console, but it's hopefully simple enough to be instructive in its purpose &mdash; to demonstrate different doc tags, their placement, and how they get rendered in the Javadoc.

## Clone the source on Github

One of your immediate challenges to editing Javadoc will be to get the source code into your IDE. The acmeproject is [here on Github](https://github.com/tomjohnson1492/acmeproject). 

First clone the source using version control. We covered some version control basics <a href="{{ "/pubapis_version_control" | prepend: baseurl }}">earlier in the course</a>. 

You can clone the source in a couple of ways:

```
git clone https://github.com/tomjohnson1492/acmeproject
```

Or click **Clone in Desktop** and navigate to the right path in Github Desktop.

If you're working with a specific branch of the doc, you could create a branch and check out the branch. However, we are keeping things simple here. 

(If you don't want to clone the source, you could click **Download ZIP** and download the content manually.)

## Open the right location in Eclipse

1. After you've cloned or downloaded the Java project, in Eclipse, go to **File > New Java Project**.
2. Clear the **Use default location** check box, and then browse to where you cloned the Github project.

<img src="{{ "/images/restapicourse/importjavaproject.png" | prepend: site.baseurl }}" alt="Import existing Java project" />

3. Click **Finish**.

The Java files should be visible within your Eclipse IDE.