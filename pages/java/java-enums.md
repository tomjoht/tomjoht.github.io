---
layout: page
title: 'Java: enums'
permalink: /java-enums/
date: 2015-01-01 19:42:11.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* a fixed set of values (constants)
* enums is its own entity type (similar to a class)
* style convention is full caps

Eclipse example: enums

## Detailed description

* use when you want to have a fixed set of values for a specific field.

Create by going to New > Enum.

* stands for "enumerated" or "enumerations"

It's almost like a class. An enum isn't just another type of variable for your class. It's a sort of thing that's its own entity, like a class is its own entity.

> As Listing 3-11 shows, the declaration of an enumeration consists of the enum keyword, a name for the enumeration, and the values that comprise the enumeration. The values are just names and have no type of their own. That works because we need unique identifiers but don't need a type for each one.
>
> The value of enumerations is that they are type-safe (meaning that it can't be confused with another type—enums used to be created with integers, so confusing an enum with an integer was a real problem). Without enumerations, we'd have to set up constants in a different way—usually with integers, as shown in Listing 3-12.
>
> Listing 3-12\. Constants to define directions
>
> public static final int NORTH = 0;
>  public static final int EAST = 1;
>  public static final int SOUTH = 2;
>  public static final int WEST = 3;

-- Java 7 for absolute beginners