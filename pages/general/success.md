---
layout: page
title: Subscription Success!
permalink: /success/
show_newsletter_signup: false
---

Thanks for subscribing to I'd Rather Be Writing! You're on track to stay updated about the latest trends, methods, and best practices in technical writing, especially API documentation!

Expect to receive regular emails from tjohnson@idratherbewriting.com. In the meantime, feel free to browse the newsletter archives:

<h3>Newsletter archives</h3>

{% for p in site.categories.newsletter %}
<ul>
<li><h4 class="categoryArchive"><a href="{{ p.url | prepend: site.baseurl }}">{{p.title}}</a> <span class="postDate"> | {{ p.date | date: "%b %-d, %Y" }}</span></h4></li>
</ul>
{% endfor %}

<style>
body.pas-body {
    display: none !important;
}
</style>
<script>
  $(document).ready(function() {
    $('#iFrameResizer1').css('display', 'none');
  });
</script>