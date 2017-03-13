---
title: Answers
permalink: /docapis_answers/
course: "Documenting REST APIs"
type: notes_docapis
---
{% include notes.html %}

This page provides answers to some of the exercises during the course.

<h2 id="curlParameters">cURL parameters</h2>

* `-i` means to include the response header</li>
* `-H` means to pass a header into the request</li>
* `-X POST` means to use the `POST` method in the request</li>
* `-d` means to include data in the request</li>

<h2 id="dotNotation">Dot notation</h2>

Here's what your dot notation should look like:

```js
var sarahjson = john.children[0].child1;
var greenjson = john.eyes;
var nikejson = john.shoes.brand;
var goldenrodjson = john.favcolors[1];
var jimmyjson = john.children[1].child2;
```

<h2 id="dotNotationWindSpeed">Dot Notation: Windspeed</h2>

```json
data.query.results.channel.wind.speed
```
