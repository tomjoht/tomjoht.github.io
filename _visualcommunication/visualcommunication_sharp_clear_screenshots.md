---
title: 'Getting sharp, clear text in screen captures'
permalink: /visualcommunication_sharp_clear_screenshots/
keywords: 
course: "Visual Communication"
weight: 0.2
type: visualcommunication
---
<style>

    .col-md-9 img.six{
        max-width: 600px;
    }
    
    .col-md-9 img.four{
        max-width: 400px;
    }
    
@media only screen and (max-width: 500px), only screen and (max-device-width: 500px){
    /* mobile sidebar area, mobile top banner ad area */
    .col-md-9 img.six{
        max-width: 100%;
    }
    
    .col-md-9 img.four{
        max-width: 100%;
    }
    
  }
  </style>
  
Technical writers take a lot of screen captures, often showing interfaces with both text and graphic elements. Usually these are partial screen captures that focus on the part of the screen they are highlighting. 

In general, a lot of technical writers use Snagit and save the screen captures as PNG files, and that's what I'm doing here. By "screen capture," I'm referring to captures taken of specific user interfaces.

If you want clear, crisp screen captures &mdash; especailly when those screens contain text &mdash; you have several options:

* Capture and display at a 1:1 ratio
* Zoom out on your browser's magnification before capturing
* Capture from a retina display and resize in the browser

## Capture and display at a 1:1 ratio
If you capture your screen at the same ratio you display the images, the screenshots will be sharp and clear. For example, suppose you capture your screen at 600x400px (my preferred dimensions for captures). If you also display your image in the same dimensions, you won't lose any of the clarity, and your screenshot will remain sharp and clear.

However, 600x400px is somewhat large and doesn't work for all screen captures. At times you may need to show screen sizes larger than 600x400px but then shrink them down to this size. 

Overall, trying to follow the 1:1 ratio for capturing and publishing doesn't really work unless you fill your documentation with partial screenshots (screenshots that show only a partial area of the screen). The more partial a screenshot, the less context you include and the more confusing it becomes to users.

Any time you scale your image up or down, the quality degrades. Mike Spink at Snagit explains why:

>Why does scaling cause image quality degradation? Imagine that you transferred your screen capture onto a tile floor comprised of many very small tiles. If you wished to reduce the size of the floor by 50%, you could remove every other tile and then slide the remaining tiles back together again.  The problem occurs because some of the tiles that you removed were colored tiles that comprise the content of the image. If there was writing in the image, some of the tiles that comprised characters might be removed. The "dot" over an "i" for example might have been on one of the tiles that you removed, or portions of the top curve in an "e" might now be gone. This results in broken characters, jagged lines and an overall "fuzzy" appearance of the image. (See [Snagit (Windows): Images are blurry or fuzzy](https://support.techsmith.com/hc/en-us/articles/203732158-Snagit-Windows-Images-are-blurry-or-fuzzy))

In other words, increasing or decreasing your image size causes your graphics program to manipulate the pixels in ways that degrade the original capture, because the graphics program has to compensate for missing pixels in different spaces.

## Zoom out on your browser's magnification

You can shrink your screen display by zooming out (Shift + - on a PC, Cmd +  - on a Mac). If the website is coded well, this may reduce the screen size while also keeping the text clear. After you zoom out the screen, take the screen capture.

However, not all sites retain the same proportions well when you zoom out. Additionally, it can be hard to remember exactly how many times you've zoomed out, which could create inconsistent magnification levels in your screenshots. 

If you have some partial screenshots that aren't zoomed out, mixed in with some full-size screenshots that are zoomed out, there will also be an inconsistency with the magnification levels. This inconsistency may be all right, but overall I am not a huge fan of zooming out with my browser. It's just not very practical given that not all sites react uniformly to zooming.

## Capture from a retina display

You can also capture from a Retina display and then resize the image in your browser to a smaller size. This approach requires a Mac with a Retina display. 

If you have a MacBook Pro (perhaps hooked up to multiple monitors that may not have Retina displays), move the screen you plan to capture to the Mac's Retina display and take your screen capture there. Using Snagit, when you save the screenshot you'll see a "Save using Retina size" option. (This option only appears if you take the screen capture from a Retina display.)

<figure><a href="http://idratherbewriting.com"><img src="{{ "/images/testresolution/saveusingretinasize.png" | prepend: site.baseurl }}"/></a><figcaption>The "Save using Retina size" option appears only when you take a capture from a retina monitor (Mac)</figcaption></figure>

Save using the retina size, and then embed the screenshot on your page. If you were to view the embedded screen capture in the browser, you'll see that the screenshot is actually twice the size of the original dimensions. To compensate for this larger size, add inline sizing to rescale the display in the browser, like this:  
 
```
<img src="screenshot.png" style="max-width:600px"/>
```

Now you've got twice as many pixels packed in half the space. As a result, the screenshot will be sharper and clearer on Retina displays because you're packing more pixel data into a display that can make use of those extra pixels. However, for monitors that can't make use of the extra pixels, the displays will look the same as with non-Retina captures.

## Examples

Let's look some examples. Note that you won't be able to see the difference unless you can switch between a Retina and non-Retina monitor. If you have an iPhone, which has a Retina display, you can open it up to observe the differences in screen resolution.

<figure><img src="{{ "/images/testresolution/loremmac600x400noretina.png" | prepend: site.baseurl }}"/></a><figcaption>277 PPI Retina monitor, captured at 600x400px dimensions but <b>not</b> saved as Retina capture. 254KB.</figcaption></figure>

<figure><img class="six" src="{{ "/images/testresolution/loremmac600x400retina.png" | prepend: site.baseurl }}"/></a><figcaption>277 PPI Retina monitor captured at 600x400px dimensions and saved as Retina capture (which makes the image 2x the original size). Constrained to 600x400px in the browser using an inline style. 680KB.</figcaption></figure>

<figure><img src="{{ "/images/testresolution/lorempc600x400.png" | prepend: site.baseurl }}"/></a><figcaption>138 PPI Non-retina monitor captured at 600x400px dimensions. 219KB</figcaption></figure>

<figure><img class="six" src="{{ "/images/testresolution/loremmac600x400noretina.png" | prepend: site.baseurl }}"/></a><figcaption>Non-retina 138 PPI monitor captured at 1200x800px dimensions, and then constrained in the browser to half this size (600x400px) using an inline style. 635KB.</figcaption></figure>


<figure><img class="four" src="{{ "/images/testresolution/loremmac600x400noretina.png" | prepend: site.baseurl }}"/></a><figcaption>277 PPI Retina monitor, captured at 600x400px dimensions but <b>not</b> saved as Retina capture. Constrained to 400px wide in the browser. </figcaption></figure>

<figure><img class="four" src="{{ "/images/testresolution/loremmac600x400retina.png" | prepend: site.baseurl }}"/></a><figcaption>277 PPI Retina monitor captured at 600x400px dimensions and saved as Retina capture (which makes the image 2x the original size). Constrained to 400px wide in the browser using an inline style.</figcaption></figure>

<figure><img class="four" src="{{ "/images/testresolution/lorempc600x400.png" | prepend: site.baseurl }}"/></a><figcaption>138 PPI Non-retina monitor captured at 600x400px dimensions, constrained to 400px in the browser.</figcaption></figure>

<figure><img class="four" src="{{ "/images/testresolution/loremmac600x400noretina.png" | prepend: site.baseurl }}"/></a><figcaption>Non-retina 138 PPI monitor captured at 1200x800px dimensions, and then constrained in the browser to 400px in the browser using an inline style.</figcaption></figure>



What's going on here? Basically, screens display a certain number of pixels per inch (PPI). See this site to see your browser's PPI: [http://dpi.lv/](dpi.lv).

My Dell monitor at work has 166 pixels per inch (PPI), my Dell All-in-One PC monitor has 138 PPI, and my Macbook Pro screen has 277 PPI. This means when I capture using my retina monitor, I'm capturing more pixels in my image due to the retina display. When Snagit saves the retina capture, it saves the image as twice the scale of the dimensions I actually grabbed.

When I constrain that image in the browser to a scaled down dimension, I retain those extra pixels on high retina monitors. On non-retina monitors, the extra pixels are wasted because they only accept a certain threshold, so having more does nothing. 

## Detailed example 

Here's a detailed example of how to get crisp images: 

1. Using Snagit, take screen capture at 640 x 480px on a MacBook Pro retina monitor.
2. When saving the image, select the check box that says "Save using retina size."
  The resulting image is now 1280 x 960px. This is because the retina capture includes more pixels per inch, and Snagit is preserving these pixels by resampling the image at twice the scale. 
3. When embedding the screenshot, constrain the size of the image in the browser using an inline style (or via a site-wide style that sets a max-width for the space). Ultimately this means you're pushing more pixels into a smaller space.


## Downsides of Retina display images

Retina display images have a couple of downsides. Mainly, the file sizes can be about four times as large. 


------
assume you are saving as png
scaling images up or down tends to degrade the image. 
2 different images, one for print, one for online. madcap capture allows this, but if you capture from a regular screen, will you see any benefit? what if you save as a TIF?
why vectors aren't discussed here.
artboard width should be a whole number, not partial. 16, 24, 32. not sure if this applies if you're using illustrator, since it's vector based.

Retina currently means double the information in the same pixel.
resulting file size


dpi 138