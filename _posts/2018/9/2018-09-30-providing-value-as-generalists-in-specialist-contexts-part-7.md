---
title: "Part VII: Information usability principles continued"
categories:
- api-doc
- simplifying-complexity
- writing
keywords:
weight: 7
tags: series_trends_specialist_generalist
series: "Tech comm trends: Providing value as a generalist in a sea of specialists"
summary: ""
published: false
---

{% include series/seriesTagGeneralistSpecialists.html %}

### Principle 5: Conform to the patterns and expectations of the genre and schemas

One way to reduce the complexity of experience is through a psychological principle called “script theory.” In a recent edition of *Communication Design Quarterly*, Kirk St. Amant explains that script theory refers to the routines and behavior we follow automatically and unconsciously based on the stimulus from objects, people, and other triggers in a particular space. These reflexive responses can be a good technique for making complex spaces more usable.

For example, when checking into a hotel, users encounter the lobby, receptionist, concierge, waiting area, check-in desk, and other details that trigger users into an automatic routine based on previous experiences. Almost without thought, when users encounter these “prototypes of space” (aligning with their previous details in similar spaces), they know what to do, the routine to follow, what’s expected of them, and what to expect from others.

By prompting users with the right stimuli — stimuli that align with the prototypes the user associates with that space — you help users naturally move about and operate in that space. Amant explains:

> By catering my design to meeting your experiences, I make these items easier for you to use in that context (Reflexes, Reactions, and Usability: Examining How Prototypes of Place Can Enhance UXD Practices, Communication Design Quarterly 6.1 2018).

Every genre has certain expectations around it. When you align your text with these genre conventions, you make it easier for users to find, navigate, and absorb the information.

One of the first steps to organizing and presentation information, therefore, is to understand the expected conventions in the genre. With some genres, the information has such a strong convention that going against it would create confusion and disorientation. Hans van der Meij is an academic researcher who “spent hundreds upon hundreds of hours analysing the products of technical communicators” to arrive at this Four Components model. In this model, he found that procedures consist of the following four components:

> goals<br/>
> prerequisite states<br/>
> action and reaction<br/>
> unwanted states (warnings and troubleshooting information)

In other words, these are the conventions of the documentation genre. When you shape information into these components, users more naturally understand and interact with it. So the first takeaway here is to structure information in these four sections.

<figure><img src="/images/generalist_specialist_schemas.svg"/><figcaption>When we follow expected genre conventions, the pieces fit naturally into pre-slotted spaces in our mind for those elements.</figcaption></figure>

But we can apply this idea even further. This four components model isn't too far off from the structure of story itself, which underlies much of the way we see the world, not just documentation. In *The User’s Journey*, Donna Lichaw depicts the structure of story as follows:

<figure><a href="https://www.amazon.com/Users-Journey-Storymapping-Products-People/dp/1933820314"><img src="https://idratherbewriting.com/simplifying-complexity/images/lichaw-usage-story.png"/></a><figcaption>The typical story includes exposition, inciting action, rising action, crisis, climax, denouement, and end. Her depiction of story follows the typical breakdown of “characters, goals, and conflict” — elements Aristotle called out as the foundation of story, she explains. Stories have a clear beginning, middle, and end.</figcaption></figure>

In all my blog posts, presentations, and other writing projects, I always have one primary structure in mind: story. If you can shape information into a story, you'll never go wrong. For example, recently at work, I was asked to do a competitive analysis of a competing product. I’d never written a competitive analysis before, and I started by gathering as much information as I could about the competitor’s product. I gathered a ton of information through research, but then I needed to figure out how to organize it.

I needed to structure this jumble of information in a way that would make sense to users. This is a task we all face when confronted with large amounts of information that we need to organize and present to users. What principle do we use to group, structure, explain, and otherwise present large bodies of information in ways that makes sense to users? We structure it in the shape of a story. This makes complex information more consumable and usable to users.

<figure><img src="/images/generalist_specialist_customer_journey.svg"/><figcaption>I structured the competitive analysis around the common steps in the user's journey.</figcaption></figure>

For more information, see [Conform to the patterns and expectations of the genre and schemas](https://idratherbewriting.com/simplifying-complexity/reducing-complexity-by-shaping-into-schemas-esp-story.html).

### Principle 6: Reduce the complexity of technical language

One reason technical documentation is so difficult to follow is because of the unfamiliar terms and jargon in the content. A while ago I was evaluating whether to use Acrolinx, a language linter for tech docs, and I learned that the bulk of configuration for Acrolinx is in building out your own custom dictionary. Apparently, identifying your custom terms and incorporating them into Acrolinx’s checking logic can account for around half of the terms in your dictionary.

Unlike most other professional writing disciplines, tech docs are notorious for the amount of specialized terms in their content. API evangelist Kin Lane recently noted his frustration with an API’s language when he encountered the undefined acronym — “DEG”. Lane explains,

> I came across a set of API resources for managing a DEG the other day. You could add, update, delete and get DEGs. You can also pull analytics, history, and other elements of a DEG. I spent about 10-15 minutes looking around their developer portal, documentation, and even Googling, but never could figure out what a DEG was. Nowhere in their documentation did they ever tell consumers what a DEG was, you just had to be in the know I guess. (Using Plain Language In Your API Paths)

As a technical writer, using the correct terms for your knowledge and product domain is necessary. To simplify the language, you can’t just omit the necessary terminology for the domain or substitute in more friendly names.

One approach for teaching users how to speak this language involves defining unfamiliar words for the user. You can define unfamiliar words in at least two easy ways: (1) include a glossary, (2) include “Background Knowledge” sections.

But before you can do either of these, you have to identify terms and concepts that might be unfamiliar. A term or concept on its own isn’t familiar or unfamiliar &mdash; it can only be familiar/unfamiliar in the context of an audience. So the question is, for the intended audience, which terms or concepts will be unfamiliar?

How do you recognize which terms and concepts will be familiar or unfamiliar with your audience? Without more understanding of your audience, identifying familiar versus unfamiliar terms is nearly impossible. This is one of the main challenges in developer documentation.

<figure><img src="https://idratherbewriting.com/simplifying-complexity/images/jargon.svg" /><figcaption>Without a mutual understanding of terms, the effectiveness of communication plummets
</figcaption></figure>

However you identify them, come up with a list of glossary terms and concepts that users need to know. I often have a section near the beginning called "Background Knowledge." Rather than trying to educate newbie developers on the knowledge domains — a task usually beyond the bandwidth or expectations of any technical writer — I provide a list of links the user can read to ramp up their knowledge.

For example, in a topic I was writing about how device filtering and compatibility works in the Appstore, I included a section called “Background Knowledge.” In that section, I provided a number of links to foundational material that would ramp users up to the right level.

<figure><a href="https://developer.amazon.com/docs/app-submission/device-filtering-and-compatibility.html#background-knowledge"><img src="https://idratherbewriting.com/simplifying-complexity/images/background-knowledge-terms.png"/></a><figcaption>Background knowledge sections help users ramp up without requiring you to always start them from ground zero on foundational topics</figcaption></figure>

These two techniques only take you so far in simplifying language. The next step is to read the competitor's documentation and see what terms they use for the same terms and concepts. By reading through the competitor’s documentation, you get a better grounding about the terms users expect and which are common in the domain you're writing in.

For example, at my work I was recently rewriting the section on how to upload your APK file. We kept using the term "binary" rather than "APK," which I suspected was nonstandard (in part due to support cases with confusion about this term). I decided to read through Google Play's documentation to see how they used the terms binary and APK, and I found that they didn't use "binary" at all. I'm not sure where this pet term developed, but it had completely saturated the internal discourse at Amazon around this feature.

I changed the term in the docs. Then during a UI refresh, I helped persuade the product manager that it was the wrong term, so we changed it in the UI as well. Aligning terms with industry standard terms &mdash; which I learned by reading the competitor's documentation &mdash; dramatically improved the information usability of this page.

Granted, this kind of knowledge gathering takes time, and we might object that we barely have enough time to edit the content we have, much less undertake reading how similar terms are used across the competitor’s documentation and industry at large. But this reading is precisely where terminology gets interesting. If we only look at our own company’s use of terms, the definitions of the terms might seem clear and straightforward. But we run the risk of operating in a bubble, without awareness of the linguistic chaos and complexity going on outside. It blew my mind the first time I realized that Roku didn’t call apps “apps” but rather “channels.”

For more information, see [Reduce the complexity of technical language](https://idratherbewriting.com/simplifying-complexity/reducing-the-complexity-of-technical-language.html).

### Principle 7: Iterate and increment on content following an agile approach

Iteration is a central principle of development, whether you're building a system or creating documentation. while iterative development is a good idea regardless of the complexity of the content, with complex content there’s a much greater need for iteration because you rarely hit the target on the first try.

Overall, technical documentation faces the same challenges as software development. It’s nearly impossible to predict whether your product will meet the user’s needs until you release it to the audience. Especially with highly complex products that involve a lot of different variables, conditions, environments, and business goals, iteration helps you eventually get the content right.

Software development’s big evolution to agile methodologies involved shortening the development cycle and incorporating regular product reviews between development cycles. You code for a couple of weeks and then release something that you can show to customers or stakeholders. You gather their feedback and make sure you’re on track. With each iteration, you might find yourself abandoning ideas or redoing features with another approach — essentially iterating on the same efforts until you get it right. If you find that you’re going in the wrong direction, well then you’ve “failed fast” and can course correct early on.

Here’s another way to think about it&mdash; what you’re creating is like an untested hypothesis or theory. Ian Spence and Kurt Bitner explain that agile software development follows a scientific hypothesis model, where theories are frequently tested to see if they’re correct:

> In a sense, many things on a software development project are theories, or more accurately, assertions that need to be evaluated. The plan itself is composed of many assertions about how long things will take to accomplish. Even the requirements are assertions about the characteristics of a suitable solution. Just because some stakeholders or subject matter experts say a requirement is valid does not mean that they are correct. We need to evaluate even the requirements to determine whether they define the right solution to the problem at hand. (What is iterative development? — Part 1: The developer perspective)

Consider that documentation is a theory you construct about how users will be able to achieve their goals. But you don’t know if your theory is correct. You need to release the documentation theory into the wild and observe the results: did the theory hold true? Did the theory accurately describe the steps users would need to take? Then based on the feedback, you can iterate on your theory to bring it closer to the reality.

Much has been written about how documentation can align with the development cycles and pace of agile software development. Most commonly, the advice for creating delivery docs that customers will read is to “document late,” which helps you avoid “treading heavy.” In other words, if the project is in constant flux, don’t waste a lot of bandwidth and cycles updating your documentation with each change. Wait until the dust settles a bit, and then create your customer documentation.

While this approach is sound for working with agile projects, it misses the whole point of the agile development philosophy in documentation’s own development process. It assumes that writing is a one-and-done effort that can be completed at the last minute. “Document late” is the same practice that students adopt in college writing courses: wait until the last weekend before a deadline, and then write your essay. Wait until just before your customer release, and then write your docs. We all know how those kinds of essays turn out in college. Would professors ever recommend that students “write late”? Why would “documenting late” be any better in a corporate context?

If by “document late,” product members assume writing is a one-and-done effort, they commit the same errors as those outside software development might commit by asking why waterfall doesn’t work. I’m not advocating that writers try to write documentation with each sprint, keeping pace with the constant changes and flux of a product under development. In fact, I also recommend starting documentation late in the project as well. *But where iterative development with the software product ends (at least with its first big release), iterative development with the documentation should be begin.*

<figure><img src="https://idratherbewriting.com/simplifying-complexity/images/agiledocdev_swimlanes.svg"/><figcaption>Documentation should follow similar iterative development cycles as software</figcaption></figure>

Upon release (or earlier with focus groups, if possible), documentation itself should undergo the same iterations and cycles of review, similar to the software development process. At this point, documentation should be seen as its own project with its own life cycle, independent of the software project.

Fortunately, keep in mind that documentation projects don’t have an iteration cycle that is as time-consuming in the beginning as in the end. Near the beginning of the feedback cycles, you should receive big feedback for glaring issues or omissions. But as the documentation continues through multiple iterations, the feedback should get smaller and smaller until the work diminishes altogether.

For more information, see [Iterate and increment on content following an agile approach](https://idratherbewriting.com/simplifying-complexity/iterative-and-increment-on-content.html).

## Your reactions and input?

<script>
EMBED_PARAMS = {};
EMBED_PARAMS.surveyID =6324686;
EMBED_PARAMS.domain ="//www.questionpro.com";
EMBED_PARAMS.src ="//www.questionpro.com/a/TakeSurvey?tt=%2ByEUs%2BsUmpU%3D";
EMBED_PARAMS.width ="100%";
EMBED_PARAMS.height = "750px";
EMBED_PARAMS.border = "hidden";
</script>
<div id="div_6324686"></div>
<script src="//www.questionpro.com/javascript/embedsurvey.js?version=1"></script>

You can <a target="\_blank" href="https://www.questionpro.com/t/PESbBZc1tX">see the responses (so far) here</a>.

{% include series/seriesTagGeneralistSpecialists_next.html %}
