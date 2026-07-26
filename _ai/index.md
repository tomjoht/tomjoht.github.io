---
title: "AI-powered documentation"
permalink: ai/index.html
keywords:
sidebar: sidebar_ai
section: docapisai
last-modified: 2026-07-26
---

{% assign skillsCount = site.data.sidebar_skills.folders.first.folderitems | size %}
{% assign promptCount = site.data.sidebar_prompt_engineering.folders.first.folderitems | size %}
{% assign useCasesCount = site.data.sidebar_ai_use_cases.folders.first.folderitems | size %}

This section gathers everything I've written about AI and technical communication, organized into three self-contained courses. They don't build on each other, and none of them assumes you've finished the others — start with whichever matches what you're trying to do right now. Each course tracks your progress as you move through it, so you can leave and pick up where you left off.

<div class="courseTiles">

  <a class="courseTile" href="/ai/skills.html">
    <span class="courseTile-eyebrow">Course</span>
    <span class="courseTile-name">Agent skills</span>
    <span class="courseTile-desc">Build reusable instruction files that program an agent to handle the repeatable doc tasks eating your week — the same way every time.</span>
    <span class="courseTile-foot">
      <span class="courseTile-count">{{ skillsCount }} lessons</span>
      <span class="courseTile-go" aria-hidden="true">&rarr;</span>
    </span>
  </a>

  <a class="courseTile" href="/ai/prompt-engineering.html">
    <span class="courseTile-eyebrow">Course</span>
    <span class="courseTile-name">Prompt engineering</span>
    <span class="courseTile-desc">Prompting techniques worked out against the scenarios tech writers actually face: meeting notes, release notes, code samples, templates, and more.</span>
    <span class="courseTile-foot">
      <span class="courseTile-count">{{ promptCount }} topics</span>
      <span class="courseTile-go" aria-hidden="true">&rarr;</span>
    </span>
  </a>

  <a class="courseTile" href="/ai/use-cases.html">
    <span class="courseTile-eyebrow">Course</span>
    <span class="courseTile-name">Use cases for AI</span>
    <span class="courseTile-desc">An honest survey of where AI genuinely helps with documentation work — summarizing, comparing, explaining code — and where it still falls short.</span>
    <span class="courseTile-foot">
      <span class="courseTile-count">{{ useCasesCount }} topics</span>
      <span class="courseTile-go" aria-hidden="true">&rarr;</span>
    </span>
  </a>

</div>

## How these courses fit together

The three courses were written at different times, and the order they appeared in tracks both my own learning curve and the industry's. **Use cases for AI** came together in 2023, when the question everyone was asking was simply what these tools were good for at all. **Prompt engineering** followed mostly through 2024, once the tools had clearly proven useful and the harder problem became getting reliable, repeatable results out of them. **Agent skills** is the most recent, and it takes prompting to the next level: instead of crafting a prompt from scratch each time, you engineer a durable set of instructions that an agent runs the same way every time.

That progression is worth knowing before you pick a starting point. Read chronologically — use cases, then prompt engineering, then skills — and you're retracing how the field got here, which is genuinely useful context for understanding why skills are shaped the way they are. Read in reverse and you're starting with current practice and working backward to the reasoning underneath it. Either approach works. Just keep in mind that the earlier material reflects the tools, model capabilities, and assumptions of its moment, and some of it has aged in ways I've tried to flag but haven't always caught.

## Agent skills

<p class="courseHub-meta">{{ skillsCount }} lessons</p>

A skill is a set of structured instructions — a `SKILL.md` file plus supporting resources — that tells an AI agent how to perform a specific task the same way every time. In a sense, skills are a programming language for LLMs: they let you automate the repeatable work that chips away at your week, so you can spend your time on the one-off problems that actually need you.

This course covers when a task is worth turning into a skill, how skill directories are structured, where to store them so your agent discovers them, how to keep them modular, and how to test them. It's built around a hands-on project — a skill that edits Javadoc comments without ever touching code — and finishes with advanced patterns like subagents, loops, and reverse engineering.

<a class="btn btn-primary courseHub-btn noCrossRef" href="/ai/skills.html">Start the Agent skills course &raquo;</a>

## Prompt engineering for tech comm scenarios

<p class="courseHub-meta">{{ promptCount }} topics</p>

Prompt engineering means crafting prompts in a way that yields the result you actually want. The techniques themselves are fairly intuitive, but few people have applied them meticulously to the scenarios technical writers face day to day — which is what this course does.

Topics include decomposing complex tasks, turning engineering meetings into organized notes, populating documentation templates, gathering source material for context, error checking AI output, generating release notes from file diffs, jump-starting code samples, mining log messages from doc builds, and working with issue tracking systems.

<a class="btn btn-primary courseHub-btn noCrossRef" href="/ai/prompt-engineering.html">Start the Prompt engineering course &raquo;</a>

## Use cases for AI

<p class="courseHub-meta">{{ useCasesCount }} topics</p>

LLM-based tools like ChatGPT, Gemini, and Claude can help with a surprising amount of documentation work: understanding and writing code, getting advice on grammar and style, distilling needed updates out of long bug threads, summarizing dense content, synthesizing insights from scattered feedback, and comparing API responses against schemas.

This section surveys those use cases honestly — including what doesn't work well. Using AI tools takes real direction, review, and guidance, so don't expect too much from them. Within those limits, though, they can do some of the work in genuinely impressive ways.

<a class="btn btn-primary courseHub-btn noCrossRef" href="/ai/use-cases.html">Start the Use cases for AI course &raquo;</a>

## Also in this section

* **[AI Book Club](/ai-book-club/)** — an online book club for reading and discussing books about AI, with recordings, notes, and discussion threads from past sessions.
* **[AI category posts](/category-ai/)** — blog posts about AI and tech comm that don't belong to any of the courses above.

{% include ads.html %}