---
layout: page
title: 'Java: Treemaps'
permalink: /java-treemaps/
date: 2015-01-01 20:29:10.000000000 -08:00
categories:
- java
jtype: notes_java
---
## Quick summary

* Treemaps stores key-value pairs
* Treemaps guarantees their order
* It's common to iterate through a map and see if it has a particular value
* Treemaps implements a Map interface
* In Treemaps, keys are sorted

Eclipse example: treemaps

## Sample

```java
public class java.util.TreeMap <K, V>
implements SortedMap<K,V>, Cloneable, java.io.Serializable {
public TreeMap();  // constructors
public TreeMap(Comparator<? super K> c);
public TreeMap(Map<? extends K,? extends V> m);
public TreeMap(SortedMap<K,? extends V> m);

public Comparator<? super K> comparator();
public K firstKey();
public K lastKey();
public Object clone();

public SortedMap<K,V> headMap(K toKey);
public SortedMap<K,V> tailMap(K fromKey);
public SortedMap<K,V> subMap(K fromKey, K toKey);
}
```

There are 4 constructors:

The TreeMap class has four constructors which work in the obvious way. The first one creates an empty TreeMap. The second constructor creates an empty TreeMap that will use the Comparator passed as an argument. The third creates a TreeMap out of the elements in the given Map. The fourth constructor creates a TreeMap out of the elements in the given SortedMap. (Just Java 2)

The method headMap() returns a view of this Map containing only elements that are strictly less than the argument object. The method tailMap() returns a view of elements that are greater than or equal to the argument object. The method subMap() returns a view into the Map that holds only objects starting at the from object inclusive, and going up to, but not including, the to object. (Just Java 2)

## Example

```java
import java.util.*;
public class example3  {
// the Map!
Map<String, String> phonebook = new TreeMap<String, String>();

// constructor
public example3(String n[], String nums[]) {
for(int i=0; i< n.length; i++)
phonebook.put( n[i], nums[i] );
}

public static void main(String[] args) {
// data
String [] names = { "Lefty", "Guarav", "Wong", "Rupamay" };
String [] extns = { "4873", "4810", "3769", "0" };

// get an instance of this class
example3 ex = new example3( names, extns );

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

The output of running this program is now in sorted order because we used TreeMap:

```java
map:  {Guarav=4810, Lefty=4873, Rupamay=0, Wong=3769}
key=Guarav, value=4810
key=Lefty, value=4873
key=Rupamay, value=0
key=Wong, value=3769
```

## Get a specific object in the map

```java
public V get(Object key);
```

Or you'll be putting pairs into the table using this method:

```java
public V put(K key, V value);
```