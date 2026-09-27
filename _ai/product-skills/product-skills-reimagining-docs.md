---
title: "Reimagining the documentation experience"
permalink: ai/product-skills-reimagining-docs.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-09-27
order: 19
---

{% include_relative draft_notice.html %}

Tech writers should also play a role in reimagining documentation experiences. Remember how little of the work the skill itself does. The documentation carries the load, while the skill is a rudder, steering the agent toward the right approach and away from the wrong ones. A rudder on a boat that isn't seaworthy doesn't get you anywhere, which means everything the agent experience demands of us happens in the boat rather than the rudder.

I'll admit up front that this puts the topic somewhat beyond product skills proper, and that drift is deliberate. A well-curated skill pointing at scattered, untested, human-only documentation doesn't accomplish much. So this topic takes up the question product skills leave you holding. Once your docs have an agent audience, and a skill routing that audience through them, what should the docs themselves become? Each deliverable below is something a product skill can route to, generate, or verify, and I've put the highest-value one first.

Currently, most tech writers are treading water in place, generating the same documentation they've always created. They might be doing it faster or in a more automated way, especially if their teams have shrunk and they're doing the work of 2 or 3 writers now.

However, tech writers need to go beyond just producing the same documentation experience as before the emergence of AI. Instead, we need to reimagine the possibilities of documentation. For example, tech writers might create new deliverables not previously done. Here are a few examples.

## Cross-product comparisons

The first deliverable is the one this whole chapter has been pointing at, which is a high-level comparison across the products in a portfolio. Have you ever gone to a documentation portal and seen 30 to 50+ different APIs and SDKs, with little explanation about when and why you would use them, or how they might be used together or in particular workflows? The reason is usually that tech writers have specific products they support, and tend to draw a line in the sand around those products.

For example, one writer might document ACME API variant A for a specific industry and use case, and another writer might document ACME API variant B for a different industry and use case, and there is likely no information comparing and contrasting the two variants, presumably because of the walled audiences.

Using AI tools, you can easily take massive documentation sets and compare and contrast them against each other. Then you can present high-level comparison charts to users as they navigate and decide on which products they need. Having worked through the rest of this chapter, I'd call this the single highest-value thing a tech writer can do for agent readers, and it's why it leads the list rather than closing it.

Cross-product comparison is the content [the docs-first approach](/ai/product-skills-docs-first.html) is built around. If that knowledge was never written down, no skill generator can manufacture it, because it isn't in the source material. Agents inherit the same which-of-these-50-APIs confusion your human users have always had. The difference is that a human gets stuck and asks someone, while an agent picks one and writes three hundred confident lines of code against it.

This is [Conway's law](https://en.wikipedia.org/wiki/Conway%27s_law) with a deadline attached. The reason nobody owns the comparison is that the comparison doesn't map to a team, and it never has. We've been shipping the org chart for decades and absorbing the cost in user confusion. Agents make that cost legible and expensive in a way it wasn't before.

The encouraging part is that this is an opening for tech writers. It's work that requires the portfolio-wide view writers accumulate and most individual engineers don't, and AI tooling has made it tractable for the first time. You can now read across large documentation sets and build a defensible comparison. Write the page first. It serves human readers, it reaches every agent on every platform without an install step, it can't drift out of sync with itself, and it gives any future skill something solid to point at. Whether a compressed skill on top adds anything after that is an empirical question worth testing rather than assuming.

## API tree diagrams

The remaining deliverables are narrower, but each one changes what a skill has to point at. Browsing the reference documentation for APIs can be tedious and hard to follow, especially if the documentation is scattered across many different pages, or if the documentation consists of a series of stacked tables, with one object defined in the next table down, and its objects defined in the next table down, and so on.

API tree diagrams show all objects in the API at a glance. The diagrams link to each documentation page to provide more detail as well. Overall, the API diagrams provide a quick reference guide to both users and agents. They provide a holistic view of the API and its capabilities while also providing jumping-off points to dive more deeply into each element.

These tree diagrams can be generated through scripts and other tools, but large API diagrams are beyond the capabilities of human creation and maintenance without agent assistance. I've explored this technique before. See [Task decomposition and complex tree diagrams](/ai/prompt-engineering-task-decomposition.html) in the prompt engineering course, and a [worked tree diagram example](/blog/task-decomposition-tree-diagram-example) on my blog.

Since then, I've made API diagrams a standard deliverable for every API I support. I have roughly 20 of them on my doc site now, and I update them with every API change. That wouldn't have been sustainable without AI. Even with AI, the diagrams got large enough to cause trouble. Some contain 350+ elements in a hierarchical structure, and the AI often botched them or introduced errors that were tedious to correct and hard to spot. I eventually moved to some insanely complex Python scripts that regenerate them more predictably.

Even with that overhead, the diagrams have elevated my documentation in a noticeable way. Partners and PMs love them. I use them myself every time I want to quickly identify the reference content for a particular API element.

Tree diagrams also make natural routing targets for a product skill. Rather than describing your API's surface inside the skill itself, where the description will drift out of date, the skill can point the agent at the diagram. That gives the agent a consolidated, holistic map, which is exactly the kind of coherent context agents prefer over fragmented pages.

## Reference content editing

Another ripe area for technical writers to reimagine is their involvement in reference content. All too often, tech writers abdicate their role in reference content to engineers, who do only a marginal job with the comments there. Technical writers can make sure that the reference content reflects the conceptual content and vice versa. Writers can make style edits to align with source code conventions, not only fixing cosmetic errors related to grammar, spelling, terminology, and links, but also clarifying confusing concepts and making sure the conceptual documentation harmonizes with the reference documentation.

Tech writers should play key roles in setting up, configuring, and generating reference documentation for the APIs they support. The setup and configuration can be simplified through skills that automate much of the complexity of this setup. This will put tech writers in a much more immersive and hands-on role with reference docs. (The [course project](/ai/skills.html#courseproject) in the first chapter, a Javadoc editing skill, is exactly this kind of involvement.)

I generate the reference docs for all the APIs I support, and it's been a game changer for me. When I meet tech writers who don't generate their own reference docs, I find it odd. If someone else runs the generation, the reference content starts to feel like someone else's deliverable. It also makes it much harder to get your hands dirty with edits in the source files.

Tech writers who only accept the output from engineers are at a major disadvantage when it comes to harmonizing the content, making changes, and feeling a sense of ownership over the reference material. Think about it. The reference content gets mixed in with your other docs and becomes a flagship artifact on your doc portal. That's something you want more control over.

{% include ads.html %}

## Automating release notes

Another role writers can play to reimagine the documentation experience is to automate release notes. Release notes are where changes are introduced into the documentation corpus. Release cycles are only speeding up, with active products having biweekly or weekly releases. Each release requires tech writers to scan the docs and identify how the change affects other pages. This corpus scanning is too tedious for writers to do regularly, but they can develop skills that instruct agents on the right process to examine all pages that might need to be updated.

Tech writers can also use file diffs between releases to identify all the changes that are being made with each release, without having to track down engineers and interview them about the changes being released. When tech writers generate the API documentation, they can easily see diffs in the API documentation that reflect changes in the code. It's extremely unlikely to make changes to an API without affecting how the generated reference documentation appears. Those diffs provide a map for all the changes. (I walk through this diff-based technique in [Using file diffs for better release notes in reference docs](/ai/prompt-engineering-release-notes-reference-docs.html) in the prompt engineering course.)

By keeping close watch on the file diffs between releases, writers can prevent documentation drift and stale or outdated documentation. This kind of granularity in identifying and tracking all changes from week to week isn't practical without AI tools to do the heavy lifting.

This is also where the two chapters of this course meet. The corpus-scanning and diff-analysis skills described here are internal authoring skills of the kind covered in the [first chapter](/ai/skills.html), and they maintain the very documentation your product skill routes agents to. Internal skills keep the docs current, the product skill keeps agents pointed at them, and drift prevention protects both from the [second source of truth problem](/ai/product-skills-problems.html#a-second-source-of-truth).

## Documentation testing

Another way tech writers might reimagine documentation is by incorporating documentation testing. Consider that documentation consists of a series of assertions. For example, documentation for an API might assert that an object contains a number of child elements. Or that a method returns certain information. Or even that by following a tutorial, you will achieve a certain end result. How do you know if each assertion is true? The idea has a name, docs as tests, and Manny Silva has developed it into a book-length methodology in [*Docs as Tests & AI: A Strategy for Self-Healing Technical Documentation*](https://www.amazon.com/Docs-Tests-Self-Healing-Technical-Documentation/dp/B0H181C5DQ).

Tech writers can construct tests for documentation to analyze the accuracy of their instructions. Usually, constructing such tests is beyond the bandwidth and capability of most tech writers, but with AI, more testing is possible. Tech writers can construct tests that can be run regularly, not only identifying problems with the API products but also within the documentation itself. If this sounds familiar, it should. It's the same with-versus-without evaluation machinery from [Problems with product skills](/ai/product-skills-problems.html), pointed at the documentation instead of the skill. A team that builds eval infrastructure for its product skills has already built most of what documentation testing needs.

Writers can also develop personas that embody specific types of users (for example, Windows users versus Linux users, or users on v1 versus v2 of your platform) and test the documentation against that user variant. The automated tests provide a way to view and analyze your documentation with a different, unfamiliar perspective.

## Wrapping up

Product skills are a small artifact, smaller than most of the industry currently builds them, and a rudder rather than the boat. But owning them pulls tech writers into the larger currents this chapter has covered, including eval loops, chat log analysis, forensics, and the reimagined deliverables above.

And there's a reading of the research I find encouraging, even though most of this chapter has been about limits. If models already know the mechanics of software, then explaining mechanics is not where our remaining value sits. What the model can't know is why your organization built three overlapping APIs, which one a newcomer should actually reach for, and what happens at the seams between teams that never talk to each other. That knowledge has always existed mainly in people's heads, and tech writers have always been among the few who accumulate it across a portfolio. The shift to agent readers doesn't make that knowledge less valuable. It makes it, for the first time, something we have a concrete reason to write down.

<hr/>

*This concludes the Product skills chapter. If you haven't worked through the first chapter on building your own [agent skills](/ai/skills.html), start there.*

