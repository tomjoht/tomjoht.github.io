---
layout: page
title: 'Java: Class path'
permalink: /java-class-path/
date: 2015-01-03 18:48:13.000000000 -08:00
categories:
- java
jtype: notes_java
---


_Class path_ refers to a parameter that lets the Java Virtual Machine (compiler) know where to look to find the classes, packages and other files.

By default, the compiler looks in the current directory for the class files. If you're compiling from the command line using Javac (instead of compiling from Eclipse, which uses its own compiler instead of the JDK), you may need to specify the class path if the source files aren't in the current directory.

For more details, see [Setting the classpath](http://docs.oracle.com/javase/7/docs/technotes/tools/solaris/classpath.html).