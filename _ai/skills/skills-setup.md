---
title: "Getting set up: editor, models, and environment"
permalink: ai/skills-setup.html
keywords:
sidebar: sidebar_skills
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

## Terminal UIs versus editor UIs

Before recommending a specific tool, it's worth understanding the two basic interface styles agentic tools come in, because the choice shapes your whole experience.

**Terminal UIs** run in a command-line window. You type a prompt, the agent streams back text, and file edits happen somewhat off-screen — you learn about them from the agent's descriptions, or by opening the files yourself afterward. Claude Code and Gemini CLI are the flagship examples. Developers tend to love this style: it's fast, keyboard-driven, and runs anywhere a terminal runs — including the terminal built into VS Code or Antigravity.

**Editor UIs** put the agent in a side pane inside a VS Code-style editor, right next to your file tree and open tabs. You chat with the agent in the pane while its edits appear in your files, with visual diffs you can review before accepting.

My preference is strongly for the side pane, and the reason comes down to one thing: how each interface handles diffs. When the agent edits a file through the editor pane, it presents every change as a visual before-and-after diff — I can review exactly what changed, section by section, and click a revert button on any change I don't like. That review-and-revert loop is the heart of how a writer works with an agent, and the editor interface builds it right into the experience.

The terminal, by contrast, treats review as an afterthought. The agent may show a textual diff when it proposes an edit, but once the change is applied, that diff scrolls away into the transcript — there's no persistent side-by-side view and no one-click revert. Sometimes the agent just narrates what it changed, and I dislike taking its word for it. For a writer, reviewing edits *is* the job. An interface that shows me every change in place, with an undo button attached, fits how I work; one that describes its changes in a scrolling log doesn't.

So why do so many engineers prefer the terminal? Partly it's just where they already live: git, build tools, test runners, and remote servers are all terminal workflows, and an agent that runs in the same window joins that flow rather than interrupting it. But I think the deeper reason is that engineers verify their work differently than writers do. Code has objective checks — it compiles or it doesn't, the tests pass or they fail — so an engineer can let the agent make a batch of edits and trust the test suite to catch problems, without eyeballing every changed line. And when engineers do want to review or undo something, they lean on git, which gives them diffs and reverts independent of any interface. Prose has none of those safety nets. There's no compiler for a paragraph; section-by-section human review is the only quality check a writer has, which is why the editor's built-in diff view matters so much more to us.

To be clear, the agent is equally capable in either interface — the same model does the work either way — so the choice is purely about workflow. If you already live on the command line and feel at home there, the terminal's speed and ubiquity may genuinely suit you better. But if you're coming from the writing world rather than the engineering world, I suspect visible, revertable diffs will matter to you as much as they do to me.

The encouraging part: this is a preference you get to indulge, not a constraint you have to work around. Even Claude Code, nominally a terminal tool, offers an editor extension that gives you a side pane with exactly this diff experience (details below). Pick the interface that keeps you oriented; the skills you build behave identically either way.

One caveat before I get specific about setup: tools, interfaces, and menu paths in this space change so frequently that some details here will inevitably drift out of date. I'm including them anyway, because getting set up is the biggest barrier to entry, and many tech writers are in the dark about the basic tooling. If a button has moved by the time you read this, ask your AI agent — or check the tool's current docs.

## My recommendation: Antigravity

If you don't already have a preferred tool, use [Google Antigravity](https://antigravity.google/). It's what I use daily, so the course's examples and troubleshooting advice will map most directly to what you see on screen. A few reasons it's a good fit for beginners:

* **It's an editor, not a terminal.** Antigravity is built on the familiar VS Code-style editor interface, so you get the side-pane experience I described above: files, folders, and diffs all visible while the agent works. If you're new to agentic tools, watching the agent's edits appear in a file tree is much easier to follow than parsing a stream of terminal text.
* **It gives you multiple frontier models in one place.** As of this writing, Antigravity lets you switch between Google's Gemini models and Anthropic's Claude models from a model picker. That matters for this course: in the [testing topic](/ai/skills-testing.html), you'll see that a skill's performance varies by model, and being able to re-run the same skill against a different model — without changing tools — makes that lesson concrete.
* **The agent manager view teaches agentic thinking.** Antigravity's manager surface shows you what the agent is planning and doing across tasks. For learning how agents approach multi-step work (which is what skill design is all about), this visibility is genuinely instructive.
* **It's free to start.** As of this writing, Antigravity is available at no cost with generous rate limits. Check the current terms, since pricing in this space changes quickly.

To get set up: download Antigravity from [antigravity.google](https://antigravity.google/), sign in with a Google account, and open a folder as your workspace. One quirk worth knowing: if the agent pane isn't already visible, it can be surprisingly tricky to open — there's no obvious button on the activity bar to toggle it. Go to **View > Command Palette** and run **Open Chat with Agent**. Once the pane is open, you're ready to go.

{% include ads.html %}

## Which model to choose

Within whatever tool you use, pick the most capable model available to you — for this course, that means the latest Gemini Pro-class model or the latest Claude flagship model. Skill building leans hard on the model's judgment (deciding when a template applies, when to leave content alone, what counts as a documentation comment), and stronger models make noticeably better judgment calls.

Between Gemini and Claude specifically: for this course, either works. I use both. If your tool offers both, here's a suggestion — pick one as your primary model for the course, but re-run one or two activities with the other. You'll quickly develop intuition for how model choice affects skill behavior, which prepares you for a theme that runs through the whole course: models change constantly, and your skills need to survive those changes.

One caution: avoid the "fast" or "lite" model tiers for these activities. They're great for quick questions, but they cut corners on multi-step instructions — and a skill is nothing but multi-step instructions.

## Solid alternatives

If you already live in another tool, or Antigravity isn't available to you, these alternatives check all four boxes:

* **[Claude Code](https://code.claude.com/docs/en/overview)** (Anthropic) — an agent that's terminal-based by default, with first-class skills support. Requires a Claude subscription or API access. You can run it in any terminal, including the one built into VS Code or Antigravity — but if you share my side-pane preference, install the [Claude Code for VS Code extension](https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code) instead. Click the Extensions button in your editor, search for "Claude Code," and install it like any other extension. A Claude Code icon then appears on the activity bar; click it and the agent opens in a side pane, where you interact with it much as you would with Antigravity's agent panel.
* **[Gemini CLI](https://geminicli.com/)** (Google) — a terminal-based agent with skills support, including the built-in skill-creator mentioned later in this course. Free tier available.
* **Other agentic editors** (Cursor and similar) — most VS Code-derived agentic editors can follow a `SKILL.md` file you point them at, even where formal skills support varies. The course activities will work; you may just need to invoke skills explicitly by dragging the file into context.

Whatever you pick, the deliverables are identical: folders, Markdown files, and a few scripts. Nothing in this course locks you into a vendor.

## Find the auto-accept setting before you start

Whatever tool you land on, hunt down its auto-accept setting early — it's the difference between a tool that works for you and a tool you babysit. By default, most agents stop and ask permission before every file edit and every command. That's a reasonable safety default, but in practice it means clicking "accept" every thirty seconds while the agent does perfectly ordinary work, and the constant interruption makes multi-step tasks genuinely tedious. Skills are nothing but multi-step tasks, so you'll feel this immediately.

Every tool exposes this differently, and most offer gradations rather than a single on/off switch — auto-accept file edits but confirm shell commands, auto-accept everything within the current project folder, and so on. In the Claude Code side pane, the toggle sits in the lower-right corner of the input area. In Antigravity, look inside the agent's settings for the equivalent. Menu locations move around, so if you can't find it, ask the agent itself — "how do I turn on auto-accept in this tool?" is a question it can usually answer about its own interface.

A word of judgment here: pick the gradation you're comfortable with rather than the most permissive one. Auto-accepting edits inside a scratch project folder like the one you'll build in this course is low-risk, since everything in it is disposable and the agent generates the practice files anyway. Auto-accepting shell commands in a folder full of work you can't afford to lose is a different proposition. Start permissive in your practice folder, and be more deliberate elsewhere.

## Do you need to know Java?

No. The course project involves editing *comments* in Java files, not writing Java. You never need to compile or run the code, and the agent generates all the practice files for you. If you want just enough Java vocabulary to feel oriented — what a class, method, and parameter are — my [Java crash course](/learnapidoc/nativelibraryapis_java_crash_course.html) covers it in one sitting.

Relatedly: you do **not** need to install a JDK (Java Development Kit). Exactly one optional capstone exercise in the [advanced patterns topic](/ai/skills-advanced-patterns.html) uses the `javadoc` command-line tool, and that exercise includes a no-JDK fallback. If you get there and want the full experience, install a JDK then — your agent can walk you through it in a few minutes.

## Activity: Smoke-test your setup

Before starting the course project, verify your environment can do everything the activities require. This takes five minutes.

1. **Create a project folder** called `javadoc-skill-project` and open it as your workspace.
2. **Test file creation.** Ask your agent: "Create a file called `hello.txt` in this folder containing the text 'setup works'." Confirm the file appears in your file tree.
3. **Test script execution.** Ask your agent: "Write a small Python (or shell) script that counts the number of files in this folder, then run it and tell me the result." If your agent writes the script, runs it, and reports back "2 files (the `hello.txt` and python script)," you've confirmed the read-write-execute loop that every later activity depends on. (If Python isn't installed, your agent will tell you and can help you install it — or just have it use a shell script instead.)
4. **Test skill awareness.** Ask your agent: "Do you support agent skills? If I put a SKILL.md file in this project, how would you discover and run it?" The answer tells you exactly how skill registration works in *your* tool, which you'll need in the [storage and invocation topic](/ai/skills-storage-invocation.html).
5. **Clean up.** Have the agent delete `hello.txt` and the test script. Your project folder is now ready for the [first course activity](/ai/skills.html#courseproject).

If any step fails, fix it now — every activity in this course builds on these basics. And here's a very meta tip: your AI agent is the best setup troubleshooter you have. Paste the error into the chat and ask.

<hr/>

*Continue to the next topic: [When to build a skill](/ai/skills-when-to-build.html)*
