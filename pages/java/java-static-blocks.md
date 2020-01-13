---
layout: page
title: 'Java: Static blocks'
permalink: /java-static-blocks/
date: 2015-01-01 20:24:53.000000000 -08:00
categories:
- java
jtype: notes_java
---

> Static blocks are handy bits of code that let you define one block of code and have it be included in every constructor. Let's consider an example (in the form of a different class) in Listing 2-17.
>
> Listing 2-17\. Static block example
>
> package com.bryantcs.examples;
>
> public class StaticBlockClass {
>
> private static String name;
>  private String whichOne;
>
> static {
>  name = "StaticBlockClass";
>  }
>  public StaticBlockClass(int identifier) {
>  whichOne = Integer.toString(identifier);
>  }
>
> public StaticBlockClass(String identifier) {
>  whichOne = identifier;
>  }
>
> }
>  -- Java 7 for Absolute Beginners