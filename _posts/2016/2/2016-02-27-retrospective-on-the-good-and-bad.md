---
title: "Retrospective &mdash; Looking back at the good and bad of previous experiences"
categories:
- technical-writing
keywords: retrospective, evaluation, best practices, learning
description: "As I move into my new job, one goal I have is to learn from the experiences at my former job and improve this time around. I want to avoid repeating the same mistakes but also remember to build on those things that worked. This post is a retrospective look at the good and bad of previous experiences."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/retrospectivethumb.png
---

Although I'll likely implement this learning naturally and unconsciously, a good blog post that lists out the things I did well versus the things I wasn't so pleased with seems like a good idea.

Of course I can't go into too many details here, and I want to acknowledge that each tech and company environment (with different products, users, markets, requirements, and so on) is unique. What worked or didn’t work in one environment may not work so well in another.

<div style="max-width:500px;">
<figure>
<object type="image/svg+xml" data="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/retrospective.svg" | prepend: site.baseurl}}">Your browser does not support SVG</object><figcaption>The purpose of this retrospective is to look back at previous experiences in order to move forward more productively in the future.</figcaption></figure>
</div>


## Things I wasn't so pleased with

Here are some things I wasn’t so pleased with while working at my former job.

* **Implementing a system that is too complicated for others to immediately understand.** I think the Jekyll implementation could have been simpler and easier. Perhaps I could have simplified requirements and used Jekyll more like it was designed to be used.
* **Producing PDF deliverables at great cost to efficiency but with little usage.** Both designing the PDF generation process through Jekyll and then generating PDFs with each build was time consuming. I’m not sure they were used all that much compared to the online docs, though I didn’t have good usage metrics to make more informed decisions.
* **Living with "good enough" solutions because there's never any time to do things better.** Here I’m referring to those annoying things that one just does (like publishing docs on Salesforce) because there’s no immediately better solution but which becomes the norm because the effort to change things requires more time and energy than just maintaining the status quo each time.
* **Waiting until the end of the documentation process to create visuals, and then not really creating many of them.** Visuals (diagrams, illustrations, workflows) help clarify ideas. Visuals shouldn’t be the last thing I create, but rather should be as a tool for clarifying processes and other complex workflows from the start.
* **Not integrating entirely into the scrum process as other engineers.** Although I integrated well into scrum, engineers had a more full integration (for example, they were more involved in sprint planning, each JIRA item had calculated story points per sprint, and they had tight deadlines to close tasks with each sprint). I think doc is better off following the same agile/scrum pattern as other engineers.
* **Not getting enough feedback from customers or understanding their pain points.** The distance between me and the users was too great. I should have poked my head into user circles more forcefully to gather more direct feedback. Relying on scant info from product managers and field engineers didn’t give me the information I needed to make better decisions.
* **Creating a separate output for each platform instead of consolidating docs into one centralized output.** Creating separate outputs for each programming language and version resulted in a ton of different outputs that became somewhat of a headache to manage and review. I separated the content out like this based on recommended feedback, but I think I could have implemented better controls within one output that helped address the concerns. It’s nearly impossible to review the outputs for 18 different deliverables, which means the chances of having formatting errors, broken links, or other problems is much more likely.
* **Not testing out legacy documentation myself until too far into my time at the job.** Testing out some of the doc required virtual machines, Linux and IIS installations, and a lot of setup. I allowed legacy content to exist far too long before rolling up my sleeves and trying everything out myself. Once I did, I made major edits.
* **Focusing too much on tools and not enough on content development.** One of the reasons I was hired at my former job was to move content from one system (PDF) to an online website model, so I spent a lot of time playing around with different tools and approaches. You probably saw this on my blog. (Readers would often write to ask what system I was implementing *this week*.) Well, I wish I could have minimized the time spent on tool development and spent more time with content development from the start.
* **Not implementing a continuous integration model for documentation.** The idea that doc is published at regular release cycles and not touched in between is a fallacy that needs to be completely stamped out. Doc should be continuously deployed so that when you want to make an update, you commit something to a repository and the system rebuilds your docs automatically. This lightweight, agile deployment process is the way to go, I’m sure of it.
* **Not diving deeper into the subject matter domain.** I wish I had dived a bit deeper into the core domain of the subject I was writing about, becoming as knowledgeable as product managers and other SMEs in the field. This kind of immersion is often difficult due to the wide variety of projects tech writers have to handle, but I think I could have done a better job in becoming a product SME.


## Things I did well

Here are some things I did well.

* **Integrating into the agile process and understanding how to plug into team workflows.** Although I mentioned I wanted to be even more integrated with agile/scrum, I think I did an awesome job in plugging into projects. Each doc task was a JIRA item that was part of a specific product, usually assigned to a specific sprint. Understanding the scrum process and how it was implemented allowed me to quickly understand what teams were working on and what documentation needed to be written or updated, and when.
* **Getting engineering resources to build the authentication model we needed.** Although I did all the Jekyll theming and implementation mostly on my own, the identity access management (authentication) component wasn’t something I wanted to pour resources into tackling. I did an awesome job getting engineering buy-in and support to help with a solution. Sure it took engineers a long time, but I stuck with it and I think in the end it worked well.
* **Embedding directly with engineering teams to be a more fully integrated team player, with trust and rapport.** I like being a part of engineering teams, embedded right there alongside product managers, quality assurance engineers, and developers. I built a strong sense of trust and rapport with the teams. I don’t like it when writers are grouped in their own space and interact mostly with each other, separated from the engineers. The closer I am to the source of engineering truth, the better my docs become.
* **Moving to the static site generator model with Jekyll.** I love writing in Markdown in text-file formats using Jekyll. I’m glad to ditch the CMS model in favor of a much more lightweight, flexible architecture. Although Jekyll does have some drawbacks, such as not managing your links, it’s a small price to pay for the freedom to work in code. Jekyll is the way to go for docs.
* **Collaborating with the team through version control with a common repository everyone commits to.** At some point we made a team decision to all work in the same repository. This turned out to be quite cool, despite the occasional merge conflict. It’s neat to see what other writers are working on, and to coordinate and interact in the same project space.
* **Holding daily team standups in the morning using virtual conference tools.** This wasn’t my idea, but it turned out to work quite well. Video chats in the morning, restricted to a 15-minute standup, helped provide the camaraderie and coordination with our distributed doc team that I think worked surprisingly well (for our small team size). Although I said writers work best when embedded with engineering teams, writers do need some support from other writers &mdash; but beyond the daily standup and weekly team meeting, this was usually enough.
* **Coordinating documentation reviews with remote teams.** There are dozens of approaches I’ve tried in getting docs reviewed, and I finally found what works. I identified the engineer who coded the feature, sent the engineer one or two links to the page containing the doc, and then gave the engineer a day or two to get back to me. I learned that you should never send blanket emails to the entire team asking for reviews of massive amounts of documentation, because it will never happen. If you have lots of pages, send them to the engineers as you finish them, breaking up the review process around smaller chunks of content.
* **Leveraging vectors from the The Noun Project to create professional-looking diagrams and illustrations.** [The Noun Project](https://thenounproject.com/) is one of the best kept secrets for creating professional looking vector graphics. When you combine this library of vectors with Illustrator, creating sharp-looking diagrams and other illustrations is a breeze.
* **Implementing all the virtual machines needed to test out complex code on multiple platforms.** At some point I learned to have a healthy distrust of documentation, and this distrust served me well. Simply trying to walk through steps and processes myself instead of relying on engineer-supplied content or legacy explanations is probably the single most important thing for a technical writer to do in a developer doc environment.
* **Integrating SwaggerUI for the REST API content.** The interactive UI that Swagger provides for REST endpoints makes an amazing contribution to documentation. The Swagger spec isn’t hard to learn, though it does take some careful study (for perhaps a week or two). Once you get it down, the Swagger UI can be a huge asset in the docs that engineers love.
* **Using JavaScript to create some form generators to make things easier.** This may be a small thing, but I used JavaScript to create some custom form generators to help users construct an authorization header parameter value. These forms became so useful that both product managers, QA, and field engineers came to rely on them.

## My goals for next time

Based on my retrospective of these past experiences, here are a few general principles that I would do well to remember as I embark in my current adventure:

* Get close to customers.
* Trust nothing — test everything yourself.
* Use visuals from the start.
* Plug into scrum as engineers do.
* Keep doc systems as simple as possible.
* Dive deep into content, not doc tools.
* Get metrics on doc usage to inform decisions.
* Keep doc nimble and continuously deployable.


