---
layout: page
title: 'Java: Share files with others using Git and Github'
permalink: /java-share-files/
date: 2015-01-03 22:03:12.000000000 -08:00
categories:
- java
jtype: notes_java
---

What's the best way to share Java files with others, especially in a tutorial scenario? Here's one way to share files using Github and Eclipse.

## Prerequisites

If you're sharing Java files, you need Eclipse and the JDK as well as Git. If you're just sharing regular files, you only need Git.

* **Git**. Open a command prompt and type `git --version` to see if you already have Git installed. If not, [download and install Git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
* **Eclipse**. [Download and install Eclipse IDE for Java Developers](http://www.eclipse.org/downloads/) from the Eclipse downloads page.
* **Java Development Kit (JDK)**. Open a command prompt and type `java -version` to see if you have Java installed already. If not, [download and install the JDK](http://www.java.com/en/download/manual.jsp) appropriate for your operating system.

## Upload the Java projects to Github

**Note:** Only the person sharing the Java files needs to create the Github repository. Everyone else will clone and pull from this repo.

1.  [Create a Github repository](https://help.github.com/articles/create-a-repo/).
2.  In the right-side of the page, copy the HTTPS clone URL.

![cloneurl](/images/cloneurl.png)

For example, the Github repo URL for my Java samples is https://github.com/tomjoht/eclipse-java.git.

3.  On your computer, open a command prompt and type `pwd` to see your present working directory. Then create a subdirectory called "projects" or something similar by typing `mkdir projects`. Then `cd` to this projects directory.

**Tip:** Although you can put your directory anywhere, it's most convenient to use a subdirectory under the default directory your command prompt opens to.

4.  In the directory where you want to clone the repository, type the following, replacing `{repo_url}` with the actual URL of the Github repository (such as https://github.com/tomjoht/eclipse-java.git).

{% highlight html %}git clone {repo_url}{% endhighlight %}

5.  All the files download when you clone the repo.

6.  Add the Java projects to the repository:

{% highlight html %}git add . {% endhighlight %}

The `.` adds all file types. (It's not a typo there.)

7.  Commit the files:

{% highlight html %}git commit -m "your commit msg"{% endhighlight %}

If you just type `git commit` you'll be prompted to add a commit message in a text editor using VIM.

8.  Push the files to the repository:

{% highlight html %}git push{% endhighlight %}

## Download the Java projects from Github

If you're sharing Java project files, this section is relevant. If you're just sharing regular files, skip this section.

Participants who want to grab the files from the Github repo follow these steps. If you created this repository, you don't need to follow these steps.

1.  Browse to the Github repository you want to pull. For example: [https://github.com/tomjoht/eclipse-java.git](https://github.com/tomjoht/eclipse-java.git)
2.  On the right-side of the page, copy the HTTPS clone URL.

![cloneurl](/images/cloneurl.png)

For example, my Github repo URL is https://github.com/tomjoht/eclipse-java.git.

* `cd` to a convenient directory, such as as `users/projects`.* In the directory where you want to clone the repository, type the following, replacing `{repo_url}` with the actual URL of the Github repository (such as `https://github.com/tomjoht/eclipse-java.git`).

{% highlight html %}git clone {repo_url}{% endhighlight %}

* All the files download when you clone the repo. To get updates to the repo at a later time, use the `pull` command:

{% highlight html %}git pull{% endhighlight %}

**Tip:** To see a list of git commands, type `git --help`.

## Import the projects into Eclipse

1.  In Eclipse, go to **File > New > Java Working Set** and create a working set called "Java Tutorials" (or something appropriate). A working set allows you to filter the projects shown in Eclipse's Project Explorer pane.
2.  Go to **File > Import > General** and select **Existing Projects into Eclipse**.
3.  Next to "Select root directory," browse to the cloned repository on your computer where you downloaded all the files from Github. Then select **Open**.
4.  Select the **Add projects to working set** check box, and then select the working set you created.
5.  Click **Finish**.