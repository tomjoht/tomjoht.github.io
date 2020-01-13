---
layout: page
title: 'Java: Comments'
permalink: /java-comments/
date: 2015-01-01 19:37:17.000000000 -08:00
categories:
- java
jtype: notes_java
---


End of line comments:

```java
// comment
```

Convenient but if you write code after the //, it all gets grayed out.

Block comments:

```
/* comment */
```

Advantage is that they can appear anywhere, span multiple lines, etc.

> And here's a line of code with a comment in the middle of it:
>
> int counter /* comment */ = 0;
>  Please don't do that. It's legal, but it's poor coding practice, because it makes the code harder to read.
>  -- Java 7 for Absolute Beginners

Note that Javadoc comments are similar to block comments but with an extra asterisk at the beginning:

> /**
>        * This method makes a Cat object chase the given Mouse object.
>        * @param mouse an instance of the Mouse class for our cat to chase
>        */'
>        -- Java 7 for Absolute Beginners

Really important tip: Don't worry about line breaks when you're writing comments. Press Command + Shift + F and it formats everything. You want to keep comments to about 80px. Get into the issue of line breaks with code. Sometimes line breaks with commands can be problematic -- such as wrapping comment code.