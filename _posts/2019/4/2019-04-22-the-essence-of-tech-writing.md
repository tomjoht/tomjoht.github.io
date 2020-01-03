---
title: "The essence of technical writing, and my five stages of review for documentation"
permalink: /blog/essence-of-technical-writing-five-stages-of-review/
categories:
- technical-writing
keywords: documentation review.
bitlink: https://rebrand.ly/essenceandstagesofreview
description: "The essence of technical writing is in making a complex product work from beginning to end. In my doc process, I push content through five stages of review, but this first one, which includes my own review, is the most important."
---

## The essence of technical writing

As I was working through a lengthy set of docs today, testing out the steps (again), expanding places that were confusing, correcting details, making sure everything worked, I felt a sense of accomplishment and realized that the essence of technical writing, at least in my experience, really boils down to a couple of key activities:

* Getting a complex product to work based on the instructions I've written
* Understanding and articulating the areas of complexity

I've written at length about the importance of [testing your docs](/learnapidoc/testingdocs.html), but this point seems to be brushed aside all too often. If I myself can't make something work based on the instructions I'm writing, how can I possibly expect users (who in this case, are developers) to make it work?

Again, it's a lot easier to say this than do it. Many times, to test a product you're documenting, you might need to do a lot of setup and development work in building an app or related service. In my current project, I had to troubleshoot a buggy Fire TV app, adjust configuration in places, fix a number of errors, and so on, until I finally started seeing it work from end to end.

With API documentation, often times to test docs, you ensure that a JSON message is sent, based on the request parameters. The API I'm currently documenting isn't so straightforward, because the request is actually triggered by users who say Alexa commands. The commands get parsed by Alexa in the cloud, which interprets the request (with natural language processing) and generates a JSON message (called a "directive") to a Lambda function on AWS (serverless computing). The Lambda function then has to take some action based on the JSON, and then communicate the message to the app.

Where do you draw the line as far as testing? Is it enough to ensure that the JSON is received as documented, or do you keep going, building up the app that will act on the JSON in some expected way, such as playing requested media?

## Five stages of review

In many ways this initial testing of instructions relates to the review process. In defining our quality assurance process with docs, we formalized five stages of review:

* **Stage 1: Review with the doc team**. Here is where we make the product work for ourselves, based on the instructions we've written. We install it, configure it, run it, fire off messages, etc. If we can't make it work (to some extent anyway), it doesn't pass this first test of our doc team review. (We have a goal of including peer reviews at this stage, but we haven't quite done that yet.)
* **Stage 2: Review with the product team**. Next we review the content with the product team. This might involve engineers or product managers looking through the material. They usually catch inaccuracies or missing information, but they're terrible at identifying assumptions. They're blind to all sorts of things and assume too much pre-knowledge and technical ability from users.
* **Stage 3: Review with the field engineers and support group**. Now we expand the review to include field engineers and support, widening the circle of stakeholders. Field engineers work closely with partners, so they're more aware of gotchas and other issues. Support has their ear open because they'll be expected to answer threads on the topic. Both field engineers and support will be using the docs with their interactions with customers, so they want to be sure they're accurate and complete.
* **Stage 4: Review with Legal**. I don't always review content with Legal, but I've come to recognize red flags when they exist. Legal usually has little to say except to avoid using the term "platform," or to be careful around policy statements. If the release includes any GitHub repos, we make sure Legal has their hand in any frontmatter disclaimers or licenses.
* **Stage 5: Review with beta partners**. The next step is to review the content with early release or beta partners and collect their feedback. For the most part, the info trickles back to product managers, who are often eager to see their product be received as successful and launch it. At some point I'd like to include rating surveys in the docs and require a certain level of user satisfaction before the product can be considered "done," but I haven't done there yet.  

We do iterate on content post-publication, but by the time the content has gone through five levels of review, we usually catch all the main issues. The remaining updates might be small additions here or there, or eventual drift as the product evolves and the engineering team doesn't keep us updated.

Despite these five levels of the review, the most important part of the review process starts with the initial doc team making the product work, refining and clarifying and rewriting the steps that take a user from beginning to end. When I have confidence with the product, I can more easily move through the remaining stages of review.
