---
title: Using git  
permalink: /git/
search_group: 
published: false
keywords: 
audience: 
last_updated: 
summary: 
---
{% include linkrefs.html %} 

# Git notes

# common terminal commands

clear
~
mkdir
cd
ls
ls -l
cp
rm 
w (exit from vim editor)

~ this is a shortcut to go to users/tjohnson
mkdir
cd
ls
rm -r filename
cp filename filename?
cp /Users/tjohnson/projects/pem_file/TKZanderDemo.pem .

git config --global user.name "Tom Johnson"
git config --global user.email "tomjohnson1492@gmail.com"
git config --global credential.helper osxkeychain
git config --list

you can't do a git pull when you've made changes to your local
[http://stackoverflow.com/questions/15745045/how-do-i-resolve-git-saying-commit-your-changes-or-stash-them-before-you-can-me]

case sensitivity doesn't really matter

## initialize a folder as a git repo:

git init 

run the command when you're in the folder.
you will see the .git folder in the git initialized repo. you won't see it unless hidden files are turned on.

## get status of repo
git status

lets you know status of files that have been modified or changed, added, etc. it's all the stuff in your staging area that is being tracked. git status will let you know if you have some untracked files, but it only tells you about them as a hint to add it.

## adding files to repo for tracking
even if you add files to the repo, they're not tracked until you officially add them using this command:

use "git add <file>..." to include in what will be committed)

also:

git add *.html
git add file1.html file2.html file3.html
git add .
git add --all
git add pages -r

This adds all of the files to the staging area. once files have been staged, they'll be included in the next commit.

## remove files from git tracking
you can remove files from git tracking using this:

git rm --cached <file>

do git status first to see a status of all new files that you're tracking

git rm --cached _sass/ -r

This command adds "recursive" so that it gets applied to all the files within the directory here that you've mentioned.

## commit

git commit

puts you into vim editor (a text editor)
if you land in the vim editor, type something at the top describing the commit. you can hit return a few times, etc.
to get out of vim:
escape + :wq

you can also use 
git commit -m "my commit message"

## remove a file from the index
git rm --cached .idea/workspace.xml

## large files

## 

https://training.github.com/kit/downloads/github-git-cheat-sheet.pdf

also see training.github.com