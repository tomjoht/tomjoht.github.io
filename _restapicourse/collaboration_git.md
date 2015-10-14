---
title: Git commands
permalink: /collaboration_git/
type: notes_docapis
published: false
---
{% include notes.html %}


30
down vote
accepted
HEAD is a reference to the last commit in the current checked out branch.

This is a good tutorial: https://www.digitalocean.com/community/tutorials/how-to-use-git-branches.


## Branching

| Commands | Description |
|------|-------|
| List all branches | `git branch a` (the * indicates the branch you're on) |
| Create new branch | `git -b branchname` |
| Checkout a branch | `git checkout branchname` |
| Create new branch and checkout | `git checkout -b branchname` |
| Merge into current branch | First go into the branch you want to merge changes into. Then do `git merge branchname`. For example, to merge branch b into branch master, first checkout branch master: `git checkout a`. Now merge b into master: `git merge b`.|

From the interface, you can also create a pull request to merge all of the changes from a specific branch into another branch.



## General commands

| Commands | Description |
|------|-------|
| start tracking files | `git add` |
| see what has changed since last commit | `git diff` |
| commit changes | `git commit` |
| | |

