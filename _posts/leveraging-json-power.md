---
title: "Best approach for context-sensitive help"
categories:
- api-doc
- beginners
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
- quick-reference-guides
- screencasting
- user-centered-documentation
- video
- visual-communication
- web-design
- wikis
- wordpress
- writing
keywords:
description: ""
bitlink: http://bit.ly/
published: false
---

cs1
- what can you do with json that you can't do with xml? use js to pull it from a web location onto the page.
- flip side of previous question. render larger docs with it.
- is the main application integration into context sensitive help? yes. but also the linter with mdn.
- how useful are the markdownify and jsonify filters when working with content like this? cool.
- could you output xml into a json format? prob.
- why did xml stay with documents but get abandoned with apis? xml and js are diff. stacks. too heavy. not sure.
- is this the best way to do CSH? yes. this is what this topic is really about.
- what are some other ways to do CSH, esp. if you're using DITA or some other XML? snippets or some small file. dit has the idea of a conref.
- json isn't an authoring format, for sure. but yaml might be in some ways. xml is an authoring format. difference in modes?
- why are you drawn to json? its simplicity? ties more into apis, which almost all use json.
- the main appeal of json seems to be integration into the ui, right? where else might it come in handy? the scenario of dynamically updating that list of whitelisted domains? could you do that with xml? build a help api? what would that look like?

cs2
- how does writing for cs help change how you author content? awareness that you have to compress content into twitter-like help messages, and then cascade into larger explanations in the docs. must be able to depiece your content more.
- what are successful strategies for writing cs help content? storage into snippets. abiltiy to manipulate into other formats as needed.
- how much is too much help in the UI? not sure there's a clear delineation. but tooltips have clear restrictions.
- do static site generators have the edge when it comes to generating cs help? i think so. define your own json object? put into the cloud? your api becomes essentially the scripts you write to access this content.
- what is an example of a successful csh app? not sure, but there are usually interfaces to things. don't minimize this entirely in API doc.
- what other methods have you used with csh? haven't done a lot of this. but handing off text files to devs doesn't scale and sucks.
- can you implement a content api? how could you take it to the next level? yeah, maybe with csh, stop thinking of your help asset as a static central asset but rather as an api that can be leveraged as needed in diff. places. delivered dynamically.
- isn't the idea that you could deliver help as an api pretty cool? yes. did it take off with contently?
- does this mean you'd use a lot of javascript? yeah, b/c it's the language of these apps for the most part.
- where would you store your help api assets? a cdn.
