---
title: "Forrester Report, Coding jobs, Hyper-personalization, RFPs, Call center replacement (Oct 9, 2023)"
permalink: /blog/links-from-web-oct-9
date: 2023-10-09
categories:
- ai
- api-doc
- jobs
- writing
- news
keywords: 
rebrandly: https://idbwrtng.com/links-from-web-oct-10
description: "The following are links from around the web for October 10, 2023."
---

Articles listed here include the following:

* TOC
{:toc}


## Generative AI Is Coming for Sales Execs' Jobs—and They're Celebrating

Oct 5, 2023 <br/>
WIRED [LINK](https://www.wired.com/story/generative-ai-chatgpt-is-coming-for-sales-jobs)

* Generative AI tools like ChatGPT are being used by companies like Twilio and Google Cloud to automate drafting responses to RFPs (requests for proposals), saving sales teams significant time.
* The RFP bots access relevant company info and use AI to generate polished responses, with humans reviewing and making final edits. 
* While fears persist about AI automating jobs, sales teams welcome the relief from RFP drudgery. More bids may be sent as productivity rises, and RFP questions could soon be AI-generated too.

The RFP bots seem highly applicable to tech comm. However, one difference is that the RFP bots are used by sales agents to get the answers from the bot before adding to the RFP. In most documentation scenarios, people want user self-service, so that users can directly find those answers themselves. It's unlikely that a company would allow users to directly access internal documents, many of which might have outdated, confidential, or inappropriate information for users. In both scenarios, there still needs to be a human present.

The sales execs celebrate the RFP bot because, according to the Twilio CEO, "This will free up our solutions engineers to focus on more complex problems that demand not just reasoning, but human contextualization." The idea is to have AI eliminate the drudgery while freeing up time and energy to focus on more complex problems.

The author explains, "They devised a method that pairs a program that retrieves snippets relevant to the questions in an RFP from technical documentation and other sources the company with a system that directs GPT-4 to summarize those snippets in a clear and professional tone. GPT-4 proved capable of generating extremely accurate responses—though solutions engineers and technical experts still review or edit every answer before sending them off to a prospective client." 

In my experiments with AI, I tried to follow a similar approach by gathering all relevant documents related to a bug, adding them into a Google Doc that I fed into Notebook LM, and then querying Notebook LM to look for the answer. See [Use cases for AI: Distill needed updates from bug threads](https://idratherbewriting.com/learnapidoc/docapis_ai_fix_bugs.html). It worked all right, but I ran into several problems:

* Some data might be too confidential to add into the AI tool, thus limiting the scope. 
* Some data contains alternative approaches considered but not implemented, which can confuse the AI. 
* There's always a hallucination factor that makes it difficult to trust the AI's response without verifying it. That verification requires reading through the source material to confirm the answer, which negates some of the time savings.

In contrast to other CEOs who replaced staff with AI, Twilio says, "We're not reducing these roles, because with the time saved these teams can address more RFPs and spend more time interacting with and helping more customers than before…" With this saved time, one employee says he "dreams of focusing on the more complex and rewarding work of solving sales prospects' problems, while bots swap information about buyers' priorities and vendors' capabilities."

What are the more complex and rewarding tasks you would tackle with respect to documentation if you no longer had to spend time searching, gathering, and curating the answers?

---

## CEO roasts human workers he fired and replaced with ChatGPT, by Victor Tangermann

The Byte, [LINK](https://futurism.com/the-byte/ceo-roasts-human-workers-he-fired-and-replaced-with-chatgpt)

* Suumit Shah, CEO of Indian e-commerce company Dukaan, fired most of his customer service team and replaced them with a ChatGPT-powered bot.
* Shah claims the bot is "100 times smarter" and far cheaper than the human workers. He roasted the former employees as inferior to AI.
* The brazen move signals a dystopian future as more companies follow suit in replacing human roles with AI, devastating jobs like call centers globally.

If call center jobs evaporate, this might actually increase the importance of documentation &mdash; reason being, rather than having call center agents provide answers, the AI would provide answers instead that it culls from documentation sources. And where would that documentation come from, if not from technical writers?

AI tools need valid sources from which to pull information. But rather than having polished, navigable documentation, perhaps tech writers could simply quickly curate the answers into a large repository whose primary function isn't to be read by end users but rather to provide an input source for an AI to pull answers, dynamically transforming the source information into coherent, legible responses rendered in real time to users questions. This is what I wrote about in my post [AI chat interfaces could become the primary user interface to read documentation](https://idratherbewriting.com/blog/ai-chat-interfaces-are-the-new-user-interface-for-docs). 

For AI tools to provide intelligent, accurate responses, the input source needs to have the information. And that's why I think technical writers remain important while other roles might be reduced.

{% include ads.html %}

---

## ChatGPT Isn't Coming for Your Coding Job 

Sept 17, 2023 <br/>
WIRED, [LINK](https://www.wired.com/story/chatgpt-coding-software-crisis/)

* New technologies like compilers and AI assistants can aid developers, but history shows they don't replace them.
* Attempts to eliminate programmers often just add complexity, increasing the need for their skills.
* While AI may speed up tasks, it can't understand codebases or requirements like engineers do. 
* Coders have always adapted and become more vital, and AI will likely expand, not threaten, programming work.

I didn't realize that "programmers" were originally seen as lowly, menial jobs to support "engineers." (Today the two titles are mostly synonymous.) The gist of the article suggests that technological evolutions only compound and amplify the need for more technology experts.

What technological revolutions do, the article explains, is automate some of the work. The author writes, "More reasonable suggestions show that large language models (LLMs) can replace some of the duller work of engineering. They can offer autocomplete suggestions or methods to sort data, if they're prompted correctly." To use an analogy, AI gives mathematicians a calculator rather than replacing the role of mathematicians.

The author notes that some employers might look to reduce staffing numbers and still expect the same or more productivity from workers. But chances are, the work won't recede; it will only increase, thus negating the ability to eliminate roles. 

The author writes,  "ChatGPT could still upend the tech labor market through expectations of greater productivity. If it eliminates some of the more routine tasks of development (and puts Stack Overflow out of business), managers may be able to make more demands of the engineers who work for them. But computing history has already demonstrated that attempts to reduce the presence of developers or streamline their role only end up adding complexity to the work and making those workers even more necessary."

---

## The Hyper-Personalization of Everything, by Rex Woodbury

October 4, 2023, Digital Native <br/>
[LINK](https://www.digitalnative.tech/p/the-hyper-personalization-of-everything)

* The rise of individualistic culture and new technologies like AI are leading to hyper-personalized products, services, and experiences. Consumers increasingly expect offerings tailored specifically to them.
* Successive innovations enabled more personalization, from mass production in the Industrial Revolution to online fragmentation and niche communities. AI will take it even further.
* Hyper-personalization brings benefits like better customer alignment, but risks exacerbating loneliness and over-customization. The ideal is balanced between individual customization and shared community.

I'm sorry that I keep relating everything to AI, but it's hard not to interpret the possibility of hyper-personalization of documentation without it. I recently wanted to learn more about Javadoc tags, and I asked ChatGPT to create a [custom course all about Javadoc tags](https://idratherbewriting.com/learnapidoc/docapis_ai_learn_coding.html). It was pretty awesome. I think we're starting a new era of hyper-personalization, as the author describes. 

We regularly hear how good help content should offer different paths for novices and advanced users. Or we deliberate whether we should insert extensive side notes in tutorials given that the info might not align with what users need to know. Or how we should customize the documentation of APIs within the context of specific industry use cases and scenarios. Few people have time to create different versions of help content, given that tech writers typically are understaffed for the work. But AI tools offer the promise of hyper-personalized documentation, without extra work required by tech writers.

---

## Forrester's 2023 Generative AI Jobs Impact Forecast, US

August 30, 2023, Forrester <br/>
[LINK](https://regmedia.co.uk/2023/09/06/forrester_gen_ai_report_pdf.pdf)

* Generative AI will reshape 4.5X more jobs through influence rather than full replacement. While 2.4 million jobs may be lost by 2030, over 11 million will be augmented but not eliminated.

* Generative AI will primarily affect white collar office and administrative support roles, especially jobs requiring college degrees and middle-income salaries. 

* The report lists "technical writers, social science research assistants, proofreaders, and copywriters" as some of the most likely jobs to be automated and replaced rather than simply augmented or influenced.

This report paints a grim picture for the future of technical writing, suggesting that it is a role more easily automated than other types of jobs, even editor. Other roles will more likely be augmented rather than replaced by AI, but apparently not technical writing. Here's the heart of the report:

> Generative AI will influence 4.5 times more jobs than it replaces. By 2030, we forecast that generative AI will influence more than 11 million US jobs, or 4.5 times the number of jobs replaced (see Figure 3). Influence is different from job loss. It means reshaping, retraining, and upskilling existing workers to incorporate generative AI tools into the daily workflow. Jobs that are easier to automate that also have high generative AI influence, such as technical writers, social science research assistants, proofreaders, and copywriters, are more likely to be lost. Harder-to-automate jobs with high generative AI influence, such as editors, writers, authors and poets, lyricists, and creative writers, are more likely to influence how jobs are conducted (via augmentation) rather than replace them. 

Here's a graph showing technical writers in the quadrant where tasks are both subject to influence and automation:

<figure><a class="noCrossRef" href="https://regmedia.co.uk/2023/09/06/forrester_gen_ai_report_pdf.pdf"><img src="{{site.media}}/forresterreporttws.png" alt="Forrester report foretelling automation of tech writer roles in the future" /></a><figcaption>"Influence And Automation Potential Together Yield Job Losses"</figcaption></figure>

The report doesn't explain _why_ the researchers think technical writing can more easily be automated, nor does it define what it means by technical writing, but we can speculate as to the reasons why:

* Most documentation follows a plain, voiceless style that is easy to imitate in contrast to more creative or artistic voices.

* AI tools do a good job at simplifying complex information into more readable language, even including examples as needed.

* Editors perform higher-level tasks like shaping story narratives, ensuring consistency/quality, and providing critique. These tasks involve more general intelligence and human judgment, which are harder to automate. In short, editing requires more creativity and subjectivity.

* Technical writing follows more structured, formulaic templates and guidelines. This makes the output more predictable for an AI system to generate. 

* Technical writers don't necessarily create original ideas, but rather distill and communicate technical information created by others. Generative AI can analyze source material and rewrite it in different ways.

* Technical writing has a more definable, consistent output and quality criteria. In contrast, editing quality for other types of writing can be more nuanced and contextual.

So yeah, I can see why Forrester might say that technical writing is at a higher risk of automation and job loss than other roles like editor (presumably a book or magazine editor, *not* a technical editor). I'm guessing that the model for technical writing might involve engineers using AI tools to do the writing, rather than delegate the work to technical writers. 

The Forrester researchers say that we're in a two-year holding pattern right now until some ethical questions get sorted out:

> In our model, we assume that job losses from generative AI over the next two years will remain modest until questions on intellectual property rights, copyright, plagiarism, model refresh rates, model bias, ethics, and model response reliability are resolved.

In my recent post, [What I learned in using AI for planning and prioritization: Content strategy might be safe from automation](https://idratherbewriting.com/blog/content-strategy-safe-from-automation), I suggest that technical writers should emphasize content strategy roles because these roles require more complex, analytical thought that is harder to automate. But even if you pivot from tech writer to content strategist within your role, if your job title is still "technical writer," will that pivot even matter?

Although I've never really pushed back hard against the title "technical writer," it might be time to abandon it. The assumptions baked into the "technical writer" job title assume that one spends most of one's time writing technical information. The many other aspects of the job are overlooked. For example, you might be doing a ton of [developer experience content strategy for your developer portal](https://idratherbewriting.com/learnapidoc/docapis_dx_content_strategy.html), but if most people think you just edit and publish text that engineers provide to you, when the grim reaper starts swinging the layoff ax, the presumed lightweight role might be first to go.

Changing job titles, though, is difficult because most companies have extensive rating and review systems based on carefully defined job roles at each level. A "Technical Writer IV" is much more of a content strategist than a "Technical Writer II," but are people outside of tech comm familiar with those differences? The Technical Writer IV lives in ambiguity and complex projects, while the Technical Writer II might focus mainly on editing and publishing. 

This Forrester report is depressing and frustrating, but it's good to read now rather than later. If the Forrester report is credible, in two years, if we don't recast our role as something more complex and analytical, our role has a high risk of being automated.