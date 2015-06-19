---
title: "1.3 Generating Reference Doc from Source"
permalink: /publishingapidocs1-3/
course: "Publishing API documentation"
weight: 1.3
---

## How platform API doc is generated
<a href="http://www.miredot.com/exampledocs/"><img src="{{ "/images/publishingapidocs/miredot.png" | prepend: site.baseurl }}" alt="Miredot" /></a>

## ACTIVITY: Browse a source-generated doc

Go to [Miredot's example](http://www.miredot.com/exampledocs/) and browse it.

## Platform APIs generate from source
- javadoc, doxygen, pydoc --> documents programming code
- document generators look through the source code and render the doc from it
- compare to a glorified source code browser. 
- just contains the reference doc, nothing more
- intended for engineers, fits into their workflow 

## Document generators require precise structure
- doc validates against parameters, throws errors if they don't match
- prevents doc drift

## Some reference APIs also generate from source
- not as applicable to REST APIs because REST is an http protocol. it's not tied to a specific language.
- most REST API docs aren't generated from source, but there are some standards

## Pros of generating doc from source 
- avoids doc drift
- empowers devs to write
- doc travels with code

## Cons of generating doc from source
- developers write
- hard to integrate with user guide
- have to plug into dev's source control to work with the docs

## Source-generated doc is really appropriate if your devs are writing the doc
- reduces doc drift
- puts writing task into developer toolset
- if you don't really want devs writing, then there's not much reason to bother with this

## Problems with having devs write
 - curse of knowledge
 - they wrote the code, so it seems obvious to them how it works
 - they will use jargon
 - this stuff doesn't integrate with user docs