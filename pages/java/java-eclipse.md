---
layout: page
title: 'Java: Eclipse'
permalink: /java-eclipse/
date: 2015-01-03 18:56:08.000000000 -08:00
categories:
- java
jtype: notes_java
---

Eclipse, an open-source project, is the most common IDE for Java. Eclipse comes with its own compiler, so you don't have to download the JDK (Java Development Kit). You only need to download the JRE (Java RunTime Environment).

There are various flavors of Eclipse. You can implement different perspectives that show different tools for different languages. For Java programming, you need to download Eclipse IDE for Java Developers, which you can get from [http://www.eclipse.org/downloads](http://www.eclipse.org/downloads). Just make sure you download the right bit version (32 or 64) for your machine.

For a great tutorial on Eclipse, see [Vogella's Eclipse IDE Tutorial](http://www.vogella.com/tutorials/Eclipse/article.html).

## Eclipse workspaces

A workspace in Eclipse is where Eclipse stores all your files, including settings and other resources.

> The workspace is the physical location (file path) you are working in. Your projects, source files, images and other artifacts can be stored and saved in your workspace. The workspace also contains preferences settings, plug-in specific meta data, logs etc.
>
> You typically use different workspaces if you require different settings for your project or if you want to divide your projects into separate directories. [Eclipse IDE Tutorial](http://www.vogella.com/tutorials/Eclipse/article.html)

You can change workspaces at any time by going to **File > Switch Workspace > Others.**

## Eclipse perspectives

Eclipse uses the term _perspective_ to refer to a visual layout of appropriate panes for the task. You can add the J2EE and C++ components to Eclipse and then switch to these perspectives when you're editing those type of files. You can switch perspectives by going to **Window > Open Perspective > Other.**

You can drag around the panes that are visible. To revert to the factory default, go to **Window > Reset Perspective**.

## Closing and opening projects

When you open a project, the folder remains open. This uses some of Eclipse's memory and slows build time. Right-click a project and close it. Likewise, right-click a project to open it.

You can either remove or delete a project by right-clicking it. You can then choose whether to remove the project from the workspace or delete it from the disk. The former just removes it from displaying in Eclipse, whereas the latter actually deletes the project entirely.

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/deletingprojects.png" | prepend: site.baseurl }}" alt="" />

## Renaming classes or files

If you want to rename a class, you "refactor" it. Right-click the class file in the Package Explorer and choose **Refactor > Rename**. It will update both the name of the file and the class and any references to it.

## Exporting files to share projects

If you just want to share a project with another person, you don't need to export a JAR. Just go to **File > Export > General > Archive File**.

The recipient can import the files into their workspace by going to **File > Import > General > Existing Projects into Workspace**. Select the directory that contains all of your project files, and then click **Open**.

You'll see all of the projects available to pull them in. (Note: Don't try to ctrl+select multiple folders. Just select the root directory containing all the folders.)

When you export a project, it includes all of the settings files that exist in your own project folder.

## Working set

A working set is a set of folders that appear in your workspace view. For example, you might want to organize tutorials into one working set, and work projects in another working set. When you select a working set, the projects in your Project Explorer appear.

To create a new working set, go to **File > New > Java Working Set**. When you create or import projects, you can choose to add them to a particular working set.

## Package Explorer versus Project Explorer?

The views look nearly identical. Apparently if you install other plugins and perspectives, the Project Explorer's contents will show more files. See this [StackOverflow response](http://stackoverflow.com/questions/1265070/what-is-the-difference-between-the-eclipse-package-explorer-and-the-eclipse-proj).