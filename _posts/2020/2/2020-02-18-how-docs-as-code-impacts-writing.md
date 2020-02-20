---
title: "How you write determines what you write &mdash; a survey of trends from PDF to web, XML/DITA, wikis, CCMSs, and finally to docs-as-code"
permalink: /blog/how-you-write-influences-what-you-write/
categories:
- writing
keywords:
rebrandly: https://idratherbewriting.site/
published: false
description: ""
---

During the last Christmas break, I was sitting inside a cozy hotel room in Red River, New Mexico, on vacation but also thinking about tech comm trends. Every year, as one year ends and a new year begins, bloggers and other writers address trends for the coming year. Especially since this topic had always gathered more hits than other posts in the past, I wanted to write a new post about trends.

Two recent research efforts about trends are noteworthy: Saul Carliner's Tech Comm Census, and Scott Abel's Benchmarking Survey. Saul Carliner set about gathering a "Tech Comm Census" by gathering responses from 60 questions covering seemingly every facet of the technical communicator's work life. He partnered with the STC to promote the survey and gathered 676 responses.

The results are interesting and encouraging, especially the finding that 70% of technical writers are satisfied with their job. At the same time, the survey seemed to miss many of the trends I'd been seeing within the developer doc space around docs-as-code tools. I felt like the survey's results only partially represented my tech comm world.

In retrospect, Saul acknowledged that his survey did not segment based on audiences tech writers write for, such as engineering versus non-engineering audiences. Another limitation was that most (591) of the survey's respondents were STC members, which isn't necessarily representative of the tech comm profession as a whole (see "A Note from the Guest Editor," Dec 2018 *Intercom*).

Scott Abel's *Technical Communication Industry Benchmarking Survey* gathers information about tools, trends, technologies, and other details from 600+ of professional technical communicators. No details about the audiences are provided, but I assume the demographic likely aligns with those who read [The Content Wrangler](http://contentwrangler.com) and attend conferences such as [Information Development World](https://www.informationdevelopmentworld.com/), which tend to focus on content strategy, enterprise content re-use, multi-channel publishing, localization, chatbots, and more.

Scott's survey found that "Fifty-eight percent of technical communication teams surveyed say they currently document APIs; 10 percent plan to in the future." One  challenge tech writers face in documenting APIs is "using software tools not optimized for ease-of-use or writing efficiency, and lack of experience."

These answers are more relevant to my tech comm world, but they don't go far enough. Scott's survey hardly mentions docs-as-code tools or workflows. In both surveys, communities like Write the Docs aren't mentioned, and other topics are left out, such as how writers integrate with scrum teams, whether writers auto-generate the OpenAPI spec or manually create it, whether docs reviews are conducted like code reviews, and so on.

What frustrated me most (at least with the Benchmarking survey) was to see Adobe FrameMaker mentioned as the "tool of choice" for technical writers "creat[ing] multi-channel, multi-language content for highly configurable products or services." Scott writes, "Twenty percent of all technical communication teams surveyed say they create documentation using the Adobe Technical Communication Suite (a package of several Adobe products, including Adobe FrameMaker, bundled into one solution). Twenty-nine percent of technical writing teams use FrameMaker as their primary authoring tool." And later on, he adds that "47 percent of technical communication departments use Microsoft Word as their primary authoring tool." To summarize other usage: about 17% use Author-it, 16% use Oxygen XML Editor, 9% use Arbortext, and 5% use MadCap Flare. What about docs-as-code tools? There's no mention.

I could hardly believe these numbers described the tools used in the developer doc community. In fact, one recruiter for API doc positions told me that listing FrameMaker on your resume was a sure way to red flag yourself out of the position. (Yeah, he really said that.)

Even so, the tools usage reported by the Benchmarking survey aren't too far off from previous WritersUA Tools surveys, when Joe Welinske used to measure tools used. In 2014, WritersUA found around 52% of writers used FrameMaker.

I wanted to rebut some of these trends but didn't have any data. You can't write a post that says a particular survey isn't representative without supplying alternative evidence. So I decided to create my own survey, filtering down to those writing developer documentation only. I came up with 50 questions specific to dev docs but also addressing some of the other questions that I couldn't believe regarding tool usage in the tech comm community. I publicized the survey on my blog and newsletter and gathered about 200 responses over the course of two months.

You can view the [results here](https://www.questionpro.com/t/PGhS9ZgCFE). As the survey is still open, the responses are still coming in. I'll close it on March 1. Here are some highlights as of Feb 19, 2020.


**Primary authoring tool**

* 23%: Static site generator tools
* 13%: Internally built tools
* 13%: Wikis
* 10%: XML authoring tools
* 8%:  HATS (e.g., Flare, Author-it)
* 8%:  MS Word
* 2%:  Adobe FrameMaker

**Most common editor:**

* 28%: Visual Code Studio
* 14%: Atom editor
* 11%: Sublime Text

**Follow docs-as-code:**

* 55% yes
* 23%: somewhat

**Most common source format:**

* 40%: Markdown
* 14%: XML
* 14%: HTML
* 5%: Asciidoc
* 3%: rST

**Misc:**

* 70% manage their content in VCS such as Git.
* 73% don't localize.
* 62% don't usually generate PDFs
* 25% use the same code review tools that engineers use to review software code.
* 66% are not former engineers nor did they have a highly technical role previously.
* 83% of the respondents usually document an API, and 58% of the time it's a REST API, and 48% use OpenAPI spec for this.
* 43% feel the most affinity to WTD, and 13% to the STC.
* 76% are satisfied with their job.

There's a lot that one could focus in these survey results, but I think the most salient feature, or one that catches my attention the most, is the prevalence of the tools. Clearly, with 23% using static site generators (SSGs) and only 2% using FrameMaker, this represents a major shift.

One immediate objection is why focus on tools? Are we just switching to the current tools of the day, like shifting fashions? This is why academics dislike tools &mdash; they feel so ephemeral. One day it's tool X, tomorrow it's tool Y, and next week it's tool Z. But what matters is the content, and the theoretical foundations that determine what we write and how we present it to the user, right?

Sure, for the most part I agree that tools are like the basketball player's shoes &mdash; undoubtedly not as important as the style of play, not as important as the plays teams run or the strategies players apply to win the game.

But here's the thing. To some degree, *how* you write influences *what* you write. The *how* includes tools.

Let's take a birds-eye view of tech comm over the past 50 years. Before the web, tech writers created PDFs to distribute content to customers. PDFs encouraged long-form, book-like content. Instructional content inherited the same conventions as book-length content, where writers expected readers to move linearly through content from beginning to end.

John Carroll busted that myth when he observed how people actually used help. They didn't read from start to finish, like a book, but rather jumped around from task to task depending on their needs. Even so, the book paradigm encouraged sections and chapters rather than individual topics, and when tech writers started transitioning to the web, they migrated their books to web formats by auto-bursting them at specific breakpoints, such as by chapter or subheading.

With the web medium, topic-based authoring took the spotlight, and tech writers began breaking up their content into small chunks online. The transition from book-length authoring to topic-based authoring introduced many new challenges. For content auto-bursted at breakpoints like subheadings, the chunks often didn't make sense alone. Mark Baker's *Every Page Is Page One* is a reaction against these chunks that don't make sense alone. When you encounter help content that seems to require some other starting point to make sense, leaving you scratching your head at your starting point without proper orientation to make sense from your entry point, the docs fail for that user. Mark encouraged every page to sufficiently orient the user as if it were their first entry point in the docs.

Help authoring tools proliferated in the early days of the web, and writers became good at single sourcing chunks into ever increasing efficiencies. But here's my point: the tools and medium we used to create content influenced the content itself. This shift in tools and publishing outputs transitioned writers from creating book-length content that required more sequential, linear reading to more standalone topics that afforded non-linear reading behaviors.

Soon XML started to appear on the scene, which was really an evolution from SGML markup. XML imposes a consistent structure on content, requiring users to conform to rules defined in schemas and other definition documents. The most widely adopted XML format in the U.S. is DITA (Darwin Information Typing Architecture). Introduced by IBM, DITA attempted to provide an industry standard for XML schemas in tech comm. Writers didn't need to fuss about creating their own transformations of XML into different outputs but could tap into a standard that tool vendors could support by default.

While DITA doesn't outwardly enforce a design pattern in docs, the atomic structuring of components with specialized topics (task, concept, reference) prompts writers to divide their content into individual units consisting of these types. DITA does let you create maps that assemble these task, concept, and reference units into more complex displays, but many DITA writers also use a 1:1 relationship between the source and the display. As a result, the display from DITA projects ends up with sometimes hundreds of tiny topics, some as small as one paragraph. (See [Does DITA Encourage Authors to Fragment Information into a Million Little Pieces?](https://idratherbewriting.com/2013/04/22/does-dita-encourage-authors-to-fragment-information-into-a-million-little-pieces/).)

DITA is one of the most polarizing topics in tech comm, with many conflicting views on its information architecture and design patterns. I actually just listened to a presentation (internal) from a tech writer providing guidelines to engineers on writing. He compiled an attractive wiki with many excellent points, but what appeared to be a massive trove of information turned out to be small pages (some just one paragraph) concatenated in larger maps. As a result, you have to click around ... *a lot*. He said the design principle built on DITA.

Again, here we see that how you write influences what you write. When you write following an XML schema like DITA, this influences the output and display to the user. It's not as if tools are invisible and non-influential components in the writing process.

DITA and XML are still popular formats, especially because larger systems (component content management systems, CCMSs) require structured content to process it. But it didn't take long for people to realize a major limitation to XML: it's too cumbersome and complex to really scale beyond the tech comm team. What if you want more people to author and contribute? As crowdsourcing models started to gather attention, with sites like Wikipedia taking off, wikis started to become an incredibly popular format.

The promise of wikis was crowdsourced, collaborative documentation. Some felt that wikis might even eliminate the need for tech writers. If you just created a wiki for your product, users would write the documentation for you. A thousand users each contributing one paragraph would create all the docs you'd need, and tech writers would act as curators, managers, and organizers of content (rather than the main authors).

Wikis provided an interesting platform. During the heyday of wikis, I was smack in the middle of a volunteer community and publishing content on Mediawiki. It was cool to check updates across the site and wonder about all the contributors adding content. Wikis introduce a more collaborative platform than any other (and one that has surely won out as the default platform for internal docs, with platforms such as Confluence). One academic who does iFixit projects with students noted that wikis provide a reciprocal network that creates constant feedback loops in writing. He referenced Latour's Actor-Network Theory to describe a model where the tool one uses literally becomes an actor in a network of influences that produces a result. (See [Reciprocal knowledge networks and the iFixit Technical Writing Project -- Conversation with Guiseppe Getto](https://idratherbewriting.com/2018/07/25/how-the-network-shapes-knowledge-conversation-with-guiseppe-getto).)

Guiseppe writes,

> What I noticed when my students were working in the Technical Writing Project is that the tools they used (literally, from the tool kit provided by iFixit) and the wiki technology they used to write their guides profoundly impacted their writing process.

For example, one writers adds content on a page. This content is modified by another writers (creating a feedback loop), and then another writers modifies this modification (another feedback loop). Content is never fixed but continues evolving as more feedback loops set the content in motion.

Again, wikis provide evidence that *how you write influences what you write*. Guiseppe says that when students simply search google for information and write in more static formats, their content and writing experience is notably different than when writing in the immersive feedback loops of wikis.

Alas, the promise of wikis didn't win over the tech comm community. Even as I had 60+ volunteers engaged in my projects, I abandoned wikis because the efforts didn't pay off. I spent just as much time managing content and people as it would take to write it myself. More than anything, external contributors lacked access to the right information sources and people to create the needed content. External contributors who added information post-release mainly just noted misspellings and broken links (processes that can be automated through verification scripts). (See [My Journey To and From Wikis: Why I Adopted Wikis, Why I Veered Away, and a New Model](https://idratherbewriting.com/2012/06/11/essay-my-journey-to-and-from-wikis-why-i-adopted-wikis-why-i-veered-away-from-them-and-a-new-model-for-collaboration/).)

Another player in the landscape of tech comm tools is the emergence of content management systems (CMSs) and component content management systems (CCMSs) &mdash; the latter are more common for tech comm. This is a broad category that encompasses both XML and wikis but which tends to stand alone as well. Content management systems were championed as ways to more intelligently use structured content to automatically surface related content through common tags (defined by a taxonomy). Content management systems also track assets in a comprehensive way, noting metadata for each topic including the author, last modified date, instances where the content is (re)used, and automating multi-channel publishing. The idea was to maximize the use of your content across many different channels and outputs, leveraging it for the many outputs that the content could serve.

With social media requiring more content, the CCMS would let you create one nugget of content that could be re-used not only in docs, but in marketing pages, white papers, blog posts, elearning, and other channels. Without a CCMS, you end up either clumsily duplicating this content through copy/paste, or it becomes inconsistent (with conflicting terms and concepts or other details), and more. Instead of managing the content in one place for all channels, companies would exhaust themselves recreating the content in bespoke ways for each needed channel, or else the company would let the wells run dry by only using the content in one place. Intelligent content is all about re-using content more efficiently across the enterprise for all the needed channels.

How did the CCMS influence what writers wrote? Knowing that your content must stand true in many different outputs, it caused writers to think more broadly across the many different channels the content might appear in. Changing one component required more comprehensive analysis for all the places it was re-used, and this system was intended to be a source of truth for many different groups (tech docs, marketing, support, and other groups) to share and leverage content. In this way, CCMSs tried to create more coherent and integrated content across the enterprise, not just for the tech comm group.

CCMSs are still widely used, especially by large organizations, but the cost and complexity of their implementations limits their popularity to the companies that can afford them. For example, a CCMS can easily cost half a million dollars to implement. This is clearly a tool for large enterprises. It takes a special corporate culture to manage docs in a centralized way across many different organizational boundaries and groups. In an era where independent, autonomous agile groups are becoming the norm, with no centralized doc group or authority, the enterprise CCMS can be difficult to support. (See [Autonomous Agile Teams and Enterprise Content Strategy: An Impossible Combination?](https://idratherbewriting.com/blog/agile-teams-and-enterprise-content-strategy/).)

I'm not saying that small agile teams following Scrum ended CCMS proliferation, as all of the tools I've mentioned are still in use today to a degree. However, the trend towards integration with Scrum teams encouraged writers to be more embedded with engineers. On many of these agile teams, where roles are more multi-faceted and less defined, many engineers also played roles as writers, or "documentarians" as some call them.

The information economy encouraged more companies to deliver their information as a service through APIs, and as such more engineers started playing documentation roles with their APIs and other code. Instinctually, developers used many of the same tools they used for code to write docs, leading to the "docs-as-code tools." Markdown formats rose in popularity, as this format was readable in plain text and worked well with version control systems like Git to show what changed from one commit to the next (diffs). Developers like to write code, and they started creating their own document generators to compile the Markdown pages into templates as a website. The hundreds of static site generators on [StaticGen](https://www.staticgen.com/) are a testament to the liveliness of this space, and the complete freedom to innovate (in contrast to the tightly constrained schemas of XML), where a developer might decide to fork an existing tool to create a new version (scratching an itch they might have for some new feature), or where a developer might take an existing tool and implement it in their favorite language (React, Go, JavaScript, Python, Ruby, Rust, or more).

Doc-as-code tools use the same software processes as software developers use to develop code, so beyond the text editors to write content in plain text (instead of rendered through a visual editor), doc reviews often use code review tools, files are managed through version control such as Git, and deployment models follow a CI/CD (continuous integration / continuous deployment) model, where you simply push content to a branch in Git to kick off an automated process that builds your content from the server.

How has docs-as-code influenced what the content we write? There are multiple influences here. With no XML schemas to follow, Markdown follows a more free-form format. You can mix tasks, concepts, and reference more seamlessly as needed by the challenges and processes you're describing. You can more easily paste in code examples, since you're just pasting code in text editors. Try pasting the same code into a visual editor like Microsoft Word and you'll see the problems it creates. This text-based format surely encourages more sharing and use of code samples in docs, just as Latex formats enabled more efficient equations in content. (See [An Efficiency Comparison of Document Preparation Systems Used in Academic Research and Development](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0115069).)

But the promise of doc-as-code is not just to provide an easy platform for developer docs. The promise is to unlock collaboration with developers by meeting them in their tools space and workflows. When you embrace the developer's workflow (contributions through pull requests, management of features in branches, server builds, open formats and templates that build the content, and more), you create a collaboration between developers and tech writers in more tightly coupled ways than was possible with proprietary, licensed-based tools aligning with unfamiliar XML schemas. Docs-as-code tools unlock the potential for more developer collaboration with docs, which then influences the content we produce &mdash; simply put, the content will include more developer contributions and input.

Of course, the degree of collaboration depends on how much one pushes for it. You can use docs-as-code tools in a completely isolated way, not even extending permissions for devs to contribute pull requests for your content. But doing so blocks the primary benefit of doc-as-code tools. The opportunity for collaboration *with developers* is present in novel ways to exploit.

Returning to an earlier question, are tools influencing the content we write? As I've painted broad brushstrokes from PDF to web, XML and DITA, wikis, CCMSs, to docs-as-code, I've described how these tools are more than passive foundations for content but rather act more prominently to shape what the kind of content we produce. As a thought experiment, consider what your output would look like if you switched from one system to another, delivering through PDF instead of docs-as-code, or structuring with DITA instead of a wiki, and so on. It's apparent that how you write influences what you write, in addition to shaping other aspects of the user experience consuming the content.


## Sources

* [Who Technical Communicators Are: A Summary of Demographics, Backgrounds, and Employment](https://www.stc.org/intercom/2019/01/who-technical-communicators-are-a-summary-of-demographics-backgrounds-and-employment/)
* [What Technical Communicators Do](https://www.stc.org/intercom/2019/01/what-technical-communicators-do/)
* [Professional Development of Technical Communicators](https://www.stc.org/intercom/2019/01/professional-development-of-technical-communicators/)
* [Job and Career Satisfaction Among Technical Communicators](https://www.stc.org/intercom/2019/01/job-and-career-satisfaction-among-technical-communicators/)

You can also listen to a [podcast from 10 Minute Tech Comm with Saul here](https://podcasts.apple.com/us/podcast/dr-saul-carliner-on-the-census-of-technical-communication/id920575683?i=1000447406551).

You can also read the results from Scott's benchmarking survey in [slide show format here](http://public2.brighttalk.com/resource/core/217857/the-state-of-technical-communication_474463.pdf). Or watch to a [webinar via BrightTalk here](https://www.brighttalk.com/webcast/9273/338293/the-state-of-technical-communication-2019).

([Survey Reveals Top Tools, Trends, and Technologies in Use in Technical Communication Teams](https://www.stc.org/intercom/2019/01/survey-reveals-top-tools-trends-and-technologies-in-use-in-technical-communication-teams/)).

http://www.welinske.com/2014-writersua-tools-survey/
