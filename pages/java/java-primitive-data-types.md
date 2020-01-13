---
layout: page
title: 'Java: Primitive data types'
permalink: /java-primitive-data-types/
date: 2015-01-01 20:17:16.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* **byte**: a whole number between -128 and 127.
* **short**: a whole number between -32,768 and 32,767.
* **int**: a whole number between -2<sup>31</sup> and a maximum value of 2<sup>31</sup>-1.
* **long**: whole number between -2<sup>63</sup> and a maximum value of 2<sup>63</sup>-1\. The long is the 64-bit, whereas the int is 32-bit.
* **float**:
* **double**: Used for decimals.
* **boolean**: true or false values only.
* **char**: range between 0 and 65,535.

## More detail

> The Java programming language is statically-typed, which means that all variables must first be declared before they can be used. This involves stating the variable's type and name, as you've already seen:
>
> int gear = 1;
>
> Doing so tells your program that a field named "gear" exists, holds numerical data, and has an initial value of "1". A variable's data type determines the values it may contain, plus the operations that may be performed on it. In addition to int, the Java programming language supports seven other primitive data types. A primitive type is predefined by the language and is named by a reserved keyword. Primitive values do not share state with other primitive values. The eight primitive data types supported by the Java programming language are:

See more detail from Oracle about [Primitive Data Types here](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/datatypes.html).

> Primitive means that no class exists to define a variable of that type.
>  -- Java 7 for Absolute Beginners

If you need decimals, you must use double or float. There's also a type called `BigDecimal` (which is similar to `BigInteger`), which can hold any number. But it takes up more memory. With floats, you put an `f` at the end of the value. Otherwise it gets cast as a `double`.