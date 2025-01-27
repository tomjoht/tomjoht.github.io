---
title: "Using AI with issue tracking systems"
permalink: ai/prompt-engineering-issue-tracking-systems.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2025-01-26
rebrandly: https://idbwrtng.com/prompt-engineering-issue-tracking-systems
---

To make a somewhat strange analogy, I think that issue tracking systems are like the *intestines* of an IT organization&mdash;through these channels, nearly all information flows: bugs, iterations, priorities, user issues, release blockers, needed information, and more. For this reason, this series on prompt engineering would be incomplete if I didn't examine whether and how AI techniques could be used as technical writers work within these channels.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Information available in issue tracking systems

Issue tracking systems, also known as bug trackers like JIRA, contain a plethora of useful information for technical writers. For example:

* Bugs usually have an associated changelist that indicates what code changes were made as a result of the bug. These code changes can be mined for file diffs.
* Bugs indicate who the key SMEs are associated with the information. These contact points are key sources of information and review.
* Bugs indicate the priority and severity of the issue. If they're tagged correctly, they can guide you about what you should be working on.
* Bug components indicate which team owns the issue. Bugs are often filed into different components owned by specific teams.
* Bug hotlists indicate how the information is classified (e.g., into component workstreams) or iteration hotlists. A release blocker hotlist, for example, or an iteration hotlist, can help indicate priorities.
* Bugs can often sometimes function as shadow bugs for internal discussions of externally filed partner bugs. You can glimpse into the world of your users through the bugs they file.

Given the importance of issue tracking systems, what opportunities are there to leverage AI here? In this session, I'll explore 5 ways to use AI with issue tracking systems.

## 1. Require abundant context for documentation intake requests

The first strategy is to make the documentation intake (presumably using the same issue tracking system as other bugs) as full of contextual information as possible. In your documentation intake request, try to extract as much detail as you can from the person filing the bug. Reason being, you can feed this context into AI systems to get a better handle on the bug, resolution, and needed doc update.

Think about how many bugs are likely sitting in your queue for months on end because the bugs are vague, require information you don't have, or are missing other contextual details. If bugs don't include enough information, they aren't actionable for tech writers. As such, although it might seem painful to ask so much information from requesters, the pain required up front will lead to a much more actionable task for the tech writer.

For example, if engineers fixed a bug, they should include the associated changelist (aka pull request) with the doc bug request. With the changelist, you can run a git diff command to get a file diff of the changes, and then pass those changes into AI for a summary of the bug. This technique works tremendously well when writing release notes—extend the same principle when working on tickets outside of release notes. But if engineers don't include the related changelists in requests, it puts much more work onto the technical writer.

Here's a generalized version of my documentation intake:

Please provide answers to all questions below. The more info you provide, the less outreach is needed. You don't have to elaborate much in this bug -- just provide links to everything where we can get the details. If the question doesn't apply for the bug you're filing, skip it.

> 1. Which release is this for?
>
>    [ ] Release 1 <br/>
>    [ ] Release 2 <br/>
>    [ ] Release 3<br/>
>    [ ] No particular release<br/>
>
>2. What priority is this issue?
>
>    [ ] P0<br/>
>    [ ] P1<br/>
>    [ ] P2<br/>
>    [ ] P3<br/>
>
>3. Which API is this related to?
>
>    [ ] API X<br/>
>    [ ] API Y<br/>
>    [ ] API Z<br/>
>
>4. If the bug is for XYZ SDK, which implementation does it apply to:
>
>    [ ] Implementation 1<br/>
>    [ ] Implementation 2<br/>
>    [ ] Implementation 3<br/>
>    [ ] Not sure<br/>
>
>5. If this is an API update, provide the related bug from the API committee and one-pagers presented to the committee.
>
>6. Does this feature have a launch entry page? What is it?
>
>7. Are there any relevant Google Docs related to this request? (For example, two-pagers, engineering docs, product requirements documents.)
>
>8. Are there engineering bugs and partner-facing bugs related to this doc request?
>
>9. Are there any engineering changelists (pull requests) related to this update?
>
>10. Are there any email threads that you can PDF and attach here (or forward)?
>
>11. Are there any meeting notes that describe the issue?
>
>12. What proto or public class files are being changed in this update? (Reference docs are generated from protos or Java source files.)
>
>13. Write the release note for this update. It doesn't have to be well-written -- this just gives us a sense of the scope and a gist of the update.
>
>14. What release status is this feature or update?
>
>     [ ] Experimental<br/>
>     [ ] Early Access<br/>
>     [ ] Integration Ready<br/>
>     [ ] General Availability<br/>
>
>15. Does the field/method, etc. appear in other APIs? Which ones?
>
>     [ ] API A<br/>
>     [ ] API B<br/>
>     [ ] API C<br/>
>
>16. Does this update require an update to the attribute diagrams?
>
>17. Does this change affect any code samples in the documentation?
>
>18. Who should review and approve this content before we submit the changelist? Include any relevant partner engineers as well.
>
>19. Who's the SME for this info who can authoritatively assess the documentation?


## 2. Read long bugs quickly

Reading long bug threads can be somewhat exhausting, especially when the threads extend infinitely. Check to see if your workplace has a browser extension that has AI integration that will send the bug to an AI API and return a summary in response. This kind of extension is becoming more common. I find myself immediately clicking these extensions to read the summary and get a quick gist of the bug.

Even without the extension, you can just copy and paste the bug into an AI model that supports a long token context and ask for a summary of the issue. Most bugs that engineers file lack the careful description of the issue and needed action for tech writers to take. AI tools can help make sense of vague or poorly written bug requests.

Now instead of spending 10+ minutes trying to get a handle on an issue, I can grok the issue in a minute or so.

## 3. Identify priority bugs

Assuming you have 100+ bugs in your queue, one question to answer is which bugs you should prioritize. Beyond prioritizing bugs based on upcoming releases, one way to prioritize them is by cross-referencing doc bugs with user-filed bugs. Focusing on bugs that users filed tends to improve user satisfaction scores, so it's a good way to orient your documentation ship.

Figure out the right bug components to look through (the components with bugs that users or partners have filed). Export the information in a format for AI tools to read (e.g., CSV). Then export your own list of documentation bugs. With these two lists, you can now use a prompt like this:

<div class="chat">
<div markdown="1">
I'm a technical writer trying to figure out which doc bugs to focus on. I have two lists&mdash;the first is a list of bugs that users have filed. Only some of these bugs indicate a need for improved documentation (most of the user-submitted bugs are due to missing features or glitchy behavior). The other list includes all the documentation bugs already in my queue (filed by engineers, product managers, sometimes myself, etc.). 

Find those documentation bugs that correspond with some user bugs or issues. Indicate the corresponding user bug. Additionally, if there are user bugs that don't have a corresponding documentation bug, let me know what they are.
</div>
</div>

AI tools do a great job combing through massive amounts of information and finding themes. They can summarize bugs in rapid fire and quickly point you towards bugs you should focus on.

Note that this approach might only be necessary if your technical program managers don't do a good job of tagging and routing documentation-specific bugs your way. Ideally, you shouldn't have to go spelunking in other bug components to see if there are documentation requests in bugs. All the documentation-related bugs should be routed your way due to good processes and awareness from other teams.

Thus, this effort might only be worthwhile if your own bug queue is somewhat sparse, or if users are dissatisfied and you don't know exactly why, but perhaps you suspect that their issues aren't being properly routed to you.

## 4. Identify user profiles from the bugs users file

Another potential application with issue tracking systems is to use them as a window into the user experience. I don't interact with our users directly, so I'm always curious whether the documentation I write actually meets their needs. I only hear feedback secondhand through our partner engineers and other interfacing teams. But when users file bugs, they're giving us a glimpse into their world.

Bugs can reveal more than just problems users are having. They could also reveal how the users are testing a system (such as through a simulator). They reveal what users care about and don't care about (certain endpoints more than others, for example). They reveal the tasks that users are trying to perform, as well as the business use cases.

All of this information could be leveraged to assemble a user profile or persona&mdash;one that maps closely to what users are trying to achieve. For example, use a prompt like this to try to piece together this user profile:

<div class="chat">
<div markdown="1">
Attached is a CSV of a list of bugs that partners have filed. Our partners are developers using APIs to [explain common use cases]. I want you to look through these bugs and gather patterns and observations enough to describe a typical user persona. The user persona (or persona) should describe typical tasks users try to do, their tools, the APIs and workflows they use, their business use cases, and more. 

Try to discern all of this by reading through the many bugs that the users are filing. Extrapolate a picture of a typical user, contextualizing them within an environment and business case and painting a picture that helps us understand them more. By understanding user persona, we can be more strategic with our decisions around documentation and product priorities.
</div>
</div>

## 5. Identify the types of documentation users want

Finally, you can use bugs to identify the types of documentation that users want. As you comb through bugs that users file, try to determine what sort of information they want: are they asking for code examples? Do they struggle to understand how to use the mechanics of the API? Do they want richer, more detailed descriptions of the data returned by the API? Do they want reference content, conceptual material, how-to material, tutorials, or other types of information? 

We hear about different topic types through DITA, Diataxis, and other information models. Here's your chance to figure out exactly what your users want, related to a specific API product. For example, although I regularly see code examples flagged as a top priority in API docs, for the APIs I document, most of the user questions are related to the fields returned by the API. It seems most users are seasoned engineers who don't need examples of how to use the API; they want better descriptions of both the data and the quality of the data.

Other questions you could explore: Are users looking for more information about specific features or parts of the system? Maybe your API has 5 endpoints, but 80% of the questions are about 1 specific endpoint. That 1 endpoint might account for most of the product usage (following the 80/20 rule).

{% include ads.html %}

## A few notes of caution

Finally, I want to include a few notes of caution. It's easy to spend more time wandering around in issue tracking systems than actually fixing bugs. In other words, it can be an incredible time sink.

You might already have an abundance of documentation-related bugs in your own component queue. Why exactly hunt around for more? This might be the task for other roles, triaging incoming bugs and routing them your way. You might make better use of your time simply focusing on the existing bugs already assigned to you. If that's the case, feel free to ignore many of the applications in this article.

## Conclusion

The techniques I explored show how AI can help you navigate the frequently overwhelming number of issues within an issue tracking system. While a full queue of bugs might seem overwhelming, remember that each bug represents a user's interaction with your product. By leveraging AI to analyze these interactions, we can move beyond simply fixing documentation errors to building a more comprehensive picture of user needs, pain points, and motivations. 

This deeper understanding allows us to make more strategic decisions about documentation not just with the bugs we fix, but in other areas of the documentation we work on as well, including how we prioritize issues, the types of information we create, how we organize user flows, and more.