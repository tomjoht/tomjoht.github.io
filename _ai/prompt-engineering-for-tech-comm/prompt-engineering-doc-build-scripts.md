---
title:  "Creating scripts to automate doc build processes"
permalink: ai/prompt-engineering-doc-build-scripts.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-03-02
rebrandly: https://idbwrtng.com/
---
{% comment %}
{% include coffeeshopbook.html %}
{% endcomment %}

Documentation scripts perform processes such as building reference documentation or doing other repeated processes with docs. This tutorial builds on the conceptual content in <a href='/ai/ai-tools-build-publish-api-docs.html'>Use cases for AI: Develop build and publishing scripts</a>. In this tutorial, I get more specific with strategies and techniques for prompts.

* TOC
{:toc}

## Provide context, language preferences, and constraints

The first step is to provide some context for the AI. Let the AI know the scenario, what you want to do, the tools and language you're using, the expected output, and so on. This context is necessary for the AI to make good recommendations for the script. In any situation, there are usually a host of implicit details and context that we know but don't make explicit to the AI, leading to the AI's responses missing the mark for our scenario.

One basic detail is the script language. Which language should the AI use and why? If you don't specify this from the start, the AI will likely recommend a language or platform you might not want to use or can't use.

I've mostly used shell scripts for my tasks, but Python would probably be a great option for more robust tasks. Shell scripting is part of Unix-based systems and can access the operating system's utilities. It's lightweight, doesn't need extra installations, and works well for tasks like file manipulation, running commands, and basic control flow.

Python, on the other hand, is easy to read and has many built-in and add-on tools. It can handle complex data and create well-structured scripts. But, as an interpreted language, Python may be slower than compiled languages for some tasks. Additionally, Python might require some modules that you don't have installed, requiring more setup.

Here's a prompt to get you started:

<div class="chat"><p>I'm a technical writer publishing Java reference documentation for MyCompany, which uses a homegrown build system called ACME-Builder. I need your help in creating a documentation build script using Shell syntax, which can be run on Linux systems. I'm not a shell expert and only have minimal familiarity with shell syntax, so make it easy for me to understand...</p>
<p><i>Don't submit the prompt yet. We're going to add more details to it.</i></p>
</div>

## Provide tool documentation for the AI

Although AI tools probably have training on Shell, Python, and other languages, if you have specific documentation to augment the AI's understanding, paste it into your session. This is especially important if you're working with a custom tool at your company. Gather up this documentation and pass it in as context. For example:

<div class="chat"><p>The tools used to build documentation at MyCompany are custom tools. So that you have the necessary understanding for how to work with these tools, I'll paste the documentation in here. Here's the documentation for working with ACME-Builder:</p>
<p>
[paste in ACME-Builder's docs]
</p>
</div>

To signal an end to the docs, just add a few dashes.

## Break down the script into small steps

Just like when writing documentation, you reduce complexity by breaking the larger task down into smaller sections and steps. Your script might grow to a respectable size later, but start with a high-level outline of the various sections or steps. Identify all the logic that you want the script to process.

For example, your script might involve a few general sections. Let's continue the prompt above.

<div class="chat"><p>At a high-level, the script you write needs to have the following logic:</p>
<ul>
<li>Get the branch for the build candidate and switch into that branch</li>
<li>Build the reference documentation from that branch</li>
<li>Transfer the built files from the build directory to the documentation directory</li>
<li>Switch out of the candidate branch back into the workspace directory</li>
<li>Error check the content for formatting and other issues</li>
<li>Stage the content</li>
</ul>
<p>We'll proceed section by section through the script, handling these tasks one at a time. Don't write anything just yet&mdash;I'll give you more detail about each section.</p></div>

## Use a blend of natural language and pseudocode

Now that you have the general steps and script logic, flesh out each step with some natural langauge and pseudocode. Pseudocode is just a natural language description of what the code is doing. Natural language communicates the broader objectives and context, while pseudocode provides a structured blueprint for the AI to follow.

For example, let's write some pseudocode for this first step.

<div class="chat"><p>For this first step&mdash;Get the branch for the build candidate and switch into that branch&mdash;here's some pseudocode that goes into more details.</p>
<p>Switch into the candidate branch by passing in the release version number into acme-builder [release version number] command.</p>
<p>The response will be a branch name. Capture that name as a variable.</p>
<p>Switch into the branch name using cd.</p>
<p>Print the branch out using echo commands.</p>
<p>Once we're in that branch, we can move on to the next step.</p>
</div>

More explicit pseudocode style would require more familiarity with the syntax and commands. If you can be more explicit, great. But chances are you might not know those specific details&mdash;that's okay.

After the AI tool provides some code, it usually explains what's going on. Take time to try to read and understand the explanations. Avoid falling into the syndrome of just copying and pasting the response and moving on to the next step. Seriously, this is an opportunity to learn code that's relevant and applicable to your role as a technical writer. I also guarantee you that at some point, things won't work or you'll hit a snag, and you'll need to have some sense of what's going on to troubleshoot it.

## Test out the code

Make sure that the first step works. Shell scripts are easy to test because there's usually no setup required. Just run it in your terminal with real data and see if it works. 

I like to use echo commands to print things out. That's why I included the following line in the previous prompt: “Print the branch out using echo commands.” By printing out variables and other details, you can ensure the code is working. Without verifying that certain variables are being populated, you might assume that your code switched into the release branch when in fact it didn't and just keep moving along to the next line.

Additionally, echo statements help you identify exactly where the script goes wrong if it breaks. For example, if you choose to exit the script if it breaks (by putting `set e` at the start), your echo print statement can tell you at which point things stopped working.

## Continue building out your script

After verifying the initial section works, move on to the next section and continue as I've demonstrated until you make your way through the entire script. As I mentioned in previous prompt engineering articles, such as this one on [meeting notes](/ai/prompt-engineering-summarizing-meeting-notes.html) the key is to go section by section. Don't try to have the AI write the entire script at once. It'll probably fail at some point, and it will be much harder to troubleshoot if you're building it out section by section.

## Layering complexity

As you make your way through to additional sections, your script's complexity will grow. I encourage you to start simple and add these layers of complexity incrementally. The additional layers won't necessarily be added sequentially in your script. Usually variables are defined at the beginning, for example. So chances are, the AI will start adding more and more complexity to your script in different areas with each iteration.

One feature you'll probably run into is the AI tool's “laziness.” The AI tool might not rewrite the entire script each time with the added functionality but simply point out what to add/update and where (especially if the script is long). If you want the AI tool to insert those additions or updates and rewrite the entire script, you'll probably need to tell it explicitly to do this. 

Additionally, keep in mind the output constraints of the AI. Most AI tools don't output more than 500-1,000 words at a time, so if you're script is long and complex, you might max out the AI's memory. If that happens, tell the AI to “keep going” or to “continue writing the entire script until finished.” 

It depends how resource-constrained the AI is, but if the AI's truncation/laziness gets really annoying, you might just prefer to add in the newly written sections to the updated script yourself. I often copy the script into another text editor (like Sublime Text) and make updates manually there.

{% include ads.html %}

## Overcoming snags

At some point, the script generated by AI won't work. You'll see an error in your terminal and will need to troubleshoot. You might try pasting the error message into the AI and asking it to fix it, but this might lead to an endless loop of pasting in error messages, getting updated code from AI, and getting new error messages. AI can go down some serious rabbit holes like this. At that point, you need to get more strategic about overcoming the snag.

Here are a few ways you could try to overcome a snag. These aren't necessarily AI techniques:

* **Search the error message in AI tools and on forums.** Often if you search for the error message in quotes, you can find relevant help material about overcoming it.
* **Post your error on a forum and hope/pray that someone responds.** Reach out to the ACME-Builder team with a plea for them to respond to your forum post.
* **Look in your company's code base for similar code.** If your company has a monorepo with shared visibility, search this code for similar commands and logic. Take time to learn how to properly search a large codebase using the searching rules and syntax.
* **Look carefully at your code.** Don't abdicate your own troubleshooting skills. Go line by line and really think through what's going on and what's happening. If you have a gut feeling that something might be wrong with a certain area (perhaps you felt some concern there at one time but ignored it), focus on that area.
* **Ask a developer.** Start your question like this, “Hey [name], there's something I can't figure out…” Most developers love a challenge like this. It intrigues them like mice to a cat. They will at least want to know what you can't figure out. Since you're a tech writer and they're a developer, their confidence is often sky high that they can easily answer your question.
* **Ask other technical writers.** You're probably not the first tech writer who has ever encountered this error. You might have many tech writers spread across different groups and organizations at your company. Send your query into the tech writing lists and groups.
* **Ask other interest groups.** Maybe you have a Shell interest group, or a Python group, or an ACME-Builder tool group. Send your query out to these groups. Tip: About half the time, as you articulate out what you're trying to do and the error you're experiencing, the answer dawns upon you. So take the time to carefully write it all out, hoping that you'll find illumination by articulating the problem.
* **Take a break and come back to it later.** Usually when I'm banging my head troubleshooting an error, I'm not in a problem-solving state. Robert Pirsig has tremendous advice for troubleshooting in _Zen and the Art of Motorcycle Maintenance_. First, slow down your internal state so you're not all balled up and frustrated inside. Stop rapidly trying different commands and combinations of commands like a monkey typing on a typewriter. Meditate, then slow down enough to patiently learn. Empty your mind of assumptions, and listen to your inner guiding voice, or Quality, about what's wrong. Solutions are often obvious in hindsight. I wrote about some of these techniques in my [Zen and the Art of Motorcycle maintenance series here](/zamm/bleeding-my-brakes-inner-calm.html).
* **Approach the problem in another way.** If all else fails, try skinning the cat another way. There are usually half a dozen or more valid approaches through the same problem. Try another path.

## Documentation your script

As a final step, after you've got a working script, document it. You probably won't need to explain much on your own&mdash;you can likely just ask AI to document it for you. You'll need this documentation when you want to enhance or fix the script next year, and you'll have completely forgotten how it works. Use a prompt like this:

<div class="chat"><p>Can you document this code at a high level, explaining how it works?</p></div>

You can also just add documentation comments inline, which might be even better.

## Additional reading

See [Using AI to mine log messages from reference doc builds](/ai/prompt-engineering-mine-log-messages.html).