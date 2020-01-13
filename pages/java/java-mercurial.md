---
layout: page
title: Mercurial
permalink: /java-mercurial/
date: 2015-01-01 19:56:39.000000000 -08:00
categories:
- java
jtype: notes_java
---

These are notes for using Mercurial. (They really don't belong in the Java QRG section, but since I use Mercurial to get Java source files, it feels appropriate for me to include them here.)

| Command | Description |
|-------|--------|
| init | initializes a repository as a mercurial repository |
| status | gets the status of the repo |
| add --all | adds all the files |
| add sample.txt | adds a specific file to the repo |
| add *.md | add all files with an .md extension to the repo |
| add . | add all files of all extensions to the repo |
| commit -m "here's my commit msg" | commit the current files to the repository |
| log | get a log of the commits |
| remote add origin https://github.com/your_repo | set the github repo destination to your repo |
| push -u origin master | push to your repo |
| pull origin master | get files from the repo |
| get diff HEAD | see the changes |
| rm '*.dita' | remove all the files with the .dita extension from the repository |
| merge | merge your local files with the latest working set |
| up | go to the working set (the latest changeset) |
| diff | see the differences between stuff |
| clone | clones a repository into a folder in the current directory. also sets up hg in this local repository. cd to /users/tjohnson/projects. Then `hg clone <mercurial URL>` |
| up or update | updates the content to the latest working copy |
| `parent` | this lets you know what the latest parent is. still not entirely sure what the parent means. |
| `up default` | update to the latest working set |
| `rollback` | allows you to rollback to an earlier changeset |
| `heads` | lets you know what heads you're merging here. |
| `forget` | makes it so an added file is no longer added. |
| `open file.txt` | opens a file so you can edit it (not HG specific) |
| `subl file.txt` | opens a file in sublime so you can edit it. |
| `outgoing` | shows ally he outgoing changes |

## Basic flow in pushing content

1.  Make changes, and then go `hg commit -m "commit message"`
2.  `hg push`
3.  If there are problems in pushing the content, then you type `hg pull`.
4.  If there are conflicts, type `hg merge`
5.  It will create a bunch of merges in the file. go through and sort it out first. remove all the >>>>>> and <<<<<<<.
6.  `hg resolve --mark file.txt`. this will mark the conflict as resolved.
7.  Save the file and type `hg commit -m "commit message"`.
8.  `hg push`. Now there shouldn't be any problems.

Basic flow in pulling content:

1.  Go to `hg pull` to get the latest changeset.
2.  `hg update` to update to the latest working copy. (you can also do `hg pull -u` to accomplish it all in one command.)
3.  If there are problems, you're notified about them. do `hg merge`
4.  The files get merged and you have to go through and sort out the conflicts. remove all the >>>>>> and <<<<<<<.
5.  `hg resolve --mark file.txt` this will mark the conflict as resolved.
6.  `hg commit -m "commit message"`
7.  `hg push`

If you're asked if you want to put multiple heads in the same file, don't do it. It messes things up.

* * *

## Random notes

* Everything is a changeset. when you commit it, that diff is a changeset.
* All that cloning does is take all the changesets and add them to your machine.
* changeset numbers are different per each box. the numbers are for your own info.
* `pull` grabs all the change sets.
* hg forget: after you delete a file, in order to tell Mercurial not to warn you that it's missing, use the `forget` command.

## Testing the multi-user scenario

Create a repository called remote:

```
hg mkdir remote
cd remote
hg init
```

Now clone the repository into 2 other repositories:

```
hg clone remote jp
hg clone remote dm
```

Now open up several windows in iTerm: **Shell > Split Vertically **(do it twice)

In your other windows, cd to jp and cd to dm.

Now create a sample file and put it in remote. Make changes with one user and push. Pull from another user and make changes, etc. Works really well.

## Summary

### Clone a repository

```
cd to /users/tjohnson/projects

hg clone <mercurial URL>
```

### Add all files to a repository

```
hg add .
```

### Commit the files

```
hg commit -m "your commit msg"
```

### Get the logs

```
hg log
```

### Push to the central repository

```
hg push
```

### Create an HG repository

do this if you're creating an HG repository locally:

```
hg init
```

### Get the latest files

```
hg pull
```

### See list of changed files

```
hg status
```

### See what changed in a specific file

```
hg diff file.txt
```
or

```
hg cat
```
### Merge changes

```
hg merge
```

### Update the working directory

```
hg update
```

### Get help

```
hg help
```

### Go forward or backwards in the directory

```
hg update -r 0
```