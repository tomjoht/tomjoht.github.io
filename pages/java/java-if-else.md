---
layout: page
title: 'Java: If else'
permalink: /java-if-else/
date: 2015-01-01 19:58:05.000000000 -08:00
categories:
- java
jtype: notes_java
---

Eclipse example: if_statement

This is an example of `if else` logic:

```java
public static Direction findCardinalDirection (int degrees) {
if (degrees < 45) {
return NORTH;
} else if (degrees < 135) {
return EAST;
} else if (degrees < 225) {
return SOUTH;
} else if (degrees < 315) {
return WEST;
} else {
return NORTH;
}
}
```