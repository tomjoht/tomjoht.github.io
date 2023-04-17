---
layout: post
title: "Create a script that creates a new post and populates it with frontmatter, and also adds a Rebrandly shortlink"
permalink: /blog/create-script-to-auto-create-new-post-jekyll
date: 2023-04-16
categories:
- technical-writing
- AI
keywords: 
rebrandly: https://idbwrtng.com/sample-post-22
description: ""
published: false
---

I wanted to make it easier to create new blog posts in Jekyll, so I made a script that does the following:

- creates a new file and categories it by yyyy/mm
- populates the file with yaml frontmatter
- makes a call to a URL shortener called Rebrandly to get a shortlink for the post

The Rebrandly step allows me to easily track clicks on the post when included in a newsletter or when I share it on social media. 

BTW, I used Phind.com and ChatGPT to figure out this code.


Create a shell script called `post.sh` in your root directory that looks like this:

```

```

Add the file to your `.gitignore` file so that you don't commit it
