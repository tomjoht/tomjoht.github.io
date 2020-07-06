---
layout: post
title: User-centered documentation slides
date: 2015-05-14 06:51:55.000000000 -07:00
categories:
- user-centered-documentation
tags:
- series_user_centered_documentation
series: "User-centered documentation"
jtype: notes_user_centered_doc_posts
weight: 1.3
---
{% include series/seriesTagUserCenteredDocumentation.html %}

<p>This is a post in my on-going <a href="https://idratherbewriting.com/series/user-centered-documentation/">series on user-centered documentation</a>.</p>
<p>I usually write a series of posts, and then create a slide presentation summarizing my insights at the end. Then I usually give the presentation at some venue.</p>
<p>Well, I didn't have time to write out the posts before giving the presentation this time, so I actually have the slides already prepared. You can view the user-centered documentation slides here.</p>
<p><a href="https://idratherbewriting.com/files/user-centered-documentation"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/ucdthumb.png" alt="user-centered documentation" width="350" height="283" class="alignnone size-full wp-image-22705" /></a></p>
<p>(Note that when you move through the slides, use your space bar rather than your arrow key because many of the slides move down instead of right.)</p>
<p>Now that I have the slides up and available, you'll get a sense of the direction I'm going with this series. In each of the posts to come, I'll explore these patterns with more depth.</p>

Here is an outline of my notes to accompany these slides. I plan on polishing up these notes at some point, but for now I just want to publish them here so that I don't lose them.

## Introduction
* I work at Experian in San Jose
* Most people know me through my blog
* How I came up with this topic

### Observations in a usability lab
* Had opportunity to work with usability group
* Piggybacked on usability studies they did
* One of most amazing, eye-opening experiences
* Undercuts all pride about doc
* Other observations outside of usability lab too — watching users in training & other contexts

### Contrasting focuses
* User-centered design is common approach for UX. You emphasize and foreground the user in the design of your product.
* User-centered doc similar. But not designing a product from scratch.
* You’re describing how to use a product that has already been designed. You can’t change the tasks or workflow to fit a user’s particular environment. That work was hopefully already done when the product was designed.
* However, there’s a tendency to focus on the product instead of the user when we create the information. If the user is out of sight, out of mind, we tend to just worry about documenting the product.
* User-centered doc is an approach where you consider the writer at the center of all your design decisions.
* Really this focus is just good writing practice, since a good writer should be acutely aware of the audience he or she is writing for (though perhaps more so when trying to persuade the audience).

### 10 patterns of user behavior
* You could put your help through usability lab testing, and you’d probably be much better off this way.
* But who has the time or luxury to really do this consistently? Plus, there are some core, known behaviors in the way users interact with help content.
* If you’re aware of these behaviors, a user-centered documentation approach will optimize your content for these behaviors.
* There are probably dozens more behaviors here, but I think it would be hard to argue against these behaviors. This can be a starting point without purporting to be a definitive list of any kind.
* I’ll explore each of these behaviors and provide specific strategies for designing your information to account for these behaviors.

## Pattern 1: Users read non-sequentially

* John Carroll first observed non-sequential reading behavior in his book, The Nurnberg Funnel. This behavior contrasted with some approaches involving more sequential reading patterns. If you consider how some learning material builds sequentially with each new module, this observation led him to rethink how to design documentation.
* Carroll’s strategy was to divide information into small chunks that can be read in any order.
* This non-sequential pattern is really one of the foundations of structured authoring leading up to DITA. DITA is a prime example of small chunks of information that can be organized and consumed in myriad ways.
* Two problems arise from this approach. The first is when there isn’t a clear distinction between these building block chunks and the presentation.
* You can chunk information up too small, and it then becomes dependent on a lot of other chunks around it to make sense. The TOC usually supplies this context, but then the user has to rely heavily on navigating the TOC in order to make sense of the content. The user ends up playing pinball and has a fragmented information experience.
* The second problem arises when people auto-burst information from print to online formats. When you arbitrarily decide to split information at each heading 2 level into a new topic, you end up stripping content from  it’s needed context to make sense. The topics no longer make sense as standalone information and require a lot of outside reading to make sense of them. As a result, information gets fragmented and unusable. Mark Baker calls the result a “frankenbook.” For an example of a frankenbook, he says to see some of [IBM’s documentation sets].
* Mark Baker’s Every Page Is Page One is a reaction against these fragmented information doc products.
* He advocates that topics should be self-contained so that a user can start any where (any topic functioning as page one) and the content should still make sense. In this case, Baker is really promoting Carroll’s original minimalism design.
* Exactly how you define “standalone” or “self-contained” is a definition that’s hard to pin down. Every piece of information tends to fit into some larger context. For example, in a car manual, you can’t understand a section about brake pads without understanding a section on brakes, and brakes might necessitate information about wheels, and wheels might necessitate information about the chassis, and so on.
* Baker isn’t advocating that you put the entire book into one topic, creating a single-page doc style of content. He is in favor of chunking information. But rather than depending on the TOC to do the work of providing necessary context, you put that context directly into the topic so the reader can orient him or herself appropriately.
* You also make sure that topics are self-contained enough to allow the reader to accomplish his or her goal, which is usually not to understand how an entire car works, but how to perhaps check whether brake pads are good, or understand how to change a brake pad.
* Baker outlines about 7 characteristics of Every Page Is Page One topics. Some of these topics help constrain the information to a manageable level: stay on one level, assume the reader is qualified, specific and limited purpose. These constraints help you avoid expanding your information sets too much. We’ll visit the Link Richly part a bit later.

## Pattern 2: Users feel frustrated, impatient

* One of the most fundamental behavioral patterns of users is that they feel a sense of frustration and impatience when they consult the help.
* In the video here, my wife ordered some books from Amazon and didn’t realize they were shipped to the wrong address. She was frantically trying to cancel or edit the shipping address of the order.
* As you design information for users in this state, one of the first techniques you can use is to put summaries of each page. The user lands on your page and has to make a quick decision about whether the information is relevant or not. Rather than scanning the entire page, the user can read the 2-3 sentence summary and immediately know whether the content is relevant.
* I really like how Jakob Nielsen adds these summaries to his site. If you’re planning to read the entire page, they may not mean a whole lot. But suppose you’re jumping around, trying to figure out which page is the right one to read. Then the summaries are extremely helpful.
* Another technique is to use frequent subheadings, on every couple of paragraphs. Subheadings allow the reader to quickly scan down the page and take in the content at a glance.
* An automatic TOC generator can pull all of these subheadings into a compressed view at the top to facilitate scanning. This mini-TOC can be especially helpful when the page is long. (Here’s an[ example of a mini-TOC].)
* Subheadings need to accurately describe the content. The subheading should provide a mini-summary of the paragraphs below it. Essentially it’s the same pattern as the whole article (with the summary + article) but at a micro-level, with each section having its own summary.
* Subheadings allow you to easily expand content, tack on more items, and make the page more multi-faceted. Without subheadings, the focus of the page has to be much tighter and more constrained.
* I can’t say enough about the subheading. It’s one of those techniques you don’t learn in college despite majoring in English, but it makes a world of difference online.
* Lists are also key. In this excerpt from Steve Krug, you can see how even regular paragraphs can be formatted as list items. You can quickly scan the information and make sense of it.
* He says you can read the book during a plane ride, and really it’s because the content is so easily readable. You can quickly consume it.
* Here’s an example of how lists can improve readability. Read this first paragraph. Now see Nielsen’s revision, which implements a list (and more concision and focus). The content is much more readable.
* People hate long blocks of text.
* Finally, keep sentences short and easy to read. You have to consciously reduce the level of complexity. Account for the fact that readers are hyper-scanning. Write for an 8th grade reading level or so. This brevity won’t just improve readability, it will also help translation as well.
* One tool you can use to gauge readability is [https://readability-score.com/]. I honestly don’t use these tools much, but it would be a good idea to do so. My sentences do tend to get long, and I need a reminder to shorten them.

## Pattern 3: Users organize differently

* In this image where people are moving around sticky notes, they’re participating in a technique called affinity diagramming. In this activity, you get users to take large amounts of qualitative information and group them into logical buckets so you can make sense of it.
* Theoretically you could do this with help topics in documentation, and it certainly would be a good strategy if you have access to users and time. However, you might find that different users prefer to organize content in different ways. Additionally, users may put sticky notes in different areas because they misunderstand the product.
* One of the fundamental truisms of usability is that “you are not the user.” If you could go inside the user’s mind, you might find that the user organizes information differently than you do, because the user has a different set of business goals, questions, background preparation, and other differences.
* David Weinberger’s book is really about the failure of hierarchical classification models to accurately describe information in ways that make sense to users. By saying “Everything is miscellaneous,” he means everything tends to fit into an ill-defined category that fails to really divide content into logical groups that everyone can agree on.
* As an example, consider where you might go in a store to find cream of coconut. Would you look in the ethnic aisle, the dessert section, the can soup area, next to the coconuts in the fruit area? Really this is one of those items that could be grouped in a lot of different places depending on how you plan to use the information.
* One solution to the problem of organization is to leverage facets. Weinberger’s solution is so add metadata to each product, and then provide tools to users that allows them to organize the information they want based on the facet they select.
* Sportsshoes.com provides a great example of faceted navigation. Based on the facets you select about the shoes you want to see, the content dynamically changes on the homepage.
* Products with clear facets are more common in the physical world. When I tried to apply the same faceted filtering to content using Semantic MediaWiki Extension with MediaWiki, I found that it didn’t work so well. Mainly, my information didn’t have clearly separable facets.
* You can provide some common facets such as troubleshooting, getting started, most popular, or by format (video, PDF, webhelp). But these facets aren’t going to solve findability problems for users. (They’re still a good idea to implement, though.)
* If you have a lot of different products in the same space, with different versions and models, then facets can be really helpful. You can avoid outputting different sites for each unique version or model, and just drive users to the same site. Fluid Topics and Suiteshare are two products that do faceted filtering well.
* But overall, faceted filtering is difficult to implement technically without a dedicated web team. If you’re doing your own tooling, you’re much better off using tags. Tags are really like a poor-man’s faceted filtering.
* Tags are a much more common tool in web frameworks. When you add a tag to a page, you can click that tag to see all other pages grouped into the same tag.
* Tags can be particularly helpful in providing other groupings beyond the grouping in the TOC. For example, suppose you want to provide some groupings based on authentication or active directory. There might be several other topics that mention these topics, but maybe not enough to justify its own section in the TOC for this topic. Through tags, you can provide lots of different ways for users to pull content based on the tags they want to see.
* I like the approach of MindTouch’s design here, with a side panel showing metadata about the content. Beyond tags, you can include information such as the intended audience, the date the content was last updated, who updated it, and more. This metadata can be helpful to users who are quickly scanning pages and assessing the page’s relevance, currency, and trustworthiness.
* One point Mark Baker emphasizes in his Every Page Is Page One is how the hierarchical TOC fails. If you have a small collection of information, whatever map you construct from topics might hold up. But as your information set grows, the TOC also grows. The interrelationships of content resembles more of an intertangled web than a clear and logical hierarchical structure.
* As a result, the hierarchical TOC doesn’t do a good job at showing the relationships between the content. Instead, Mark recommends using a bottom-up navigation (as opposed to the TOC’s top-down navigation).
* Bottom-up navigation means you start with an individual topic and provide links to other topics from within that topic. You start at the bottom of your TOC hierarchy, which is where the user presumably lands. The user doesn’t think in terms of high-level categories, such as drilling into software > access control > authentication > password > retrieval of forgotten passwords. Instead, the user usually searches for “forgot password” and begins at the topic there.
* The rich links allows the user to get to the actual topic he or she may be searching for if the present one isn’t it. Bottom-up navigation better resembles the way people search and navigation information.
* As evidence, think about how you use Google. You usually follow a bottom-up navigation pattern. The Yahoo Directory of the Web approach proved the failure of the hierarchical classification model.
* Linking inline is somewhat controversial among various tech writing groups, and there are different approaches to managing these links. I think Mark prefers to embed semantic tags in text and then activate the semantic information into links based on properties in the project.
* Certainly inline links pose risks. You will likely end up with some broken links, or links pointing to content not included in the output, or links pointing to pages you since renamed, and so on. Managing inline links requires a strategic approach that is not easy to do right.

## Pattern 4: Some users are beginners

* One common pattern I noticed among beginning users in the usability lab was their preference for video tutorials. They were much willing to watch a 2-3 minute video patiently, soaking it all in.
* In contrast, more advanced users were less patient. More advanced users searched for specific answers to a question. They didn’t feel like sitting through a video.
* Although user abilities fall along a spectrum (rather than clearly dividing between beginner and advanced), some people need a lot more handholding than others.
* For beginners, try to give them getting started guides or sections. These getting started guides have always been one of the most popular deliverables I’ve created for users.
* Product managers love them because they provide quick instructions for getting someone up and running. They suggest that the application is, at least on the surface, simple.
* For beginning users, the getting started guide gives them a starting point. They don’t have to sift through mountains of information to figure out where to begin.
* The getting started guide’s purpose is to guide the user to perform some common tasks in the app, to get comfortable, to get started in some meaningful way. After the user gets started, he or she pretty much discards those instructions.
* Another strategy for beginning users is to provide sequential tutorials. Here sequences work well, and can help users move forward through material in a logical way. Sequences fit the beginner.
* A typical tutorial might walk a user through a specific task, helping the user achieve an end product. You expect that the user will actually go through and complete each of the steps of the tutorial. New users have a lot more patience than advanced users.
* Another strategy is to provide users with the big picture. It’s easy to become blind to the overall workflow of a typical user with a system. When we get into the nitty gritty details, we can easily lose sight of the overall picture.
* One kind of topic you can create is a narrative workflow of a typical user as he or she goes through a process. You can describe the context of the scenario, and then link to each of the tasks the user would do through the scenario.

## Pattern 5: Some users are advanced

* Just as you have beginning users, you also have advanced users. For these users, rather than starting from ground zero, they usually are looking for a specific piece of information.
* You can create quick reference guides to cater to this type of user. In contrast to a getting started guide, a quick reference lists a brief summary of all the different functions or other details in your system in a quick way.
* This quick reference guide for Jekyll lists all the different Liquid tempting code you can use.
* Another key strategy with advanced users is to include more troubleshooting information. Stack Overflow is full of advanced questions involving troubleshooting information.
* These topics can be standalone articles that look like they’re part of the knowledgeable. You don’t have to include them in any kind of hierarchical TOC because almost invariably users are searching for this kind of information.
* Although troubleshooting info is nothing new, I think it’s a good idea to include a troubleshooting section in a guide. Just thinking about troubleshooting scenarios gets you into the mindset of thinking about problems users will encounter. Solving problems is usually why people turn to the help, so this should be a staple section in any guide.
* Be sure to include the exact text for any and all error messages, because this is precisely how many people search for troubleshooting information.
* Finally, understanding that many of your users are advanced, make better use of the homepage by treating it more as a Grand Central train station instead of providing a “welcome to the application, this is what it does” kind of a page.
* The homepage is one of the most frequently visited pages in your help, since it’s the main gateway into all the topics. If you treat every visitor as a newbie to the application, you do a disservice to the variety of users that no doubt exist.

## Pattern 6: Users resist going into the help

* Mike Hughes, usability expert, explains that most of the studies about how people use documentation tell us that people don’t really use documentation.
* If you ask someone to go through the documentation, the result is artificial rather than natural.
* Fitt’s Law is a usability principle that says the farther you force a user to click something away from the point he or she needs it, the less likely the person is to find it.
* Fitt’s Law applies to UI design, but I think it also has an application with help. If the answer to a user’s question requires the user to click far away in another site, requiring the user to “travel” a great distance to find the answer, the user is less likely to find it.
* One strategy following Fitt’s Law is to bring help into the UI, preferably right at the pain points where the user would run into the problem.
* One of the most clicked-on topics in my help was a small link we added in the UI where people often got confused. Only certain people were allowed to create a widget, so we added a link to the help there phrased in the form of a question — “why can’t I create a widget?” or something, and it had thousands of clicks.
* Bringing help into the UI is generally a good practice. I think that sometimes writers can see the UI as a separate product that the help describes, but really the more we can integrate help content into the UI, the better chance we have of reaching our users.
* Simple tooltips like this demo can be a good approach. You can give your developer a JSON file (or even better, a link to your JSON file on your help site) and allow the developer to pull in the JSON items into popovers. This way, your help can function as a kind of content API.
* You can also put help directly on the screen. And you can improve the labels on the buttons, menus, error messages, and other interface text.
* When you realize that half of the interface is text (or even more than half), then it only seems right that writers should be involved. We sometimes think that the UI is an interface involving screens and objects and such, but really it’s just a bunch of text. *The UI is mostly text.* As such, the user is immersed in choices based on words, meaning, and other semantics. The writer can contribute greatly to improving the experience by working with the text on the screen.
* Finally, if you want to get really fancy, you can try to play tasks in the UI, like an interactive movie. You would have to work with a develop on this, but I’m seeing more and more tools that walk the user through how to do tasks in the UI, such as [http://walkhub.com]. I’ve never done this personally, and it probably only works for simple tasks, but it can be a cool way to bring help into the UI in a way that goes beyond simple text.


## Pattern 7:  Users desire simple instructions

* Most users desire simple instructions. Actually, users are usually annoyed at having to read any instructions at all and would prefer the UI to simply be intuitive throughout. But if they do have to read instructions, it’s probably okay as long as they are simple.
* But there’s a paradox with simplicity. All the features users have been requesting to make their lives easier have now made the product much more complex, and the consequence of all this product complexity is a lot more documentation.
* If you skimp on the documentation, in an effort to keep things simple, this could actually backfire. Sometimes less information makes things even more confusing, because users don’t have the needed instructions and clarity to understand how to do something.
* And yet, if you deliver tomes of documentation to a user, you’re going to get a response like Ben’s cartoon. If it’s too long, users simply won’t read it.
* One strategy is to break up complex tasks into different topics. In this model, each task is simply a link to its own topic. This is one of the recommendations in *DITA Best Practices.*
* This is a good approach but still might leave the user jumping around in your help system. Once the user completes a task, he or she has to find this page again and proceed to the next task.
* Another strategy for a simpler documentation experience is to create different outputs for each role. If you have clearly defined roles, this can be a good idea.
* But creating different outputs for each role is very much a print paradigm. If you publish all this information online, your SEO is going to be scattered. Users searching for a topic that appears in several different manuals may end up going into the wrong documentation.
* You could create one massive portal with different facets for navigating the right role, version, model, language, etc., but now you’ve got more of a documentation portal rather than a simple doc site. This doc portal requires more sophisticated controls to manage the user experience, and usually you’d need to involve UX to pull this off successfully.
* If the distinction between the roles isn’t that clear, your users may be frustrated by the available topics in the manual. How does a user know the information is comprehensive? How does a user know what’s missing? This kind of division is particularly problematic when the roles are divided between beginner and advanced. I think a much better approach is to simply provide getting started guides and quick references guides to accompany the same set of information.
* One of the key principles of design with information architecture is progressive disclosure. With progressive disclosure, you decide what information you show at the first, second, third, and fourth levels of your system. You don’t show all the information to the user at the first level.
* Many help systems make this mistake. They show a massive TOC that is intimidating to navigate and nearly impossible to find anything.
* The Harvest documentation shows some examples of progressive information disclosure in a help system. In this model, you don’t show everything at the first level. You decide what appears at each level.
* The WordPress interface shows another model. You show some information in the interface and some more in other places. There are several levels of the help. The first level is the interface, and after that, you can dive into more information if needed.
* One of the challenges with progressive information disclosure is providing different sidebars for different information sets. (BTW, the sections don’t need to be arranged in a sidebar; you could also put the information navigable on the page itself. Either way, though, you have the challenge of how to do this technically.) Managing different sidebars can tricky.
* If the user lands directly on a page, the user should understand that the sidebar shown is not the comprehensive list of options in the documentation. You need a home button in the sidebar that takes a user back to that first level where all the information branched out.
* Most help authoring tools and other tech writing setups don’t really allow you to choose different sidebars for different pages. But any progressive information disclosure solution is going to have a setup like this. The more you move toward document portals instead of standalone help, the more you need to consider features like this.


## Pattern 8: Users want to begin right away

* One of John Carroll’s findings in his usability studies with documentation is that users want to begin right away. This is why he recommended that documentation focus on real-world tasks and get the user into the application as quickly as possible.
* Users aren’t content to stay in your help. The more time they spend in documentation, the less productive they are in getting actual work done. Most users only consult the help briefly so they can get back into the application and get more real-work done.
* To optimize your help for this behavior, you can focus on real-world tasks. Remember that users have actual goals and business needs they’re trying to fill. Focus the core of your content on these tasks.
* The following image shows Carroll’s first minimal manual. You can see that the topics focus on tasks the user can do. There isn’t a lot of conceptual material. One of this guiding principles is that “you can just read the sections about the tasks you want to do” (Beyond Minimalism, p.6).
* Another strategy might be to include some hello-world tutorials. Although hello world tutorials tend to derive more from the software programming world, they are equally applicable in any GUI as well.
* The idea of a Hello World tutorial is to get the user up and running in the most simple way possible. With software, that first task is usually to publish some kind of beginner app or output. But you could adjust the same strategy for software as well. These tutorials put the user right in the task domain and allow the user to create some meaningful, first-steps kind of output.
* In this Docker tutorial, they even provide a command-line interface that allows you to code directly in the help. These kind of interfaces look fantastic, because they give you immediate feedback.
* But even if a user had to code directly in his or her own local IDE, it wouldn’t be that different. A good tutorial can walk a user through all the steps needed to get up and running.
* Another strategy is to keep the user’s focus in the task domain. The Ulysses app (which is like Markdown-based, Mac-based equivalent for Evernote) opens with some help topics in the main editor. This is pretty common, and I think it’s a good idea because the user can learn without leaving the main task domain area.
* The more tips and information you can include directly in the user’s task domain, the more likely you are to reach the user.
* This strategy has some obvious overlaps with some of the other strategies discussed here. There isn’t a different strategic mapping for each user behavior, as I’ve kind of outlined. Lots of these strategies address multiple behaviors, and vice versa.

## Pattern 9: Users gravitate toward visuals

* One of the main realizations I took away from the usability lab sessions was how strongly videos were desired by new users who weren’t that technical. Multiple users immediately gravitated to them. In fact, one user watched the same video several times.
* When I refer to visuals, I’m referring to all kinds of visual media, including video tutorials.
* Visuals can help reduce the cognitive load of users, helping them more easily grasp difficult concepts. Both text and visuals are processed by the working memory, researchers explain. The working memory can only take in so much information before cognitive overload sets in.
* A good visual can help reduce this sense of cognitive overload, allowing the user to more easily take in information.
* In fact, there’s something called “dual encoding” that enhances the learning process even more. If you can supplement the visual with auditory explanations, it works even better for helping users learn material. This is why tutorials are often a combination of visuals and narration.
* Not all visuals are the same. Edward Tufte calls decorative visuals “chart junk.” In this example, the decorative visual adds nothing to the learning experience. In fact, it actually detracts from it.
* Other researchers have done studies comparing learning results with graphics. They find the same thing — graphics that don’t actually illustrate concepts clearly can detract from learning.
* The simpler graphics are, the better. Line drawings are more effective in stripping away the distracting elements of a visual. If you include a photo, you also end up including a lot of extra details that the working memory has to process and sort out. The fewer details to process, the less the working memory has to sift through the material.
* Although many tech writers don’t include graphics because they take a lot of time, another reason graphics get excluded is because writers think they have no artistic ability.
* Experts from Don Norman to Dan Roam all say same thing: high art isn’t something you should worry about in learning situations. Instead, you want to focus on the best way to illustrate an idea or concept. This is the heart of the graphic — the rest is just execution. Even if you have a really crude drawing that is nothing more than shapes with descriptions below them, this can help fulfill the learning objective and allow users to understand the material.

## Pattern 10: Users may not speak your language

* Every system has its own vocabulary, and it’s something you learn little by little as you become immersed in that culture. Pretty soon the terms become part of your normal vocabulary, and then they no longer stand out as unfamiliar to you anymore.
* For example, let’s say you’re working in Intellij IDEA, and you want the text to automatically wrap about 120 characters in. You search for wrap text but find nothing. Later you learn that the proper term is “line wrap.”
* Part of the difficulty users have in finding content in a help system is learning the right terms. They simply lack the vocabulary. It’s like when my 10 year old needs help with something on the computer. She doesn’t know that she needs help applying “left alignment” instead of “full justification,” or “floating an image” or “wrapping text around an image,” or resizing an image. She just needs help, and she sort of has her own language and terms to describe it, or else she lacks the computer vocabulary to describe it altogether.
* When users search for material, they begin to learn the right vocabulary words. The search results inform their next search, and little by little their searches become more attuned to the correct vocabulary for the system.
* One way you can help users learn your system’s specific vocabulary is by providing a glossary. A glossary is one of those often overlooked resources that can provide a tremendous help to your users. Once they know the right terms to search for, users become empowered to find content and express their needs with the right vocabulary.
* Another strategy beyond providing a glossary is to add synonyms to each of your topic pages. Synonyms can help users find topics when the official terms in your system might not be the most friendly.
* While ideally you would choose terms that already align with your user’s lingo, in reality this alignment isn’t always done. Even when possible, some people will use slightly different terms.
* You can add synonyms to a page and then push those synonyms into the page’s metadata. Search engines will usually pick up on this metadata. Although Google tends to ignore these keywords because of the way they’ve been abused on many sites, with less powerful search engines, the keywords here can still register and trigger results.
* Finally, it’s a good idea to keep in mind a global audience, and to implement best practices for users who really don’t speak your language. Some of these users include people in other countries (for example, Japan or Germany) who probably speak English but it’s not their native language.
* To write for a global audience, you can follow a number of best practices. Writing for translation is also a key strategy.
* But let’s say your target language is still English. How can you help the English as a Second Language speakers better understand your content? You can keep your sentences short and use active voice.
* These two simple techniques — concision and active voice — probably make the most difference in creating more readable content for non-native speakers. Of course these principles help English speakers more easily understand the content as well.


## Testing content

* Documentation should be tested like any other software product. Only instead of testing for accuracy and functionality, we should test it to see if it satisfies the users’ needs.
* Documentation is really hard to test. In most usability situations, the use of documentation is somewhat forced. You ask someone to solve a problem they can’t solve, and when they shrug their shoulders, you ask if they might try to solve the problem using the documentation. Usually a light bulb moment dings in the user’s head.
* Alex Gaynor in his Write the Docs speech says they give their docs to various users and ask them to use it to solve various problems. He forbids them from consulting Google as they proceed through the problem set.
* One method I used when I provided some training on an application was to give users some tasks to do in the beginning of the training session, and then I observed them do it. It was a lot of fun to watch them use the application and scan through the help trying to find the answers. Almost everyone liked the challenge of doing tasks right away rather than first hearing a bunch of instruction on how to do it.
* Angela Colter says you can also test people’s reader comprehension directly. This give you a clear indication as to whether someone actually understands the material. Without testing for comprehension, you have to rely on a really unreliable yes or no answer about the documentation’s helpfulness.
* Although it’s difficult to insert content testing into the documentation process, imagine what software would be like without QA. And yet, there isn’t much QA applied to documentation. The real QA that is needed is user testing.

{% include series/seriesTagUserCenteredDocumentation_next.html %}