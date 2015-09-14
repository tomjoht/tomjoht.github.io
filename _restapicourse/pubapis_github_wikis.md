---
title: "Github wikis"
permalink: /pubapis_github_wikis/
course: "Documenting REST APIs"
type: notes_docapis
weight: 4.9
---
{% include notes.html %}

## Github wikis as complementary repositories

When you create a repository on Github, the repository comes with a wiki that you can add pages to. This wiki can be really convenient if your source code is stored on Github. 

Here's an example of the Basecamp API, which is housed on Github.

<a href="https://github.com/basecamp/bcx-api"><img src="{{ "/images/publishingapidocs/basecampapi.png" | prepend: site.baseurl }}" alt="Basecamp API" /></a>

## Markdown syntax
You write wiki pages in Markdown syntax. There's a special flavor of Markdown syntax for Github wikis. The [Github Flavored Markdown](https://help.github.com/articles/github-flavored-markdown/) allows you to create tables, add classes to code blocks (for proper syntax highlighting), and more.

## The wiki repository path

The wiki you create is its own repository that you can clone locally. (If you look at the "Clone this wiki locally link," you'll see that it's a separate repo from your main code repository.) You can work on files locally and then commit them to the wiki repository when you're ready to publish. 

You can also arrange the wiki pages into a sidebar.

## Treating doc as code

One of the neat things about using a Github repository is that you treat the doc as code, editing it in a text editor, committing it to a repository, and packaging it up into the same area as the rest of the source code. Because it's in its own repository, technical writers can work in the documentation right alongside project code without getting merge conflicts.

## Working locally allows you to leverage other tools

Because you can work with the wiki files locally, you can leverage other tools (such as static site generators, or even DITA) to generate the Markdown files. This means you can handle all the re-use, conditional filtering, and other logic outside of the Github wiki. You can then output your content as Markdown files and then commit them to your Github repository.

## Limitations with Github wikis

There are some limitations with Github wikis: 

* **Limited branding**. All Github wikis look the same.
* **Open access on the web**. If your docs need to be private, Github isn't the place to put them.
* **No structure**. The Github wiki pages give you a blank page and basically allow to add sections. You won't be able to do any advanced styling or sexy-looking interactive API doc.

## Publish a sample file on Github

In this section, you will create a new Github repo and publish a sample file there.

1. Go to [Github.com](http://github.com) and either sign in or create an account.
2. After you're signed in, click the **+** button in the upper-right corner and select **New repository**.
	
	<a href="https://github.com/new"><img src="{{ "/images/publishingapidocs/newrepositorygithub.png" | prepend: site.baseurl }}" alt="Creating a new Github repository" /></a>
	
3. Give the repository a name, description, select to initialize the repo with a readme doc, and then click **Create repository**.
4. Click the **Wiki** link on the right-side of your repository.
	
	<img src="{{ "/images/publishingapidocs/githubwikilink.png" | prepend: site.baseurl }}" alt="Github wiki link" />
	
5. Click **Create first page**.
6. Insert your own sample documentation page. Or grab the sample Markdown page of a <a href="{{ "/files/restapicourse/surfreportendpointdoc.md" | prepend: site.baseurl | append: site.suffix }}">fake endpoint called surfreport here</a> and insert it into the page.
7. Click **Save page**.

## Save the Github repository locally

1. Set up Github on your computer. (See instructions for [Mac](https://help.github.com/articles/set-up-git/#platform-mac) or [Windows](https://help.github.com/articles/set-up-git/#platform-windows)). 

	Installing Github will include all the Git software as well. If you're installing the Windows version, after you install Github, you'll get a special Github Shell shortcut that you can use to work on the command line. You should use that special Github Shell rather than the usual command line prompt. Note that when you use that Github Shell, you can also use more typical Unix commands, such as `pwd` for present working directory instead of `dir` (though both commands will work). 
	
	On a Mac, however, you don't get a special Github Shell. Oopen the Terminal in the same way &mdash; go to **Applications > Utilities > Terminal**. 
	
	You can check to see if you have git already installed by opening a terminal or command prompt and typing `git --version`. 
	
2. While viewing your the Github wiki in your browser, look for the "Clone this wiki locally" section on the right. Copy the link. 
	
	<img src="{{ "/images/publishingapidocs/clonewikilocally.png" | prepend: site.baseurl }}" alt="Github clone this wiki locally" />
	
3. Go back to your terminal. Use the default directory, or browse to a directory where you want to download the repository. 
4. In your terminal, type the following, but replace the git URL with your own git URL that you copied earlier:
	
	```
	git clone https://github.com/tomjohnson1492/weatherapi.wiki.git
	```
	
	{{note}} To paste content into the command prompt on Windows, right-click and select <b>Paste</b>.{{end}}
	
5. Navigate to the directory (either using standard ways of browsing for files on your computer or via the terminal) to see the files you downloaded. 

## Make a change locally and commit it to the repository

1. In a text editor, open the Markdown file you downloaded in the github repository. 
2. Make a small change and save it.
3. In your terminal, make sure you're in the directory where you downloaded the github project. To look at the directories under your current path, type `ls`. Then use `cd {directory name}` to drill into the folder, or `cd ../` to move up a level.
	
4. Add the file to your staging area:
		
	```
	git add --all
	```
		
4. See the changes set in your staging area:
	
	```
	git status
	```
	
5. Commit the changes:
	
	```
	git commit -m "updated some content"
	```
	
	This is a shortcut for committing and typing a message in the same command. If you just type `git commit`, you'll be prompted with another window to describe the change. 
	
	On Windows, this new window will be a Notepad window. Describe the change on the top line, and then save and close the file. 
	
	On a Mac, a new window doesn't open. Instead, the vi editor mode opens up. To use this mode, you have to know a few simple unix commands:
	<ul>
	<li><b>Arrow keys:</b> You use your arrow keys to move around. You don't use your mouse.</li>
	<li><b>Insert mode:</b> If you start typing, vi enters the Insert mode.</li>
	<li><b>Escaping out of Insert Mode:</b> To escape out of Insert mode, press <b>Esc.</b></li>
	<li><b>Saving: </b>To save your edits, you need to do a "write quit." Press <b>Ctrl + :</b> Then type <b>wq</b> for "write quit." If you made changes but don't want to save them, type <b>q!</b> for "quit override."</li>
	</ul>
	<p>You can also use <a href="http://www.cs.rit.edu/~cslab/vi.html">other vi commands</a>.</p>
	
6. Push the changes to your repository:
	
	```
	git push
	```
	
7. Now verify that your changes took effect. Browse to your Github wiki repository and look to see the changes.
