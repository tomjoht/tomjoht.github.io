---
title: "How big should your documentation repo be?"
categories:
- api-doc
keywords:
summary: "How big should your documentation repo be, especially if you have multiple products in your documentation? Although you could put all content into the same repo, it might be easier to have lots of little repos. Jekyll accommodates this architecture quite nicely through gem-based themes."
bitlink: http://bit.ly/sizeofrepos
published: false
---

When I set up the Jekyll doc system for our team, I initially started by having team members store content for each product in separate repos. However, updating the theme became problematic because the themes were hard-coded in each repo (rather than distributed via the cloud). Since the theme code was in flux (I was still fine-tuning it), it was a pain to update the theme across all the different product repos.

Also, linking one product page to another from repo to repo was problematic, because I couldn't ensure links across repos wouldn't break.

After trying this system for a few months, I made a big push to consolidate all the different repos into one master repo. This master repo contained different subfolders to organize the various products. With everyone contributing to the same repo, it was easier to link across repos using a special linking script I developed.

However, this giant repo also proved to be problematic. For starters, build times with Jekyll became much longer. Instead of building the site in a few seconds, it can take longer than a minute to build the output.

Additionally, there are more git complexities with lots of people working out of one repo. Before you commit to the master branch, you have to be sure to pull any updates others have made to the master. Additionally, if you change communal files, such as \_config.yml, get ready for merge conflicts. When you have a lot of people pushing and pulling commits, creating and removing branches, and so on, you're more apt to bump into each other, like lots of people working in a small, crowded space.

I don't know if git repos have a size limit, but the invisible .git folder keeps getting larger and larger. The size of that .git folder with all its snapshots and change histories can become many MB in size, even if all your content is just text files and images.

Another issue with large repos is pushing the output to a staging environment. If you have a giant repo that builds hundreds of files, when you want to review those files, you have to push the output to a server. Even if you can do this from the command line, pushing an output that's 150-200 MB in size gets to be slow. If you find yourself VPNing from a slow network (like the airport), transferring any more than 20MB can take a long time.

Jekyll doesn't do so great with large numbers of files. Waiting eons for your site to build can be cumbersome. My blog has more than 3,000 files. The build time is several minutes, which is more than I can bear. Fortunately, none of our doc sites have this many files, but what if they did? Who can wait 3 minutes for the site to build without forgetting what they were building it for in the first place?

And so I'm not reverting back to small repos. I'm convinced that small repos are the architecture to follow with static site generators. Yes, some static site generators, particularly Hugo, are faster than Jekyll. But I don't need to be building my entire site over and over when I'm only working with a small number of files anyway.

I'm starting to break up my doc content into many small repos, dividing them by product. I'm going to convert the theme into a gem-based theme and store the content in a RubyGem. Writers will install the theme and get the files (as well as theme updates) using Bundler with gems. This is an ingenious theming system that Jekyll has developed, and it's finally time I start using it.

With smaller repos, we'll have fewer merge conflicts, faster build times, faster pushes to staging environments, and all-around easier file management. Writers can have more autonomy over their repos. Engineers can also have an easier time making pull requests and managing their content without having to sort through tons of other pages that aren't related to their products.

Overall, I'm pretty excited about this approach and will be pushing out a gem-based theme soon to try it out.

I'd also like to find a way to speed up the file generation time of my blog. I'm not sure why I rebuild all the posts from 2007 through 2016 every time I build the site, when in fact these files rarely change. I could store each of these separate repos, I guess, but I'm not sure if the subfolders would create new URL paths that I'd have to create redirects for.
