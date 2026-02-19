---
title: "The Emerging Picture of a Changed Profession – Cyborg Technical Writers: Augmented, Not Replaced, by AI"
permalink: /blog/cyborg-model-emerging-talk
date: 2026-02-19
categories:
- ai
- technical-writing
- writing
keywords: 
rebrandly: https://idbwrtng.com/cyborg-model-emerging-talk
description: "I'm giving a presentation at Louisiana Tech University on March 30, 2026, on what I'm calling the cyborg model of technical writing. This post provides some more detail and notes about the presentation."
image: 
published: false
---

* TOC
{:toc}

## Presentation details

I'm heading out to Louisiana Tech University on March 30, 2026, to speak to students and faculty there. My presentation is as follows: 

> **The Emerging Picture of a Changed Profession – Cyborg Technical Writers:
Augmented, Not Replaced, by AI**
> 
> At the height of AI's hype cycle, there was a sense that, given the pace of accelerating improvement, it wouldn't be long before AI fully assumed the technical writer role. However, even as AI has ramped up from hallucinating bot to capable content generator, full end-to-end automation remains elusive. Automating a single complex process (among many that a role performs) often falls short due to uncorrected missteps along the way or looks like a fragile Rube Goldberg machine, only working in perfect and limited circumstances.
> 
> Instead of tech writers being replaced by automation, the picture that's emerging in 2026 is one of a hybrid role — a cyborg technical writer. Daniela Amodei, co-founder of Anthropic, says “I continue to believe that humans plus AI together actually create more meaningful work, more challenging work, more interesting work, high-productivity jobs.” In this cyborg model, the writer and machine engage in a continuous back-and-forth—a partnership that leverages the machine's analytical processing and pattern recognition while relying on human steering, review, and verification. In short, the tech writer isn't being replaced by AI, but rather augmented by AI as a co-partner in developing documentation.
> 
> Because of the trends toward augmentation over replacement, technical writers should look to work closely with AI tools to improve the integration. There are at least 10 principles that tech writers can use to augment their roles with AI, working as cyborg technical writers. The principles go far beyond simply operating the machine.

## Reasons for arguing for the cyborg model {#reasons}

Ever since I was invited to speak to students and faculty (at the request of Kirk St. Amant, who teaches at Louisiana Tech), I've been mulling over what I should say. I mean, if you were invited to go into a university and help students + faculty understand today's workplace and what skills and concepts students would need to know to succeed, what would you say? 

After deliberation for a few months, I realized what I wanted to say: the model that's emerging is a cyborg model of technical writing, a humans + AI combination. This is in contrast to the many articles, which now seem to come at an even faster pace, saying that AI will replace humans. I realize there's a lot of opinion on this debate, but I have a strong argument for why the model is humans + AI (cyborgs) rather than replacement: almost no tech writers at my work have automated complex processes using AI. And in my own use of AI over the past few years, the model that's emerged is clearly a close intertwining of machine and human interaction to produce content. 

AI can only automate granular subtasks within a larger process. The idea that you could replace a human tech writer with an agent is ridiculous because the agent can't even fix a simple bug on its own. Unpacking the details of an example after example would probably be worthwhile here, but I hardly have the patience for this. 

Because I'm not seeing automation of processes, I find myself increasingly frustrated at conversations about replacement. I feel they're not grounded in any kind of reality. Yesterday I was listening to Hard Fork's episode [‘Something Big Is Happening' + A.I. Rocks the Romance Novel Industry + One Good Thing](https://www.nytimes.com/2026/02/13/podcasts/something-big-is-happening-ai-rocks-the-romance-novel-industry-one-good-thing.html?showTranscript=1). I usually love listening these hosts, but in this episode, except for a few brief acknowledgments about the uncertainty of knowing future trajectories, the hosts seem to go fully along with the idea that human replacement is on the short horizon. Unsurprisingly that they're focusing on software engineers rather than journalists and podcasters being replaced. Isn't it easier to imagine how someone else's job can be automated, but not your own?

This is what I can't understand: How can the replacement model be viable when automating a single single complex process from end-to-end isn't being done, despite many trying? I've sunk the most time into trying to automate release notes. I write more than 100 release notes for various products each year. I have a process for automating parts of the release notes, which I described in [Using file diffs for better release notes in reference docs](https://idratherbewriting.com/ai/prompt-engineering-release-notes-reference-docs.html). I initially tried to create combination of scripts and prompts that would automate nearly everything, but it failed. The issue is that problems near the start of an instruction, if not caught, corrupt later iterations. You need a human in the loop to verify and check and fix things at each step along the way.

Consider this example. I have a script that gathers file diffs for all changed files in the release. From those changes, an instruction file prompts an AI to create summaries. But what happens if some of the file diffs are incorrect because engineers committed a change to a release stage that they later rolled back? For example, perhaps they removed a release stage label that said a feature was "Launched" in the proto comments, but then decided not to actually launch said feature, but to keep it in preview. (I'm just thinking about my most recent release notes.)

The automated release notes miss this rollback and promote the idea that the feature launched. Little issues like this happen in nearly every release. It might not be an incorrect release stage, but a thousand other problems.

We're at the same point with automation right now as autonomous cars. Autonomous driving is only possible on well-traveled, predictable roads with little variation or surprise, on routes that have been mapped and re-mapped, test driven and re-driven and constantly monitored. In the tech writer role, there are some repeatable tasks that are like well-traveled roads (for example, a weekly report), but more often, the tech writers find themselves going down many new roads each day, each with their own unexpected twists, turns, and bumps. The route isn't the same; the road varies. That unpredictability makes automation difficult, requiring the frequent human steering and input to avoid crashing.

Until more tech workers have actually automated complex processes end-to-end, I'd like for the industry to more readily acknowledge a different model that better describes reality: the cyborg model. This cyborg metaphor comes from a research paper called [The Jagged Edge](https://www.hbs.edu/ris/Publication%20Files/24-013_d9b45b68-9e74-42d6-a1c6-c72fb70c7282.pdf), which I referenced in my [book review of Co-Intelligence](/blog/book-review-co-intelligence-mollick) and explained in my post [Why attitudes and experiences differ so much with regards to AI among technical writers](/blog/plurality-of-ai-attitudes-experiences). In short, the cyborg model is humans + AI working together; the machine augments, not replaces, the human. The human augments the machine. This cyborg model describes nearly every tech writer who uses AI: there's a frequent back-and-forth collaboration to produce content.

This cyborg model is the message I want to share with students and faculty. Humans aren't being replaced; humans are using machines to augment their work.

The next question is how to use those machines effectively to augment the work. This is another huge topic: it's not a push button process. In fact, I argue that augmenting your work with AI machines requires a highly sophisticated understanding of models and their behavior, strategic thinking, systems thinking, automation engineering, and more. There are many tech writers who fail with AI and can't figure out how the tools work, how to integrate them into their workflows, how to become the 5x tech writer using them. If students want to succeed in the workplace, they have to figure out how to better integrate with machines to achieve the cyborg workflow.

In this post, I'll try to dive into 10 skills a cyborg technical writer needs to excel in the current technical landscape.

## 10 principles for the cyborg technical writer {#10-principles-for-the-cyborg-technical-writer}

### 1. Bring AI to the table for everything

This idea comes from Ethan Mollick in his book *Co-Intelligence*. He says you shouldn't pre-judge what AI can or can't do; instead, treat every task as a test of its capabilities to find the "jagged edge."

* **Find the jagged edge:** AI is often great at hard things (like writing complex algorithms) but might fail at easy things (like simple math). You won't know where that line is until you test it.  
* **Treat failure as a learning moment:** Don't just give up if a prompt fails. See it as an opportunity to learn what the model's currently capable of handling.  
  * **Example of success:** Info was missing, met with engineers and got an explanation, took pic of whiteboard diagram, fed transcript \+ diagram into Gemini, and generated docs were great.  
  * **Example of failure:** Generated code samples for an SDK. AI might generate code samples that look correct, but if they're hard to verify without the right info, it's not always the best use of time. Code samples aren't recommended unless you also plan to test them. Then at some point, you're doing what engineers should be doing.  
* **Develop intuition through regular use:** You'll build a gut feeling for when to chunk data, when to use few-shot prompting, when to use multi-stage processes, etc. You'll know when AI can hit a home run with a task vs. when it will likely strike out (at least for now — the models are always changing).  
* **Test multi-modal capabilities daily:** Try things like fixing images or transcribing audio. Capabilities change fast, so what failed months ago might work today.  
* **Push the boundaries of computer vision:** Experiment with how well models read native text vs. image-based PDFs or how they handle JSON vs. other formats.  
* **Learning to identify strengths:** Use AI's strength in identifying patterns across massive, unstructured data sets. See my series on [what works, what doesn't](https://idratherbewriting.com/ai/docapis_ai_what_works_and_doesnt.html).

### 2. Learn the tools

We're in a "Pre-cambrian explosion" of tools where many life forms won't survive. It's a moment where we're trying a lot of different tools, form factors, approaches, etc. for the industry, and you've got to be agile. You've got to have a learning mindset and not be threatened when you have to abandon a tool for another. You should freely do so, transferring your AI-interfacing skills across different surfaces and form factors. There's at least a new tool coming out each day.

* **Don't get wedded to a single tool:** You might spend weeks mastering a CLI tool, only to come back from vacation to find a new internal tool has completely eclipsed it.  
  * **Example:** Colleague who was championing Gemini CLI; went on 3-week vacation, returned and found everyone raving about \[internal version of\] Antigravity. Next month, a new iteration is formatting. You could see the look of dismay on people's faces. Do we do another tools workshop (this time with less hype)?  
* **Understand the knobs and dials:** Understand all the knobs and dials of the various tools, what kind of info they read, their capabilities (can they read bugs, changelists, internal docs), what they can or can't do. Then you'll know how to pick the right tool for the job.  
* **Understand MCP capabilities:** If the tool has MCP integration, which MCP servers are integrated? What tools and resources does the MCP server offer? How many tools should you enable, and what happens if you overload the configuration with too many enabled options?  
* **Find your go-to interface:** Explore different modes like the side pane in your IDE (e.g., Gemini Code Assist, or Antigravity), browser-based web apps (e.g., Gemini web app), Chrome extensions (Gemini extension), Gemini button in Google Docs, etc. to see what fits your workflow. You might find different tools are better suited to different situations.  
* **Explore specialized modes:** Within the same tool, especially the Gemini web app, there are diverse options such as Deep Research, Canvas, and more for different scenarios. Even the infographic button is extremely interesting. Get familiar with the options.  
* **Prioritize ecosystem integration:** Explore tools that are baked into platforms you're already using, at different touchpoints (such as when you're submitting changelists or reading bugs).

{% include ads.html %}

### 3. Understand model behavior

Develop a sense of understanding for model behavior, its quirks and strengths, where things frequently go wrong or right, and more. 

* **Every AI session is unique.** Sometimes you'll get a "smart" instance and other times a "dumb" one, so you've got to be discerning. Analogy: Like a family of people. Sometimes you get the smart aunt; other times you get the dumb uncle. Other times you get the straightspeaking grandpa, etc.  
* **Figure out input token limits.** How much is the input token limit? Some tools, like NotebookLM, perform much better when you upload files rather than just pasting text. Gemini on the web, however, handles much more input text than NotebookLM. Can you paste in 10,000 words, or will the tool choke? Which input method does the model seem to prefer?  
* **Watch for "disappearing" content:** Keep an eye out for hallucinations where entire paragraphs might vanish during a rewrite. Example: You ask to make content more readable only to realize, a few iterations later, that several chunks are missing. You need ways to see what's actually changed.  
* **Watch for the "middle-skipping" problem:** Be aware that if you upload a massive file, the model might only read the beginning and end while ignoring the middle. Middle skipping is common. (Side note: How does this affect how you chunk your own docs for AI consumption? Do you lean towards small chunks instead of keeping context through length?)  
* **Audit the thought logs:** Check the model's internal "reasoning" to see if it encountered friction or if it's just guessing because it couldn't access a resource like a file diff. Reading the thought logs is revealing about some issues. Maybe the model has a high degree of autonomy, so even when it encountered an issue (e.g., couldn't access the file diff log so just skipped it and decided to write the release notes anyway), you can better judge the consequences of that action (e.g., release notes output will likely contain hallucination). You can also see what the tools can access or can't access (can it create a bug? Can it read comments on a bug?), and how they think.  
* **Verify search results:** If you point a model at a directory, check if it's actually processing every file or just performing a limited search. How is it parsing through 200 files? What's the behavior if you paste all the content into a consolidated file versus when it scans the directory? Is it creating a search for key files and then pulling from those returned files, or is it doing something more?  
* **Manage context and token limits:** Know that as the conversation grows and the token threshold gets exhausted, you might want to start a new conversation. Monitor how many tokens your current conversation has. What happens when you start to get to that threshold? Does the AI start to go haywire? But at the same time, this context you've built up is likely valuable and you don't want to lose it. How do you preserve the context from one session to the next? Do you want to preserve the context, or do you want a fresh start so the model isn't biased toward the previous conversation turns?  
* **Use agentic steering:** Provide agent markdown instructions (such as GEMINI.md) to guide model behavior and prevent it from repeating the same mistakes (like outputting cliche words such as “crucial”). How much does the model follow the guidelines in the agent markdown file? How should you write those agent instructions? How long should that agent markdown file be? What gets obeyed versus ignored, and how do you fix it?

### 4. Provide the right context

Providing the right context is "context engineering," and file diffs are a key strategy for getting accurate, useful outputs.

* **File diffs are helpful source of truth:** Don't rely solely on engineers to write down notes in Google Docs. Pull file diffs directly from change lists to see exactly what's changed. In engineering, everything has a changelist, and every changelist has a file diff.  
  * Example: My release notes process is heavily dependent on looking at file diffs. Works extremely well and means not only can I avoid the typical info collection task with engineers, the information is a lot more accurate and comprehensive as well.  
* **Watch out for PRD pitfalls:** If you feed a model a Product Requirement Doc that describes the full vision but you're only releasing version 1, the AI will likely "hallucinate" features that aren't there yet. Maybe the app only releases an MVP version and doesn't have half the features in the PRD.  
* **Avoid design doc confusion:** Engineering design docs often list non-implemented alternatives that can confuse an LLM; you've got to vet what's actually in the code. Engineering design docs might list 3 different implementations along with pros and cons of each. If you feed this into the AI session as context, you risk having this info misinterpreted (maybe the AI thinks option 2 was implemented, not option 3).  
* **Focus on the API reference:** API docs are the best, most reliable source of truth for tech writing. While API docs often exceed token limits, they are my go-to source. If docs can't be verified with API reference, then what exactly are you writing about? Usually only a minority of content falls into this category, like policy content, or unintuitive details about the data returned from the API. Using API reference material as context also prompts you to make fixes in the source files, bringing you closer to engineers.  
* **Understand what vs. why limitations.** Use file diffs for the bulk of the work, but dig into scenarios where you also need the “why,” such as back-end performance or design changes that might not be obvious from the code alone. Despite the promotion of file diffs as a helpful source of truth, it doesn't mean you should ignore the limitations. Understand when you also need the “why,” and when simply describing the “what” falls flat. But also, most of the time, product teams don't want to explain the “why” to users (e.g., why did we deprecate this field? Well, it never had any data anyway; it was redundant with another field; or we misspelled the name).

### 5. Develop domain expertise

The cyborg model of using AI means working collaboratively and iteratively, using AI as a thought partner. You can only collaborate like this when you have a general knowledge of the subject.

* **Engage in higher-level "back-and-forths":** The Cyborg model means you have a lot of back-and-forth iteration in a continuous way. You can't do this if you don't have any domain knowledge/understanding of the product. Expertise allows you to move past simple questions and have meaningful, iterative refinements with the AI.  
* **Make podcasts from emails:** Use NotebookLM to turn boring partner update emails into interesting podcasts for your commute. Can't emphasize how amazing these podcasts are from NotebookLM. I often glance or skim these partner updates if reading them, but when I listened to the podcasts, it sounds like a drama or thriller is happening.  
* **Connect the dots:** You're making a thousand micro decisions all day, especially if you're frequently steering and iterating with AI. The more you know, the more you can connect the dots across different documentation decisions, architectures, processes, etc. Example: You might have heard in a partner update that one partner is struggling with data in a specific region; based on that, when you see a bug come in related to a verification tool, you can see the connection between the two.   
* **Steer through misalignments:** Think of the "home repair" analogy: a novice gets stuck if the AI's advice doesn't perfectly fit, but an expert can steer the AI back on track. See the research on this in my post on [Why attitudes and experiences differ so much with regards to AI among technical writers](https://idratherbewriting.com/blog/plurality-of-ai-attitudes-experiences#domain-expertise).   
* **Prioritize with understanding:** Knowing the domain helps you decide which features are coming soon and which ones deserve the most real estate in your docs. Every tech writer role I've had, I had flexibility to decide what I wanted to spend more time on, what I cared most about. Having domain expertise allows you to better make those decisions. (E.g., you might realize that autonomous driving is highly important in the industry, so you spend more time on lane-level features in your docs.)

### 6. Automate repeatable processes

Build a strategy based on whether a task is deterministic or probabilistic.

* **Deterministic tasks:** Use shell scripts for rigid actions like gathering file diffs or building API outputs. Deterministic scripts are fast, predictable, and don't require the AI to think.  
* **Probabilistic tasks for complex updates:** Use AI for tasks that can't be scripted in a programmatic way. Example: Update API diagrams that have hundreds of elements, matching the diagram to the latest docs using iterative rounds.  
* **Reflection loops:** Use AI to fix its own instructions. After each iteration, ask AI to evaluate the instructions against frictions it encountered (noted in its thought logs). Improve the instructions and try the script/instruction again. Keep looping around until the output is perfect.  
* **Consistency as a confidence signal:** Run the same probabilistic task across different models or tools. If you're getting consistent results, you know you're on the right track. You might want to run the same probabilistic instruction 5 times until you feel confident it's right.  
* **Apply instructions to batched files:** If you've got 200+ pages of docs, you'll need to chunk the material and run your prompts across batches to stay thorough. Sometimes these tasks can't be deterministically scripted, so you need to create instructions files for agents and run the prompts as many times as needed in batches. Again, these workflows defy deterministic scripts.

### 7. Apply verification strategies

AI generates content almost instantly, making verification the slowdown point. You've got to build a system to catch mistakes.

* **Grounding in source material:** Check all AI assertions against the API reference or engineering changelists.  
* **Run "fresh session" checks:** To verify an output, run the same prompt in a completely new session. If the model reaches the same conclusion without previous context, it's more likely to be accurate.  
* **Train a verifier agent:** Consider having a second AI agent act as the verifier for the first. (To do this, you'll need to train the verifying agent specifically on what to look for. In reality, the verifying agent is likely just a prompt.)  
* **Beware the "helpful" model trap:** A will always try to find *something* to suggest to feel helpful. Don't get bogged down in trivial corrections that don't add value. Recognize that AI is programmed to be helpful like this.  
* **Avoid sending "AI slop" to SMEs:** Don't waste your engineers' patience by sending them unverified AI drafts. Use every verification strategy first so they're only reviewing high-quality work.

### 8. Focus on tasks that require human ingenuity {#8.-focus-on-tasks-that-require-human-ingenuity}

Keep your value by focusing on those tasks that can't be automated by AI. They could be architectural changes, product narratives, flows through the system, or whatever. Avoid attaching too much value to tasks that can be automated away, because once you can automate those tasks, you're no longer important to keep around.

* **Re-allocate Your Time:** Free up cycles from simple fixes (dead links, outdated field names, minor formatting) to focus on ambiguous, high-level problems like information architecture, design integration, and content strategy.  
* Split your bug queue. In your bug queue, label the bugs in a way that separates the easy ones (can be automated) from the hard ones (requires human input and decision-making).   
* **Let AI take the first crack at easy tasks.** For the easy tasks, use a Gemini button in your browser to take a crack at fixing the bug. The first steps are most difficult. Sometimes just getting some initial movement/activity on the bug is enough to make it less intimidating. Example: A bug might sit for months because it seems unactionable, but AI might connect it to a related engineering ticket with the info you need to easily make the update.  
* **Proactively identify knowledge gaps:** Instead of being bogged down in the *what* (the bug), you can focus on the *why* and *how* (the underlying user friction or missing documentation). This transforms you from a reactive fixer to a proactive partner.  
* **Embrace the unsolvable (by AI):** Direct your expertise to the problems AI can't touch: synthesizing complex, conflicting information, establishing a cohesive voice, and applying domain knowledge to prioritize content that matters most to the business.  
* **The doc bug is a symptom:** Treat automated bug-fixing as an opportunity to analyze *why* the bug occurred. If AI is constantly fixing a certain type of error, it signals a systemic issue in your documentation or development workflow that needs a human-led solution.

### 9. Design your docs for machine consumption

Users will increasingly use AI to query your docs, so you've got to think about how it's being consumed by the machine.

* **Shift from UX to machine consumption:** You don't always need traditional user studies. You can watch how an AI parses your info and design tests to see if details are surfacing correctly.  
* **Create retrieval-optimized files:** Use tools like an llms.txt file to provide high-level summaries and metadata specifically for LLM intake.  
* **Structure for parsing:** Use clear subheadings and chunked information to help AI navigate your docs. I  
* **Run through eval loops.** Use eval loops to test your content against a set of questions and score the response; then make fixes and run it through the same loop.  
* **Test with retrieval tools:** Use NotebookLM or similar platforms to see how your content performs when a machine is trying to extract specific details.

### 10. Think bigger (beyond your role)

Don't let a narrow job description limit you. Use AI in ways that lead to “blow-your-mind” opportunities,  expanding into design, engineering, or complex problem-solving.

* **Look for impressive moments:** The fun of working with AI's finding those tasks you didn't think were possible—stay alert for those breakthroughs that'll change your workflow.  
  * **Example:** Writing a book review of a complex book. I found a PDF of the book and fed it to Gemini along with my draft review. In minutes it read the book, analyzed the arguments against my draft review, and provided good feedback.   
* **Don't just stick to style updates:** It's easy to get stuck doing small-scale work like grammar fixes. Instead, look for "unlock" opportunities where you can put this massive brainpower to work.  
* **Try an “app a day” challenge:** A colleague of mine built an app every day for 20 days using AI. You don't have to be an engineer to create expansive tools. Think beyond the confines of your role and boundaries.  
* **Step into the engineering realm:** Use AI to fix problems with build tools or submit patches. I've personally fixed build tool issues and filled in missing parameters for dozens of elements in reference docs that would've otherwise stayed empty.  
* **Go from napkin sketch to deployment:** You can take a faint idea, ask AI to turn it into a detailed prompt, and then use that prompt in another model to actually build the app. It's about augmenting your feeble human speed with massive capability.