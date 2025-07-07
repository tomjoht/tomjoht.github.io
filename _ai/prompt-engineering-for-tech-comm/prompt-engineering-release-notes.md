---
title: "Using file diffs for better release notes in reference docs"
permalink: ai/prompt-engineering-release-notes-reference-docs.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2025-02-12
rebrandly: https://idbwrtng.com/prompt-engineering-release-notes
---

Most technical writers create release notes for the APIs they support. For me, for most of my career, this has meant tracking down engineers to understand upcoming changes, and then trying to unravel cryptic engineering-written notes and other links. One day, I realized I could skip much of that work and find most changes myself by analyzing file diffs from version control with AI tools.

This guide provides a detailed workflow for this process. The core strategy is to first identify API changes by comparing file differences (diffs) between releases, then use an AI assistant like Gemini to interpret these changes, enrich them with high-level feature context, and verify the final output for accuracy.

The techniques I'll share here have been among my most successful uses of AI in writing documentation. Relying on file diffs for release notes has also led to several key insights: engineers don't always know what they're releasing, they often don't tell tech writers about many of the changes they're making, and this process elevates the value of the technical writer's role.

**A quick note on limitations:** This process works well for identifying changes to an API's structure—new fields, methods, messages, etc. However, this approach won't catch changes that are purely data-related. For example, if an existing API field starts returning higher-quality data without any change to the API's definition, this method won't detect it. In short, this method is only as good as the documentation you're comparing; if a change isn't in the reference files, it will be missed.

## Step 1: Generate and capture API diffs

The foundation of accurate release notes is understanding exactly what changed in the API. The most reliable method is to compare the generated API reference documentation between the new and previous releases.

1.  **Build the reference docs**: First, regenerate the complete API reference documentation for the new release (a process I described in [Creating scripts to automate doc build processes](/_ai/prompt-engineering-for-tech-comm/prompt-engineering-doc-build-scripts.md)). This gives you ownership of the invaluable file diffs. Even if you work with different types of APIs—cloud, Java, or gRPC—the reference documentation is typically generated as HTML or Markdown. When you regenerate it, you get access to diffs of everything that has changed.

    Note: Focus on the *documentation* changelist, not the source code changelists (e.g., Java or proto files). Almost all changes to the source code will eventually impact the generated documentation, and focusing on the doc diffs keeps you centered on what is relevant to external developers.

2.  **Get a list of changed files**: Use `git` (or similar version control commands) to get a list of all documentation files that changed between the two releases. To compare the last two commits, for example, you would run:

    ```bash
    git diff --name-only HEAD~1 HEAD
    ```

    Replace `HEAD~1` and `HEAD` with the specific commit hashes for the releases you are comparing.

3.  **Generate the diffs**: For each changed file, generate a diff to get a precise, line-by-line breakdown of every change. The key command is:

    ```bash
    git diff <COMMIT_BEFORE> <COMMIT_AFTER> -- PATH_TO_FILE
    ```

    To process all changed files at once, you can use a shell loop:

    ```bash
    # Get the list of changed files between two commits.
    # The --name-only flag tells git to output only the file paths, not the content of the diffs.
    FILES=$(git diff --name-only <COMMIT_BEFORE> <COMMIT_AFTER>)

    # Loop through the files and run the diff command for each one
    for file in $FILES; do
      echo "--- Diff for $file ---"
      git diff <COMMIT_BEFORE> <COMMIT_AFTER> -- "$file"
    done
    ```

    If a few files have a large number of changes, you might get better results by running the `git diff` command on them individually.

## Step 2: Create initial summaries with AI

Raw diff files are technical and hard to read, but AI is excellent at translating them into human-readable summaries.

1.  **Consolidate diffs**: Copy the diff outputs for all changed files from your terminal.

2.  **Prompt your AI tool for summaries**: Paste the consolidated diffs into your AI tool. A simple prompt often works well:

    <div class="chat">
    <div markdown="1">
    I have a collection of file diffs from my API documentation. Create human-readable summaries of the changes in these diffs. I'll use these for my release notes.
    </div>
    </div>

    For more control, you can use a more detailed prompt that specifies the audience, format, and what to ignore:

    <div class="chat">
    <div markdown="1">
    "You are a technical writer creating release notes for an API. Your audience consists of experienced developers. You will be provided with diff outputs from our reference documentation. Your task is to analyze the diffs and describe the changes in plain, readable language using Markdown.
    
    **Focus on changes that affect functionality:**
    
    * **New features**: Describe any added classes, methods, or capabilities.
    * **Deprecations**: Identify any deprecated classes, methods, or fields. Pay close attention to `<del>` tags.
    * **Removals**: Note any methods or classes that have been removed.
    
    **Ignore:**
    
    * Trivial grammar, style, or minor comment updates that don't affect functionality.
    * Internal implementation details.
    
    **Style:**
    
    * Use sentence case for headings.
    * Be precise and surround code elements like `DataProcessor.Builder` in backticks.
    
    Here is the diff output:"
    
    *\[PASTE FILE DIFFS HERE\]*
    </div>
    </div>

3.  **Organize the summaries**: Copy the generated summaries into a working document. This forms the first, purely technical draft of your release notes. At this stage, you can begin to group related information, remove insignificant changes, and organize updates by API.

## Step 3: Gather high-level feature context

The diffs tell you *what* changed, but not *why*. Now, connect the technical changes to the larger features delivered in the release.

1.  **Find feature descriptions**: Locate the primary tickets or documents describing the release's features. These tickets might be listed in a launch entry, or in an epic in **Jira**, a milestone in **GitHub**, or another document. The team pushing out the release should have a list of the major features and changes going into the release.

2.  **Consult the roadmap**: If your team maintains a roadmap, find the official descriptions for the features. Using this wording ensures consistency.

3.  **Consolidate information**: Gather all this context into a single reference document. This information will help you corroborate and supplement the details generated from the file diffs. You might find discrepancies, confirming that a feature you found in the diffs is significant or, conversely, that a planned feature didn't actually make it into the release.

## Step 4: Enrich the draft with feature stories

Merge the high-level context with the technical details.

1.  **Provide context to Gemini**: In your chat with the AI, paste the high-level features and their official descriptions.

2.  **Ask Gemini to integrate details**: Instruct the AI to layer the technical details (from the diff summaries) under the appropriate feature description. A good prompt might be:

    <div class="chat">
    <div markdown="1">
    "I have a list of features that were part of this release. Organize the following technical details \[from the diff summaries\] under the relevant feature. This will add depth to the release notes."
    </div>
    </div>

3.  **Refine and organize**: Review the output. The goal is a set of release notes organized by feature, with the technical implementation details listed as supporting evidence. Add an introductory paragraph highlighting the main new features of the release.

## Step 5: Verify accuracy and link to the source of truth

Because AI can make mistakes, it's important to fact-check the generated release notes against your best source of truth: the **API reference documentation**.

1.  **Link every code element**: Before final verification, link every API element in your draft (e.g., `WidgetConfig`) to its definition in the reference docs. This manual fact-check forces you to confirm that an element exists and is spelled correctly. It's a simple way to catch errors before a formal review.

2.  **Cross-reference and compare**: For every statement in the draft release notes, verify it against the final API reference documentation. One way to do this is to open your staged changes in one window and the currently published docs in another. For every assertion in your draft (e.g., "a new method was added"), click the link to verify it exists in the preview and then check that it does *not* exist in the live version.

3.  **Use a "second opinion"**: You can also ask an AI to help with verification. Use a separate AI session and provide it with the final release notes, the complete file diffs, and the API reference docs. Ask it to perform a final check:

    <div class="chat">
    <div markdown="1">
    Check my release notes against the file diffs and the provided API reference documentation. Make sure the release notes are accurate and that all significant changes in the diffs are accounted for.
    </div>
    </div>

4.  **Investigate discrepancies**: If the AI finds a feature mentioned in the notes that isn't supported by the API reference, it's probably an error. Investigate with the engineering team and remove any inaccurate information. (BTW, catching errors like this is one of the most satisfying rewards in writing release notes.)

## Step 6: Analyze impact on existing documentation

The changes you've identified in the API reference don't exist in isolation. They likely impact other parts of your documentation that reference the changed elements. This step ensures your entire documentation set stays consistent and up-to-date.

1.  **Identify elements that need documentation updates**: From your release notes, extract all the API elements that were added, deprecated, or removed. Focus on elements that developers might reference in other documentation, such as:
    *   Deprecated methods or classes
    *   Removed functionality
    *   New methods that might replace old ones
    *   Changed parameter names or types

2.  **Use AI to search your documentation**: AI tools excel at finding references across large documentation sets. Create a comprehensive search by providing your AI tool with:
    *   The list of changed API elements from your release notes
    *   Access to your entire documentation repository (or relevant sections)

    Here's a prompt you can use:

    <div class="chat">
    <div markdown="1">
    I need to find all references to specific API elements in my documentation. Here are the elements that changed in this release:
    
    *   `OldMethodName` (deprecated)
    *   `NewMethodName` (added)
    *   `RemovedClass` (removed)
    
    Search through my documentation files and identify anything that needs to be updated. For example:
    
    1.  Any tutorials, guides, or examples that use the deprecated `OldMethodName`
    2.  Any code samples that reference `RemovedClass`
    3.  Any conceptual documentation that might need updates to mention `NewMethodName`
    4.  Any configuration examples that use the old parameter names
    
    For each reference you find, provide the file path and a brief description of what needs to be updated.
    </div>
    </div>

This step is important because documentation drift happens gradually. When changes slip by in just 1% of releases, they compound over time. By systematically checking the impact of each release on your entire documentation set, you prevent this drift and maintain documentation quality.

## Step 7: Send for review

Finally, send the draft release notes to engineers and product managers for review. It helps if you can generate the draft early and give people about a week to review it. The more time and reviewers you include, the more accurate and complete your release notes will be. Sticking to a regular schedule for writing and sharing drafts can reduce stress for everyone involved.

## Realizations from this process

As I've prepared release notes using this method, I've had a few key realizations.

### Realization #1: Engineers don't always know what's being released

Surprisingly, engineers and product managers don't always have a firm grasp of what's in each release. I find myself trusting the file diffs more than verbal reports. I frequently catch discrepancies, such as methods that should have been deprecated but weren't, or features planned for a future release being partially available in the current one. Don't assume a launch ticket is accurate if it contradicts the file diffs.

### Realization #2: Engineers aren't telling writers about many changes

Tech writers have known this for years, but it's really true. All kinds of changes constantly slip by. When documentation drifts just 1% with each biweekly release, that adds up to about 25% over a year. Writing release notes based on file diffs puts a stop to that drift. The systematic documentation impact analysis in Step 6 ensures that when a method is deprecated or removed, you find all references to it across your entire documentation set and update them accordingly.

### Realization #3: Tech writers can play a high-value role in the release process.**

When you fully understand every change going out in a release, your importance in the process increases. Teams need someone who scrutinizes the diff of everything that's changed. When you itemize these changes in minute detail, partners and stakeholders see the increased value in the release notes, and by extension, in your role. Program managers and other leads will look to your release notes to evaluate whether to approve the release.



<hr/>

{% if site.format == "web" %}

## More resources

Here's a video of an earlier version of this content: 

<iframe width="560" height="315" src="https://www.youtube.com/embed/FO2GAzeV_lg" title="Using file diffs for better release notes in reference docs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
{% endif %}
