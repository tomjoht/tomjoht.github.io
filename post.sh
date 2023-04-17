#!/bin/bash

# Get current date, year, and month
DATE=$(date +"%Y-%m-%d")
YEAR=$(date +"%Y")
MONTH=$(date +"%m")

# Get title from user input
echo "Enter the post title:"
read TITLE

# Replace spaces with hyphens and convert to lowercase
SLUG=$(echo "$TITLE" | tr "[:upper:]" "[:lower:]" | sed "s/ /-/g")

# Create year and month directories if they don't exist
mkdir -p _posts/$YEAR/$MONTH

# Create the file with YAML frontmatter
cat > _posts/$YEAR/$MONTH/$DATE-$SLUG.md <<EOL
---
layout: post
title: "$TITLE"
permalink: /blog/$SLUG
date: $DATE
categories:
- technical-writing
- AI
keywords: 
rebrandly: https://idbwrtng.com/$SLUG
description: ""
---

EOL
