---
title: "Activity: Manage content in a GitHub wiki"
permalink: learnapidoc/pubapis_github_wikis.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 9.92
path1: learnapidoc/publishingtools.html
section: publishingtools
last-modified: 2026-10-17
---

{% include coffeeshopbook.html %}

In this tutorial, we'll walk through a publishing workflow with one of the most common developer platforms: GitHub. When you create a repository on GitHub, the repository comes with a wiki that you can add pages to. This wiki can be convenient if your source code is stored on GitHub. Although GitHub might not be a platform where you publish your docs, understanding how to interact with it can be important for understanding [version control](pubapis_version_control.html).

Learning GitHub will allow you to become familiar with the version control workflows that are common with many [docs-as-code tools](pubapis_docs_as_code.html). For this reason, I have a detailed tutorial for using GitHub in this course. Regardless of whether you use GitHub as a publishing tool, this tutorial will introduce you to Git workflows with content.

* TOC
{:toc}

## About GitHub Wikis

You could actually use GitHub itself as your doc site, either through the wiki or through Markdown files in the repository. For example, the Basecamp API docs are Markdown files stored in a GitHub repo:

<figure><a target="_blank" class="noExtIcon" href="https://github.com/basecamp/bc-api"><img class="docimage large" src="{{site.api_media}}/basecampapi.png" alt="Basecamp API" /></a><figcaption>Basecamp API</figcaption></figure>

{% include random_ad3.html %}

Unlike other wikis, the GitHub wiki you create is its own repository that you can clone and work on locally. (If you look at the "Clone this wiki locally" link, you'll see that it's a separate repo from your main code repository.) You can work on files locally and then commit them to the wiki repository when you're ready to publish. You can also arrange the wiki pages into a sidebar.

{% include random_ad2.html %}

{% include image_ad_right.html %}

With GitHub, you write wiki pages in Markdown syntax. There's a special flavor of Markdown syntax for GitHub wikis called [GitHub Flavored Markdown](https://docs.github.com/en/get-started/writing-on-github), or GFM. The GitHub Flavored Markdown allows you to create tables, add classes to code blocks (for proper syntax highlighting), and more.

Because you can work with the wiki files locally, you can leverage other tools (such as static site generators, or even DITA) to generate the Markdown files if desired. Working locally, you can handle all the re-use, conditional filtering, and other logic outside of the GitHub wiki. You can then output your content as Markdown files and commit them to your GitHub repository.

{: .warning}
Use Git only to track text files. Don't start tracking large binary files, such as audio files, video files, Microsoft Word files, or Adobe PDF files. Version control systems really can't handle that kind of format well, and your repo size will increase exponentially. If you use Git to manage your documentation, exclude these files through your [.gitignore file](https://git-scm.com/docs/gitignore). You might also consider excluding images, as they bloat your repo size as well.

{% include ads.html %}

## Limitations with GitHub wikis

GitHub wikis have some limitations:

* **Limited branding**. All GitHub wikis pretty much look the same.
* **Open access on the web**. If your docs need to be private, GitHub wikis probably aren't the place to store them. (Wikis in private repos are an option, but they require a paid GitHub plan.)
* **No structure**. The GitHub wiki pages give you a blank page and allow you to add sections. You won't be able to do any advanced styling or more attractive-looking interactive features.

{: .note}
I'm specifically talking about the built-in wiki feature with GitHub, not [GitHub Pages](https://pages.github.com/). You can use tools such as Jekyll to brand and auto-build your content with whatever look and feel you want. I explore GitHub Pages with more depth in the tutorial on [Jekyll](pubapis_jekyll.html).

## Install Git {#git_install}

{% include random_ad4.html %}

Before you start working with GitHub, you need to set up Git and install any necessary tools and credentials to work with GitHub (especially if you're on Windows).

**Mac**:

To install Git on a Mac, see [Installing on Mac](https://git-scm.com/download/mac). Once installed, you can use Git in several ways:

* Open the default Terminal application by going to **Applications > Utilities > Terminal**.
* Install [iTerm2](https://iterm2.com/), a separate terminal app.
* Use the terminal built into your editor, such as [VS Code](https://code.visualstudio.com/)'s integrated terminal (this is my preferred method when working with projects).

**Windows**:

On Windows, install Git using the installer here: [Git for Windows](https://gitforwindows.org/).

This installer includes a Git BASH terminal emulator that will allow you to use Git and Unix commands from the terminal.

You can check to see if you have Git already installed by opening a terminal and typing the following:

```bash
git --version
```

## Set up automatic GitHub authentication

GitHub no longer accepts your account password when you push changes from the command line. Instead, you need to authenticate in another way, such as with SSH keys, with a personal access token, or through a credential helper that signs you in through the browser. (Git for Windows includes Git Credential Manager, which handles this for you. On a Mac, the [GitHub CLI](https://cli.github.com/) command `gh auth login` sets it up.) See the following topics to set this up:

* [Set up Git](https://docs.github.com/en/get-started/git-basics/set-up-git)
* [Caching your GitHub credentials in Git](https://docs.github.com/en/get-started/git-basics/caching-your-github-credentials-in-git)
* [Generating a new SSH key and adding it to the ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
* [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
* [Associating text editors with Git](https://docs.github.com/en/get-started/git-basics/associating-text-editors-with-git)

After you make these configurations, close and re-open your terminal.

{: .note}
GitHub and Git are not the same. Git provides [distributed version control](pubapis_version_control.html). GitHub is a platform that helps you manage Git projects. GitHub also provides a GUI interface that allows you to execute a lot of Git commands, such as pull requests.

## <i class="fa fa-user-circle"></i> Activity: Create a GitHub wiki and publish content on a sample page {#create_github_wiki}

In this section, you will create a new GitHub repo and publish a sample file there.

1.  Create a GitHub account at [GitHub.com](https://github.com).
2.  Go to [GitHub](https://github.com) and sign in. After you're signed in, click the **+** button in the upper-right corner and select **New repository**.

    <figure><a target="_blank" class="noExtIcon" href="https://github.com/new"><img class="docimage medium" src="{{site.api_media}}/newrepositorygithub.png" alt="Creating a new GitHub repository" /></a><figcaption>Creating a new GitHub repository</figcaption></figure>

3.  Give the repo a **Repository name**, a short **Description**, select **Public**, turn on the option to add a README file, and then click **Create repository**. (Don't worry about selecting the license or gitignore settings for this activity.)
4.  Click the **Wiki** tab on the top navigation bar of your new repository.
5.  Click **Create the first page**.
6.  In the default page ("Home"), insert your own sample documentation content, preferably using Markdown syntax. Or grab the sample Markdown page of a <a href="https://idratherbewriting.com/assets/files/surfreportendpointdoc.md">fake endpoint called surfreport here</a> and insert it into the page.
7.  In the **Edit message** box, type a description of what you updated (your commit message).
8.  Click **Save page**.

Notice how GitHub automatically converts the Markdown syntax into HTML and styles it in a readable way. You could work with this GitHub wiki entirely in the browser as a way for multiple people to collaborate and edit content. However, unlike other wikis, with GitHub you can also take all the content offline and edit locally, and then commit your changes and push the changes back online.

## <i class="fa fa-user-circle"></i> Activity: Clone your GitHub repo locally {#clone_repo_locally}

So far you've been working with GitHub in the browser. Now we'll take the same content and work with it locally. This is what makes the GitHub wiki unique from other wikis &mdash; it's a Git repo, so you can manipulate the content the same way as any other Git repo (working locally, pushing, pulling, merging, branching, etc.).

To clone the GitHub repo locally:

1.  If you don't already have Git installed, set it up on your computer. (You can check whether Git is installed by typing `git --version` in your terminal or command prompt. See [Install Git]({{site.rooturl}}pubapis_github_wikis.html#git_install) for more information on installation.)
2.  While viewing your GitHub wiki in your browser, look for the section that says **Clone this wiki locally** (highlighted below). Click the clipboard button. (This copies the clone URL to your clipboard.)

    <figure><img class="docimage medium" src="{{site.api_media}}/clone-this-wiki-locally.png" alt="Clone this wiki locally" /><figcaption>Clone this wiki locally</figcaption></figure>

	  {: .note}
    The wiki is a separate clone URL than the project's repository. Make sure you're viewing your wiki and not your project. The clone URL will include `.wiki`.

	  If you'd rather use a GUI than the command line, you can also clone and manage repositories with the [GitHub Desktop client](https://github.com/apps/desktop). See [Activity: Use the GitHub Desktop client]({{site.rooturl}}pubapis_github_desktop_client.html).

3.  Open your terminal emulator:

    * If you're a Windows user, open the **Git BASH** terminal emulator, which was installed when you [installed Git](https://gitforwindows.org/).
    * If you're a Mac user, go to **Applications > Utilities > Terminal** (or launch [iTerm2](https://iterm2.com/), if you installed it instead).
4.  In your terminal, either use the default directory or browse (`cd`) to a directory where you want to download your repository.
5.  Type the following, but replace the git URL with your own git URL that you copied earlier (it should be on your clipboard). The command should look something like this:

    ```bash
	  git clone https://github.com/YOUR-USERNAME/weatherapi.wiki.git
    ```

    When you clone a repo, Git will show something like the following:

    ```bash
    Cloning into 'weatherapi.wiki'...
    remote: Enumerating objects: 3, done.
    remote: Counting objects: 100% (3/3), done.
    remote: Compressing objects: 100% (2/2), done.
    remote: Total 9 (delta 0), reused 0 (delta 0), pack-reused 6
    Unpacking objects: 100% (9/9), done.
    ```

    The folder Git creates in the above example is called `weatherapi.wiki`. (Your folder name will match your own repo name.)

    Cloning the wiki gives you a copy of the content on your local machine. Git is distributed version control software, so everyone has their own copy. When you clone the repo, you create a copy on your local machine; the version in the cloud on GitHub is referred to as "origin." Thus, you have two instances of the content.

    More than just copying the files, though, when you clone a repo, you initialize Git in the folder where you clone the repo. Initializing Git means Git will create an invisible `.git` folder in that directory, and Git can start tracking your edits to the files, providing version control. With Git initialized, you can run `pull` commands to get updates from the online repository (origin) pulled down to your local copy. You can also `commit` your changes and then `push` your changes back up to origin.

6.  Navigate to the directory where you cloned the repo (either using standard ways of browsing for files on your computer or via the terminal with `cd`) to see the files you downloaded. For example, type `cd weatherapi.wiki` and then `ls` (Mac) or `dir` (Windows) to see the files.

    {: .tip}
    You don't need to type the full directory name. Just start typing the first few letters and then press your **Tab** key to autocomplete the rest.

    You might also want to browse to this folder via Finder (Mac) or Explorer (Windows). The folder also contains an invisible folder called `.git`. To see hidden files in Finder on a Mac, press **Cmd+Shift+.** (period). In Windows File Explorer, turn on **Hidden items** in the **View** menu.

## <i class="fa fa-user-circle"></i> Activity: Push local changes to the remote {#push_local_to_remote}

1.  In a text editor, open the Markdown file you downloaded in the GitHub repository.
2.  Make a small change to the content and save it. For example, type your name below the page title.
3.  In your terminal, make sure you're in the directory where you downloaded the GitHub project.

    To look at the directories under your current path, type `ls` (Mac) or `dir` (Windows). Then use `cd {directory name}` to drill into the folder, or `cd ../` to move up a level.

4.  See what files have changed:

    ```
    git status
    ```

    Git shows the files it's tracking but which haven't been added to the commit's staging area:

    ```bash
    Changes not staged for commit:
    (use "git add <file>..." to update what will be committed)
    (use "git restore <file>..." to discard changes in working directory)
    modified:   Home.md
    ```

5.  Type `git add .` to add all the files to your staging area. The staging area contains all files that you want added to your next commit:

    ```bash
	  git add .
    ```

	  Git doesn't automatically track all files in the same folder where Git has been initialized. Git tracks modifications only for the files that have been "added" to Git. By typing `git add .` or `git add --all`, you're telling Git to start tracking modifications to all files in this directory. You could also type a specific file name here instead, such as `git add Home.md`, to just add a specific file (rather than all files changed) to Git's tracking.

    After you run the `git add` command, Git adds the files into what's called the staging area. These files will be committed when you run `git commit`.

6.  See the changes set in your staging area:

    ```bash
	  git status
    ```

    Git responds with a message indicating which files are on-deck to be committed.

    ```bash
    Changes to be committed:
    (use "git restore --staged <file>..." to unstage)

        modified:   Home.md
    ```

	  The staging area lists all the files that have been added to Git that you have modified in some way. It's a good practice to always type `git status` before committing files because you might realize that you accidentally added some files you didn't intend to track (such as large binary files). If you want to remove this file from the staging area, you can type `git restore --staged Home.md` to unstage it.

7.  Commit the changes:

    ```bash
	  git commit -m "updated some content"
    ```

    When you commit the changes, you're creating a snapshot of the files at a specific point in time for versioning.

    The `git commit -m` command is a shortcut for committing and typing a commit message in the same step. It's much easier to commit updates this way.

    If you type `git commit` only, Git opens a text editor so you can describe the change. On Windows, Git opens whichever editor you chose when you installed Git for Windows. Describe the change on the top line, and then save and close the file.

    On a Mac, a new window doesn't open by default. Instead, the [Vim editor](https://en.wikipedia.org/wiki/Vim_(text_editor)) opens up within the terminal. ("Vim" stands for "Vi IMproved," an extended version of the older vi editor.) I don't recommend using Vim unless you already know it. If you get stuck in Vim and need to escape, press your **Escape** key, and then type `:q!` and press **Enter** to quit without saving, which cancels the commit. (See [vi commands](https://www.cs.colostate.edu/helpdocs/vi.html) here.) Normally, you want an editor such as VS Code to open from your terminal instead. See [Associating text editors with Git](https://docs.github.com/en/get-started/git-basics/associating-text-editors-with-git) for details.

8.  Push the changes to your repository:

    ```bash
    git push
    ```

    If you haven't [set up GitHub authentication]({{site.rooturl}}pubapis_github_wikis.html#set-up-automatic-github-authentication), the push will fail or prompt you to sign in. Note that if Git prompts for a password, your GitHub account password won't work. You need to enter a personal access token instead (or set up one of the other authentication methods).

    When you type `git push` or `git pull` and don't specify the branch, Git uses the branch you're currently on and its matching branch on origin. For a newly created GitHub repository, the default branch is usually called `main`, so the command actually passed is `git push origin main` (which means "push these changes to the remote origin[al] repository, in the `main` branch"). Wiki repos can use a different default branch name, such as `master`. Run `git branch` to see which branch you're on. Some developers prefer to specify the repository and branch to ensure they are interacting with the right repositories and branches.

    Your terminal window probably looks something like this:

    <figure><img class="docimage medium" src="{{site.api_media}}/terminalupdates.png" alt="Terminal window with git commands" /><figcaption>Terminal window with git commands</figcaption></figure>

9.  Now verify that your changes took effect. Browse to your GitHub wiki repository, refresh the page, and look to see the changes.

Although there are many options for authoring and publishing tools with developer docs (see [jamstack.org/generators](https://jamstack.org/generators/) for common docs-as-code tools), at the core of these tools is usually a Git workflow. The Git workflow can be more powerful and complex than any authoring tool. Interacting with Git might also be key for interacting with engineering repos to make edits to documentation that appears inside code.

## Avoiding merge conflicts when editing online and locally

The visual editor on GitHub.com might be an easy way for subject matter experts to contribute, whereas tech writers will probably want to clone the repo and work locally. If some people make edits in the browser while others edit locally, you might encounter merge conflicts. To avoid merge conflicts, always run `git pull` before running `git push`. If two people edit the same content simultaneously between commits, you will likely need to [resolve merge conflicts](https://docs.github.com/en/pull-requests/how-tos/merge-and-close-pull-requests/resolving-a-merge-conflict-using-the-command-line).
