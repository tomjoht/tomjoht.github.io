---
title: "Advanced formatting with Markdown using Jekyll and Includes"
categories:
- jekyll
keywords: markdown, jekyll, includes, transclusion
description: "Although the basic Markdown syntax can be pretty limiting, you can create more sophisticated HTML syntax and store it in templates. Using include syntax, you can pass parameters into these templates. This allows you to leverage more advanced HTML formatting (or other logic) without having to introduce the same level of complexity into your page authoring."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/jekyllthumbimage.png
---

## Conversation about Markdown and limitations

There's somewhat of an interesting conversation going on about Markdown, constraints, extensibility, and limits. Eric Holscher started the conversation with [Why You Shouldn’t Use “Markdown” for Documentation][2]. Mark Baker followed it up with [Why we need constrainable lightweight markup languages][1].

I want to add to the discussion by showing how Jekyll can be used to expand beyond Markdown's limitations, primarily through the use of includes and page frontmatter.

## Parameters with Includes

Jekyll let's you create files in an \_includes folder that you can include anywhere in your doc. For example, create a file called myfile.html. Store it in your \_includes folder, and then you can embed the file anywhere by using this `include` syntax:

```liquid
{% raw %}{% include myfile.html %} {% endraw %}
```

You can also pass parameters to the include, and this is where things get interesting. Suppose in myfile.html, you added this:

```liquid
{% raw %}This is some {{include.stuff}}. {% endraw %}
```

Now `stuff` becomes a parameter that you can populate when you call the include. Here's an example:

```liquid
{% raw %} {% include myfile.html stuff="special text" %} {% endraw %}
```

See how that works? The result will be:

```
This is some special text.
```

There's a great Jekyll screencast on includes at [Jekyll Tips](http://jekyll.tips/jekyll-casts/includes/).

I use includes to create templates for [alerts][3], [callouts][4], and [images][5] in my Jekyll Documentation theme.

Essentially you can create sophisticated HTML formatting, and only require the user to pass certain parameters in an include using the basic include code.

## Parameters in Frontmatter

You can also populate your page's frontmatter with specific properties and then pass those properties into HTML stored in a layout. This is the approach I took with the workflow maps that I wrote about [here][6] and [here][6].

For example, the frontmatter for one of the user map pages contains the following:

```yaml
---
title: Sample 1 Topic
keywords: sample
description: "This is just a sample topic..."
sidebar: product2_sidebar
permalink: /p2_sample1/
map: true
map_name: usermap
box_number: 1
---
```

The layout.html file, where this content gets pushed, contains the following:

```js
{% raw %} {% if page.map == true %}

<script>
    $(document).ready ( function(){
        $('.box{{page.box_number}}').addClass('active');
    });
</script>

{% include custom/{{page.map_name}}.html %}

{% endif %}{% endraw %}
```

The values for the `map`, `map_name`, and `box_number` get passed into the template. Hopefully you can see how these parameters stored in the page's frontmatter populate the HTML code.

What's cool about this approach is the ability to separate the content from the formatting. You don't want your authors worrying about whether they have the syntax right &mdash; you just want them to supply the right values to a template.

Overall, you can create sophisticated HTML templates and then simply make each custom value a variable that you populate either through an include parameter or frontmatter parameter.

In this way, you use Jekyll to get past the limitations of Markdown syntax. For example, with the images, it would be a pain to type this syntax every time:

```html
<figure><a class="no_icon" target="_blank" href="http://jekyllrb.com"><img class="docimage" src="https://idratherbewriting.com/documentation-theme-jekyll/images/jekyll.png" alt="Jekyll" /></a><figcaption>This is a sample caption</figcaption></figure>
```

With the include approach, the syntax is much simpler:

```liquid
{% raw %} {% include image.html file="jekyll.png" url="http://jekyllrb.com" alt="Jekyll" caption="This is a sample caption" %"}{% endraw %}
```

I like this approach because it gives me a lot more flexibility. As long as I can express the code in HTML, I can extract out the customizable values into a template for the writer to populate, keeping everything simple.

For more advanced templates, I can leverage [Liquid syntax][8] to create loops and other logic.

## Conclusion

Markdown syntax is limiting. Its simplicity is also its strength, since it allows larger numbers of people to easily learn and implement the syntax. However, when you need more advanced syntax, rather than trying to come up with a new Markdown variant, consider trying to create includes or other templates in your code, and then pass parameters into those templates.

[1]: http://everypageispageone.com/2016/06/05/why-we-need-constrainable-lightweight-markup-languages/

[2]: http://ericholscher.com/blog/2016/mar/15/dont-use-markdown-for-technical-docs/

[3]: https://idratherbewriting.com/documentation-theme-jekyll/mydoc_alerts/

[4]: https://idratherbewriting.com/documentation-theme-jekyll/mydoc_alerts/#callouts

[5]: https://idratherbewriting.com/documentation-theme-jekyll/mydoc_images/

[6]: https://idratherbewriting.com/2016/05/30/building-a-workflow-user-map-with-css-and-js/

[7]: https://idratherbewriting.com/2016/06/03/more-complex-user-maps-in-documentation-systems/

[8]: https://shopify.github.io/liquid/
