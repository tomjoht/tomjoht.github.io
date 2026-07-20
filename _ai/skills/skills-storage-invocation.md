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

After you identify a repeatable task that you want to automate, you need to decide where to store the skill files. I like to keep my skills next to the documentation they relate to. For example, for a skill that creates release notes for ACME API, I store it like this:

```text
documentation/
└── acme-api/
    ├── _agents/
    │   ├── skills.json
    │   └── skills/
    │       └── acme-release-notes/
    │           └── SKILL.md
    ├── index.md
    └── release-notes.md
```

The utility of this location is two-fold:

* Because the skill is right next to my other docs, it becomes easier to find, update, and maintain.   
* By placing the skill within the context of your docs, anyone working in that directory benefits from it automatically.

This second point is important. When you place a skill inside a project folder, you are essentially creating an "ambient intelligence" for that specific project. Imagine engineers contributing to your docs — normally, they might struggle with how to stage content, format tables, or adhere to style guidelines. But if you've expertly placed skills in that directory, the agent environment silently elevates their work by making those skills readily available to them, without them needing to install or manage anything. Placement matters.

**Registering with skills.json**: Notice the `skills.json` file in the tree above. Simply placing a `SKILL.md` file in a folder isn't enough; agents look for a `skills.json` manifest file to know which skills are active in a given workspace. This manifest is powerful because it decouples storage from usage. While I like storing project-specific skills locally, you could store a skill in a completely different repository (like a central team repo) and simply reference its path in your local `skills.json`. As long as it's registered in the manifest, the agent will find and use it.

For skills that apply globally to all my projects (like a text wrapping skill), I place them in a global `_agents/skills/` directory at the root of my workspace rather than within a specific project, and register them in my global configuration.

Why the underscore in `_agents`? I use static site generators that typically ignore folders starting with an underscore. This ensures my skills are available to anyone working in the repo, but the raw `SKILL.md` files don't accidentally get published to the live documentation site. 

As for the official specification, the [agentskills.io spec](https://agentskills.io/home) doesn't strictly dictate where skills must live or what the folders must be named. The spec relies entirely on the `skills.json` manifest to locate the skills. You can name the folders whatever makes sense for your architecture; the manifest acts as the bridge.

{% include ads.html %}

## Invoking a skill

After a skill is stored and registered, how do you actually get an agent to use it? There are two primary modes of invocation:

### 1. Automatic invocation (ambient intelligence)

A core idea of the skills specification is that skills can be invoked automatically through matches to names and descriptions in their frontmatter. Theoretically, skills provide a kind of ambient intelligence that activates seamlessly based on the tasks you're doing.

The reality, however, is that agents don't always proactively search for skills without a little nudging. You often have to prompt the agent to look for the skill. For example, rather than just saying "Help me write release notes," you might say, "Use the ACME release notes skill to help me write release notes." 

### 2. Explicit invocation (Manual)

However, mostly I just run my own skills explicitly. When I want an agent like Gemini to perform a complex skill, I usually drag the `SKILL.md` file directly into the context and say, "Run this skill." Or, if the skill is properly registered, I explicitly tell the agent, "Run the acme-release-notes skill," and supply any necessary parameters.

I prefer explicit invocation because I'm wary of an agent running a complex skill that I'm unaware of or didn't ask it to perform. Since I created the skills, I know exactly what they do, but I still like to hold the steering wheel. If I were running someone else's skill, I'd definitely want to read what it does before initiating it. 

The exception to this rule is for simple, low-stakes skills. If a skill just provides a smooth natural language interface to look up documentation or format a table, having it trigger automatically in the background is incredibly helpful.

Perhaps the biggest use case for this kind of ambient intelligence is with tools skills. I want to interact with tools and have the system be smart about it — like a skill for reading Google Docs, querying an internal API, or printing to a specific JSON output format. I love it when tools skills make it so the AI just *knows* what to do under the hood, translating my natural language into the correct API calls or format conversions without me having to manually orchestrate the steps.

<hr/>

*Continue to the next topic: [Modularity of skills](/ai/skills-modularity.html)*