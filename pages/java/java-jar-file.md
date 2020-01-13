---
layout: page
title: 'Java: JAR file'
permalink: /java-jar-file/
date: 2015-01-03 18:29:54.000000000 -08:00
categories:
- java
jtype: notes_java
---

JAR is like Zip but for Java files. A JAR file simply contains a bunch of Java files and resources.

## Extract a JAR

Open Terminal and type this, changing sample.jar to your jar file's name:
{% highlight html %}
xf sample.jar
{% endhighlight %}

## Export to JAR

In Eclipse, got to **File > Export > Java > Jar**.

If you're trying to share source files, include the following option in the export settings: "Export Java source files and resources".

If you're exporting your code for someone to use, just export the class files.

## Adding a JAR file directly in Eclipse

If you receive a JAR file from someone, you can add the JAR file directly into your Eclipse project. Eclipse will then give you access to the classes without requiring you to extract them from the JAR.

Here's how you add the JAR to a project in Eclipse. After you create a Java project, create a new folder by going to **File > New > Folder**. Call it "lib". Then import the JAR file into the lib folder by going to **File > Import > General > File**. Alternatively, you could just copy the JAR file manually into that folder by navigating to it in your workspace.

You then need to add the JAR to your class path, which you can do by right-clicking the lib folder and choosing **Build Path > Add to Build Path**. Alternatively, you can add the JAR file to your project by right-clicking your project and selecting **Properties**. In the dialog box, select **Java Build Path**, then click the **Libraries** tab, and then click **Add JARs** and browse to the JAR.

For details, see section 25 in the [Vogella Eclipse IDE Tutorial](http://www.vogella.com/tutorials/Eclipse/article.html).