---
title: "Working with YML"
permalink: /pubapis_yml/
course: "Documenting REST APIs"
type: notes_docapis
---
{% include notes.html %}

## A brief note about YML

When you created the Swagger spec file, you used a syntax called YML. YML stands for "YAML Ain't Markup Language." YML is easier to work with because it removes the brackets and curly braces that get in the way of reading content. In other words, YML is an attempt to create a more human readable data exchange format. It's similar to JSON but without the curly braces and brackets. Many computers ingest data in a YML or JSON format.

With a YML file, spacing is significant. This is a new object level:

```
level1:
  level2:
    level3:
```

To create a new level, indent two spaces. 

Each level can contain either a single value or a sequence:

```
---
  level3: 
    - 
      itema: "one"
      itemameta: "two"
    - 
      itemb: "three"
      itembmeta: "four"
```
        
Converted to JSON, level3 would look like this:

```
{
  "level3": [
    {
      "itema": "one",
      "itemameta": "two"
    },
    {
      "itemb": "three",
      "itembmeta": "four"
    }
  ]
}
```

To learn more about YML, see this [YML tutorial](http://rhnh.net/2011/01/31/yaml-tutorial). 

