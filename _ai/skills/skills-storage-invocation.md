---
title: "Where to store and invoke skills"
permalink: ai/skills-storage-invocation.html
keywords:
sidebar: sidebar_skills
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-19
order: 5
---

{% include_relative draft_notice.html %}

## Where to store a skill

After you identify a repeatable task that you want to automate, you need to decide where to store the skill files. I like to keep my skills next to the documentation they relate to. For example, for a skill that creates release notes for ACME API, I store it like this:

```text
documentation/
└── acme-api/
    ├── _agents/
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

**How agents find the skill**: Storing a skill is only half the story — your agent has to *discover* it, and discovery conventions vary by tool. The [agentskills.io spec](https://agentskills.io/specification) deliberately doesn't dictate where skills live; it defines only the `SKILL.md` format and leaves discovery to each host tool. Here's how the common tools handle it:

* **Gemini CLI** scans tiered locations: user-level skills in `~/.gemini/skills/` (or the `~/.agents/skills/` alias) and workspace-level skills in `.gemini/skills/` (or `.agents/skills/`). Workspace skills take precedence over user skills.
* **Claude Code** looks in `~/.claude/skills/` for personal skills and `.claude/skills/` inside a project.
* **Some environments use a manifest or registry file** that lists which skills are active in a workspace. A manifest is powerful because it decouples storage from usage: you can store a skill in a completely different repository (like a central team repo) and simply reference its path in your local manifest. But this approach is particular to certain toolchains — the common public tools rely on directory conventions instead.

One practical consequence: if you use a custom folder name like my `_agents/` convention, public tools won't discover those skills automatically. You'll need to bridge your storage location to your tool's discovery mechanism — symlink or copy the skill into the tool's expected directory, use a linking command if your tool has one (Gemini CLI has `gemini skills link`), or point the agent at the `SKILL.md` file explicitly (more on invocation below).

For skills that apply globally to all my projects (like a text wrapping skill), I place them in a global `_agents/skills/` directory at the root of my workspace rather than within a specific project, and register them in my global configuration.

Why the underscore in `_agents`? I use static site generators that typically ignore folders starting with an underscore. This ensures my skills are available to anyone working in the repo, but the raw `SKILL.md` files don't accidentally get published to the live documentation site. 

The takeaway: the spec standardizes what a skill *is*, and your tool decides how skills are *found*. You can name your storage folders whatever makes sense for your architecture, as long as you connect them to your tool's discovery mechanism — its expected directories, a linking command, a manifest, or explicit invocation.

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

## Activity: Register the skill and test both invocation modes

In the last activity you pointed the agent at the skill manually. Now register it properly and see whether an agent can find it on its own.

**1. Ask AI to register it.** Say: *"Register the edit-javadoc-comments skill so this tool can discover it in this workspace. Use whatever convention this tool supports, and tell me what you did."* The agent knows its own discovery mechanism — let it handle the details, but read its explanation so you know where the skill now lives.

**2. Test explicit invocation.** In a fresh session, say: *"Run the edit-javadoc-comments skill on MenuService.java."* Confirm it finds the registered skill without you pointing at the file.

**3. Test ambient invocation.** This is the interesting one. In another fresh session, *don't name the skill*: *"Can you polish the comments in OrderUtils.java?"* Does the agent discover and use your skill, or does it wing it?

**4. If it winged it, ask AI to fix the description.** Say: *"I asked you to polish comments and you didn't use the edit-javadoc-comments skill. Rewrite the skill's description so it matches requests phrased like that — polish, clean up, edit, review."* Test once more. This little loop is the most practical lesson in this topic: the description isn't documentation, it's the matching algorithm.

<hr/>

*Continue to the next topic: [Modularity of skills](/ai/skills-modularity.html)*