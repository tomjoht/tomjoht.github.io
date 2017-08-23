


Downsides of the outcome

- long build times for jekyll serve
- potential SLA warnings about git repo sizes
- merge conflicts more likely
- less SEO from publishing directory
- won't facilitate tech doc publishing for groups not using jekyll
- less autonomy for controlling your project
- more visual clutter in project with irrelevant files
- someone else could break your build
- easier for someone to accidentally push pre-release content into mainline and have it go to prod
- less flexibility to right-size your solution
- each team reinvents the wheel versus each team must follow the same rules.



as docs as code becomes more common, we must do things the developer way.

my proposals failed
- bundler
- submodule
- subtree
- html outputs
- no, 2 repos. one per team. one big system.



- my question: which model is more common, small or large? what
- source code in source repo
- build from build management system -- ensures consistent source
- merge branches in to initiate build pipelines
- no images in repo
- trends toward REST APIs and SaaS point to centralized systems that people pull from
- build processes largely a black box to us
- you can enforce error checking and validation through the build management system
- canonical version of a project. this is what git enforces. two people can't commit different versions of something from different machines. there is a central places where they merge in their changes into a central point.



sizes of containers: lots of little reops, or one big repo.

- wordpress. lots of little blogs as part of a large blog. wordpress multisite. wordpress plugins. a central repository.
- version control, git. lots of little copies that sync with one larger copy.
complicated.
- states versus nation. one big body, or separate instances that can vary from the master.
- mcdonalds. efficiency through cloned instances. versus mom and pop hamburger shops.
- tesla. no longer buying an individual car. the car is a vessel for cloud distribution.
- facebook and their monorepo.
- linkedin -- tons of different modules that get merged in? or one instance that calls APIs for what they need.
- msoffice online.
- the whole internet is moving toward web services (SaaS) and APIs.
- iphone.
- java libraries versus REST APIs
- cloud doc solutions (Corilla, Paligo, ClickHelp -- SaaS models)
- scrum teams within an org. single-threaded ownership.
- rubygems and bundler, how jekyl distributes themes.
- software code. dependencies.
- the borg, whitewalkers, intelligent organization of bees

the genius of git -- both individual/local and a server instance.git is a fascinating method for collaboration. everyone makes a copy and then merges it back in with the master. in this way, git straddles both worlds of the issue. it's both separate but also together. that is perhaps why it is succeeding so well. i think we often overlook what a tremendous innovation distributed version control is. it is probably one of the things that will most significantly impact tech docs. not the migration to dita. the migration to git. this gets us out of these monosystems that manage everything. the paradigm of the all-in-one cms where you manage everything .... that's gone.


problem: doc follows code but can't act like code. so here's where we get screwed:
- can't separate out code and then import them as needed as dependencies.
- lots of individuals pushing content to the server at different times. this isn't how devs release software.
- inability to share content across repos.

Upsides of the outcome

- easier to share content from \_includes directory within same project
- automated linking script will work for all sidebars in that project
- easier to run custom scripts (for error checking, etc.) within the project
- less context switching required to navigate across projects
- easier onboarding process for new authors (no need to create entirely new projects)
- increased diligence about excluding binary files from repos (which balloon the size)
- removal of somewhat complicated subtree or submodule approach for file sharing
- won't need new SIMs to create more repos in the future (unless we have a huge need for it)
- easier for one writer to fix errors in another writer's content
- more collaboration among teams in authoring and publishing process (removes lone writer syndrome)
- more likely to hit our target date
 run scripts against all content

Downsides of the outcome

- long build times for jekyll serve
- potential SLA warnings about git repo sizes
- merge conflicts more likely
- less SEO from publishing directory
- won't facilitate tech doc publishing for groups not using jekyll
- less autonomy for controlling your project
- more visual clutter in project with irrelevant files
- someone else could break your build
- easier for someone to accidentally push pre-release content into mainline and have it go to prod
- less flexibility to right-size your solution
- each team reinvents the wheel versus each team must follow the same rules.

long-term directions for doc as code will follow software. what are those directions?
Solution: store content in a cloud database, let individual help sites pull down what they want. you see this model with the cloud storage of the Contentful. not sure why that model didn't take off.



problem with expansion. at some point, the same rules and approach won't work everywhere, so people need some flexibility to adapt. classic example is with developer doc. the edit on github button may be right for an open source project but not in consumer docs.

not very good at syncing



doc architecture questions:
- one help or lots of little helps
- one team or lots of little teams
- one repo or lots of little repo









## Reading

https://developer.atlassian.com/blog/2015/10/monorepos-in-git/
