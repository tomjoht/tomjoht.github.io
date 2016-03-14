---
title: 'Getting sharp, clear text in screen captures'
permalink: /visualcommunication_sharp_clear_screenshots/
keywords: 
course: "Visual Communication"
weight: 0.2
type: visualcommunication
---


Technical writers take a lot of screen captures, often showing interfaces with both text and graphic elements. Usually these are partial screen captures that focus on the part of the screen they are highlighting. 

In general, a lot of technical writers use Snagit and save the screen captures as PNG files. By "screen capture," I'm referring to captures taken of specific user interfaces.

If you want clear, crisp screen captures, you have several options:

* Capture and display at a 1:1 ratio
* Zoom out on your browser's magnification before capturing
* Capture from a retina display and resize in the browser

## Capture and display at a 1:1 ratio
If you capture your screen at the same ratio you display the images, the screenshots will be sharp and clear. For example, suppose you capture your screen at 640x480px. If you also display your image in the same dimensions, you won't lose any of the clarity, and your screenshot will remain sharp and clear.

However, 640x480px is somewhat large. Lots of screenshots this size will bloat your documentation. Additionally, at times you may need to show screen sizes larger than 640x480px, but then shrink them down to this size. 

Overall, trying to follow the 1:1 ratio for capturing and publishing doesn't really work unless you fill your documentation with partial screenshots (screenshots that show only a partial area of the screen). The more partial a screenshot, the less context you include and the more confusing it becomes to users.

Any time you scale your image up or down, the quality degrages. Mike Spink at Snagit explains why:

>Why does scaling cause image quality degradation? Imagine that you transferred your screen capture onto a tile floor comprised of many very small tiles. If you wished to reduce the size of the floor by 50%, you could remove every other tile and then slide the remaining tiles back together again.  The problem occurs because some of the tiles that you removed were colored tiles that comprise the content of the image. If there was writing in the image, some of the tiles that comprised characters might be removed. The "dot" over an "i" for example might have been on one of the tiles that you removed, or portions of the top curve in an "e" might now be gone. This results in broken characters, jagged lines and an overall "fuzzy" appearance of the image. (See [Snagit (Windows): Images are blurry or fuzzy](https://support.techsmith.com/hc/en-us/articles/203732158-Snagit-Windows-Images-are-blurry-or-fuzzy))

In other words, increasing or decreasing your image size causes your graphics program to manipulate the pixels in ways that degrate the original capture.

## Zoom out on your browser's magnification

You can shrink your screen display by zooming out (Shift + - on a PC, Cmd +  - on a Mac). If the website is coded well, this may reduce the screen size while also keeping the text clear. After you zoom out the screen, take the screen capture.

However, not all sites retain the same proportions well when you zoom out. Additionally, it can be hard to remember exactly how many times you've zoomed out, which could create inconsistent magnification levels in your screenshots. 

If you have some partial screenshots that aren't zoomed out, mixed in with some full-size screenshots that are zoomed out, there will also be an inconsistency with the magnification levels. This inconsistency may be all right, but overall I am not a huge fan of zooming out with my browser. It's just not very practical.


## Capture from a retina display

You can also capture from a retina display and then resize the image in your browser to a smaller size. This approach requires a Mac with a retina display. 

If you have a MacBook Pro (perhaps hooked up to multiple monitors that may not have retina displays), move the screen you plan to capture to the Mac retina display and take your screen capture there. Using Snagit, when you save the screenshot you'll see a "Save using Retina size" option. (This option only appears if you take the screen capture from a high retina display.)

Save using the retina size, and then embed the screenshot on your page. If you were to view the embedded screen shot in the browser, you'll see that the screenshot is actually twice the size of the original dimensions. Add sizing to rescale the display in the browser, like this:  
 
```
<img src="test1mac.png" style="max-width:640px"/>
```

Now you've got twice as many pixels packed in half the space. As a result, the screenshot will be sharper and clearer because you're packing more pixel data in a smaller space

Let's look some examples. Note that you won't be able to see the difference unless you can switch between a retina and non-retina monitor.


<figure><img src="{{ "/images/testresolution/loremmac600x400noretima.png" | prepend: site.baseurl }}"/></a><figcaption>600x400px, Mac 600x400px, Not saved as retina capture</figcaption></figure>

<figure><img style="max-width: 600px" src="{{ "/images/testresolution/loremmac600x400retima.png" | prepend: site.baseurl }}"/></a><figcaption>600x400px, Mac 600x400px, saved as Retina capture and constrained to 600x400px in the browser</figcaption></figure>

<figure><img src="{{ "/images/testresolution/lorempc600x400.png" | prepend: site.baseurl }}"/></a><figcaption>600x400px, Non-retina monitor 600x400px </figcaption></figure>


<figure><img  style="max-width: 600px src="{{ "/images/testresolution/loremmac600x400noretima.png" | prepend: site.baseurl }}"/></a><figcaption>Non-retina monitor 1200x800px constrained in the browser to half this size</figcaption></figure>


What's going on here? Basically, screens display a certain number of pixels per inch (PPI). See this site to see your browser's PPI: [http://dpi.lv/](dpi.lv).

My Dell monitor has 166 pixels per inch (PPI), but my Macbook Pro screen has 277 PPI. This means when I capture using myretina monitor, I'm capturing more pixels in my image due to the retina display. When Snagit saves the retina capture, it saves the image as twice the scale of the dimensions I actually grabbed.

When I constrain that image in the browser to a scaled down dimension, I retain those extra pixels on high retina monitors. On non-retina monitors, I get 72 DPI no matter what, so the effect isn't noticeable

Here's a detailed example. 

Using Snagit, I take a screen capture at 640 x 480px on a MacBook Pro retina monitor.

When I save the image, I select the check box that says "Save using retina size."

The resulting image is now 1280 x 960px. This is because the retina capture includes more pixels per inch, and Snagit is preserving these pixels but, I believe, resampling the image at twice the scale. The extra pixels can only be included by scaling the image at twice the size.

When embedding the screenshot, either constrain the size of the image with an inline style or set a sitewide style that constrains a max-width for images. This means you're pushing more pixels into a smaller space.


------
assume you are saving as png
scaling images up or down tends to degrade the image. 
2 different images, one for print, one for online. madcap capture allows this, but if you capture from a regular screen, will you see any benefit? what if you save as a TIF?
why vectors aren't discussed here.
artboard width should be a whole number, not partial. 16, 24, 32. not sure if this applies if you're using illustrator, since it's vector based.

Retina currently means double the information in the same pixel.
resulting file size


dpi 138