---
title: "How big should your documentation repo be?"
categories:
- api-doc
keywords:
description: "How big should your documentation repo be, especially if you have multiple products in your documentation? Although you could put all content into the same repo, it might be easier to have lots of little repos. Jekyll accommodates this architecture quite nicely through gem-based themes."
bitlink: http://bit.ly/sizeofrepos
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/reposizethumb.png
---

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/reposize.png"/>

When I set up the Jekyll doc system for our team, I initially started by having team members store content for each product in separate repos. However, updating the documentation theme became problematic because the themes were hard-coded in each repo (rather than distributed via the cloud). Since the theme code was in flux (I was still fine-tuning it every couple of weeks), it was a pain to update the theme across all the different product repos.

Also, cross-linking one page to another from repo to repo was problematic, because we couldn't ensure links across repos wouldn't break.

After trying this system for a few months, I decided to consolidate all the different repos into one master repo. This master repo contained different subfolders to organize the various products. With everyone contributing to the same repo, it was easier to link across repos (through a linking script I developed).

However, this giant repo also proved to be problematic. For starters, build times with Jekyll became much longer. Instead of building the site in a few seconds, it took longer than a minute to build the output.

Additionally, there were more git complexities with lots of people working in the same repo. Before you commit to the master branch, you have to be sure to pull any updates others have made to the master. Additionally, if you change commonly used files, such as \_config.yml, get ready for merge conflicts. When you have a lot of people pushing and pulling commits, creating and removing branches, and so on, you're more apt to bump into each other.

I don't know if git repos have a size limit, but the invisible .git folder also kept getting larger and larger. The size of that .git folder with all its snapshots and change histories can become quite massive (more than 1GB even), even if all your content is just text files and images.

Another issue with large repos is pushing the output to a staging environment. If you have a giant repo that builds hundreds of files, when you want to review those files, you have to push the entire output to a server (unless you're pushing to S3 using the s3_website plugin). Even if you can make this push from the command line, transferring an output that's 150-200 MB in size gets to be slow. If you find yourself VPNing from a slow network (like at the airport), transferring any more than 20MB can take a half hour.

Jekyll doesn't do so great with large numbers of files. Waiting eons of time for your site to build can be tedious. My blog has more than 3,000 files. The build time is several minutes, which is more than I can bear without losing my focus. Fortunately, none of our doc sites have this many files, but what if they did? Who can wait 3 minutes for the site to build without forgetting what they were building it for in the first place? :)

Given these constraints, I'm now reverting back to small repos. I'm convinced that small repos are the architecture to follow with static site generators. Yes, some static site generators, particularly Hugo, are must faster than Jekyll. But I don't need to be building my entire site over and over when I'm only working with a small number of files anyway.

I'm going to break up my doc content into many small repos, dividing them by product as before. To address the duplicate theme file issue, I'm going to convert the theme into a [gem-based theme](https://jekyllrb.com/docs/themes/) and store the content in a [RubyGem](https://rubygems.org/). Writers will install the theme and get the files (as well as theme updates) using [Bundler](http://bundler.io/) with gems. This is an ingenious theming system that Jekyll has developed, and it's finally time I start using it. (I just hope Windows users don't run into Ruby/Bundler installation issues.)



With smaller repos, we'll have fewer merge conflicts, faster build times, faster pushes to staging environments, and all-around easier file management. Writers can have more autonomy over their repos. Engineers can also have an easier time making pull requests and managing their content without having to sort through lots of other pages and folders that aren't related to their products.

Overall, I'm pretty excited about this approach and will be pushing out a gem-based theme soon to try it out.

I'd also like to find a way to speed up the file generation time of my blog. I'm not sure why I rebuild all the posts from 2007 through 2016 every time I build the site, when these files rarely change. I could store each of these separate repos, I guess, but I'm not sure if the subfolders would create new URL paths that I'd have to create redirects for. Whatever the final approach, I'm convinced that smaller, independent repos are the correct architecture in the docs-as-code landscape.
