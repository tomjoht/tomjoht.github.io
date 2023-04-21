#!/bin/bash

# Make sure API key loads from .zshrc file
source ~/.zshrc


# Get current date, year, and month
DATE=$(date +"%Y-%m-%d")
YEAR=$(date +"%Y")
MONTH=$(date +"%m")

# Get title from user input
echo "Enter the post title:"
read TITLE

echo "Enter the post slug:"
read SLUG

# Replace spaces with hyphens and convert to lowercase

# SLUG=$(echo "$TITLE" | tr "[:upper:]" "[:lower:]" | sed "s/ /-/g")

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

# get API key from .zshrc file
REBRANDLY_KEY="${REBRANDLY_API_KEY}"

# make API call to Rebrandly to create shortlink
data=$(printf '
{
  "domain": {
    "fullName": "idbwrtng.com"
  },
  "destination": "https://idratherbewriting.com/blog/%s",
  "slashtag": "%s",
  "title": "%s"
}' "$SLUG" "$SLUG" "$TITLE")

response=$(curl --request POST \
     --url https://api.rebrandly.com/v1/links \
     --header 'accept: application/json' \
     --header "apikey: $REBRANDLY_KEY" \
     --header 'content-type: application/json' \
     --data "$data"
)

echo "Response:" $response
