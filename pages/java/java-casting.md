---
layout: page
title: 'Java: Casting'
permalink: /java-casting/
date: 2015-01-01 19:33:32.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* A way of converting one value type to another

Eclipse example: casting

## Detailed description

Casting is a way of converting one value type to another. In Java, values have value types allotted for them. You don't just create a variable and set it to any number, because the system has to reserve space for that value. Larger values need larger amounts of space reserved.

```java
byte 2;
int 600;
```

It would be inefficient to allot all values the same space in your system. You can change the value types from one to another. This is called casting.

Suppose you have this:

```java
byte myByte = 20; // max is 27
short myShort = 67;
int myInt = 899;
long myLong = 88;
float myFloat = 235.5f;
double myDouble = 8000.7;
```

Now you want to convert your long to a double. You can't do it because the double doesn't fit into the long.

```
myLong = myDouble;
System.out.println(myLong);
```

However, the reverse would work:

```
myDouble = myLong;
System.out.println(myDouble);
```

But now you have the problem that you're using more memory than needed to accommodate the myDouble. It only needs to hold a long value. So you cast it like this:

```
myDouble = (double)myLong;
System.out.println(myDouble);
```

This changes the value type to double.

## More reading

[Casting in Java](https://howtoprogramwithjava.com/java-cast/)