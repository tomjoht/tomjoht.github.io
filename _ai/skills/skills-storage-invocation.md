---
title: "Where to store and invoke skills"
permalink: ai/skills-storage-invocation.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-19
---

{% include_relative draft_notice.html %}

## Where to store a skill

After you identify a repeatable task that you want to automate with a skill, you can invoke skill creator to create the skill. But you need to decide where to store it. I like to keep my skills next to the documentation they relate to. For example, for a skill that creates release notes for ACME API, I store it in a directory here: `documentation/acme-api/_agents/skills/my-skill-here`.

The utility of this location is two-fold:

* Because the skill is right next to my other docs, it becomes easier to find, update, and maintain the skill.   
* By placing the skill directly into the documentation directory, if someone else is working on those docs, they can invoke the skill as well, without having to own the skill. (Yes, that's right. By placing the skill within the context of your docs and registering it in the skills.json file in the same directory, you empower others to use the skill to work on those docs.)

For skills that apply to multiple docs, I place them in the root of my documentation folder. For example, I have a text wrapping skill and a skill for linking referenced code elements to their documentation in that general directory.

{% include ads.html %}

## Invoking a skill

A core idea of skills is that they're invoked through matches to keywords in the skills frontmatter. If someone opens up their agent within the context of that directory and says they want help writing release notes for ACME API, the skill will automatically kick in. Theoretically, skills would just make your agents smarter with a kind of ambient intelligence that kicks in seamlessly based on the tasks you're doing.

However, mostly I just run my own skills more explicitly. When I want Gemini to do a complex skill, I usually drag the `SKILL.md` file into Gemini's context and tell it to run the skill. Or I explicitly tell Gemini to run a specific skill. The skill usually requires me to supply some parameters as well, so I provide those parameters.

I'm wary of Gemini doing a skill that I'm unaware of or which I didn't ask it to perform. Since I created the skills, I know exactly what they do. If I were running someone else's skill, I'd want to know just what the skill does before initiating it. The exception would be skills that help me use a particular API or tool. In that case, having a skill that provides a smooth natural language interface for the API or tool would be a strong help.

Additionally, I'd love to leverage more skills to help with various tech writing tasks, especially if the skills apply style edits and perform other solid checks and fixes.
