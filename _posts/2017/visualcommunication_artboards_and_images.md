---
title: 'Artboards and images'
permalink: /visualcommunication_artboards_and_images/
keywords:
jtype: notes_visualcommunication
category: visual-communication
published: false
---

In a [previous article](https://idratherbewriting.com/2016/05/10/visualcommunication_sharp_clear_screenshots/), I talked about where to take screen captures &mdash; from regular screens, or from Retina screens. In this article, I'll talk more about where to *save and work with* the screen captures.

If you're just taking a screen capture, circling something, and saving the image, it doesn't much matter where you save it. Chances are, if you need to update the screen capture later, it will be easy to re-take it. 

However, if you have callouts that point to different elements of the screen capture, you might be making more regular updates. The screen capture with callouts might look something like this:

--> image 

(I'll admit outright that callouts with text pose problems with translation, but so do the screen captures in general. This is a topic I'll return to later. For now, assume that you have one English-speaking audience only.)

When you have these kinds of screen shot diagrams, it's helpful to keep the image in a file format that's easy to update. Snagit offers a snagproj file format that keeps all your elements (circles, callouts, arrows, etc.) available to edit. When you're ready to publish your flattened screen, you can save the snagitproj file as a PNG.

You can also use Photoshop or Illustrator and keep the screen diagrams on artboards. Since my preferred graphics tool for doing any kind of diagramming, callouts, or other illustrations is Illustrator, I'll dive into how this works in Illustrator in more detail.

Illustrator is a vector graphics program, so it's not designed to handle raster media like screenshots. However, your callouts for the raster media can be vectors, so it's not as if you're working purely with raster media. 

(By the way, if you're unfamiliar with raster versus vector, here's the difference. Raster images are pixel-based images that display at a fixed size. Vectors aren't based on pixels but rather mathematical algorithms, so they scale crisply at any size. Vectors fill the size of their container.)

## My process for diagramming screenshots in Illustrator

I first take a screenshot on my Mac's Retina screen using Snagit, and then save the image. Then I place the image into Illustrator on an artboard. The artboard represents the size of the image that will be exported from Illustrator. 

I typically make my artobards about 700px, so most screenshots need to fit into this space and also allow for callouts. If I take all screen captures at 800px x 500px and then scale them down in Illustrator, this tends to work out well. The key is to be consistent so the scaling all looks similar. If you scale some images down from 1100px, and others you don't scale at all, your images look like a mixed bag. You also want the widths to be relatively the same.

Each Illustrator file can have any number of artboards, though after about 20 artboards the file gets too large and starts to lag when you save it. I name each artboard something unique in the Artboards panel. When I export the graphics, I can choose to export a single artboard or all artboards.

Working with artboards simplifies things quite a bit. I can easily update styles and text across all images, because they are all right before me in the same file. To see all artboards at once, I can fill the window with a specific artboard by pressing Cmd+Option+0, and to zoom in on one artboard, I press Cmd+0

If I need to make a global change, such as changing the font or callout color, I can easily make the change in Illustrator and export the file to automatically generate individual images for each artboard. I don't have to open up 20 different files and make individual edits to each one.

I don't want to dive into callouts in this article, because I know this brings up questions about translation and usability. I'm simply exploring the use of artboards to manage image media for technical projects.

Also note that Illustrator doesn't give you any real edge with artboards beyond Photoshop. I'm still exporting the artboards as PNG files, which would be the same with Photoshop. However, if you're also mixing in conceptual illustrations or working with other vectors, it's nice to consolidate your image tools to using the same tool. This way the callouts in your screen shot diagrams can have the same font, size, and style as any callouts in concept diagrams that are purely vector based.

