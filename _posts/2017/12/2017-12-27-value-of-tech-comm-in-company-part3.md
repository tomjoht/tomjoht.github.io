---
title: "Part III: Determining value through usage (Arguments for the value of documentation and tech writers)"
categories:
- general
keywords: tech writing, value, usage, documentation
summary: "Documentation is valuable. It derives this value not from a carefully measured financial ROI, which is impractical to measure, but from perceived value by the many groups within the company that use the documentation. But even though documentation has value from perceived usage, it might not have more value relative to other organizational resources that are also used by the same groups. As such, arguments about value based on usage fall short. Tech comm must seek for additional forms of value to tip the balance."
bitlink: http://bit.ly/valuetechcomm3
weight: 3
tags: series_value_of_tech_comm
series: "Value arguments for docs and tech comm"
published: false
---

{% include series/seriesTagValueOfTechComm.html %}

{{site.data.alerts.note}}This is part III in a three-part essay. Read the previous section, <a href="/2017/12/27/value-of-tech-comm-in-company-part2">Past research on tech writer value"</a> before diving in here. {{site.data.alerts.end}}

Now that we've explored some of the discussions and research on the topic of a technical writers' value, let's move toward the first premise in our argument: Documentation derives value through perceived usage from important groups in the organization.
{% comment %}
Note that the argument is that *documentation* has value, not that technical writers have value. It is a non-sequitur that if documentation has value, technical writers are necessary. Conceivably, anyone in the organization can write documentation. A business leader can believe that documentation is valuable but not concede that tech writers are necessary to create it. {% endcomment %}

* TOC
{:toc}

## Questioning assumptions about the value of docs

That documentation plays an important and valuable role in a company is usually a premise that goes unquestioned, especially among technical writers. But let's pause a moment and question our assumptions. *Is documentation really so valuable?*

The other week I walked into our breakroom and stumbled into a conversation in which someone boldly asserted:

> "I have not used the documentation for any product I own for at least the last 10 years."

As this was another team and I had just walked into the room, I lacked some context. But I assume the argument was that the team could skip the need to create documentation for an issue raised by a customer. Or perhaps there was an error or omission in the documentation for an already-shipped product, and the person was downplaying the impact. Either way, the general idea was that documentation wasn't that important, **because not many people use documentation.** (Determining value through usage is a topic we'll return to shortly.)

Regardless of whether people actually use documentation (in any of its forms, whether printed manuals or google searches), what Carliner et al's research teaches us is that *perceptions* matter. The perception that documentation is unused or unimportant, based on one's experience of never using the documentation for the tech gadgets they own (such as an iPhone or printer), devalues documentation as a whole.

I agree that for some products, documentation *is* unimportant. Consider a perfectly designed UI for an intuitive product. What need is there for documentation on how to use it? Think about your toaster. A toaster shouldn't need documentation, nor should a blender or fan. For many designers, having documentation is an admission of design failure. In fact, the more documentation you need for a product, the worse the design.

One could argue that if documentation is necessary for your product's success, your product will never succeed, because users don't want to read documentation to use your product. I haven't read the official docs for my iPhone, and in a way, that's why I like my iPhone &mdash; it's intuitive enough for me to figure it out based on the product's well-designed interface that I don't need to frequently consult the docs. Reducing the dependence on documentation, or even eliminating documentation altogether, might be a way to force your product to be more intuitive, to stand on its own and be designed well enough not to require a manual.

By providing documentation, you're enabling poor design. Get rid of documentation, and you force the design to be better. So should all documentation then be avoided?

What holds true for some easy, intuitive products can't be applied to the vast, robust array of complex products in the technology landscape. No matter how easy the aspirations in the design, there are complexities that cannot be eliminated. A world without docs might be a designer's utopian dream world but doesn't hold true to reality. Just as we can't discard support, field engineering, and training &mdash; all unnecessary groups in a perfectly intuitive product &mdash; we also can't discard documentation. For many developer-centered products, which don't have a user interface or tangible product, documentation in some ways *is* the product interface.

The assumption that docs might not be valuable is one that I'll return to later, but for now, let's move on.

## The relationship between usage and value

Having examined assumptions about whether documentation is valuable or not, let's accept that documentation is valuable, at least for technical products that can't be simplified in ways that make documentation unnecessary. Now how do we argue that value proposition, without any financial ROI data to leverage?

Let's return to that overheard breakroom conversation: "I have not *used* the documentation for any product I own for at least the last 10 years ... [therefore documentation has no value]." To establish value, we just need to flip it around: "Because I have *used* documentation for my products for the last 10 years ... [documentation has value]." **Usage has a relationship to value.**

This is just common sense. For example, in my house, if we don't use something for a period of time, we store it in the garage. After more months of un-use in the garage, we put it in the trash. That which is unused gets thrown away, because it has no value (to us) anymore. Value and usage have a direct correlation. It's much easier to argue that documentation is used by a lot of groups, and through this usage, infer that documentation has value. If it didn't have value, why would they use it?

We have to build a case for documentation's value by first establishing that **people actually use documentation**. The more people use something, the more valuable it is. Sure, end-users use documentation, but we don't have ready access to them in ways that speak forcibly to business leaders. Instead, we have more direct access to other groups in the company that use documentation.

There are at least 6 groups within a company that use documentation:

* Support
* Field engineers
* Marketing
* Training
* Internal engineers
* UX design

Here's a graphic depicting documentation as a common asset used by all of these groups:

<figure><img src="/images/intersecting_groups_documentation_center.svg"/><figcaption>When I posted this graphic <a href="https://twitter.com/tomjohnson/status/942867105845723136">on Twitter</a>, it received a tremendous response, with about 25 retweets and more than 50 likes.</figcaption></figure>

It's probably unnecessary to go into depth about how each of these groups use documentation, as technical writers are familiar with this area. What's important is to show the many ways that these groups use documentation so that leaders within the company have a higher perceived usage of the docs.

The obvious starting point to show usage is through web analytics (e.g., hits on pages). However, metrics tend to fall short for a number of reasons. Listing the number of hits on a page is impersonal. The hits could be search bots, random internet hits for errant keyword matches, or other unknowns. They could be hits by the wrong audience.

Additionally, the number of hits on doc pages don't necessarily matter. If documentation "Topic A" gets 1,000 hits from relatively unimportant customers, but documentation "Topic B" 1 hit from an important, high-revenue yielding customer, which hit is more important to the business? That 1 hit turns out to be more important, and entire team roadmaps are often built around the needs of these few, high-revenue yielding customers while the masses of other users that don't earn the company much money go ignored. Thus, metrics don't mean much. Whether you get 1,000 hits or just a few hits, it's impossible to translate these clicks into business value.

For example, in my current documentation, the least clicked-on docs from a metrics point of view involve the docs about implementing 4k into your media player. Does this mean we should abandon these docs and focus on the docs that get more clicks (the specifications pages)? Not necessarily. The business may be hungry for more 4k apps, especially as it tries to sell 4k televisions. Suppose just two app developers are working away at 4k media integration into their apps and are relying on the docs for instruction. In this way, the 4k docs pages might be even more important than the specification pages.

The point is that metrics alone can't tell the full story about documentation usage in a way that aligns with business value and priorities. Business leaders need to know *who* is using the docs. Which customers, and what is their value to the business? Google Analytics can't tell that story. You can only tell that story through word-of-mouth reports from groups that matter &mdash; specifically, from the Support, Field Engineering, Marketing, Training, UX, and Internal Engineering groups, since these groups often work directly with high-revenue yielding customers and can speak more directly to the impact there.

To build a case of usage by important groups, technical writers have to interact more directly with each of these groups and gather information about how they use docs as important tools in their job functions. For example, field engineers might explain that they rely on documentation when guiding users through product development. They might even use a real example or two.

This approach aligns with Carliner et al's research to base value on gathered perceptions:

> ... instead of focusing on ROI, perhaps tracking perceptions of the service provided by technical
communicators might prove easier to conduct on a sustained basis and provide more useful data to inform the answer to the crucial question underlying the concern about providing value...

## Not everything that is valuable has the same level of value

My argument so far is that docs derive value through usage from important groups. However, many resources within an organization have value. The question, when it comes to funding and resourcing questions, is which resources have *higher value*.

Consider the case of a photocopier in a department. Suppose one day the manager says, you know what, this photocopier keeps breaking down &mdash; paper gets jammed, the print queue freezes, and it sometimes has white bands in the graphics. Let's go green and get rid of it. The employees object, saying, "But we make photocopies daily! We print documents that need signatures, we print faxes, we need to print documents for review and annotation, to make copies for agreements, and so on. This photocopier has a high value to our job roles, and we use it daily!

Then the manager says, would you rather use the $10,000 in our budget for a new copier, or for a new watercooler, larger fridgerator, and espresso coffee machine?

At this point, the question of value becomes relative. Both the photocopier and the watercooler / larger fridge / espresso machine would both be used abundantly. Both have value &mdash; that's not the question. The question is *which* has more value to the people?

In this case, employees might choose the watercooler, fridge, and espresso machine over the photocopier. After all, almost everything is digital anyway, they say, and they'd rather have good coffee.

The same argument could be leveraged against technical writers. Sure, the business values documentation, and all of these groups use it. It's not a question of the value of docs, but degrees of competing value. Would you rather have a the needed functionality in your application that many customers are complaining about, or would you rather have better documentation?

Hmmm. You can see now how my argument about value from high usage is starting to fall apart. We are now debating which company resources have more value. And here, if we limit the tech writing role to simply that of writing documentation, I fear tech writers will lose. New features in an application are much sexier, more attractive, and lead to higher sales than documentation. A product manager might think, *I know our docs are poor, but we really need the API. It's what our customers have been asking for. And since I only have budget to hire one resource, we'll use it to hire an engineer to create the API.*

In the next section, I'll explore ways that technical writers can provide additional value.

{{site.data.alerts.note}}Continue on to read <a href="/2017/12/27/value-of-tech-comm-in-company-part4">Part IV: Information flow</a>.{{site.data.alerts.end}}

{% include series/seriesTagValueOfTechComm_next.html %}
