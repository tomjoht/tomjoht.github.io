---
title: "2.5 Abundant code samples"
permalink: /publishingapidocs2-5/
course: "Publishing API documentation"
weight: 2.5
---

More than anything else, developers love code examples. Usually the more code you can add to your documentation, the better. 

Here's an example from Evernote's API: 

<a href="https://dev.evernote.com/doc/articles/note-sharing.php"><img src="{{ "/images/publishingapidocs/evernotecodesamples.png" | prepend: site.baseurl }}" alt="Evernote code examples" /></a>

The writers at Parse [emphasize the importance of code samples](http://blog.parse.com/learn/engineering/designing-great-api-docs/):

>Liberally sprinkle real world examples throughout your documentation. No developer will ever complain that there are too many examples. They dramatically reduce the time for developers to understand your product. In fact, we even have example code right on our homepage.



### Syntax highlighting

For code samples, you want to incorporate syntax highlighting. There are numerous syntax highlighters that you can usually incorporate into your platform. For example, Jekyll uses either Pygments or Rouge. These highlighters have stylesheets prepared to highlight languages based on specific syntax. 

When you include a code sample, you usually instruct the syntax higlighter what language to use. If you don't have access to a syntax highlighter for your platform, you can always manually add the highlighting using a service such as ...

### Code formatting

Another important element in code samples is to use consistent white space. Although computers can read minified code, users usually can't or won't want to. Use a tool to format the code with the appropriate spacing and line breaks.

<a href="http://documentcloud.github.io/backbone/"><img src="{{ "/images/publishingapidocs/backbonejs.png" | prepend: site.baseurl }}" alt="Backbone JS" /></a>