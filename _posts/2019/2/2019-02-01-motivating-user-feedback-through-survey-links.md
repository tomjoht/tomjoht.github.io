---
title: "How to motivate users to provide feedback: Show that you're listening to their input"
categories:
- technical-writing
- podcasts
- user-centered-documentation
keywords:
description: "To encourage users to leave more feedback, add a contact email field on your feedback submission form. When you receive feedback, provide a quick response that shows you're listening and taking action on their input."
bitlink: http://bit.ly/motivatinguserfeedback
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewritinglogo.png
podcast_link: https://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/motivatinguserfeedback.mp3
podcast_file_size: 9.1 MB
podcast_duration: "09:48"
podcast_length: 9083336
---

{% include audio.html %}

## Our original feedback form

A few months ago, we added a feedback form to our Appstore docs at work. Right below the title on every page, we added an easily visible button that says “Submit Feedback.”  The button opens a Qualtrics form where users can submit ratings and comments.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/feedbacksubmitbuttonwork.png" style="max-width: 600px;"/>

This initial feedback form looked like this:

<a href="https://amazon6.qualtrics.com/jfe/form/SV_6DzfbuTrUVlOaCV"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/initialfeedbackformwork.png"/></a>

Not a lot of feedback came in through this form &mdash; maybe one legitimate comment a day on average. Our metrics say about a thousand people visit the docs a day, so why weren't more people leaving feedback? I doubted they were all finding exactly what they needed and leaving happy and satisfied.

## Designing for feedback

I wanted to tweak my feedback form to maximize the number of responses. I considered questions like these:

* What factors influence whether users decide to leave feedback?
* Are there design implementations that might double or triple the responses?
* How could we ramp up the percentage of people who leave feedback?

I was reading some research by Donal Kavanagh on this subject. Kavanagh is a student in an MA program at the University of Limerick (Ireland). I'll publish a lengthy guest post from him next week (stay tuned). One point in his research is that users are more apt to provide feedback if they feel their feedback is listened to and acted upon. Donal writes,

> … a feedback feature should engender in the user the belief that their feedback will be acted upon. … A lack of acknowledgement of users’ feedback and even less communication as to how it will be used to improve documentation mean that users will not believe that their feedback is valued and will not understand their place in a process that is ultimately for their benefit, i.e. the continuous improvement of the online help.

In other words, the more users feel that their feedback is listened to and acted upon, the more likely users are to give feedback. This point hardly needs to be argued, as we confirm this principle in our everyday conversations. If someone is really listening, we talk confidently and openly. If someone doesn't seem to be paying attention, our motivation to keep talking fizzles.

I realized our original feedback form didn’t have a contact email address for users to optionally list their email. I had omitted it, thinking that PII (personally identifiable information) forbid it. But after consulting with our Legal department, I receive the go-ahead, so long as we didn’t store any email addresses longer than two years.

I also decided to adjust a few of the questions to align with AWS's feedback form (here's [an example][aws-feedback-form]). Our revised feedback form now looks like this:

<a href="https://amazon6.qualtrics.com/jfe/form/SV_eY6MEvUz1XW3ril"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/revisedfeedbackformwork.png"/></a>

Adding this contact email field makes a significant difference because it invites a conversation. It indicates that we are listening and will potentially respond.

Another challenge was to address the response time. In our original feedback form, we had to go to the [Qualtrics site](https://www.qualtrics.com/) (which is a survey tool) and check to see if any responses had come in. But we checked Qualtrics only once or twice a week, so this probably gave users the impression that their feedback fell into a black hole.

I added a trigger in Qualtrics to push the survey response to my email as soon as it was received. Now when we receive comments, we can immediately email the user with any follow-up questions, or even just to let them know we received their email. I've found that catching the user in the moment they have feedback is key to encouraging more detail and elaboration from the user. After the user has moved on (especially beyond 1-2 weeks), their feedback becomes much more general and unspecific.

## Assessing results

I only made these updates a couple of weeks ago, but so far these tweaks are working well. Email that is pushed into my inbox seems to elicit much more prompt action, as it’s like an email awaiting a response.

For users who receive a quick reply to their feedback, especially including any actions taken about missing information, this experience increases their confidence in using the feedback form in the future. But what about first-timers? How do you design your form in a way that builds trust from the start?

Should I add promises such as "Receive feedback from a real person within 24 hours." Or "Your feedback is actively monitored and responded to within one business day"? I'm not sure I want to commit to that, but it's surely a best practice to respond quickly. (I'm realizing more and more that people appreciate quick responses to email, even if the responses are shorter.)

Making quick, meaningful responses also raises questions about bandwidth and focus. Suppose a user asks for more information about a product. It might take a week or more to get the information. It might require me to stop making progress on my current project and instead set out fixing already published docs. To what extent should I allow myself to be derailed from my current focus to pursue random directions that incoming feedback takes me? These are details I still need to work out.

Overall, I'm encouraged by the positive impact from these small adjustments. I'm eager to learn more techniques that I can implement to improve trust with users and encourage more feedback. If you're doing something that's working well for you, let me know.

[aws-feedback-form]: https://docs-feedback.aws.amazon.com/feedback.jsp?hidden_service_name=EC2&topic_url=http://docs.aws.amazon.com/en_us/AWSEC2/latest/UserGuide/concepts.html&hidden_guide_name=User%20Guide%20for%20Linux%20Instances&hidden_api_version=&hidden_file_name=concepts
