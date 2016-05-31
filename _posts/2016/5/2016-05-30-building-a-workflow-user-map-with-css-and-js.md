---
title: "Examples of linear workflow user maps built with JS and CSS"
categories:
- visual-communication
keywords: 
summary: "Maps are an essential tool for helping users navigate unfamiliar territory. Provide maps to a user is the 101 of visual communication that helps guide users, especially when they're trying to complete a procedures that requires them to visit multiple pages."
thumb: usermapthumb.png
---

## Map background

I've been thinking more about user maps lately. My [first user map](http://idratherbewriting.com/2016/05/11/establishing-more-context-in-tech-comm/) looked like this:

<figure><a href="http://idratherbewriting.com/2016/05/11/establishing-more-context-in-tech-comm/"><img src="{{ "/images/diagram_setupworkflowdiagram.png" | prepend: site.baseurl }}"/></a><figcaption>This shows all the steps in the workflow.</figcaption></figure>

The feedback I got was that it was too massive. It made the process look really complicated.

In another version, I made the workflow scrollable (and in one row), with a specific workflow highlighted:

<figure><img src="{{ "/images/scrollingusermap.png" | prepend: site.baseurl }}"/><figcaption>The idea is that the current page auto-focuses on your current step.</figcaption></figure>

Here's the JS Fiddle:

<script async src="http://jsfiddle.net/tomjohnson1492/gj1agw00/2/embed/"></script>

The underlying code is all JS and CSS. The idea is that you create the map in one file, and then include the file at the top of each doc page where it applies. On each page, you add a small JS script that specifies the scroll position and CSS that specifies which box is active. 

When I showed this to my wife, she said she didn't like having to scroll. She wanted to see the whole map at once. I agree that having to scroll is less than ideal. 99% of the time, horizontal scrolling is a fail. 

So I made another version without scrolling, which you can see here: [Sample 1](http://idratherbewriting.com/documentation-theme-jekyll/p1_sample1/). Click through each of the pages in the workflow to see this in action.

<figure><a href="http://127.0.0.1:4005/documentation-theme-jekyll/p2_sample1/"><img src="{{ "/images/usermapdemo.png" | prepend: site.baseurl }}"/></a><figcaption>The usermap code is the same. Each page just highlights a different box using JavaScript.</figcaption></figure>

I like this example, so I coded it into my Jekyll documentation theme. You just add some values in the frontmatter like this:

```yaml
map: true
map_name: usermap
box_number: 1
```
The \_layout/page.html file then includes this code:

```liquid
{% raw %}{% if page.map == true %}

<script>
    $(document).ready ( function(){
        $('.box{{page.box_number}}').addClass('active');
    });
</script>

{% include custom/{{page.map_name}}.html %}

{% endif %}{% endraw %}
```

Here's the usermap.html file inside \_includes/custom:

```html

<div id="userMap">
            <div class="content"><a href="{{site.data.urls.p2_sample1.url}}"><div class="box box1">Connect to ADB</div></a></div>
            <div class="arrow">→</div>
            <div class="content"><a href="{{site.data.urls.p2_sample2.url}}"><div class="box box2">Download and Build the Starter Kit</div></a></div>
            <div class="arrow">→</div>
            <div class="content"><a href="{{site.data.urls.p2_sample3.url}}"><div class="box box3">Take a Tour</div></a></div>
            <div class="arrow">→</div>
            <div class="content"><a href="{{site.data.urls.p2_sample4.url}}"><div class="box box4">Load Your Widgets</div></a></div>
            <div class="arrow">→</div>
            <div class="content"><a href="{{site.data.urls.p2_sample5.url}}"><div class="box box5">Query for Something</div></a></div>
<div class="clearfix"></div>
    
</div>
```

This user map consists of divs because they behave better than tables. 

Here's a JS Fiddle with the code:

<script async src="http://jsfiddle.net/tomjohnson1492/LsrbcvLw/embed/"></script>

What happens if you have more than 5 steps to follow? While you could create multiple rows, I think this would be unwise. It's probably better to link to a full view of the map. This list of five steps is a zoomed-out version of the larger map.

Although this approach probably works all right, it still doesn't show a more complex workflow, where there are multiple paths, optional steps, and maybe a decision tree. For that, I think I would have to design the map in Illustrator.
