---
title: "10 principles of the cyborg technical writer -- brief notes and bullet points on how to use AI to augment your role"
permalink: /blog/10-principles-of-cyborg-technical-writer
date: 2026-02-27
categories:
- ai
- technical-writer
keywords: 
rebrandly: https://idbwrtng.com/10-principles-of-cyborg-technical-writer
description: "In my post <a href='/blog/cyborg-model-emerging-talk'>The Emerging Picture of a Changed Profession: Cyborg Technical Writers — Augmented, Not Replaced, by AI</a>, I mentioned an upcoming presentation I'm giving to students and faculty. I argue that the future of the profession is the cyborg model, where machines augment our capabilities rather than replace us. In this post, I share notes about what skills a tech writer would need to learn to thrive in this world of augmentation."
image: cyborgmodelhumanrobotarmsthumb.jpg
---

If you have feedback about these skills, let me know. My intent here is to demonstrate what actual skills should be emphasized for those entering the profession, or for those currently in the profession who want to get ahead with AI. Note that the following sections are mostly bullet points, in the form of notes.

* TOC
{:toc}

<figure><a href=""><img src="{{site.media}}/cyborgmodelhumanrobotarms.jpg" alt="Cyborg model of tech writing" /></a><figcaption>Cyborg model of tech writing</figcaption></figure>

## 1. Bring AI to the table for everything

This idea comes from Ethan Mollick in his book *Co-Intelligence* ([reviewed here](/blog/book-review-co-intelligence-mollick)). Mollick says you shouldn't pre-judge what AI can or can't do; instead, use AI for every task and let experience reveal its limits. Trying it everywhere will help you develop an intuitive sense for AI's jagged edge.

* **Find the jagged edge:** AI is often great at hard things (like writing complex algorithms) but might fail at easy things (like simple math). You won't know where that line is until you test it.  
* **Treat failure as a learning moment:** Don't just give up if a prompt fails. See it as an opportunity to learn what the model's currently capable of handling.  
* **Develop intuition through regular use:** Through continuous use, you'll build a gut feeling for when to chunk data, when to use few-shot prompting, when to use multi-stage processes, etc. You'll know when AI can hit a home run with a task vs. when it will likely strike out (at least for now — the models are always changing).  
* **Test multi-modal capabilities daily:** Experiment multimodally with tasks like fixing images or transcribing audio. Capabilities change fast, so what failed months ago might work today.  
* **Learn to identify strengths:** The more you use AI, the more you'll develop an intuitive sense of how to phrase or contextualize a problem for AI. For example, you might cast the problem as a pattern-matching problem, asking the AI to identify patterns across massive, unstructured data sets. See my series on [what works, what doesn't](/ai/docapis_ai_what_works_and_doesnt.html).

## 2. Learn the tools

Dedicate regular time just learning the AI tools in depth. The more capable you become in using tools, the more capable you become. In other words, the tools extend your own capabilities, if you know how to use the tools.

* **Embrace a tool learning mindset.** We're in a "Pre-cambrian explosion" of tools where many life forms won't survive. It's a moment where we're trying a lot of different tools, form factors, approaches, etc. for the industry, and you've got to be agile. You've got to have a learning mindset and be willing to abandon one tool for another. 
* **Don't get wedded to a single tool:** You might spend weeks mastering a CLI tool, only to come back from vacation to find a new internal tool has completely eclipsed it.  
* **Understand the knobs and dials:** Understand all the knobs and dials of the various tools, what kind of info they read, their capabilities (can they read bugs, changelists, internal docs), what they can or can't do. Then you'll know how to pick the right tool for the job.  
* **Understand MCP capabilities:** If the tool has MCP integration, which MCP servers are integrated? What tools and resources does the MCP server offer? How many tools should you enable, and what happens if you overload the configuration with too many enabled options?  
* **Find your go-to interface:** Explore different modes like the side pane in your IDE (e.g., Gemini Code Assist, or Antigravity), browser-based web apps (e.g., Gemini web app), Chrome extensions (Gemini extension), Gemini button in Google Docs, etc. to see what fits your workflow. You might find different tools are better suited to different situations.  
* **Explore specialized modes:** Within the same tool, especially the Gemini web app, there are diverse options such as Deep Research, Canvas, and more for different scenarios. Even the infographic button is extremely interesting. Get familiar with the options.  
* **Prioritize ecosystem integration:** Explore tools that are baked into platforms you're already using, at different touchpoints (such as when you're submitting changelists or reading bugs).

## 3. Understand model behavior

Develop an understanding of model behavior — its quirks and strengths, where things frequently go wrong or right, and more. 

* **Every AI session is unique.** Sometimes you'll get a "smart" instance and other times a "dumb" one, so you've got to be discerning. Analogy: AI sessions are like members of a family. Sometimes you get the smart aunt; other times the dumb uncle.
* **Figure out input token limits.** How much is the input token limit? Some tools, like NotebookLM, perform much better when you upload files rather than just pasting text. Gemini on the web, however, handles much more input text than NotebookLM. Can you paste in 10,000 words, or will the tool choke? Which input method does the model seem to prefer?  
* **Watch for "disappearing" content:** Keep an eye out for hallucinations where entire paragraphs might vanish during a rewrite. Example: You ask to make content more readable only to realize, a few iterations later, that several chunks are missing. You need ways to see what's actually changed.  
* **Watch for the "middle-skipping" problem:** Be aware that if you upload a massive file, the model might only read the beginning and end while ignoring the middle. Middle skipping is common.
* **Audit the thought logs:** Check the model's internal "reasoning" to see if it encountered friction or if it's just guessing because it couldn't access a resource like a file diff. Reading the thought logs is revealing about some issues. Maybe the model has a high degree of autonomy, so even when it encountered an issue (e.g., couldn't access the file diff log so just skipped it and decided to write the release notes anyway), you can better judge the consequences of that action (e.g., release notes output will likely contain hallucination).
* **Verify search results:** If you point a model at a directory, check if it's actually processing every file or just performing a limited search. How is it parsing through 200 files? What's the behavior if you paste all the content into a consolidated file versus when it scans the directory? Is it creating a search for key files and then pulling from those returned files, or is it doing something more?  
* **Manage context and token limits:** Know that as the conversation grows and the token threshold gets exhausted, you might want to start a new conversation. Monitor how many tokens your current conversation has. What happens when you start to get to that threshold? Does the AI start to go haywire? But at the same time, this context you've built up is likely valuable and you don't want to lose it. How do you preserve the context from one session to the next? In contrast, when do you want a fresh start so the model isn't biased toward the previous conversation turns?  
* **Use agentic steering:** Provide agent markdown instructions (such as GEMINI.md files) to guide model behavior and prevent it from repeating the same mistakes (like outputting cliche words such as "crucial"). How much does the model follow the guidelines in the agent markdown file? How should you write those agent instructions? How long should that agent markdown file be? What gets obeyed versus ignored, and how do you fix it? Why are positive instructions more likely to be followed than negative ones?

## 4. Provide the right context

Providing the right context is "context engineering," and is one of the most important strategies for getting accurate, useful outputs.

* **File diffs are a helpful source of truth:** Don't rely solely on engineers to write down notes in Google Docs. Pull file diffs directly from changelists to see exactly what's changed. In engineering, everything has a changelist, and every changelist has a file diff. Pass these changelists in as context.
* **Watch out for PRD doc pitfalls:** If you feed a model a Product Requirement Doc (PRD) that describes the full vision but you're only releasing version 1, the AI will likely hallucinate features that aren't there yet. Maybe the app only releases a minimum viable product (MVP) version and doesn't have half the features in the PRD.  
* **Avoid design doc confusion:** Engineering design docs often list non-implemented alternatives that can confuse an LLM; you've got to vet what's actually in the code. Engineering design docs might list 3 different implementations along with pros and cons of each. If you feed this into the AI session as context, you risk having this info misinterpreted.
* **Focus on the API reference:** API docs are often the best, most reliable source of truth for tech writing. For API products, much of the docs can be verified with the API reference. Usually only a minority of content falls outside this category, like policy content or unintuitive details about the data returned from the API. Using API reference material as context also prompts you to make fixes in the source files, bringing you closer to the product.  
* **Understand what vs. why limitations.** Use file diffs for the bulk of the work, but dig into scenarios where you also need the "why," such as back-end performance or design changes that might not be obvious from the code alone. But that doesn't mean you should ignore the limitations. Understand when you also need the "why."

{% include ads.html %}

## 5. Develop domain expertise

The cyborg model of using AI means working collaboratively and iteratively, using AI as a thought partner. You can only collaborate like this when you have a good knowledge of the subject.

* **Engage in higher-level "back-and-forths":** The cyborg model means you have a lot of back-and-forth iteration in a continuous way. You can't do this if you don't have any domain knowledge/understanding of the product. Expertise allows you to move past simple questions and have meaningful, iterative refinements with the AI.  
* **Make podcasts from emails:** Use [NotebookLM](https://notebooklm.google) to turn boring partner update emails into interesting podcasts for your commute. While you can glance or skim these partner updates if reading them on a computer screen, NotebookLM makes these sound like a drama or thriller.  
* **Connect the dots:** You're making a thousand micro decisions all day, especially if you're frequently steering and iterating with AI. The more you know, the more you can connect the dots across different documentation decisions, architectures, processes, etc. Example: You might have heard in a partner update that one partner is struggling with data in a specific region; based on that, when you see a bug come in related to a verification tool, you can see the connection between the two.   
* **Steer through misalignments:** Think of the "home repair" analogy: a novice gets stuck if the AI's advice doesn't perfectly fit, but an expert can steer the AI back on track. See the research on this in my post on [Why attitudes and experiences differ so much with regards to AI among technical writers](/blog/plurality-of-ai-attitudes-experiences#domain-expertise).   
* **Prioritize with understanding:** Knowing the domain helps you decide which features are coming soon and which ones deserve the most real estate in your docs. For every tech writer role, you have flexibility about what to care most about. Having domain expertise allows you to make better decisions. (For example, you might realize that autonomous driving is highly important in the industry, so you spend more time on lane-level features in your docs.)

## 6. Automate repeatable processes

Identify repeatable processes and seek to automate them, separating tasks into deterministic scripts and probabilistic instructions.

* **Deterministic tasks:** Use scripts (shell, python) for rigid actions like gathering file diffs or building API outputs. Deterministic scripts are fast, predictable, and don't require the AI to think. Push the AI to write the deterministic scripts you need.  
* **Probabilistic tasks for complex updates:** Use instruction files (prompts) for tasks that can't be scripted in a programmatic way. Example: Update API diagrams that have hundreds of elements, matching the diagram to the latest docs using iterative rounds.  
* **Reflection loops:** Use AI to fix its own instructions. After each iteration, ask AI to evaluate the instructions against frictions it encountered (noted in its thought logs). Improve the instructions and try the script/instruction again. Keep looping around until the output is reliable.  
* **Consistency as a confidence signal:** Run the same probabilistic task across different models or tools. If you're getting consistent results, you know you're on the right track. You might want to run the same probabilistic instruction 5 times until you feel confident it's right.  
* **Apply instructions to batched files:** If you've got 200+ pages of docs, you'll need to chunk the material and run your prompts across batches to stay thorough. Sometimes these tasks can't be deterministically scripted, so you need to create instructions files for agents and run the prompts as many times as needed in batches.

## 7. Apply verification strategies

AI generates content almost instantly, making verification the slowdown point. Build a system to catch mistakes.

* **Grounding in source material:** Look for ways to verify the output, such as checking your output's assertions against the API reference or engineering changelists.  
* **Run "fresh session" checks:** To verify an output, run the same prompt in a completely new session (also remove the memory of the previous session). If the model reaches the same conclusion without previous context, it's more likely to be accurate.  
* **Train a verifier agent:** Consider having a second AI agent act as the verifier for the first. To do this, you'll need to train the verifying agent specifically on what to look for. The verifying agent is likely just a prompt.
* **Beware the "helpful" model trap:** Know that AI always tries to find *something* to suggest to feel helpful. Don't get bogged down in endless trivial suggestions that don't add value. Recognize that AI is programmed to be "helpful," and returning nothing feels like a failure of that mission. 
* **Avoid sending "AI slop" to SMEs:** Don't waste your engineers' patience by sending them unverified AI drafts. Use every verification strategy first so they're only reviewing high-quality work. The more you send high-quality drafts for review, the more reviewers trust your content.

## 8. Focus on tasks that require human ingenuity {#focus-on-tasks-that-require-human-ingenuity}

Keep your value by focusing on those tasks that can't be automated by AI. They could be architectural changes, product narratives, flows through the system, among other things. Avoid attaching too much value to tasks that can be automated away, because once you can automate those tasks, you're no longer important to keep around.

* **Re-allocate your time:** Free up cycles from simple fixes (dead links, outdated field names, minor formatting) to focus on ambiguous, high-level problems like information architecture, design integration, and content strategy.  
* **Split your bug queue.** In your bug queue, label the bugs in a way that separates the easy ones (can be automated) from the hard ones (requires human input and decision-making). For the easy tasks, use a Gemini button in your browser to take a crack at fixing the bug. The first steps are most difficult. Sometimes just getting some initial movement/activity on the bug is enough to make it less intimidating. Example: A bug might sit for months because it seems unactionable, but AI might connect it to a related engineering ticket with the info you need to easily make the update.  
* **Embrace the unsolvable (by AI):** Direct your expertise to the problems AI can't touch: synthesizing complex, conflicting information, establishing a cohesive voice, and applying domain knowledge to prioritize content that matters most to the business.  
* **The doc bug is a symptom:** Treat automated bug-fixing as an opportunity to analyze *why* the bug occurred. If AI is constantly fixing a certain type of error, it signals a systemic issue in your documentation or development workflow that needs a human-led solution.

## 9. Design your docs for machine consumption

Users will increasingly use AI to query your docs, so you've got to think about how your content is being consumed by the machine.

* **Shift from UX to machine consumption:** You don't always need traditional user studies. You can watch how an AI parses your info and design tests to see if details are surfacing correctly.  
* **Create retrieval-optimized files:** Use tools like an llms.txt file to provide high-level summaries and metadata specifically for LLM intake.  
* **Structure for parsing:** Use clear subheadings and chunked information to help AI navigate your docs. 
* **Run through eval loops.** Use eval loops to test your content against a set of questions and score the response; then make fixes and run it through the same loop.  
* **Test with retrieval tools:** Use NotebookLM or similar platforms to see how your content performs when a machine is trying to extract specific details.

## 10. Think beyond your role

Don't let a narrow job description limit you. Use AI in ways that lead to new opportunities, expanding into design, engineering, or complex problem-solving.

* **Look for impressive moments:** The fun of working with AI is finding those tasks you didn't think were possible, and then doing them. Stay alert for those breakthrough moments that change what you thought was possible. 
* **Don't just stick to style updates:** It's easy to get stuck doing small-scale work like grammar fixes. Instead, look for "unlock" opportunities where you can put this massive brainpower to work.  
* **Step into the engineering realm:** Use AI to fix problems with build tools or submit patches. For example, you might fix build tool issues and fill in missing parameters for dozens of elements in reference docs that would've otherwise stayed empty.  
* **Go from napkin sketch to deployment:** You can take a faint idea, ask AI to turn it into a detailed prompt, and then use that prompt in another model to execute on the idea. In other words, use the machine to better prompt the machine.
