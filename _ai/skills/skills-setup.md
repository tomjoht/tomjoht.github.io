---
title: "Getting set up: editor, models, and environment"
permalink: ai/skills-setup.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-26
order: 2
---

{% include_relative draft_notice.html %}

The activities in this course assume you have an agentic AI environment up and running. If you already work in one daily, skip this topic and move on to [When to build a skill](/ai/skills-when-to-build.html). But if you're new to agentic tools — maybe you've only used AI through a browser chat window — this topic walks you through the setup you need to participate in the course activities.

## What you actually need

Don't get lost in tool comparisons. To do the activities in this course, your setup needs to be able to do four things:

1. **Read and write files on your computer.** Skills are files, and the course project involves editing Java files in a local folder. A browser chat window where you paste text back and forth won't cut it.
2. **Run commands and scripts.** Several activities have the agent run a verification script, and one optional capstone runs the `javadoc` tool.
3. **Work with an agent, not just a chatbot.** An agent plans multi-step tasks, uses tools, reads files on its own, and iterates until the task is done. That's the loop skills are designed to plug into.
4. **Support agent skills.** The tool should recognize `SKILL.md` files and know how to discover and run them. The major agentic tools from Google and Anthropic all do, since skills follow the open [agentskills.io](https://agentskills.io/home) specification.

Any tool that checks these four boxes will work for this course. The skills you build are portable across tools — that's the point of the spec.

## My recommendation: Antigravity

If you don't already have a preferred tool, use [Google Antigravity](https://antigravity.google/). It's what I use daily, so the course's examples and troubleshooting advice will map most directly to what you see on screen. A few reasons it's a good fit for beginners:

* **It's an editor, not a terminal.** Antigravity is built on the familiar VS Code-style editor interface, so you can see your files, folders, and diffs visually. Command-line tools are great, but if you're new to agentic work, watching the agent's edits appear in a file tree is much easier to follow.
* **It gives you multiple frontier models in one place.** As of this writing, Antigravity lets you switch between Google's Gemini models and Anthropic's Claude models from a model picker. That matters for this course: in the [testing topic](/ai/skills-testing.html), you'll see that a skill's performance varies by model, and being able to re-run the same skill against a different model — without changing tools — makes that lesson concrete.
* **The agent manager view teaches agentic thinking.** Antigravity's manager surface shows you what the agent is planning and doing across tasks. For learning how agents approach multi-step work (which is what skill design is all about), this visibility is genuinely instructive.
* **It's free to start.** As of this writing, Antigravity is available at no cost with generous rate limits. Check the current terms, since pricing in this space changes quickly.

To get set up: download Antigravity from [antigravity.google](https://antigravity.google/), sign in with a Google account, and open a folder as your workspace. That's it — the agent panel is available immediately.

{% include ads.html %}

## Which model to choose

Within whatever tool you use, pick the most capable model available to you — for this course, that means the latest Gemini Pro-class model or the latest Claude flagship model. Skill building leans hard on the model's judgment (deciding when a template applies, when to leave content alone, what counts as a documentation comment), and stronger models make noticeably better judgment calls.

Between Gemini and Claude specifically: for this course, either works. I use both. If your tool offers both, here's a suggestion — pick one as your primary model for the course, but re-run one or two activities with the other. You'll quickly develop intuition for how model choice affects skill behavior, which prepares you for a theme that runs through the whole course: models change constantly, and your skills need to survive those changes.

One caution: avoid the "fast" or "lite" model tiers for these activities. They're great for quick questions, but they cut corners on multi-step instructions — and a skill is nothing but multi-step instructions.

## Solid alternatives

If you already live in another tool, or Antigravity isn't available to you, these alternatives check all four boxes:

* **[Claude Code](https://code.claude.com/docs/en/overview)** (Anthropic) — a terminal-based agent, also available as a desktop app and IDE extension. Skills support is first-class. Requires a Claude subscription or API access.
* **[Gemini CLI](https://geminicli.com/)** (Google) — a terminal-based agent with skills support, including the built-in skill-creator mentioned later in this course. Free tier available.
* **Other agentic editors** (Cursor and similar) — most VS Code-derived agentic editors can follow a `SKILL.md` file you point them at, even where formal skills support varies. The course activities will work; you may just need to invoke skills explicitly by dragging the file into context.

Whatever you pick, the deliverables are identical: folders, Markdown files, and a few scripts. Nothing in this course locks you into a vendor.

## Do you need to know Java?

No. The course project involves editing *comments* in Java files, not writing Java. You never need to compile or run the code, and the agent generates all the practice files for you. If you want just enough Java vocabulary to feel oriented — what a class, method, and parameter are — my [Java crash course](/learnapidoc/nativelibraryapis_java_crash_course.html) covers it in one sitting.

Relatedly: you do **not** need to install a JDK (Java Development Kit). Exactly one optional capstone exercise in the [advanced patterns topic](/ai/skills-advanced-patterns.html) uses the `javadoc` command-line tool, and that exercise includes a no-JDK fallback. If you get there and want the full experience, install a JDK then — your agent can walk you through it in a few minutes.

## Activity: Smoke-test your setup

Before starting the course project, verify your environment can do everything the activities require. This takes five minutes.

1. **Create a project folder** called `javadoc-skill-project` and open it as your workspace.
2. **Test file creation.** Ask your agent: "Create a file called `hello.txt` in this folder containing the text 'setup works'." Confirm the file appears in your file tree.
3. **Test script execution.** Ask your agent: "Write a small Python (or shell) script that counts the number of files in this folder, then run it and tell me the result." If your agent writes the script, runs it, and reports back "1 file," you've confirmed the read-write-execute loop that every later activity depends on. (If Python isn't installed, your agent will tell you and can help you install it — or just have it use a shell script instead.)
4. **Test skill awareness.** Ask your agent: "Do you support agent skills? If I put a SKILL.md file in this project, how would you discover and run it?" The answer tells you exactly how skill registration works in *your* tool, which you'll need in the [storage and invocation topic](/ai/skills-storage-invocation.html).
5. **Clean up.** Have the agent delete `hello.txt` and the test script. Your project folder is now ready for the [first course activity](/ai/skills.html#courseproject).

If any step fails, fix it now — every activity in this course builds on these basics. And here's a very meta tip: your AI agent is the best setup troubleshooter you have. Paste the error into the chat and ask.

<hr/>

*Continue to the next topic: [When to build a skill](/ai/skills-when-to-build.html)*
