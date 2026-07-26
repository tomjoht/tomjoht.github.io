---
title: "Design principles for skills"
permalink: ai/skills-design-principles.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-19
order: 7
redirect_from:
- /ai/skills-enforce-process.html
---

{% include_relative draft_notice.html %}

Just as software engineering has design patterns and documentation has information architecture, skill building has its own set of principles that separate a skill that works from a skill that works *well*.

The principles below are general — they apply across skill types, whether you're building a release notes skill, a style-editing skill, or a tool-integration skill. (Task-specific design patterns — for example, common patterns for release notes skills, like separating signal from noise in bug lists, or structuring output into templates with sections for new features, bug fixes, known issues, and doc updates — deserve their own article, which I may write in the future.) For now, let's look at design practices that apply across all types of skills.

## Balance structure with flexibility

As you're making the skill, you want the agent to follow a consistent process but also include enough flexibility for the agent to make its own decisions based on the fluctuating needs of the content. In other words, don't make the skill too rigid. Allow for some flexibility by teaching the agent the larger goal and philosophy of the skill, and then allowing the skill to adapt to the situation at hand to achieve that larger goal.

For example, one of my skills is publishing data modeling policy information. The task mostly involves publishing content that's already been reviewed in a Google Doc. I've set up a template and the expected format for each policy. 

However, sometimes the source material in the Google Doc doesn't fit the template, or the source material deviates from our expected format. When this happens, the agent initially overwrote the source content to fit the template. I had to improve the skill so that the agent would intelligently know when to leave the source content as is, without trying to force it into a predefined template that might not make sense for the policy.

The fix isn't to remove the template — it's to teach the agent *when* the template applies and when to deviate. This means writing the skill in a way that communicates intent, not just procedure. Instead of "Format the output using this template," you might write "Format the output using this template when the source content covers a standard policy. If the source content has a significantly different structure, preserve the source structure and adapt the template sections that still apply."

{% include ads.html %}

## Teach the *why*, not just the *what*

This connects to a broader principle: skills work better when they explain the reasoning behind a step, not just the step itself. An agent that understands *why* you want it to check for breaking changes can make better judgment calls about edge cases than an agent that's just told "check for breaking changes."

For example, instead of writing:

> Check if any API fields were removed or renamed.

You might write:

> Check if any API fields were removed or renamed. This matters because external developers may have hardcoded these field names into their integrations. A removed or renamed field can silently break their applications. Flag these as breaking changes even if the functionality is preserved under a different name.

The second version gives the agent enough context to handle situations you didn't anticipate — like a field that was technically "moved" rather than "removed," which the first instruction might miss.

## Build self-reflection into the skill

One foundational principle about skill building is that iteratively, the skills should improve each time you use them. (This likely only applies to more complex skills.) You can do this automatically by building self-reflection into the skill itself. Add a step at the end of the skill that tells the agent to examine its friction log, analyze any challenges or obstacles it encountered while doing the task, and to improve the skill so that next time around, the next agent won't struggle with the same issues.

(Often when I do this, the agent adds the information into a `troubleshooting.md` topic in the reference directory.)

One reason to build self-reflection into skills is that the tools, models, and other environmental factors are constantly changing. What might not be possible one month might suddenly be possible in the next iteration of something. Skills must likewise be constantly evolving, adapting, and improving. This is why skills belong directly in the same directories as your documentation.

Over time, skills should improve in a progressive way, so if you're running a skill that you've run dozens of times, it should be pretty smooth. The topic of self-improvement connects to recursive self improvement (RSI), which is a larger phenomenon. Anthropic recently published a blog post titled [When AI builds itself](https://www.anthropic.com/institute/recursive-self-improvement), arguing that most of Claude's code is written directly by Claude. More and more tech companies are publishing statistics like this, arguing that 50% of code or more is written by AI.

The same applies to skills. I rarely write the skill content myself. Most of the time, I tell the agent what I want to do in the skill, and it adds the appropriate instruction. We're steering the agents to do the skill building, which then generates the documentation. So now the agent is writing instructions for future agents to perform, which is AI propelling AI. 

I'm still steering the agent, but I don't need to directly hold the steering wheel because all of my steering is captured within the skill. So if I say "Don't do X again," I shouldn't have to keep providing this guidance to the skill. The skill should capture the guidance and remove the behavior for future skill runs.

## Design the skill as a codified process

Here's a design principle that's easy to overlook: a skill should be a codified version of your best process, not just a set of instructions. When you sit down to write a skill, you're really answering the question, "What does excellent look like when I do this task?" The skill becomes a reflection of the ideal process — the one you'd follow if you had unlimited time and discipline.

For example, in my robust release docs skills, the following steps are part of the process:

- Analysis of source code comment tags (and any fixes)  
- Analysis of logs run after the reference docs build to identify elements missing documentation  
- Analysis as to whether any changes/updates constitute breaking changes  
- Analysis of documentation corpus to identify needed changes across docs (and any fixes)

If I were doing these steps manually, I'd cut corners on some releases. I probably wouldn't have time to analyze the log reports or scan all other documentation for needed updates. But because the skill codifies these as explicit steps, they happen every time. The skill holds me to a higher standard than I'd hold myself.

This is the design principle: when you're building a skill, don't just automate what you *do* — codify what you *should* do. Bake in the quality checks, the thoroughness, the best practices you'd follow if time were infinite. Templates work the same way: if you define a specific output template within the skill, that template gets applied consistently every time, producing uniform structure across all your outputs. The skill becomes the enforcer of the process you designed.

## Write skills for the next person

Finally, remember that a skill you write today might be run by someone else tomorrow — or by a future version of yourself who's forgotten the context. Write your skills with the same care you'd bring to documentation: clear section headers, explicit assumptions, and enough context that someone unfamiliar with your specific setup can follow along.

This doesn't mean making skills generic to the point of uselessness. It means writing a clear, descriptive `description` field in the skill's frontmatter, noting any prerequisites or required parameters in the body, and explaining any non-obvious decisions. If your skill expects a particular directory structure or file naming convention, say so explicitly rather than assuming the agent will figure it out.

## Activity: Harden the skill against curveballs

Two of your practice files exist precisely for this topic: `LegacyImporter.java` (the curveball) and `Inventory.java` (the trap). Time to use them.

**1. Run the routing skill on `LegacyImporter.java`** and inspect the result closely. Watch for overreach: Did the skill "improve the grammar" in the Apache license header? Delete or clean up the commented-out code? Expand the `{@inheritDoc}` into a full description? All three are plausible failures — the file contains comments, and you built a comment-editing skill.

**2. Fix it by communicating intent, not just adding rules.** You could patch each failure with a rule ("don't edit license headers"), but the stronger fix teaches the agent the distinction: *edit only documentation comments — comments that describe API behavior to a reader. License headers are legal text, commented-out code is disabled code, and `{@inheritDoc}` is a deliberate delegation to the parent's documentation. None of these are documentation prose, so none of them are yours to edit.* An agent that understands the category will handle curveballs you never enumerated — a doc comment containing an ASCII diagram, say, or a `TODO` note from an engineer.

**3. Run the skill on `Inventory.java`.** The correct output is *no changes at all* — and that's a hard test for an eager agent staring at "Recieved shipment" in a string literal and a `==` string comparison in the code. If your skill fixes either one, tighten the constraint and, again, teach the why: changing a string literal changes runtime behavior, and behavior changes from a comment-editing skill are silent, unreviewable bugs. Doing nothing is sometimes the correct, skilled outcome.

**4. Add a self-reflection step.** Append a final step to the routing skill: "Review any friction encountered during this run — ambiguous instructions, judgment calls the skill didn't cover, steps that required retries. Update the skill or its reference files so the next run doesn't hit the same friction." Run the skill once more and look at what the agent logged or changed. You've now built a skill that participates in its own improvement.

<hr/>

*Continue to the next topic: [Forking and sharing skills](/ai/skills-forking-sharing.html)*
