---
layout: post
title: "A script that creates a new Jekyll post and populates it with YAML frontmatter, and also makes a curl call to add a Rebrandly shortlink"
permalink: /blog/./
date: 2023-04-16
categories:
- technical-writing
- AI
keywords: 
rebrandly: https://idbwrtng.com/create-script-to-auto-create-new-post-jekyll
description: "I wanted to make it easier to create new blog post files in Jekyll, so I made a script that automates some of this functionality. (This is also an example of how AI tools can help you write code.)"
---

## What the script does 

The script, run in Visual Studio Code, does the following:

- Creates a new file and categorizes it in the directory yyyy/mm
- Populates the file with custom YAML frontmatter
- Makes a curl call to a URL shortener called [Rebrandly](https://rebrandly.com) to get a shortlink for the post. 

The Rebrandly step allows me to easily track clicks on the post when I include the link in a newsletter or when I share it on social media. Rebrandly is a URL shortener that works quite well and is free for up to 5,000 links.

By the way, this process isn't specific to Jekyll. It just automates the creation of a file with yaml frontmatter. It could easily be adapted for most static site generators.

## Step 1: Create a post.sh shell script

Create a shell script file called `post.sh` in the root directory of your Jekyll site. Include these contents in the file:

```shell
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
- some-category
- another-category
keywords: 
rebrandly: https://yourdomainhere.com/$SLUG
description: ""
---

EOL

# Get API key from .zshrc file
REBRANDLY_KEY="${REBRANDLY_API_KEY}"

# Make API call to Rebrandly to create shortlink
data=$(printf '
{
  "domain": {
    "fullName": "yourdomainhere.com"
  },
  "destination": "https://yourdomainhere.com/%s",
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
```

Customize the script as needed. For example, customize the categories and permalink path in the yaml frontmatter. In the Rebrandly script, customize the domain `fullName` and `destination`. Change the domain obviously. See the [Rebrandly link endpoint documentation](https://developers.rebrandly.com/reference/createlink) for details.

Notice how the API key is passed in from the `.zshrc` or `.bashrc` file rather than being embedded directly in the script. This ensures that your API key won't be included when you commit this script into a public repo.

Also notice that the `data` is passed in a bit differently from the basic curl call shown in the Rebrandly docs. This is because I had some trouble with variable substitution and so reverted to this approach to make sure the values are passed into the variables properly.

{% include ads.html %}

## Step 2: Add API key to .zshrc or .bashrc file

Open your `.zshrc` or `.bashrc` file (it's in `~/`) and add the following, replacing the value with your actual Rebrandly API key:

```
export REBRANDLY_API_KEY="123456789"
```

Reload your terminal session or run `source ~/.zshrc` or `source ~/.bashrc`.

## Step 3: Create the task in the VS Code Studio Command Palette

In this step, you'll create a new option in VS Code studio Command Palette that has the Create Jekyll Post option. 

In your VS Code files, open `.vscode > tasks.json` and include the following in the `tasks` array:

```json
        {
            "label": "Create Jekyll Post",
            "type": "shell",
            "command": "./post.sh",
            "problemMatcher": [],
            "group": "none",
            "presentation": {
                "echo": true,
                "reveal": "always",
                "focus": true,
                "panel": "shared",
                "showReuseMessage": true,
                "clear": false
            }
        }
```

If the `.vscode > tasks.json` directory and file don't exist, create them and include this code:

```
{
	"version": "2.0.0",
	"tasks": [
        {
            "type": "java (build)",
            "paths": [
                "${workspace}"
            ],
            "isFullBuild": true,
            "group": "build",
            "problemMatcher": [],
            "label": "java (build): Build Workspace",
            "detail": "$(tools) Build all the Java projects in workspace."
        },
        {
            "label": "Create Jekyll Post",
            "type": "shell",
            "command": "./post.sh",
            "problemMatcher": [],
            "group": "none",
            "presentation": {
                "echo": true,
                "reveal": "always",
                "focus": true,
                "panel": "shared",
                "showReuseMessage": true,
                "clear": false
            }
        }
    ]
}
```

## Test it out

In VS Code, go to **View > Command Palette > Tasks > Run Task**. Click **Create Jekyll Post**. The terminal asks you for the post name input. Then if successful, it creates the new post and the Rebrandly short url. Check Rebrandly to see if the shortlink was created.

(BTW, I used Phind.com and ChatGPT for help with this code.)