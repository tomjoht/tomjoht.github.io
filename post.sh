#!/bin/bash

# Try loading REBRANDLY_API_KEY from common zsh config files
# Handles variations like: export KEY=value, export KEY="value", KEY=value
for rc_file in ~/.zshenv ~/.zshrc ~/.zprofile; do
    if [[ -f "$rc_file" ]]; then
        eval "$(grep -E '^\s*(export\s+)?REBRANDLY_API_KEY\s*=' "$rc_file" 2>/dev/null | sed 's/^\s*export\s*//' | sed 's/^/export /')"
    fi
done

# Get current date, year, and month
DATE=$(date +"%Y-%m-%d")
YEAR=$(date +"%Y")
MONTH=$(date +"%m")

# Get title from user input
echo "Enter the post title:"
read TITLE

echo "Enter the post slug:"
read SLUG

# Create year and month directories if they don't exist
mkdir -p _posts/$YEAR/$MONTH

# Create the file with YAML frontmatter
FILENAME=_posts/$YEAR/$MONTH/$DATE-$SLUG.md

cat > $FILENAME <<EOL
---
title: "$TITLE"
permalink: /blog/$SLUG
date: $DATE
categories:
- academics-and-practitioners
- ai
- ai-book-club
- api-doc
- api-doc-site-updates
- beginners
- biking
- blogging
- book-reviews
- creativity
- dita
- family
- findability
- technical-writing
- innovation
- jekyll
- jobs
- podcasts
- podcasting
- podcast-guest
- quick-reference-guides
- screencasting
- simplifying-complexity
- user-centered-documentation
- video
- visual-communication
- web-design
- wikis
- wordpress
- wtd-podcasts
- writing
keywords: 
rebrandly: https://idbwrtng.com/$SLUG
description: ""
# podcast_link: 
# podcast_file_size: 
# podcast_duration: ""
# podcast_length: 
# image: filename.png
# series: "Zen and the Art of Motorcycle Maintenance"
# sidebar: sidebar_zamm
# weight: 1.X
# section: peaceofmind
# path1: smartphones/peaceofmind.html
published: false
# image: 
---

* TOC
{:toc}

{% include ads.html %}

EOL

# Ask user if they want to create a rebrandly shortlink
echo "Would you like to create a rebrandly shortlink? (y/n)"
read answer

if [ "$answer" = "y" ]; then
    REBRANDLY_KEY="${REBRANDLY_API_KEY}"

    # Validate the key was actually loaded
    if [[ -z "$REBRANDLY_KEY" ]]; then
        echo "Error: REBRANDLY_API_KEY not found. Check that it's defined in ~/.zshrc or ~/.zshenv."
        exit 1
    fi

    data=$(printf '{
    "domain": { "fullName": "idbwrtng.com" },
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

    echo "Response: $response"
fi

open -a Antigravity "$FILENAME"