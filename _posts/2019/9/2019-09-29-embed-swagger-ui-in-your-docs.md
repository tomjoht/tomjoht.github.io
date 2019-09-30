---
title: "Embedding Swagger UI in your docs"
permalink: /blog/embed-swagger-ui-in-your-docs/
categories:
- api-doc
keywords: write the docs, podcast, documentation, language, gender
bitlink: https://idratherbewriting.site/expandswaggerfullscreen
summary: "One challenge with REST API docs, if you're generating out the reference content using Open API, is how to embed Swagger in your docs in a seamless way. In this post, I explain how to embed a Navigation toggle to hide your sidebar and give more width to the embedded Swagger UI display."
---

If you want to simply grab the code from Swagger UI and put it into an HTML page of your docs, you can do so without too much trouble. Just copy the code from the `index.html` file from the `dist` folder (from [Swagger UI](https://swagger.io/tools/swagger-ui/)) into your doc page (more or less). The latest version of Swagger has a more responsive, liquid design. It almost looks *designed* to be embedded into another site.

However, the effect is kind of clunky and is obvious that the content is embedded from some other document generator. It's not a seamlessly branded experience. Here an example where Swagger is embedded directly in the docs: [App Submission API](https://developer.amazon.com/docs/app-submission-api/appsubapi-endpoints.html)

<figure><a class="noExtIcon" href="https://developer.amazon.com/docs/app-submission-api/appsubapi-endpoints.html"><img class="docimage large " src="https://idratherbewritingmedia.com/images/api/appsubmissionendpoints.png" alt="Embedding Swagger into your existing doc site" /></a><figcaption>Embedding Swagger into your existing doc site</figcaption></figure>

Another example of the same embedding technique is here: [Moments Developer Guide](https://developer.amazon.com/docs/moments/rewards-api-endpoints.html).

One way to make this site-in-a-site effect less clunky is to add the ability to expand the display to occupy a larger width. To do this, I've included a **"Nav"** toggle at the top of the embedded Swagger content. Explore how it works at the [example here](https://developer.amazon.com/docs/app-submission-api/appsubapi-endpoints.html).

This little JavaScript trick will collapse your sidebar, giving your embedded Swagger display full width (which is usually needed for readability). (This Nav toggle isn't part of the Swagger UI display but is something that's easy to add.)

To include a Nav toggle, first make sure you're including [Font Awesome](https://fontawesome.com/) and [jQuery](https://jquery.com/) in your site. Then add the Nav icon with this class at the top of your page:

```html
<p><a id="tg-sb-link" href="#"><i id="tg-sb-icon" class="fa fa-toggle-on"></i> Nav</a></p>
```

Font Awesome renders vector icons based on classes like those above.

Now add a `toggleClass` script that will toggle your sidebar. You'll need to customize this a bit with the classes used in your own site. My script looks like this:

```js
<script>
        $(document).ready(function() {
            $("#tg-sb-link").click(function() {
                $("#sidebar").toggleClass('navToggle');
                $(".container").toggleClass('expand');
                $("#tg-sb-icon").toggleClass('fa-toggle-on');
                $("#tg-sb-icon").toggleClass('fa-toggle-off');
            });
        });
</script>
```

Then embed this style:

```html
<style>
.navToggle {
  display: none !important;
}
.expand {
  width: 100%;
  margin-left: 10%;
  margin-right: 10%;
}
#tg-sb-link:hover, #tg-sb-link:active, #tg-sb-link {
  text-decoration: none !important;
}
</style>
```

Here's how this script works. When users click the element ID `tg-sb-link`, the anonymous function fires above. The `toggleClass` looks for the `sidebar` element and injects a class called `navToggle` into it. The embedded styles define `navToggle` with a `display: none` property. This makes your `sidebar` element disappear. (If your sidebar has some other class, customize `sidebar` with the name of your website's sidebar element.)

Continuing on with the script, the `toggleClass` function looks for the `container` class and injects an element called `expand`. The embedded styles for this element expand the main container to a larger width. (Again, you'll need to customize `container` to use the main container element for your website.) Hopefully you get the gist of how this [`toggleClass` jQuery function](https://api.jquery.com/toggleClass/) is working. When you click the Nav button again, the same function removes the injected classes. For more details, check out the source code of my [Swagger UI Demo](/learnapidoc/pubapis_swagger_demo.html) on [GitHub here](https://github.com/tomjoht/learnapidoc/blob/master/_docs/rest_api_specifications/pubapis_swagger_demo.html).

(By the way, a community user contributed this Nav technique as an enhancement to my [Jekyll documentation theme](https://idratherbewriting.com/documentation-theme-jekyll/).)

You can see more strategies for integrating Swagger with the rest of your docs [here](https://idratherbewriting.com/learnapidoc/pubapis_combine_swagger_and_guide.html).
