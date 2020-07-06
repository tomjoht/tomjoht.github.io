---
title: "How to deliver newsletters for your Jekyll site"
categories:
- jekyll
keywords:
description: "Although email may seem somewhat antiquated, it has by far the greatest reach of any online communication method. If you have a Jekyll-based site, here's an easy approach to sending out an email newsletter. This approach involves using a for loop to get a summary of your latest posts and then pushing the content into simple HTML formatting that you can paste into Tinyletter's email template."
date: 2016-10-23 08:49:08.000000000 -08:00
bitlink: http://bit.ly/jekyllandnewsletters
---

I've been blogging since 2006, but it took me a number of years before I realized that email usually has a far greater reach than RSS or social media. Regardless of which venue has the most impact, you don't want to exclude email from your reach. Here's my approach to delivering email in a free, painless way.

I use [Tinyletter](http://tinyletter.com/) (it's free and works pretty well). (I have 3,500 subscribers, so most other newsletter platforms that have a free threshold at 2,000 don't work for me.)

Each of my posts has a `summary` tag in the frontmatter, as well as a `bitlink` property, which is the shortlink from [Bitly](https://bitly.com/) that I use to track clicks. I create a new file called newslettertemplate.html and store this in my root directory. The newsletter template has the following code:

```html
{% raw %}
---
layout: none
---

<!-- site logo -->
<a href="https://idratherbewriting.com"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/idratherbewriting-site-logo.png"></a>

{% for post in site.posts limit:6 %}
<h2>{{post.title}}</h2>
<p>{{post.description}} <a href="{{post.bitlink}}">Read more &raquo;</a></p>

{% endfor %}

<!-- advertising -->
<p><a href="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/comics/adobefm.jpg"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/comics/adobefm.jpg"></p></a>
{% endraw %}
```

You can view the rendered template here: [https://idratherbewriting.com/newslettertemplate/](https://idratherbewriting.com/newslettertemplate/).

My layout `none` is a layout that has no formatting. The newsletter template code loops through the last 6 posts on the site and pushes in the title, summary, and bitlink.

After the site builds, I go to the page, view the source, and copy this HTML into a new campaign in Tinyletter (pasting into the source) and send it out to my readers.

I've noticed that pushing links out on Twitter gets about 10 clicks per post, and Linkedin gets about 10 clicks as well. But when I send out the email newsletter, I get about 100 clicks. (These are all rough estimates.)

I embed the Tinyletter sign-up form in my blog's sidebar and in the bottom of each post. Generally I get about 50 new subscribers every week. When I send out a newsletter, I lose about 10 subscribers. The process of growing my audience is slow but steady.

In general, I try to include about 3 posts with each newsletter (although sometimes I include more if I've forgotten to send it out). The best days to send out a newsletter are Monday through Thursday, especially during work hours. I get most of the hits within the first 2 days of sending out the email. After that it tapers off.

Bitlink is great for gauging how many hits each article has. Some articles get three or four times as many hits as others. I should keep note of those articles and learn to focus more on those topics in the future, but I'm not actually this organized.
