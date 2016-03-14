---
title: 'Getting sharp, clear text in screen captures &mdash; and making sense of Retina displays'
permalink: /visualcommunication_sharp_clear_screenshots/
keywords: 
course: "Visual Communication"
weight: 0.2
type: visualcommunication
---

<style>
    .col-md-9 img.six {
        max-width: 600px;
    }
    .col-md-9 img.four {
        max-width: 400px;
    }
@media only screen and (min-width: 981px), only screen and (min-device-width: 981px){
    /* mobile sidebar area, mobile top banner ad area */
    .col-md-9 img.six{
        max-width: 600px;
    }
    .col-md-9 img.four{
        max-width: 400px;
    }
  }
</style>
  
Technical writers take a lot of screen captures, often showing interfaces with both text and graphic elements. Usually these are partial screen captures that focus on the part of the screen they are highlighting. (By "screen capture," I'm referring to captures taken of specific user interfaces.)

In general, a lot of technical writers use Snagit and save the screen captures as PNG files, which is what I also do. 

If you want clear, crisp screen captures &mdash; especially when those screens contain text &mdash; you have several options:

* Capture and display at a 1:1 ratio
* Zoom out on your browser's magnification before capturing
* Capture from a retina display and resize in the browser

## Capture and display at a 1:1 ratio
If you capture your screen at the same ratio you display the images, the screenshots will be sharp and clear. For example, suppose you capture your screen at 600x400px. If you also display your image in the same dimensions, you won't lose any of the clarity, and your screenshot will remain sharp and clear *on other monitors that have similar or worse pixel-per-inch (PPI) density.

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

<figure><img src="{{ "/images/testresolution/loremmac600x400noretina.png" | prepend: site.baseurl }}"/></a><figcaption>277 PPI Retina monitor, captured at 600x400px dimensions but <b>not</b> saved as Retina capture. 254KB. <i>Not crisp.</i> </figcaption></figure>

<figure><img class="six" src="{{ "/images/testresolution/loremmac600x400retina.png" | prepend: site.baseurl }}"/></a><figcaption>277 PPI Retina monitor captured at 600x400px dimensions and saved as Retina capture (which makes the image 2x the original size). Constrained to 600x400px in the browser using an inline style. 680KB. <i>Crisp on a Retina monitor only.</i> </figcaption></figure>

<figure><img src="{{ "/images/testresolution/lorempc600x400.png" | prepend: site.baseurl }}"/></a><figcaption>138 PPI Non-retina monitor captured at 600x400px dimensions. 219KB. <i>Crisp only on monitors with 138 PPI or worse. Not clear on Retina monitors.</i> </figcaption></figure>

<figure><img class="six" src="{{ "/images/testresolution/loremmac600x400noretina.png" | prepend: site.baseurl }}"/></a><figcaption>Non-retina 138 PPI monitor captured at 1200x800px dimensions, and then constrained in the browser to half this size (600x400px) using an inline style. 635KB. <i>Not crisp.</i></figcaption></figure>

Now let's constrain the size of the image even more, to 400px. 

<figure><img class="four" src="{{ "/images/testresolution/loremmac600x400noretina.png" | prepend: site.baseurl }}"/></a><figcaption>277 PPI Retina monitor, captured at 600x400px dimensions but <b>not</b> saved as Retina capture. Constrained to 400px wide in the browser. 254KB. Somewhat crisp on a Retina monitor. </figcaption></figure>

<figure><img class="four" src="{{ "/images/testresolution/loremmac600x400retina.png" | prepend: site.baseurl }}"/></a><figcaption>277 PPI Retina monitor captured at 600x400px dimensions and saved as Retina capture (which makes the image 2x the original size). Constrained to 400px wide in the browser using an inline style. 680KB. Crisp on a Retina monitor. </figcaption></figure>

<figure><img class="four" src="{{ "/images/testresolution/lorempc600x400.png" | prepend: site.baseurl }}"/></a><figcaption>138 PPI Non-retina monitor captured at 600x400px dimensions, constrained to 400px in the browser. 219KB. <i>Somewhat crisp on a Retina monitor.</i></figcaption></figure>

<figure><img class="four" src="{{ "/images/testresolution/loremmac600x400noretina.png" | prepend: site.baseurl }}"/></a><figcaption>Non-retina 138 PPI monitor captured at 1200x800px dimensions, and then constrained in the browser to 400px in the browser using an inline style. 635KB.  <i>Somewhat crisp on a Retina monitor.</i> </figcaption></figure>


What's going on here? Basically, screens display a certain number of pixels per inch (PPI). See this site to see your browser's PPI: [http://dpi.lv/](dpi.lv).

My Dell monitor at work has 166 pixels per inch (PPI), my Dell All-in-One PC monitor has 138 PPI, and my Macbook Pro screen has 277 PPI. This means when I capture using my Mac's Retina monitor, I'm capturing more pixels in my image due to the Retina display. When Snagit saves the Retina capture, it saves the image as twice the scale of the dimensions I actually grabbed.

When I constrain that image in the browser to a scaled down dimension, I retain those extra pixels on Retina displays, since their high PPI allows them to make use of the pixels. On non-retina monitors, the extra pixels are wasted because the monitors only accept a certain PPI threshold, so having more does nothing. 

When I constrain the display to 400px on a Retina monitor, I pack more pixels into the space and so the image resolution increases. But with non-Retina monitors, there isn't the PPI available, so the images aren't crisp.

In sum, the only way to get crisp images on a non-Retina monitor is by preserving the 1:1 capture/display ratio. But on Retina monitors, you can get high fidelity by using saving the capture in the Retina size, though your page may load slower due to the large images. Alternatively, you can constrain images into smaller spaces. Constraining a 600px image into a 400px space makes the image somewhat crisp. This is similar to the Retina size of 1200px being constrained into a 600px space.

## Detailed example 

Here's a detailed example of how to get crisp images: 

1. Using Snagit, take screen capture at 640 x 480px on a MacBook Pro retina monitor.
2. When saving the image, select the check box that says "Save using retina size."
  The resulting image is now 1280 x 960px. This is because the retina capture includes more pixels per inch, and Snagit is preserving these pixels by resampling the image at twice the scale. 
3. When embedding the screenshot, constrain the size of the image in the browser using an inline style (or via a site-wide style that sets a max-width for the space). Ultimately this means you're pushing more pixels into a smaller space.


## Downsides of Retina display images

Retina display images have a couple of downsides. Mainly, the file sizes can be about four times as large. If you have a lot of Retina screen captures loading on the same page, users might experience a progressive-download-display effect as the images download.

Another problem is that manually embedding an inline style to control the width of the images makes mobile displays problematic. With mobile displays, you typically specify a max-width of 100% to fill the device window. But if you have an inline style that specifies a max-width of 600px, the mobile display of your image is too large and will require horizontal scrolling. At the same time, if you specify a max-width of 100% for the desktop

{% comment %} 
-----
Retina display is a proprietary marketing term coined by Apple, rather than a scientific term. To some it might evoke images of a complex scientific process; in reality it is just double resolution where pixels have been very closely packed to give higher quality and resolution. As an example, the pixel count can be anywhere from 220 pixels per inch (PPI) for third generation Mac Book Pros to 401 PPI for iPhone 6 Plus!

We can always set our code to display high-resolution images; however, there is a cost in displaying these images in the form of a bigger file size; the quality will be lost on low-resolution (low-res) devices.

dual images. http://mattstow.com/experiment/responsive-images/responsive-images.html
Instead, we could use a plugin, such as Retina JS, to tell browsers to serve hi-res images only when needed. Let's take a look at using one in action:

we don't want to show a high quality image if it chokes the available bandwidth of our device!

The resolution of an image file is simply a tag that is stored in the header information of thefile. You can create two copies of the same image file and set one to 72 ppi and the other to300 ppi, but the size of the file will not change! Both files will contain the same number ofpixels; they will simply be tagged so that the pixels are spaced closer together or farther apart.Different programs will choose to use this resolution setting or not. For example, a presenta-tion program like Microsoft PowerPoint or Apple Keynote doesn’t care about resolution, soit ignores the setting. These programs are only concerned with pixel dimensions, and theyusually display one image pixel per screen pixel (unless you shrink the image within the appli-cation, so you can fit more image area on-screen).The average computer screen has a resolu-tion somewhere between 72 and 96 ppi, so many digital cameras output files at 72 pixels perinch. At 72 ppi, an image from a four- or five-megapixel camera will have an area of severalsquare feet. That is, if you line up those four or five million pixels so that 72 of them take upone inch, then your image will end up being several feet long. When viewing on-screen in your image editor, this huge size isn’t a problem because the com-puter can zoom in and out of the image to fit it onto your screen. For printing, though, thisis far too large an area to fit on a typical printer, and 72 ppi is too low a resolution to yieldgood quality. If your goal is to post the image to a Web site, then resolution is completely irrelevant—theonly thing you care about is pixel count. A monitor has a fixed resolution. That is, the num-ber of pixels that cover one inch is always the same. So the only thing you need to concernyourself with is how many pixels there are in to

Pixels (short for picture elements) are the colored dots that appear on your computer screen. It’s veryimportant to understand that, when speaking of printing from your computer, there is a differencebetween the pixels on your screen—which are measured in pixels per inch—and the dots of ink yourprinter creates, which are measured in dots per inch. We’ll be discussing this in more detail later. Fornow, take note that we’re measuring our images in pixels per inch or 

e. When you change the pixel count, you’ll either have to throw out someoriginal pixels or make up some additional 

 ppi. That is, if you line up 72 of your image’spixels side by side, you will cover one inch of 
 
 If you want to print this image on an 8" ϫ 10" piece of paper, while preserving its originalresolution, you could tell your computer to throw out enough pixels so it only has 8" ϫ 10"worth of pixels at 72 ppi. It would then discard every third pixel or so, to reduce the pixeldimensions of the image from 3648 ϫ 2736 pixels to 576 ϫ 720 pixels (see Figure 22.1).This process of changing the amount of data in the image is called resampling (or, more specif-ically, downsampling), because you are taking a sample of pixels from your original image tocreate a new, smaller im
 
 
 pace. That is, the resolution of your image—the number ofpixels per inch—would have increased. This is what happens when you resize your imagewithout resampling (see Figure 
 
 d output. In imaging terms,resolution is simply the measure of how many pixels fit into a given space. For example, ifyour image has a resolution of 72 pixels per inch (ppi), the pixels in the image are sized andspaced so that 72 of them lined up alongside each other cover a distance of
 
 If your goal is to post the image to a Web site, then resolution is completely irrelevant—theonly thing you care about is pixel count. A monitor has a fixed resolution. That is, the num-ber of pixels that cover one inch is always the same. So the only thing you need to concernyourself with is how many pixels there are in 
 {% endcomment %}
