---
title: ""
categories:
- api-doc
- beginners
- blogging
- book-reviews
- creativity
- dita
- family
- findability
- general
- innovation
- jekyll
- jobs
- podcasts
- quick-reference-guides
- screencasting
- stitcher
- user-centered-documentation
- video
- visual-communication
- web-design
- wikis
- wordpress
- writing
keywords:
summary: ""
bitlink: http://bit.ly/
published: false
---


sizes of containers: lots of little reops, or one big repo.

wordpress. lots of little blogs as part of a large blog. wordpress multisite

wordpress plugins. a central repository.

version control, git. lots of little copies that sync with one larger copy.
complicated.

political. one big body, or separate instances that can vary from the master.

mcdonalds. efficiency through cloned instances. versus mom and pop hamburger shops.

tesla. no longer buying an individual car. the car is a vessel for cloud distribution.

facebook and their monorepo.

linkedin -- tons of different modules that get merged in? or one instance that calls APIs for what they need.

msoffice online.
slack? skype? lots of thigns are moving to web services.
the whole internet is moving toward web services (SaaS) and APIs.
iphone.

Software as a service. the code resides on the cloud and is updated. different services call this code. we're

not using bundled libraries as much anymore. so this is REST API versus Java library.
seems to be that we're using the cloud as a distribution point for the code.

doc groups within an org. everyone does same, or different? seems efficient, but if everyone has different demographics, sites, contributors, etc. so one approach might make sense in one but not the other.

scrum -- contained within same project or separate.

rubygems and bundler. how jekyll distributes themes.

software code. repo used to separate out a bunch of diff. repos. projects have dependencies.

doc architecture. lots of separate help files, or one big giant help center that contains all the information.

Pros of the monosite:
- run scripts against all content


Solution: store content in a cloud database, let individual help sites pull down what they want. you see this model with the cloud storage of the Contentful. not sure why that model didn't take off.

there is a degree of flexibility between the master and the slave, so to speak. with rest APIs, kyou don't have to continually make the call.

doc architecture questions:
- one help or lots of little helps
- one team or lots of little teams
- one repo or lots of little repos

each team reinvents the wheel versus each team must follow the same rules.

problem with expansion. at some point, the same rules and approach won't work everywhere, so people need some flexibility to adapt. classic example is with developer doc. the edit on github button may be right for an open source project but not in consumer docs.

look at doc only. otherwise your scope is too large. where did i get the idea that each repo should be focused around a single product? not sure. prob. much of this is influenced by long build times.

did you make the right decision?
are these engineering paradigms beneficial to documentation?
dangers of each approach?



problem with large things -- hard to manage.
"monorepos"
the borg
hive mind? intelligent organization of bees?
which is the paradigm that is winning out?
keep lots of little instances kept in sync with the master? or one master that has lots of little parts?
states rights rolled up into federal rules/rights.
teams in a class, versus the entire class working together.
ducks flying on their own, or within a V flock
build management systems.

content architecture. subprojects, or separate projects?
why do you have to rebuild everything when 99% of it hasn't changed. doesn't make sense. same prob. with WP -- rebuild the page anew when a visitor comes to your page each time?


fundamental coding paradigms:
- you store source code in your version source control
- you build the output with a build management system
- you don't store binaries in source control
- if everyone builds from the same system, you ensure consistency in the output
- a build mgmt system can have build dependencies
- you can enforce error checking and validation through the build management system
- canonical version of a project. this is what git enforces. two people can't commit different versions of something from different machines. there is a central places where they merge in their changes into a central point.

where the model breaks down -- can't do dependencies, diff. doc projects are sometimes small, build management system extremely limited in what it can build. but it's a fascinating journey nevertheless.


git is a fascinating method for collaboration. everyone makes a copy and then merges it back in with the master. in this way, git straddles both worlds of the issue. it's both separate but also together. that is perhaps why it is succeeding so well. i think we often overlook what a tremendous innovation distributed version control is. it is probably one of the things that will most significantly impact tech docs. not the migration to dita. the migration to git. this gets us out of these monosystems that manage everything. the paradigm of the all-in-one cms where you manage everything .... that's gone.

central question -- which model seems to be winning more -- one big system or lots of little clones?

cs1:

what is the problem you're trying to solve:
which paradigm is winning out more?
ideally, you want to give peopel perfect autonomy to do what they want, but at the same time, this creates difficulty.

will doc follow software? we can speculate that if doc is like code, and we start to follow the same principles, then we can look at the long-term direction of doic to align with the same direction as code. the direction of code is toward the API, isn't it? software as a service. we see that with many doc models. you have a server that provides the doc, and people hook into it. it's too onerous to see the model implemented as a clone at each level.

how about in the future, doc as an api. you call the topic you want. it all exists in a big database.

not sure how you would pull it down. so i think the monorepo idea is winning out. even with jekyll, it is distributed as a gem. reason: you can't easily update all the individual instances. the master becomes too complex. you get more and more complexity, and you can't maintain it in all the individual instances.

e.g., validation scripts that run on a server. travis CI.



















## Reading

https://developer.atlassian.com/blog/2015/10/monorepos-in-git/
