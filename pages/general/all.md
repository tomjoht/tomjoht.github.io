---
title: "All post content by year"
permalink: /all
---

* TOC
{:toc}

<h2>2023 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2023" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2022 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2022" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2021 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2021" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2020 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2020" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2019 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2019" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2018 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2018" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2017 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2017" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2016 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2016" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2015 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2015" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2014 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2014" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2013 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2013" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2012 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2012" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2011 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2011" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2010 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2010" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2009 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2009" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2008 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2008" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2007 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2007" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>

<h2>2006 archives</h2>
<ol>
    {% for post in site.posts %}
    {% capture year %}{{post.date | date: "%Y"}}{% endcapture %}
    {% if year == "2006" %}
    <li><h4 class="categoryArchive"><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a> <span class="postDate"> | {{ post.date | date: "%b %-d, %Y" }}</span></h4></li>
    {% endif %}
    {% endfor %}
</ol>




