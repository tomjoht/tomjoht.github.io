---
layout: page
title: 'Java: Garbage collection'
permalink: /java-garbage-collection/
date: 2015-01-01 19:49:43.000000000 -08:00
categories:
- java
jtype: notes_java
---

* Garbage collection is Java's process for freeing up memory by removing old object references that are no longer valid.

> Java relies on garbage collection. A garbage collector removes unused objects from memory and lets your programs re-use memory rather than constantly grow. For very small programs, this constant growth doesn't matter much. However, even a program of fairly low complexity and scale can quickly chew through a lot of memory. Therefore, most programs really need some kind of garbage collection mechanism.
>
> When they use many other languages, including C++, programmers have to manage memory themselves, writing code to remove objects from memory at the right time. Java frees developers from this problem. That's not to say that Java is better than C++. Both languages have their strengths and weaknesses. Many developers who prefer Java would tell you that having to manage memory yourself is a weakness in C++ and that garbage collection is a strength of Java. Conversely, many C++ developers would tell you the opposite. Both are true: Garbage collection can be a problem in Java, yet is also an inherent feature and very powerful if managed correctly.
>  ...
>  If an object no longer has references held on it by other objects, that object gets garbage collected. In other words, once an object no longer has any other objects using it, that object is ready to be removed from memory. Yet another way to say this is that the object is now unreachable, meaning that no other bit of code can reach that object.
>  Java 7 for Absolute Beginners