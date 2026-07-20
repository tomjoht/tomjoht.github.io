---
title: "Skill structure and creation"
permalink: ai/skills-structure-creation.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-19
---

{% include_relative draft_notice.html %}

## Reference material and courses on skills

For the official docs on building skills, see the following:

* [Agent skills](https://agentskills.io/home) (the platform-independent spec)  
* [Agent skills](https://geminicli.com/docs/cli/skills/) (Gemini)  
* [Extend Claude with Skills](https://code.claude.com/docs/en/skills) (Claude)  
* [Agent skills](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) (Claude)  
* [Equipping agents for the real world with Agent Skills](https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills) (Claude)  
* [Claude skills course](https://anthropic.skilljar.com/introduction-to-agent-skills)

The basic setup and structure of skills isn't hard to figure out. It's already documented with much more detail and organization than I want to repeat here. Instead, my focus is more on an opinionated guide, emphasizing what's working for me now, as a technical writer building skills as I write API documentation, working within the Gemini ecosystem.

{% include ads.html %}

## Skills for creating skills

Read the skills reference, but here's one reason you don't need to memorize the spec. Both Claude and Gemini platforms have built-in skill creators. Gemini has a built-in skill called [skill-creator](https://agentskills.io/home). Claude also has a built-in [skill creator](https://claude.ai/customize/skills). Instead of writing and structuring the skill yourself, just ask your AI to build a skill for doing X, and then add in the details. Gemini or Claude will structure the skill for you (though it doesn't have as much structure as XML). This is a great way to get started, as you can then see the shape of the files and learn first-hand about the specification shape.

Even with skill creators, it can help to know a few basics about skill structure. The `SKILL.md` file has a name and description property in the frontmatter tag, and is typically 500 words or less. The description describes what tasks the skill is for, as well as what the skill isn't to be used for. The additional content can be stored in several subfolders: reference, scripts, and assets. The reference folder can consist of many subskills. In this way, the skill can be as long as you want. 

One of my release notes skills has 14 separate steps in the reference folder. Each step is a separate markdown file. My files are numbered to reflect their sequential order. Some skills rely on scripts stored in the scripts folder. And some skills use a template defined in the assets folder. The simplicity of the skill structure is part of the ingenious nature of the skill specification.

AI tools only look at the frontmatter as they scan for relevant skills. This means the rest of your skill isn't loaded into context until it's actually needed, which reduces token consumption and exhaustion.
