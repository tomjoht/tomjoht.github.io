---
title: Mercurial commands
permalink: /collaboration_git/
published: false
---
{% include notes.html %}



# Revision control


**Distributed revision control:** Mercurial is distributed revision control instead of centralized revision control. This means everyone keeps a copy of the repo on their local machine, and then they merge back the changes. With centralized revision control, team members check out a version that remains in a central repo, and it becomes locked when checked out. The latter results in more wait to check out files, little innovation to experiment without committing, latency, and there issues.

**Working directory:** All the files that have been added to Mercurial to be tracked. 

You can add a source for all of these commands. If no source is specified, the default repo (from which the existing repo was cloned) is used. For example, pull (source) will pull from a source other than the default if specified.

**Tags:** A more user-friendly way to name change sets.

**Tip:** The latest changeset

**Default:** The main repo. This is defined in the .hg/hgrc file like this: 

```
[paths]
`default = https://hg.the41.internal/docs/expdocs/`

Diff / patch: Same thing. A list of differences with a file.

**Changeset: **

**Working directory:** The files that Mercurial is tracking in a folder.

Repo: The directory where Mercurial is activated.

head: a changeset with no child changesets. When you get two heads, it's because you pulled in changes.

parent: the previous changeset before the latest change.
child: later in the changeset history. the first parent is the first changeset, and then you have a list of descendents.

workflow: pull first, then merge and commit, or commit and merge. when you run into problems, mainly conflicts, it's because of some discrepancy. pull, 

merge conflict scenarios: you add or modify a file that another has removed from one commit to another, you make conflicting changes to the same file from one commit to another. When a merge conflict happens, Mercurial launches a merge program to resolve the conflict.

When merge conflicts happen, Mercurial removes the problematic files from the working directory until you fix them. You have to add them again to the working directory.

bookmarks: This is a way to create some kind of branches. not sure how relevant it truly is, though.

branches: You don't really work 

rebase

| Commands | Description |
| ------ | ------ |
| clone | copy a specific repository (can be URL or local path) |
| init | initialize Mercurial in the existing repository |
| outgoing | show changes committed locally but not yet pushed | 
| incoming | show changes committed to remote but not yet pulled |
| pull | pull the latest changeset into local repo|
| pull -u | pull the latest changeset into local repo and update working directory to that changeset |
| fetch | pull -u + merge + commit (if merge was successful)  all in one command |
| help -v | show help in verbose mode|
| help (command) | shows help about a specific command |
| summary | summarizes the state of the current local working directory |
| summary --remote | summarizes the state of the remote working directory |
| log | show history of all change sets in the repo |
| log -r 2 -v| show the history of changeset 2 in the repo, with verbose details |
| log -r 2:4 | show history of change sets from ranges 2 to 4
| log -p home.md  | show log of changes (patches) for specific file|
| log -v -p -r 2 or log -vpr2 | show a diff of what has changed in a specific changeset (2) |
| diff (filename) | shows differences in a file|
| status | gives you details about the repo's files that have been modified, added, or removed since the last change. The files in the response will show ? for untracked, A for added, M for modified, and R for removed.|
| tip | show the latest changset|
| tip -vp | show the latest changeset and list verbose details of the differences |
| update | pull the latest changeset into the working directory.  By default pull just brings in the changeset, but it doesn't change your working directory to the latest changeset. |
| heads | Shows the heads in the repo|
| addremove | add all files in directory, remove missing files from previous tracking. (This is the equivalent of using hg add and hg rm for all the files.)|
| merge | After you do a merge, you have to commit the merge.|
| commit -m 'Merged remote changes' ||
| add | add a file to Mercurial's working directory. You can list a filename or a directory. Or " ." to select all.|
| remove | delete the file and tell Mercurial to stop tracking it. (addremove is a way of bulk doing this.)|
| resolve --mark ||
| forget (filename) | tells Mercurial to stop tracking a file|
| branches | lists the branches created for the repo | 
| bookmarks | lists the bookmarks you have set |
| bookmark {bookmark_name} | creates a bookmark named sophia | 
| checkout {bookmark_name} | checks out the bookmark. now you're working in bookmark_name. |
| bookmark --delete {bookmark_name | deletes the bookmark |
| revert | go back to the way the files were at the last commit |


hg status:

! Mercurial can't find the file. You probably deleted it manually and didn't do an hg rm filename or hg addremove. 
? Mercurial doesn't know anything about this file, even though it's in the same directory as other files you're tracking.
M you modified this file.
A: Mercurial added this file to the list of files you're tracking. 
R: removed from tracking and the directory.

hg bookmark hell
hg checkout hell

now you're working in hell

hg bookmark --delete bookmark_name

Viewing the latest changes in the browser
[https://hg.the41.internal]

Then click changelog

How often should you commit

How to resolve merge conflicts

Download P4merge

When a conflict happens, P4Merge launches
Select the change you want, or add your own. Then Save. Then quit P4merge.

To configure Mercurial to use p4merge, put this into your .hgrc file after installing p4merge (if it's not already there).

p4merge.executable = /Applications/p4merge.app/Contents/MacOS/p4merge
p4merge.priority = 50
p4merge.premerge = True
p4merge.gui = True
p4merge.args = $base $local $other $output
p4merge.binary = True

more details: [https://www.mercurial-scm.org/wiki/P4Merge]

username = Tom Johnson <tomjohnson1492@gmail.com>


tool p4merge can't handle binary
tool filemergexcode can't handle binary
tool p4mergeosx can't handle binary
tool vimdiff can't handle binary
 no tool found to merge .DS_Store
keep (l)ocal or take (o)ther?


Ignoring certain files
Create .hgignore file and add these files:

.jekyll-metadata _site .DS_Store

## Forgetting to track stuff

[http://stackoverflow.com/questions/8129912/mercurial-and-xcuserdata-ds-store-and-git]

hg forget "set:hgignore()"

