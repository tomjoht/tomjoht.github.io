---
layout: page
title: 'Java: break'
permalink: /java-break/
date: 2015-01-01 19:32:32.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* Break out of the current looping statement and move to the next statement

Eclipse example: loops. Also see the while_loop example.

## Detailed description

> Many programming languages offer some form of break statement, because the need to stop the current execution path when some condition is met is a common problem. The break statement without a label moves the execution point (the bit of code the program is currently running) to the next statement that is outside of whatever structure contains the break statement. The only structures that can contain break statements are for, while, and do-while loops and switch statements.
>
> The break statement has two forms, one (the most commonly used form) without a label and one with a label. We see several examples of break statements throughout this chapter. A break statement with a label breaks an outer loop, meaning that it is useful only within nested loops.
>
> From Java 7 for Absolute Beginners

By label, break would be like this:

king:

```java
for (int i = 0; i < 8; i++) {
for (int j = 0; j < 8; j++) {
if (pieces[i][j].equals("Black King")) {
x = i;
y = j;
break king;
```