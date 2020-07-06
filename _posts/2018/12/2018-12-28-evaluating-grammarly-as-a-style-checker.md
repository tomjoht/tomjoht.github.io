---
title: Is Premium Grammarly worth it for identifying style and grammar issues in tech docs?
categories:
- writing
keywords:
description: "I recently ran every page of my API doc site through <a href='https://app.grammarly.com/'>Grammarly</a> to identify and correct style and grammar issues. Grammarly provides a lot of valuable feedback that is worth considering as you edit your writing. However, the issues flagged are more helpful for conceptual and narrative information rather than for technical procedures, in part due to the restricted vocabulary, unique tech terms, and more frequent passive voice in tech docs. Also, data privacy issues probably prevent Grammarly from gaining more traction in the enterprise."
bitlink: http://bit.ly/evaluatinggrammarly
---

<style>
.sampleGramarlySentences {
  padding: 20px;
  background-color: #e8f4ff;
  border: 1px solid gray;
  font-family: Arial;
  font-size: 14px;
}
</style>

{{site.data.alerts.note}}
This post is in no way sponsored by Grammarly. I will always indicate if posts are sponsored.{{site.data.alerts.end}}

## The need for Grammarly

These past few weeks, I've been trying to finalize the content in my [API documentation site](/learnapidoc) to publish it as a Kindle book. First, I walked through every tutorial to make sure the steps were accurate and up to date. Given how rapidly tools and technologies change, I had to make significant updates. Next, I went through each page and pasted it into [Grammarly](https://www.grammarly.com/) to check for typos and style issues. Keep in mind that this API doc course, when printed to PDF, spans about 500 pages, so both of these tasks were not trivial. This editing took me weeks.

Although I've used Grammarly on and off to check documents and blog posts over the years, this month I decided to upgrade my subscription to the Premium version so that I could see all the issues Grammarly flags. Is the Premium version of Grammarly worth it? Maybe for extensive writing projects, though I'm not sure for tech docs. I'll give you a better sense of Grammarly's style checking capabilities later in this post.

Side note: In case you haven't noticed, I've been reluctant to write much about grammar on my site. I feel that the focus on the cosmetics of language often reduces the role of technical writing to wordsmithing only. In my view, writing is about 90% ideas/content and only 10% language. When people fixate on typos, to me it signals a lower-level analytical ability. There are usually much more significant issues to focus on (such as organization, structure, logic, support, flow, relevance, and so on) than grammar.

That said, one typo within a beautiful piece of writing will distract readers. A teacher once told me that having a typo in your sentences is like showing up to a party wearing a tuxedo and not realizing your fly is down. As professional writers, we should at least deliver grammatically correct, typo-free content. Never mind if it's accurate or well-written. Just please let there *not be any typos.*

Grammarly not only checks for typos but also checks for style as well, which includes areas such as clarity, variety, concision, confidence, and so on. As style checkers go, it's probably one of the best available. Although I feel pretty confident in my grammar knowledge, Grammarly helped me identify some consistent style issues in my writing, such as starting sentences with "This ..." and over-using the words "simply" and "actually."

<a href="https://app.grammarly.com/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/grammarlyscreenshot.png" alt="Grammarly"/></a>

## Sample problematic sentences to plug into Grammarly

To get a feel for what Grammarly identifies as style issues, [download the Grammarly app](https://www.grammarly.com/native/mac) and copy the following sentences (which are all problematic in some way), and paste them into the app. Then look at the issues it identifies.

<button type="button" class="btn btn-info" onclick="$('#customapp').toggle( 'fast' )">Sample sentences with style issues &raquo;</button>
<div id="customapp" markdown="block" class="expandedBox" aria-expanded="false" style="display: none;" class="sampleGramarlySentences">

*Grammarly will flag issues in each of these sentences. I chose sentences that have more subtle grammar issues (rather than obvious misspellings or punctuation errors). As you read through these, you might scratch your head wondering what the issues are. Look in the Grammarly app for the answers.*

1. And when engineers write, they’ll naturally gravitate towards tools and workflows they’re familiar with.

2. His response, and my subsequent emphasis on static site generators, led me to understand why traditional help authoring tools aren’t used often in the API doc space.

3. In contrast, docs-as-code tools are often open source and can therefore scale across the company without budgetary funding and approval.

4. By interactive API console, I mean you enter your own API key and values, and then run the call directly from the web pages in the documentation.

5. In the frontmatter of a page (for example, endpoints.yml), you could list out the key-value pairs for each section.

6. With API documentation, often times the documentation *is* the product's interface.

7. Completing, clarifying, and correcting documentation require deep, authoritative knowledge of the API’s implementation. This makes accomplishing these tasks difficult for non-developers or recent contributors to a project.

8. The template can provide consistency, automate publishing and styles, and allow you to more easily change the design without manually reformatting each section.

9. By playing a role as an editor/publisher, you can be a valuable contributor to the product team. This is why being a doc tools expert is particularly relevant in API documentation contexts.

10. This is partly because Google does such a better job at search, the in-site search feature of any website is often meager by comparison.

11. Usually the more code you can add to your documentation, the better. Here's an example from Evernote's API.

12. Nevertheless, clearly it is a design pattern to provide this kind of interactivity in API documentation.

13. By non-patterns, I’m not saying these elements aren’t a good idea, but generally they aren’t emphasized as primary requirements in API documentation.

14. Without a template, you could just remember to add the exact same sections on each page, but this requires more effort to be consistent

15. They dramatically reduce the time for developers to understand your product. In fact, we even have example code right on our homepage. (Designing Great API Docs)

16. Many times developer documentation is so complex, only developers can really write and review it.

17. Additionally, some developers prefer to just write the doc themselves.

18. Publishing and deploying the output is no longer a step you have to devote time towards.

19. However, unlike other wikis, with GitHub you can also take all the content offline and edit locally, and then commit your changes and push the changes back online.

20. When you create a repository on GitHub, the repository comes with a wiki that you can add pages to.

21. The developer tool landscape is diverse and constantly changing, and what may be relevant one day might be passé the next.

22. Read the Docs provides themes specific for documentation websites, and also lets you author in reStructuredText (or Markdown, if you prefer that instead). reStructuredText provides more documentation-specific features and semantics — see my discussion in What about reStructuredText and Asciidoc? for more details, or see Why You Shouldn’t Use “Markdown” for Documentation for a more impassioned argument for rST.

23. Write the Docs was originally intended as a conference for the Read the Docs community but evolved into a more general conference focused on technical communication for software projects.

24. The decision depends on your skillset, product, environment, and requirements.

25. This setup works fairly well.

26. Of course, being able to build locally is important if you’re developing with Jekyll, but I want to avoid Jekyll installation issues here and simply demonstrate the continuous deployment features that a host like CloudCannon provides

27. Despite the common goal, we lived in seemingly different worlds, and we had to constantly communicate about what each other needed.

28. The long build times were so annoying, we decided to switch back to individual repos.

29. However, our build management system couldn’t support Git submodules either, it turned out.

30. Let me provide a little more details here on how we shortened the build times, because this is a reason many adopt Hugo instead of Jekyll.

31. We probably had about 1,500 pages of documentation between our 10 writers.

32. This Jekyll layout included a number of styles and scripts to override settings in the CMS.

33. Secure servers in order to satisfy Information Security policies with the corporate domain

34. All we really needed to do was to generate out the body HTML along with the sidebar and make it available for the existing infrastructure to consume.

35. With Jekyll (and most static site generators), your sidebar and layout are packaged into each of your individual doc pages

36. Although we all ended up learning the Git commands, I’m not sure everyone actually used the same processes for pulling, pushing, and merging content (there’s a lot of ways to do similar tasks).

37. My second attempt was to distribute the theme through Git submodules. This involved storing the theme in its own Git repo that other Git repos would pull in.

38. Further, the number of translation vendors that could handle Markdown was limited, which created risks around the vendors that could even be used.

39. Changing any documentation tooling at a company can be a huge undertaking.

40. Constantly changing the processes for documentation

41. Probably the main challenge was to figure out the correct size for the documentation repos.

42. Originally, our team started out storing content in separate repos.

43. Figuring out the right process for translation was also difficult.

44. While it may seem like Jekyll was the authoring tool to learn, actually the greater challenge was becoming familiar with Git-based workflows for doc content.

45. Because the content used Markdown as the format, anyone could easily learn it.

46. Am I using granted incorrectly?

47. To make it easy for developers, the company provides SDKs and client implementations in various languages for the REST API.

48. If that’s the case, you’ll need to develop a deeper knowledge of C++ so you can provide more value in your writing role.

49. Perhaps unsurprisingly, the biggest problems with API documentation were also the ones requiring the most technical expertise to solve.

50. Wood says tech writers who are learning to code often underestimate the degree of difficulty in learning code.

51. For an in-depth analysis about the dilemma between being a generalist or specialist, see my essay Be both a generalist and specialist through your technical acuity in my Simplifying Complexity series.

52. But without the technical acumen to fully understand, test, and integrate the code in meaningful ways, the tech writer will be at the mercy of engineers and their terse explanations or cryptic inline comments.

53. Clearly tech writers need to understand code, but they probably don’t need to be engineers to the extent that Neiman argues (writing their own code in other languages).

54. As soon as you throw yourself into learning one language, the concepts will likely start blending together.

55. After all, if you want to excel in your career, usually this means mastering something in a thorough way, right?

56. Again, maybe Maine has a real shortage to fill a dozen open positions for tech writers where applicants are largely absent, whereas California might have 200 positions but many hundreds more applicants competing for them.

57. Many say that Silicon Valley's days are over, since it's no longer practical for a startup to launch in the conditions here.

58. In fact, the STC Salary Database indicates that “San Jose-Sunnyvale-Santa Clara” had the second largest reported loss of tech writers during 2016

59. Again, maybe Maine has a real shortage to fill a dozen open positions for tech writers where applicants are largely absent, whereas California might have 200 positions but many hundreds more applicants competing for them.

60. Technical writers can contribute a lot here in terms of style, consistency, clarity, tagging, and overall professionalism.

61. Think of a class like a general blueprint of a “bicycle.”

62. Some data types include byte, short, long, int, float, or double. Basically, these are numbers or decimals of different sizes.

63. If you had trouble building your Javadoc, you can view the output here.

64. Generally you select **Public**.

65. You can select any HTML page and it will be included in the index.

66. This tag will be positioned in a prominent way in the Javadoc.

67. The @throws feature should normally be followed by if ... and the rest of the phrase describing the condition.

68. When you view a class page, you’re presented with a brief summary of the fields, constructors, and methods for the class.

69. Each time you export to Javadoc, you need to select the classes you want included.

70. Clearbit not only documents the standard status codes, they describe the unique parameters returned by their API.
</div>

When you run content through Grammarly, you'll see that Grammarly categorizes issues into the following groups:

* Spelling
* Grammar
* Punctuation
* Fluency
* Conventions
* Conciseness
* Formality
* Confidence
* Clarity
* Variety
* Vocabulary

One sentence might have a misspelling, so it would appear under Spelling. If the same sentence has clarity issues, you'll see the same sentence under Clarity too (with the clarity issues flagged rather than the spelling issues). More pressing issues are underlined in red, while optional fixes are underlined in yellow.

After checking so many pages, I noticed that I overuse the following words:

* simply
* actually
* a number of
* starts out
* larger
* great
* good
* in order to
* definitely
* absolutely
* huge
* especially
* basic
* bad
* extremely
* key
* separate out
* easier
* important
* complex
* originally
* constantly
* own

Grammarly flags these words for a variety of issues: the words are overused, they're unnecessary and contribute to wordiness, they don't fit the context, they're redundant, or for other reasons.

I also commit these grammar errors regularly:

* Putting commas before "since" or "because"
* Starting sentences with "This" (unclear antecedents)
* Using passive voice (lots of "be" verbs)
* Incorrectly phrasing "Not only ... but also" constructions

Grammarly doesn't explicitly say a sentence is wrong &mdash; it flags issues so you can examine them and check for yourself. You can expand an ellipsis in the Grammarly editor to read an explanation of the grammar principle. For example, Grammarly flags split infinitives but doesn't say splitting an infinitive is wrong; instead, it explains that some readers might be put off by seeing an infinitive split unnecessarily.

Coming back to my original question &mdash; is Grammarly Premium worth it? Is it worth the price of two Starbucks Frappuccinos a month? As I've been working heads-down on editing, I'd say for sure! Grammarly has caught hundreds of errors or style issues that I've fixed. Take a look at these commit logs:

* [e3b8ae](https://github.com/tomjoht/learnapidoc/commit/e3b8aed18306d9fe772a4f07d297a89c96709b9f)
* [a3bfa4](https://github.com/tomjoht/learnapidoc/commit/a3bfa4805a7ff267c6298c3deaf88a3b99bfc82e)
* [a93c40](https://github.com/tomjoht/learnapidoc/commit/a93c406c5865bdfb45b535cf282ced3137bccf75)
* [015ac0](https://github.com/tomjoht/learnapidoc/commit/015ac08cac7137c9e4d31ffdaf6ccd20d2e608f4)
* [3e1fb0](https://github.com/tomjoht/learnapidoc/commit/3e1fb0279ece31cab827b4c05167edb9317ef0b8)
* [371083](https://github.com/tomjoht/learnapidoc/commit/371083cc766edf6b1f1aadb750eb932d219a88c3)
* [9581b3](https://github.com/tomjoht/learnapidoc/commit/9581b3bf6e92c52efc5fcddeabdecebe14765cf8)
* [2872b8](https://github.com/tomjoht/learnapidoc/commit/2872b873a74a6056f1b48f74a01880a6fc10fdb2)
* [0aff65](https://github.com/tomjoht/learnapidoc/commit/0aff65d4d43d90667350516767f662b6e5fb1124)
* [878b28](https://github.com/tomjoht/learnapidoc/commit/878b2833f91471465f5ad3076326634b9ad8914f)

The file diffs show the corrections I've made. Surely, a tool like this should be in every writer's pocket. But is it worth $140 a year? If you write a lot, yes. But recognize that Grammarly is more helpful with narrative and conceptual information. With procedural writing genres, such as technical documentation, I've learned to ignore most of Grammarly's flags in the Variety and Vocabulary categories. If you use the same word too often, Grammarly suggests you change it up a bit for the sake of variety. But in technical writing, swapping in synonyms for the same word is a no-no. But the other categories (especially Spelling, Punctuation, and Grammar) are generally helpful.

Fixing passive voice (flagged in the Clarity category) will probably involve the most revision, and you can decide whether the effort is worth it. In many tech comm contexts, passive voice is acceptable because you don't want to draw attention to the actor or subject. <span style="text-decoration: line-through;">Even so, I was surprised to see so many instances of passive voice in my writing.</span> Even so, seeing so many instances of passive voice in my writing surprised me.

Grammarly has also made me realize that I overuse certain words. I had no idea I was using the word "simply" and "actually" so much. While there are cases where these words might be warranted, I'm surprised how frequently they appear in my API documentation site. I've removed many of them. I also found that I use "a number of" almost as much, and "just" and "This ..." and so on. I was also unaware that "main" and "constantly" and "originally" and "key" are overused terms.

Sometimes I found that I needed to consult the grammar principle. For example, should "usually" and "generally" always be followed by commas, even in short sentences? Is "in fact" unnecessarily wordy? When should intercepting clauses not contain the first comma (such as right after a coordinating conjunction)? And so on. I like that Grammarly integrates grammar instruction right next to the sentences it flags.

One other cool feature of Grammarly Premium is the ability to add words to its dictionary. Over time, this can help limit the many false positives flagged in the Spelling category.

My verdict about Grammarly in tech comm situations is that yes, it is worth it, especially if you can get your work to pay for it. However, there is a data privacy issue with Grammarly's SaaS model that will likely be a showstopper in the enterprise.

## Data privacy

Grammarly sends the content to its servers via API calls (I assume) for analysis and then returns content with the annotations. Most enterprise companies have security policies that prohibit this kind of data leakage. The following startling clause also appears in Grammarly's [Terms of Service](https://www.grammarly.com/terms):

> By uploading or entering any User Content, you give Grammarly (and those it works with) a nonexclusive, worldwide, royalty-free and fully-paid, transferable and sublicensable, perpetual, and irrevocable license to copy, store and use your User Content (and, if you are an Authorized User, your Enterprise Subscriber’s User Content) in connection with the provision of the Software and the Services and to improve the algorithms underlying the Software and the Services.

There's a lengthy thread on Hackernews about Grammarly &mdash; see [Grammarly shared its tokens with all websites](https://news.ycombinator.com/item?id=16315684). Some concerns are that Grammarly could potentially act as a keylogger that is mining your text for keywords, which it could then feed to Internet advertising or some other service (though I don't think there's any evidence of that, as it would put Grammarly into a malicious category). Some people in the thread note alternative tools, such as [Languagetool's Microsoft Word add-on](https://languagetool.org/#ludilo), but in my brief test, the grammar flags were weak in comparison to Grammarly. For more on the data privacy issue, see [A Tiny Little Privacy Hack for Grammarly](https://eli4d.com/2016/05/18/a-tiny-little-privacy-hack-for-grammarly/).

So while Grammarly seems useful for writers, it probably won't take off in the enterprise. Without enterprise support, there probably won't be much demand for such an expensive style checker ($140/year) given that most technical writers exhaust their writing energies at work and have only small creative bandwidth outside of work. I probably blog more than most, and I'm on the fence about whether a premium subscription is worth it.

For style checkers at work, some are more appropriate to tech comm, such as [HyperSTE](https://idratherbewriting.com/2017/01/25/hyperste-simplified-technical-english-asd-ste100/) (which is a site sponsor) and Acrolinx (whose cost is usually prohibitive for small companies). Even Microsoft Word's built-in spellchecker is probably a decent alternative to Grammarly.

In some ways, the ban of tools like Grammarly (and other similar ones such as [Ginger](https://www.gingersoftware.com/ginger-for-windows), [Grammarbase](https://proofread.grammarbase.com/), etc.) mean that engineers and others who write important content in the enterprise will be more dependent on technical writers to edit their content, essentially serving as a human proofreaders.
