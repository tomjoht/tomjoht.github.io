---
title: "Pull request workflows through GitHub"
permalink: learnapidoc/pubapis_github_pull_requests.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 9.94
path1: learnapidoc/publishingtools.html
section: publishingtools
last-modified: 2026-10-17
---

{% include coffeeshopbook.html %}

In the previous step, [Activity: Use the GitHub Desktop Client](pubapis_github_desktop_client.html), you used GitHub Desktop to manage the workflow of committing files, branching, and merging. In this tutorial, you'll do a similar activity but using the browser-based interface that GitHub provides rather than using a terminal or GitHub Desktop.

Understanding the pull request workflow is essential for reviewing changes in a collaborative project, such as an open-source project with many contributors. Using GitHub's interface is also handy if you have non-technical reviewers.

* TOC
{:toc}

## Make edits in a separate branch

By default, your new repository has one branch called `main`. (Older repositories might call it `master`.) Usually, when you're making changes or reviews/edits, you create a new branch and make all the changes in the branch. Then when finished, the repo owner merges edits from the branch into `main` through a "pull request."

{: .note}
Although you can perform these operations using Git commands from your terminal, you can also perform the actions through the browser interface. The browser interface might be helpful if you have less technical people making edits to your content.

To make edits in a separate branch on GitHub:

1. Pretend you're a SME reviewer. Go to the same GitHub repo you created in an [earlier tutorial](pubapis_github_desktop_client.html) (or create a new repo). Create a new branch by selecting the branch drop-down menu (it shows **main**) and typing a new branch name, such as "sme-review." Then click **Create branch: sme-review from main**.

   <figure><img class="docimage large" src="{{site.api_media}}/github_sme_review.png" alt="Creating a new branch" /><figcaption>Creating a new branch</figcaption></figure>

	 When you create a new branch, the content from `main` (or whatever branch you're currently viewing) is copied over into the new branch. The branch is like doing a "Save as" with an existing document.

2. Click a file, and then click the pencil icon ("Edit this file") to edit the file.

   <figure><img class="docimage large" src="{{site.api_media}}/github_making_branch_edits.png" alt="Making an edit" /><figcaption>Making an edit</figcaption></figure>

3. Make some changes to the content, and then click **Commit changes...** in the upper right. In the dialog, explain the reason for the changes, make sure the option to commit directly to the sme-review branch is selected, and click **Commit changes**.

	 Reviewers could continue making edits this way until they have finished reviewing all of the documentation. All of the changes are made on a branch, not on `main`.

## Create a pull request

Now let's suppose that the review process is complete, and it's time to merge the branch into `main`. You merge the branch into `main` through a pull request. Any "collaborator" on the team with write access can initiate and complete the pull request (you can add collaborators through **Settings** > **Collaborators**).

{% include random_ad4.html %}

To create a pull request:

1. View the repository and click the **Pull requests** tab.
2. Click the **New pull request** button.

   <figure><img class="docimage large" src="{{site.api_media}}/github_new_pull_request.png" alt="New Pull Request" /><figcaption>New Pull Request</figcaption></figure>

3. Leave **base** set to `main`, and set **compare** to the branch ("sme-review") that you want to merge.

   <figure><img class="docimage large" src="{{site.api_media}}/github_compare_to.png" alt="Compare to option" /><figcaption>Compare to option looks to see if the branches can be merged</figcaption></figure>

	 When you compare the branch against `main`, you can see a list of all the changes. You can view the changes through two viewing modes: Unified or Split (these are tabs shown on the right of the content). Unified shows the edits together in the same content area, whereas split shows the two files side by side.

4. Click **Create pull request**.
5. Describe the pull request, and then click **Create pull request**.

   The maintainers will then see the Pull Request and can take action to merge it.

{% include ads.html %}

## Process the pull request

Now pretend you are the project owner, and you see that you received a new pull request. You want to process the pull request and merge the sme-review branch into `main`.

1. Click the **Pull requests** tab to see the pending pull requests.
2. Click the pull request and view the changes by clicking the **Files changed** tab.

   <figure><img class="docimage large" src="{{site.api_media}}/github_files_changed.png" alt="GitHub files changed" /><figcaption>GitHub files changed</figcaption></figure>

	 {: .note}
   If you only want to implement some of the edits, go into the sme-review branch and make the updates before processing the pull request. The pull request doesn't give you a line-by-line option to accept or reject changes (like in Microsoft Word's Track Changes). Merging a pull request merges all of its commits. However, a reviewer can comment on a specific line and insert a *suggested change*, which the pull request author can then apply with **Commit suggestion**, one suggestion at a time or in a batch. You can also click **Review changes**, add some comments, and then select the **Request changes** option, asking the author to make the changes.

	 Note also that if the pull request is made against an older version of `main`, such that the original content no longer exists or has moved elsewhere, the merges will be more difficult to make.

3. Click the **Conversation** tab, and then click the **Merge pull request** button.
4. Click **Confirm merge**.

	 The sme-review branch gets merged into `main`. Now `main` contains all the changes from the sme-review branch.

5. Click the **Delete branch** button to delete the sme-review branch.

	 If you don't want to delete the branch here, you can always remove old branches by clicking the **branches** link while viewing your GitHub repository, and then click the **Delete** (trash can) button next to the branch.

	 If you look at your list of branches, you'll see that the deleted branch no longer appears.

{% include random_ad3.html %}

## Add collaborators to your project

You might need to add collaborators to your GitHub project so they can commit edits to a branch. If other project members aren't collaborators and they want to make edits, they will receive an error. (See [Inviting collaborators to a personal repository](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/repository-access-and-collaboration/inviting-collaborators-to-a-personal-repository).)

{% include image_ad_right.html %}

If people don't have write access, they can [fork the repo](https://docs.github.com/en/pull-requests/how-tos/work-with-forks/fork-a-repo) instead of making edits on a branch on the same project. Forking a project clones the entire repository, though, rather than creating a branch within the same repository. The fork (copy) then exists in the user's personal GitHub account. You can merge a forked repository (this is the typical model for open-source projects with many outside contributors), but this scenario probably is less common for technical writers working with developers on the same projects.

To add collaborators to your GitHub project:

1. While viewing your GitHub repository, click the **Settings** tab.
2. In the left sidebar, under **Access**, click **Collaborators**.
3. Click **Add people**.
4. Search for the GitHub username or email of the person you want to add, and then confirm that you want to add them to the repository. The person receives an invitation that they need to accept.

{% include random_ad2.html %}
