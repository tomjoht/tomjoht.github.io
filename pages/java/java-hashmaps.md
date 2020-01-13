---
layout: page
title: 'Java: Hashmaps'
permalink: /java-hashmaps/
date: 2015-01-01 19:55:25.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary

* consists of key-value pairs
* HashMaps, TreeMap, and LinkedList
* class name: HashMap<Integer, String>

Eclipse example: hashmaps

## Example

```java
HashMap<Integer, String> map = new HashMap<Integer, String>();
map.put(5, "five");
map.put(6, "six");
map.put(2, "two");
map.put(1, "one");
map.put(9, "nine");
```

## Map methods

Here's how you add to the map:

```java
map.put(key, value);
e.g.,
map.put(5, "five")
```

Here's how you get a specific value from the map:

```java
map.get(5);
```

You pass in the key to the `get` method.

Then you could print out a specific key from the map like this:

```java
String gimmesomething = map.get(4);
System.out.println(gimmesomething);
```

## Iterate through the map

Here's how you iterate through this same map:

// Here's how you iterate through the map.

```java
for (Map.Entry<Integer,String> entry:map.entrySet()) {
int key = entry.getKey();
String value = entry.getValue();
System.out.println(key + ":"+ value);
```

You use a form loop here. Then you use the getKey method and getValue method to pull the specific key and values from the map.

## Other types of maps

There are a few other types of maps that are part of the Java Collections Framework. There is a TreeMap and a LinkedHashmap. Both of these other types of maps give you more control about how the items are sorted and stored in the map. So if it's important for you to retrieve the map's items in a specific order, look into using one of these other types of maps.

## Example

Here's an example from _Just Java 2_:

```java
import java.util.*;
public class example2  {
// the Map!
Map<String, String> phonebook = new HashMap<String, String>();

// constructor
public example2(String n[], String nums[]) {
for(int i=0; i< n.length; i++)
phonebook.put( n[i], nums[i] );
}

public static void main(String[] args) {
// data
String [] names = { "Lefty", "Guarav", "Wong", "Rupamay" };
String [] extns = { "4873", "4810", "3769", "0" };

// get an instance of this class
example2 ex = new example2( names, extns );

// dump out the map
System.out.println("map:  " + ex.phonebook);

// get the mappings
Set<Map.Entry<String,String>> s = ex.phonebook.entrySet();

// iterate over the mappings
//   for (Iterator i = s.iterator(); i.hasNext(); ) {
for (Map.Entry me : s) {
Object ok = me.getKey();
Object ov = me.getValue();
System.out.print("key=" + ok );
System.out.println(", value=" + ov );
}
}
}
```