---
title: Modularity
permalink: /ucd-modularity/
categories:
- user-centered-documentation
keywords:
course: "User-Centered Documentation"
jtype: notes_user_centered_doc_principles

---

> Break up content into independent topics that can be viewed, understood, and updated independent of the whole. A topic or chunk should not be so interconnected with the whole that it cannot stand on its own.

{% comment %}
## Users read non-sequentially

> You can just read the sections about the tasks you want to do. <br /></blockquote>
        &mdash; John Carroll, <a href="http://faculty.washington.edu/farkas/dfpubs/Farkas-Williams-CarrollsNurnbergFunnel.pdf">The Nurnberg Funnel</a>

* Published in 1990
* Reaction against sequential learning models at the time
* Realized readers skip around out of sequence, impatient to act

<img src="/user_centered_doc/media/rasters/trainwreck.jpg"/>

## Modularity sounds great. Where do things go wrong?

* Minimalism formed basis for topic-based authoring, structured authoring
* Seems like a great idea, but can go wrong
* 2 main reasons why

## 1. Writers assume building blocks equal presentation

<img src="/user_centered_doc/media/vectors/usercentered_buildingblocks.svg"/>

* DITA topic types not glued together
* Result is massive information fragmentation
* User plays information pinball in help

## 2. Writers auto-burst print books based on h2

<img src="/user_centered_doc/media/vectors/usercentered_booktoweb.svg"/>

* Auto-bursting is arbitrary division at heading level
* Common in transition from print to online
* Write content with the primary pub format in mind

## "Frankenbooks": Modularity gone wrong

> A Frankenbook is organized neither for linear reading, nor for random access. No matter where you land in it, you are in the middle of a maze with buttons to move up, down, or sideways, but no means of finding the end of any thread of narrative, great or small. Every page is page 297 and none of them answer your question .... <br/> &mdash; Mark Baker, <a href="http://everypageispageone.com/2012/02/24/frankenbooks-must-die-a-rant/">Every Page Is Page One</a>

* Mark Baker's book is reaction to info fragmentation in doc
* Frankenbook is online help stitched together but not really functional
* Classic example: arrive at topic but can't do anything

## Treat "Every Page Is Page One"

<figure><img src="/user_centered_doc/media/rasters/pageone.png"/><figcaption>Mark Baker's mantra</figcaption></figure>

* Users arrive at any point -- usually from search
* How functional is doc in this paradigm?
* How do you write help for this?
 
## Create self-contained topics

<a href="https://codex.wordpress.org/Installing_WordPress"><img class="shortened" src="/user_centered_doc/media/rasters/wordpress.png"/></a>

* WordPress installation page really long
* Encyclopedic wikis lend themselves to EPPO style 
* Topics more thorough, standalone


## Provide context before

<a href="http://docs.aws.amazon.com/AmazonS3/latest/gsg/PuttingAnObjectInABucket.html"><img src="/user_centered_doc/media/rasters/aws.png" /></a>

* Simple graphic but incredibly helpful
* No need to put all this content on the same page
* Essential for sequential processes

## Provide context after

<a href="https://www.firebase.com/docs/web/guide/saving-data.html"><img src="/user_centered_doc/media/rasters/firebase.png" /></a>

* What comes next? Handhold user
* Helps provide context
* Only necessary for sequence, but also helpful in other topics

## Modularity best practices

* Make topics meaningful enough to stand on their own
* Don't be afraid to make long topics
* Assume users might be starting at that page
* Link to any necessary context (prereqs, assumptions) at the beginning of the topic

{% endcomment %}
