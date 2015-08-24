---
title: My process for creating vector diagrams with Illustrator
keywords: vectors, firefox, illustrator, workflow diagrams, concept illustrations
categories:
- visual-communication
summary: "This past week I was creating some diagrams for a project, and I feel like I've settled into a good workflow for creating high quality diagrams. Here's my process: Create the file in Illustrator, store numerous diagrams on artboards in the same file, save as SVG with outlines, and embed like an image but specifying the max-width."
---

## Create the file in Adobe Illustrator

Adobe Illustrator is my preference for diagrams, conceptual workflows, or any other graphic that's not a screenshot. This is because Illustrator creates vector graphics, whereas other applications (e.g., Snagit, Photoshop) create raster graphics.

Vector graphics are actually XML files that are mathematically drawn, whereas raster graphics are pixel-based images (little dots). Raster graphics look good at the dimensions you create them at but get fuzzy if you resize them. In contrast, vector graphics look sharp at any resolution, so they're much more flexible.

Here's a sample. This is a vector graphic (SVG):

<img src="{{ "/images/samplevectordiagram.svg" | prepend: site.baseurl }}" alt="Sample vector graphic" style="max-width: 700px" />

And this is a raster graphic (PNG):

<img src="{{ "/images/samplerasterdiagram.png" | prepend: site.baseurl }}" alt="Sample raster graphic" />

Try shrinking the browser size to a mobile device width. You'll see the vector image scale down nicely and remain crisp and readable at any size.

BTW, to make image scale when you shrink your browser, add this to your stylesheet:

```css
.yourContentArea img {
    max-width: 100%;
    max-height: 100%;
```

(Change `yourContentArea` to the element where your main content area is.)

Also note that SVG graphics will fill their containing element regardless of the artboard size you use in Illustrator, so I've added a max-width of 700px as an inline style here for the vector graphic.

## Setting up artboards

 In Illustrator, I create a file for my project such as acme.ai. On acme.ai, I add numerous artboards (e.g., a dozen or so) and size all the artboards to 700 x 500 px wide.

 Here's a great [intro to artboards](https://helpx.adobe.com/illustrator/how-to/work-with-artboards.html), by the way.

 Within the Illustrator file, I create custom names for each of the artboards. When I save the file as an SVG file, each of the artboards will get saved as its own file. For example, if the filename is "acme.ai" and the artboard name is "workflow," then the SVG file will be named acme_workflow.svg.

 I also create different layer groups for each of the artboards.

 I could simply use different ai files for each graphic, but it would make it a little less convenient for re-using the same illustrations in different diagrams.

 ## Get Graphics from The Noun Project

I think graphics should be simple and minimalist. My favorite source for vector graphics is <a href="https://thenounproject.com/">The Noun Project</a>:

<a href="https://thenounproject.com/"><img src="{{ "/images/thenounproject.png" | prepend: site.baseurl }}" alt="The Noun Project" /></a>

As long as you attribute the graphics from The Noun Project, they're free (otherwise it costs $100/year). What's great about the Noun Project is that the icons, being minimalist, all fit together thematically. And there are about 150,000 of them.

If I need a more sophisticated vector graphic, I look at [Vecteezy](http://vecteezy.com). But for the most part, with technical documentation, you just need simple little graphics for workflows and concept illustrations.

## Save the AI as an SVG

To save the Illustrator file as an SVG, you don't use Export. Instead, you use File > Save As and choose SVG.

When you choose to Save As an SVG, you're presented with a dialog box that looks like this:

<img src="{{ "/images/illustratoroptions.png" | prepend: site.baseurl }}" alt="Options when saving AI as SVG" />

In the Fonts box, select **Convert to Outline**. This ensures that all browsers will support your fonts. Note that Firefox doesn't support font family styles for SVG graphics, so *if you don't select Convert to Outline here*, your fonts in Firefox will be Times New Roman (the default browser font).

In the Image Locations option, select **Embed**. If you select "Link," then you end up with various graphics files for your SVG image.

In the check boxes, remove the check box from "Use &lt;textpath&gt; element for Text on Path." If you create a path and then use the Text on Path feature in Illustrator, the spacing gets all screwed up if you have this box checked.

## Embed the SVG on Your Page

Now it's time to insert the SVG on your page. You can treat it just like an image:

{% raw %}
{% highlight html %}
<img src="images/samplevectordiagram.svg" alt="Sample vector graphic" style="max-width: 700px" /> {% endhighlight %}
 {% endraw %}

Vector graphics provide a lot of possibilities beyond just simple diagrams here. You can also animate, link different components, and do a lot of other things with graphics. However, you can also just create simple workflow diagrams, like I've shown here.

What's especially convenient with AI files is that they're always editable, so you can change the text or shapes at any time. Your file doesn't get locked down in a static format.