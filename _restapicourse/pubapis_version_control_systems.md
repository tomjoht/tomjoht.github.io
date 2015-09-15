---
title: Version control systems
permalink: /pubapis_version_control/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 5.1
type: notes_docapis
summary: 
---
{% include restapicourse.html %}

## About version control systems

Pretty much every IT shop uses some form of version control with their software code. Version control is how developers collaborate and manage their work. 

If you're working in API documentation, you'll most likely need to plug into your developer's version control system to get code. Or you may be creating branches and adding or editing documentation there. 

Many developers are extremely familiar with version control, but typically these systems aren't used much by technical writers because technical writers have traditionally worked with binary file formats, such as Microsoft Word and Adobe Framemaker. Binary file formats are readable only by computers, and version control systems do a poor job in managing binary files because you can't easily see changes from one version to the next.

If you're working in a text file format, you can integrate your doc authoring and workflow into a version control system. If you do, a whole new world will open up to you. 

## Different types of version control systems

There are different types of version control systems. A `centralized` version control system requires everyone to check out or synchronize files with a central repository when editing them. This setup isn't so common anymore, since working with files on a central server tends to be slow.

More commonly, software shops use `distributed` version control systems. The most common systems are probably Git and Mercurial. Largely due to Github, Git is the default version control repository for web and open source projects, so we'll be focusing on it more. However, these two systems share the same concepts and workflows. 

<figure><a href="http://github.com"><img src="{{ "/images/restapicourse/githubhomepage.png" | prepend: site.baseurl }}" alt="Github" /></a><figcaption>Github's distributed version control system allows for a phenomenon called "social coding."</figcaption></figure>

Note that Github provides online repositories and tools for Git. However, Git and Github aren't the same.

## The idea of version control

When you install version control software such as Git and initialize a repository in a folder, an invisible folder gets added to the repository. This invisible folder handles the versioning of the content in that folder. 

When you add files to Git and commit them, Git takes a snapshot of that file at that point in time. When you commit another change, Git creates another snapshot. If you decide to revert to an earlier version of the file, you just revert to the particular snapshot. This is the basic idea of versioning content.

## Basic workflow with version control

There are many excellent tutorials on version control on the web, so I'll defer to those tutorials for more details. In short, Git provides several stages for your files. Here's the general workflow:

1. You must first add any files that you want Git to track. Just because the files are in the initialized Git repository doesn't mean that Git is actually tracking and versioning their changes. Only when you officially "add" files to your Git project does Git start tracking changes to that file.
2. Any modified files that Git is tracking are said to be in a "staging" area.
3. When you "commit" your files, Git creates a snapshot of the file at that point in time. You can always revert to this snapshot. 
4. After you commit your changes, you can "push" your changes to the master. 

## Branching

Git's default repository is the "master" branch. When collaborating with others on the same project, usually people branch the master, make edits in the branch, and then merge the branch back into the master. 

If you're editing doc annotations in code files, you'll probably follow this same workflow &mdash; making edits in a special doc branch. When you're done, you'll create a pull request to have developers merge the doc branch back into the master.

## GUI version control clients

Although most developers use the command line when working with version control systems, there are many GUI clients available that may simplify the whole process. GUI clients might be especially helpful when you're trying to see what has changed in a file, since the GUI can better highlight and indicate the changes taking place.

## Follow a typical workflow with a Github project using Github Desktop
{{activity}}
In this tutorial, you'll use Github Desktop to manage the workflow. First download and install [Github Desktop](https://desktop.github.com/). You'll also need a Github account.

1. Go to [Github.com](http://github.com) and create a new repository from the the **Repositories** tab. 
2. View your repository, and then click the **Clone in Desktop** button.
	
	<img src="{{ "/images/restapicourse/cloneindesktop.png" | prepend: site.baseurl }}" alt="Clone in Desktop" />
	
3. Select the folder where you want to clone the repository (such as under your username), and then click **Clone**.
	
	Github Desktop should launch (you'll need to allow the application to launch, most likely) and add the newly created repository.
	
<img src="{{ "/images/restapicourse/githubrepojustadded.png" | prepend: site.baseurl }}" alt="Repo added to Github Desktop" />
	
4. Go into the repository (using your Finder or browsing folders normally) and add a simple text file with some content. 
5. Go back to Github Desktop and click the **Uncommitted Changes** link at the top. 
	
	<img src="{{ "/images/restapicourse/uncommittedchanges.png" | prepend: site.baseurl }}" alt="Uncommitted changes" />
	
	You'll see the new file you added in the list of uncommitted changes. 
	
6. Type a commit message. 
7. Click **Commit to Master**. 
8. Click the **History** tab at the top.
You can see the most recent commit there.

## Create a branch
{{activity}}
Now let's create a branch, make some changes, and then merge the branch into the master. 

1. Click the **Add a branch** button and create a new branch. Call it something like "tom-edits," but use your own name.
	
	<img src="{{ "/images/restapicourse/addingabranchtom.png" | prepend: site.baseurl }}" alt="Adding a branch" />
	
	When you create the branch, you'll see the branch drop-down menu indicate that you're working in that branch. A branch is a copy of the master that exists on a separate line from the master in terms of tracking edits. 
	
	<img src="{{ "/images/restapicourse/workinginbranch.png" | prepend: site.baseurl }}" alt="Working in a branch" />
	
2. Browse to the file you created earlier and make a change to it, such as adding a new line with some text. 
3. Return to Github Desktop and notice that on the Uncommitted Changes tab, you have new modified files.
	
	<img src="{{ "/images/restapicourse/newchangestocommitgithub.png" | prepend: site.baseurl }}" alt="New files modified" />
	
	However, if you switch to the master branch, you won't see the modified files. That's because you're working in a branch, and so you're changes are associated with that branch. Switching this branch option in Github Desktop changes the working directory of your Github project to the branch.

## Merge the branch through a pull request
1. Now let's merge the branch into the master. Click the **Pull Request** button in the upper-right corner.
	
	You're shown that you're merging the tom-edits branch into the master. 
	
2. Describe the pull request, and then click **Send Pull Request**.
	
	<img src="{{ "/images/restapicourse/describethepullrequest.png" | prepend: site.baseurl }}" alt="" />
	
3. Go to the link shown to evaluate the pull request online. Online you can click the **Files changes** tab to see what files have changed in tom-edit that you are merging into the master.
	
4. Click **Merge Pull Request**.
	
	<img src="{{ "/images/restapicourse/githubmergepullrequest.png" | prepend: site.baseurl }}" alt="Merging a pull request" />
	
5. In your Github Desktop client, select the **master** branch, and then click the **Sync** button.
	
	The Sync button pulls the latest changes from the master and updates your working copy to it. You will see the pull request merged. It shows you the lines that have been added in the files. 
	
	<img src="{{ "/images/restapicourse/pullrequestmergednow.png" | prepend: site.baseurl }}" alt="Merged pull request" />

{% comment %}
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
 
 
{% endcomment %}
