---
layout: page
title: 'Java: Classes'
permalink: /java-classes/
date: 2015-01-01 19:26:34.000000000 -08:00
categories:
- java
jtype: notes_java
---


## Quick summary

* a class is a template used for creating objects
* must be initialized with an object to use
* can be initialized with arguments
* uses Upperclass camel case
* class name must match file name
* you can only have 1 *public* class per Java file, but you can have multiple non-public classes in the same file
* contains fields (primitives or object references) and methods

## Eclipse example

* object_example

## Example

`Dog.java`:

```java
package dog;

public class Dog {

	String breed;

	int age;
	int size;

	String color;

	void bark(){  
		System.out.println("bark bark bark");
	}

	void hungry(){   }

	void sleeping(){   }

}

`App.java`:

```java
package dog;

public class App {

		public static void main (String[] args) {

		Dog d = new Dog(); // make a new object
		d.bark(); // call the bark method on my object
    	d.size = 40; // set the size for the object
	}

}
```

Here's another example. In this case, everything is in one class file called Song.java. The `main` method can appear inside of a class, which is perhaps easier to follow for these short examples.

`Song.java`:

```java
package song;

public class Song {

	void setArtist(String name) {
		System.out.println(name);
	}

	void setTitle(String song) {
		System.out.println(song);
	}


	public static void main (String[] args) {

	Song t2 = new Song();

	t2.setArtist("Travis");
	t2.setTitle("Sing");

	Song s3 = new Song();
	s3.setArtist("Sex Pistols");
	s3.setTitle("My Way");

	}

}
```

What it returns when you run:

```
Travis
Sing
Sex Pistols
My Way
```

Here's another example:

`Puppy.java`:

```java
package puppy;

public class Puppy {
	String name;
	int age;

}
```

`App.java`:

```java
package puppy;

public class App {

		public static void main (String[] args) {

			// Following statement would create an object myPuppy

			Puppy myPuppy = new Puppy();
			myPuppy.name = "tommy";
			myPuppy.age = 3;

			System.out.println("my puppy's name is " + myPuppy.name + ", and he is " + myPuppy.age + " years old.");

	}

}
```

Output:

```
my puppy's name is tommy, and he is 3 years old.
```

* * *

This bicycle example comes from [Oracle's Java tutorial](https://docs.oracle.com/javase/tutorial/java/concepts/class.html).

```java
class Bicycle {

int cadence = 0;
int speed = 0;
int gear = 1;

void changeCadence(int newValue) {
cadence = newValue;
}

void changeGear(int newValue) {
gear = newValue;
}

void speedUp(int increment) {
speed = speed + increment;
}

void applyBrakes(int decrement) {
speed = speed - decrement;
}

void printStates() {
System.out.println("cadence:" +
cadence + " speed:" +
speed + " gear:" + gear);
}
}
```

And here's the instance:

```java
class BicycleDemo {
public static void main(String[] args) {

// Create two different
// Bicycle objects
Bicycle bike1 = new Bicycle();
Bicycle bike2 = new Bicycle();

// Invoke methods on
// those objects
bike1.changeCadence(50);
bike1.speedUp(10);
bike1.changeGear(2);
bike1.printStates();

bike2.changeCadence(50);
bike2.speedUp(10);
bike2.changeGear(2);
bike2.changeCadence(40);
bike2.speedUp(10);
bike2.changeGear(3);
bike2.printStates();
}
}
```

## Static classes

If a class is static, it means you don't have to create an instance of the class.

> On a class, the static keyword means that only one instance of that class exists. You can't create a new instance of a static class
>  -- Java 7 for Absolute Beginners

## "Instantiating a class"

Instantiating a class is the same as creating an object from the class; also referred to as initializing a new object. You create an "instance" of the class.

All objects of a class have access to the methods and fields of that class.

## How you create a new object

Constructors create the objects. The `new` keyword is the default constructor for classes. (You can use "construct" instead of "create").

You use a constructor to construct the object from the class (template). The most common constructor is the `new` keyword, but there are other ways to instantiate a class as well.

You could also create an object reference without assigning any value to it. You might see something like this:

```java
Point originOne;
```

In this case, `Point` is the class and `originOne` is a reference variable to the class. But until you invoke the `new` keyword, you haven't actually created a new object here.

## Fields

The variables declared inside a class are referred to generically as fields. However, you can be more specific with the terminology:

* local variables: fields inside a method or constructor
* instance variables: variables inside the class but not in any method. (They only become alive when you instantiate the class.)
* class variables: variables within a class but with the static keywords

## Questions to ask about a class

* Is it public or private?
* What fields and methods does the class have?
* Does the class inherit another class?
* What does the class do?
* What does the class return?
* How is the class instantiated?

## Fields

A field can be an object reference:

```java
Address address;
```
Here `address` is the object that refers to the class `Address`. We haven't instantiated the class yet until we invoke the class's constructor. Here we just define the object reference. The class isn't actually initialized.

## Abstract versus concrete

Classes are by default concrete. If they're abstract, you can't instantiate them. Instead, you must extend them to create a subclass from them.
