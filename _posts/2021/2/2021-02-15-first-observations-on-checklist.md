---
title: "10 observations after using my API documentation checklist in a real scenario"
categories:
- technical-writing
- apidoc-site-updates
permalink: /blog/observations-using-checklist/
keywords: product overviews
description: "I recently published a comprehensive checklist for evaluating documentation quality (the section starts <a href='/learnapidoc/docapis_measuring_impact.html'>here</a>). In this section, I noted that my perspective is more evolving and experiential, which was good to note because when I tried to actually use the checklist, I realized a few shortcomings that I needed to address. Here are my 10 observations."
rebrandly: https://idbwrtng.com/checklistobservations
---

## Observation 1: Two levels for checklists

Many characteristics for docs can only be assessed when you're much more familiar with the docs. For example, you can't know if the steps are accurate unless you go through the steps. You can't know if the docs are consistent unless you've read all the documentation. You can't know if the code works unless you can run it in a test environment. It might take more than a year working with the docs to be able to make these kinds of assessments. In fact, you can't even tell if screenshots or other visuals are accurate without more familiarity. Because of this, I separated the checklist into a [first-level checklist](/learnapidoc/docapis_metrics_first_level_checklist) and a [second-level checklist](/learnapidoc/docapis_metrics_second_level_checklist).

The first-level checklist identifies criteria that you can evaluate without much familiarity with the content. For example, you can see if there's a getting started tutorial, a product overview, code samples, etc. Then later, in the second-level checklist, you can assess whether the instructions are consistent from topic to topic, whether the code in the tutorials matches any sample apps available, whether the terms listed in the glossary match usage in the docs, and so on.

## Observation 2: Limit the scope

Another realization: Developer portals are collaborative spaces where a lot of different writers interact, and you might own only a small piece of the portal. For example, there might be docs for 20 different products, with many different contributing teams. You might own docs for 2-3 products only. The user journey, however, might span the entire portal. Despite this, it's too daunting to focus on the entire portal in an initial assessment. It's more realistic to focus on the scope you own (for example, a couple of tabs). Some discussion of the larger context is unavoidable, but I recommend limiting the initial scope to something more practical and within your stewardship.

## Observation 3: The checklist does a wonderful job at opening up a critical look at API docs

Although one of my motivations was to create metrics around quality, as I did an initial assessment of the docs I'm working on, I found that the checklist does a wonderful job in opening up a critical view and analysis of the documentation. It opens up a more critical perspective that lets you slice up different dimensions and aspects of the docs. Regardless of whether the scoring and quantitative metrics goes anywhere, the set of characteristics provides an incisive way to investigate doc quality.

If you're looking to audit a site and get a sense of what should be improved, try going through the [checklist of questions](/learnapidoc/docapis_metrics_first_level_checklist.html). You'll have a lot to think about this way, and it provides a more structured approach than random observations.

## Observation 4: Quality varies from topic to topic

It's hard to make sweeping statements about doc quality that apply to an entire site. As I was reading through the docs that I'm working on, it became clear that different parts were written by different writers because the styles varied dramatically. One section involved single-page docs while another had more chunked articles, for example. Some reference docs seemed to follow standard conventions while others didn't, and so on. If one product has decent docs while another lacks docs, how do you score the documentation? One tutorial might be excellent while another tutorial has all kinds of problems &mdash; so how would you score the tutorials as a whole?

This is probably why so many writers dismiss metrics and user feedback. If users say the docs suck or rock, it's probably in regards to the few topics they used rather than the docs as a whole. At any rate, as you go through your analysis, note the scope and areas that influenced your judgment.

## Observation 5: Copying this web page into a Google Doc requires a lot of reformatting

I originally copied the list of criteria into a Google Doc so that I could write my observations for each item, but then I had to do a lot of reformatting. I also realized that tallying up scores was tedious in a Google Doc document. As a result, I created [two templates for working with metrics](/learnapidoc/docapis_metrics_templates.html). I created a simple HTML doc that can be easily pasted into Google Docs or Microsoft Word where you can add more narrative assessments. I also created a spreadsheet (CSV file) that has scoring logic &mdash; you can import it into Google Docs or Microsoft Excel.

The spreadsheet has some formulas under the hood that multiply the score by weight and also calculate the overall score against the total possible score. (Don't get too excited about the formulas &mdash; I'm not a spreadsheet maven, and the logic is really simple. However, these templates are [single-sourced from a YAML file in my Jekyll site](/learnapidoc/docapis_metrics_templates.html#behind-the-scenes). This is the first time I've generated out a spreadsheet from YAML content. It's surprisingly easy to do in Jekyll &mdash; see the [source logic here](https://github.com/tomjoht/learnapidoc/blob/main/_docs/metrics_and_measurement/docapis_metrics_first_level_checklist_csv.csv).)

## Observation 6: Weighting shouldn't be ignored

I originally sidestepped the question of weighting different criteria in my checklist, but after some feedback from a colleague, I decided to incorporate weighting. Weighting can't be ignored. For example, good reference documentation is more critical than consistent naming of doc types. Tutorials and descriptions of key use cases are far more important descriptive subheadings.

Someone told me that whenever you introduce metrics, the focus shifts to ways to manipulate the metrics. Whenever you apply a score to content, the easiest way to influence the score's number becomes the focus. This is why weighting seems important here &mdash; so that people don't fiddle with descriptive subheadings at the expense of describing key use cases and code samples.

But how much weight per criteria, and how do you apply the weight to the score? In my revision, I included weights ranging from 1-3 that get multiplied by the score (0-5). This means that for more important criteria in the docs, their score can be 15, while less important criteria can score only 5. If you need to omit one of the criteria because it doesn't apply, put its weight as 0 in the spreadsheet. This will remove it from the overall score calculations.

Because weighting is a highly subjective area, in [the spreadsheet templates I created for calculating scores](/learnapidoc/docapis_metrics_templates.html), you can easily adjust the weighting as you see fit and the other calculations will follow.

## Observation 8: Checklists aren't scannable

Checklists should be more scannable. I added bold summaries for each checklist item to make it more consumable at a glance. I also moved all the content into YAML files to separate the title from the description to make it easier to generate the templates.

## Observation 9: Page was too long

My initial page on measuring impact was about 8,000 words. I'm impressed that so many people actually read it from beginning to end. However, I decided to make the content more readable by breaking it up into multiple pages, especially now that I have two checklists. I moved the content out of the processes section into its own section on [Metrics and measurement](/learnapidoc/docapis_metrics_and_measurement). Now this section is about five pages total.

I plan to expand this section with additional info on metrics that go beyond documentation quality, though I don't have definitive plans for topics. I'm still trying to figure out what actually works when measuring API documentation quality. I'm not there yet. (My content in this course is on the practical &mdash; the techniques should actually work in practice, not just be theoretical.)

However, I have an idea about some other topics. Some people have asked for guidance on analyzing and interpreting web metrics, such as time on page or most popular pages. That will probably be my next focus.

## Observation 10: We're always too busy writing the next article to focus on the whole

It seems that as tech writers, we're always busy writing the next article rather than taking time to step back and analyze the whole. We usually have a large backlog of tickets to work through, and the tickets just keep stacking up. (In fact, the more docs you write, the more people see you as a valuable resource and so they start giving you more tickets. Conversely, if there's no one to do the work, there's no point in filing a ticket.) It's hard to find time to even do a site analysis like this against a checklist because no one is asking for it.

About the only time this audit/analysis/evaluation is warranted is with yearly goals, performance evaluations, or special initiatives. It took me about a day to go through all the checklist questions in the first-level audit, and during that time I let other doc needs pile up. However, I'm confident that this analysis will provide more a more strategic approach over the next year. I now have a clear list of improvements to focus on.
