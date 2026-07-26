---
title: "Skill structure and creation"
permalink: ai/skills-structure-creation.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-19
order: 4
---

{% include_relative draft_notice.html %}

Before you start building skills, it helps to understand what a skill actually *is* at the file level. You don't need to memorize the spec — there are tools that will generate the structure for you — but knowing the anatomy of a skill will make you a better skill designer.

## The skill directory

A skill is a directory containing a `SKILL.md` file. That's the minimum. Everything else is optional. Here's the full structure a skill directory can have:

```
my-skill/
├── SKILL.md              # Required: the skill definition
├── scripts/              # Optional: executable scripts
├── references/           # Optional: additional documentation
└── assets/               # Optional: templates, data files, etc.
```

The `SKILL.md` file is the single source of truth for the skill. It's a Markdown file with YAML frontmatter at the top and instructional content in the body. When an agent encounters a skill, it reads the frontmatter first to decide if the skill is relevant, and only loads the full body and supporting files if it needs them.

## SKILL.md frontmatter

The frontmatter is the most important part of your skill from a discovery standpoint. Here are the fields the [agentskills.io specification](https://agentskills.io/specification) defines:

| Field | Required | Purpose |
|---|---|---|
| `name` | Yes | An identifier for the skill: max 64 characters, using only lowercase letters, numbers, and hyphens. It must match the skill's directory name |
| `description` | Yes | A paragraph (max 1,024 characters) describing what the skill does, when to use it, and when *not* to use it |
| `license` | No | The license under which the skill is shared (e.g., `MIT`, `Apache-2.0`) |
| `compatibility` | No | Environment requirements, if any — intended tool, required system packages, network access (most skills don't need this field) |
| `metadata` | No | Additional key-value metadata (author, version, tags, etc.) |
| `allowed-tools` | No | Tools the agent is pre-approved to use when executing this skill (experimental — support varies by agent) |

The `name` and `description` are what the agent reads during progressive discovery. Think of them as the skill's elevator pitch — they need to be specific enough for the agent to match the right skill to the right task, and clear enough to exclude tasks the skill *shouldn't* handle.

Here's a minimal example:

```yaml
---
name: release-notes-analysis
description: >
  Analyze changelists and bugs for a release to identify documentation-worthy
  changes. Use this skill when preparing release notes for the Android SDK.
  Do NOT use this skill for API reference generation or changelog formatting.
---
```

## SKILL.md body

Below the frontmatter, the body contains the actual instructions the agent will follow. This is plain Markdown — headings, lists, code blocks, whatever helps the agent understand the task. The body should be concise. The agentskills.io spec recommends keeping it under 500 lines. If your instructions exceed that, move the additional content into the `references/` directory and link to it from the body.

The body is where you define the skill's steps, constraints, examples, and any "teach the why" context. Think of it as the recipe card — clear enough that an agent (or another human) can follow it without prior context.

{% include ads.html %}

## Optional directories

### `references/`

The `references/` directory holds supplementary documentation that the agent loads on demand. This is how you keep the main `SKILL.md` file concise while still supporting complex, multi-step workflows. Each file in `references/` is a separate Markdown file that the agent pulls in only when needed.

For example, imagine a skill for setting up OAuth 2.0 authorization in an API project. That's a single task, but it's a complex one — it involves configuring credentials, setting up redirect URIs, handling token exchange, and managing refresh flows. Each of those subtopics could be a separate reference file (e.g., `01-credential-setup.md`, `02-redirect-configuration.md`, `03-token-exchange.md`). The main `SKILL.md` body links to these references, and the agent loads each one as it works through the setup. This keeps the main skill file concise while the reference files provide the depth needed for each step.

### `scripts/`

The `scripts/` directory contains executable scripts that the agent can run as part of the skill. These might be Python scripts for data processing, shell scripts for build operations, or any other executable the agent needs. Scripts extend the agent beyond what natural language instructions alone can achieve — if your skill needs to query an API, parse a log file, or run a build command, scripts handle the heavy lifting.

You might wonder: why have the agent run a script instead of running it yourself? A few reasons:

* **Error handling**: When a script throws an error, the agent sees the error output immediately and can troubleshoot — adjusting parameters, fixing paths, or retrying with different arguments.
* **On-the-fly modification**: The agent can modify the script as needed based on the current context. Maybe a file path changed, or an API endpoint was updated. The agent adapts the script without you having to manually edit it.
* **Log analysis**: Script output goes directly into the agent's context, so it can analyze logs, extract relevant data, and act on the results in the same session.
* **Iterative improvement**: Over time, the agent can enhance the script itself — adding error handling, optimizing performance, or extending functionality — as part of the skill's evolution.

### `assets/`

The `assets/` directory holds templates, data files, configuration files, or any other static resources the skill needs. Some of my skills use a template defined in the `assets/` folder that structures the output format. For example, a release notes template might define sections for new features, bug fixes, known issues, and documentation updates. The skill reads this template and populates it with the generated content.

## Progressive disclosure

The simplicity of the skill structure is part of the ingenious nature of the spec. It's designed around a concept the spec calls **[progressive disclosure](https://agentskills.io/specification#progressive-disclosure)** — the agent only loads what it needs, when it needs it:

1. **Discovery**: The agent scans for `SKILL.md` files and reads *only* the frontmatter (`name` and `description`) — roughly 100 tokens per skill. This is how it decides which skill is relevant to the current task.
2. **Activation**: After the agent decides a skill matches, it loads the full `SKILL.md` body into its context. The spec recommends keeping the body under 5,000 tokens.
3. **Execution**: As the agent works through the instructions, it loads files from `references/`, `scripts/`, or `assets/` only when referenced.

This layered approach means you can have dozens of skills in your workspace without bloating the agent's context. The agent reads a few lines of frontmatter for each skill, not the entire contents. It's efficient by design.

## Skills for creating skills

Understanding the spec is useful, but here's the practical shortcut: you don't need to write skill files by hand. Both Gemini and Claude platforms have built-in skill creators. Gemini CLI includes a [skill-creator](https://geminicli.com/docs/cli/creating-skills/) meta-skill — just ask something like "Create a new skill called code-reviewer that analyzes files for style violations," and it guides you through designing, scaffolding, and validating the skill. Anthropic likewise publishes a [skill-creator skill](https://github.com/anthropics/skills) that works in Claude Code and the [Claude apps](https://claude.ai/customize/skills). Instead of writing and structuring the skill yourself, just ask your AI to build a skill for doing X, and then add in the details. The AI will structure the skill for you. This is a great way to get started, as you can then see the shape of the files and learn first-hand about the specification.

If you want to check your skill against the spec, the agentskills project also provides a [reference validator](https://github.com/agentskills/agentskills/tree/main/skills-ref) (`skills-ref validate ./my-skill`) that verifies your frontmatter and naming conventions.

Even with skill creators, the knowledge above matters. When you understand *why* the description field is critical (it's the only thing the agent reads during discovery), or *why* the `references/` directory exists (to keep the main body concise while supporting complex workflows), you'll write better skills — whether you generate them with an AI tool or write them by hand.

## Official documentation

For the full spec and platform-specific guides, see:

* [Agent Skills specification](https://agentskills.io/specification) (the platform-independent spec)
* [Agent skills](https://geminicli.com/docs/cli/skills/) (Gemini)
* [Extend Claude with Skills](https://code.claude.com/docs/en/skills) (Claude)
* [Agent skills overview](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) (Claude)
* [Equipping agents for the real world with Agent Skills](https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills) (Claude)
* [Claude skills course](https://anthropic.skilljar.com/introduction-to-agent-skills)

## Activity: Build version 1 of the Javadoc editing skill

Time to build — or rather, time to direct your agent to build. You won't hand-write any rules or scripts; the AI drafts everything, and you review the shape of what it makes.

**1. Ask AI to build the skill.** In your project folder, paste this prompt:

```
Create a skill directory called edit-javadoc-comments containing a
SKILL.md, a references folder, and a scripts folder. The skill edits
Javadoc comments in Java files — fixing Javadoc tag syntax, conventions,
and language quality — but must NEVER change code, string literals,
license headers, or commented-out code. State that exclusion in the
frontmatter description too.

Put the Javadoc tag and link rules in references/javadoc-tag-syntax.md
(correct {@link} forms, {@code} vs. <code>, escaping < and > in prose,
@param/@return/@throws conventions). Put the language rules in
references/comment-style-rules.md (first sentence as a standalone summary
fragment, third-person present tense, active voice, @param descriptions
as lowercase phrases) — and explain WHY each rule exists, not just what
it is. Keep the SKILL.md body short and point to the reference files for
details.

Also write scripts/verify_code_unchanged.py: a script that takes a
before-file and an after-file, strips the comments from both, and diffs
the remaining code. A non-empty diff means the skill changed code, which
is an automatic failure.
```

**2. Skim what it made.** Don't study every rule — just check the shape against what you learned in this topic. Does the frontmatter description say when *not* to use the skill? Does the body stay short and point to the reference files instead of inlining everything? That's progressive disclosure working. (If you're curious whether the AI's Javadoc rules are accurate, my [Javadoc tags](/learnapidoc/nativelibraryapis_javadoc_tags.html) primer is the cross-check.)

**3. Run it.** In a fresh session, point the agent at the skill: *"Run the skill in edit-javadoc-comments on CoffeeMaker.java."* Then ask: *"Compare this result to the baseline folder — what did the skill catch that the baseline run missed?"* The skilled run should nail the summary fragments and conventions the baseline flubbed.

**4. Bonus.** If your tool has a built-in skill creator (see above), ask it to generate a Javadoc-editing skill from one sentence and compare its structure to yours.

<hr/>

*Continue to the next topic: [Where to store and invoke skills](/ai/skills-storage-invocation.html)*
