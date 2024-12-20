---
title: "Using AI to mine log messages from reference doc builds"
permalink: /ai/prompt-engineering-mine-log-messages.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-12-19
rebrandly: https://idbwrtng.com/prompt-engineering-mine-log-messages
---

I've previously written about identifying processes to automate and leveraging AI to help build automation scripts &mdash; see [Creating scripts to automate doc build processes](https://idratherbewriting.com/ai/prompt-engineering-doc-build-scripts.html). In this post, I want to explore another aspect of automation: mining logs generated by these scripts. When you run scripts to build reference documentation, numerous log messages appear in the terminal. What if you could capture the most significant messages and take action on them?

At my workplace, our homegrown reference documentation build tools generate extensive terminal logs. The terminal logs indicates where code deviates from engineering style guidelines, where documentation is missing, where metadata is incomplete, and other issues. It's tempting to ignore these log messages since they scroll by quickly in the terminal and don't prevent a successful build. After all, if the docs look fine at first glance, what's the problem?

As an API technical writer, I'm specifically interested in one type of log message: warnings about missing documentation. Engineers often forget to add comments describing elements in the API. While the generated output might appear complete, when you look more closely, you can often find elements that list only the element name, with no descriptions.

For one of the SDKs I support, which includes eight different APIs managed by separate teams, I suspected numerous elements lacked proper documentation. Manually reviewing the logs for each biweekly release was too tedious, so I turned to AI for help. Here's the approach I took.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Step 1: Store logs in separate files

I already had scripts running the reference doc builds. With AI's help, I enhanced these scripts to write log messages to separate files instead of just displaying them in the terminal. Now, each time I run the build script to generate reference documentation, it populates dedicated log files for each API in the SDK.


## Step 2: Extract warnings from log files

Since the log files contained a lot of noise, I needed to isolate the meaningful content. I created another script to identify and extract warnings, which include style deviations, missing documentation, and other issues. These warnings are saved to separate files for further processing.


## Step 3: Compile the warnings

After collecting the warning logs, I developed a script to consolidate all warnings into a single file, organizing them under API-specific headings for better readability.


## Step 4: Use AI to identify documentation gaps

With these scripts in place, I now have a clean list of warnings ready for AI analysis. I use a prompt like this:

<div class="chat">
<div markdown="1">
You're a helpful AI assistant reviewing a log of warnings related to API documentation and code quality. Analyze the provided text and identify any warnings that specifically indicate **missing or incomplete documentation**. Ignore warnings related to code style, naming conventions, build processes, or other non-documentation issues.

For each documentation-related warning you find:

1. Quote the full warning message.
2. State the API and the specific element (class, method, field) that has missing documentation.
3. If possible, suggest what type of documentation is missing (description, parameter details, return value).
4. Present your findings in a clear and organized manner, grouped by API.

Here's the text to analyze:

[PASTE IN COMPILED WARNINGS LOG]
</div>
</div>

## Step 5: File bugs for missing documentation

Once I have an AI-sorted list of missing documentation organized by API, I create bugs and assign them to the appropriate engineers. While some teams might initially resist, when I present the argument that an API reference should be complete, with all fields documented, they have little to say.

## Step 6: Track progress with TPM reports

The final step, which I'm still working on incorporating, involves creating a biweekly report for our technical program manager (TPM) that lists all outstanding documentation bugs assigned to engineers. This oversight helps ensure engineers address the documentation gaps promptly. In my case, the TPM offered to be the "bad guy" and make those engineers who aren't addressing documentation issues more uncomfortable. If you can find a documentation champion like this who can surface the inattentiveness of engineers and spur them into action, definitely use them.


## Conclusion

Overall, don't ignore log messages when you build reference documentation, especially if those log messages contain meaningful information such as missing documentation. While my multi-script approach might seem over-engineered, it provides organized, reviewable files listing all messages, not just documentation warnings. I could simplify the process by writing the entire log to a single file and using AI to identify missing documentation warnings. However, I have a goal to learn more about different parts of the log messages beyond just missing documentation. Who knows what other interesting information might provide more insight into the API.
