---
title: "How to publish Jekyll on Github Pages using a custom domain managed through Bluehost"
categories:
- jekyll
keywords: 
description: ""
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/
published: false
---

## Put your Jekyll project in a Github repo

1. Create a new Github repo. 
2. Create a branch called gh-pages.
3. Go to the repo's settings and make the gh-pages branch the default.
4. Clone the repo locally.
5. Move your Jekyll project into the locally cloned Github repo.

## Install the local github-pages gem and dependencies

Not necessary unless you want to build locally, which you do.


6. Install homebrew if you don't already have it.
7. Install Bundler through homebrew. If you run into Ruby permissions problems.... 
8. Type Bundle init. A new gemfile gets created.
9. Open gemfile.
10. Add the following:

- gem: github-pages
11. Bundle install. 
6. Commit your project. You should see your project build at username.github.io.

## Set up the domain
7. Register the domain you want.
8. Set up the domain as a something domain (not a parked domain).
7. Create a CNAME file with your domain specified.
8. In your web host's domain manager, create an A name that points to these two Github addresses:
* 
* 
9. Delete the existing A name record for the domain.
9. Wait about 4 hours.
