---
title: Revision Control Software -- SourceTree
permalink: /pubapis_sourcetree/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 5
type: notes_docapis
summary: 
---
{% include notes.html %}

why use a graphical editor?
why use sourcetree
which revision control to learn?
learning the right terminology


staged files
unstaged files
origin
head
tags -- adding a unique label to a commit
branches -- go to the side and then bring back into main line
the idea of version control -- invisible folder added to repo folder. stores changes made at a point in time. with each commit, it creates a snapshot of those changes at that point in time. you can revert back to that state. 

working copy: the current version that you're working on (amid all the possible choices). the working copy is the version among many saved in the version control that you are working on.

stash: an invisible branch that stores changes made to a file so they aren't overwritten when you revert to a version that doesn't include those changes, and when you want to merge that previous version into the latest version. i think. 

reset: undo the changes that you've made. 

merge: look at the diff between branches and make them match.

{% comment %} 
test this is a **test**. edit made.

staging files
tracking files
rebasing
default branch is called trunk in subversion, its called master in others
master
hunk
ear 
branch
repository
hidden file in your project
the hidden file contains the history of the files. it's the magic folder. it's hidden by default so you can't remove it.
push
pull
clone
fetch
merge
head
making a commit
initialize a project
so many terms!
working copy
clone from url
working copy

when to commit?

checkout -- you revert to a previous commit and then you want to check that commit out
{% endcomment %}
{% include restapicourse_next.html %}