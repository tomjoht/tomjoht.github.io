---
title: 'Getting sharp, clear text in screenshots'
permalink: /visualcommunication_sharp_clear_screenshots/
keywords: 
course: "Visual Communication"
weight: 0.2
type: visualcommunication
---

Technical writers take a lot of screenshots, often showing interfaces with both text and graphic elements. Usually these are partial screen captures that focus on the part of the screen they are highlighting. 

If you want clear, crisp screenshots, you have several options:

* Capture and display at a 1:1 ratio
* Zoom out on your browser's magnification before capturing
* Capture from a retina display and resize in the browser

## Capture and display at a 1:1 ratio
If you capture your screen at the same ratio you display the images, the screenshots will be sharp and clear. For example, suppose you capture your screen at 640x480px. If you also display your image in the same dimensions, you won't lose any of the clarity, and your screenshot will remain sharp and clear.

However, 640x480px is somewhat large. Lots of screenshots this size will bloat your documentation. Additionally, at times you may need to show screen sizes larger than 640x480px, but then shrink them down to this size. 

Overall, trying to follow the 1:1 ratio for capturing and publishing doesn't really work unless you fill your documentation with partial screenshots (screenshots that show only a partial area of the screen). The more partial a screenshot, the less context you include and the more confusing it becomes to users.

## Zoom out on your browser's magnification

You can shrink your screen display by zooming out (Shift + - on a PC, Cmd +  - on a Mac). If the website is coded well, this may reduce the screen size while also keeping the text clear. 

However, not all sites retain the same proportions well when you zoom out. Additionally, it can be hard to remember exactly how many times you've zoomed out, which could create inconsistent magnification levels in your screenshots. 

If you have some partial screenshots that aren't zoomed out, mixed in with some full-size screenshots that are zoomed out, there will be an inconsistency with the magnification levels. This may be all right, but overall I am not a huge fan of zooming out with my browser. It's just not very practical.


## Capture from a retina display

You can also capture from a retina display and then resize the image in your browser to a smaller size. This approach requires a Mac with a high retina display. 

If you have a MacBook Pro (perhaps hooked up to multiple monitors that may not have retina displays), move the screen you plan to capture to this display and take your screen capture there. Using Snagit, when you save the screenshot you'll see a "Save using Retina size" option. (This option only appears if you take the screen capture from a high retina display.)

Save using the retina size, and then embed the screenshot on your page. If you were to view the embedded screen shot in the browser, you'll see that the screenshot actually looks huge. Add sizing to rescale the display in the browser, like this:
 
```
<img src="test1mac.png" style="max-width:640px"/>
```

Now you've got twice as many pixels packed in half the space as usual. As a result, the screenshot will be sharper and clearer.

Here's an example:

--
-- 

What's going on here? Basically, screens display a certain number of pixels per inch (PPI). See this site to see your browser's PPI: [http://dpi.lv/](dpi.lv).

My Dell monitor has 166 pixels per inch (PPI), but my Macbook Pro screen has 277 PPI. This means when you capture using your retina monitor, you're capturing more pixels in your image on the retina display. When Snagit saves the retina capture, it saves the image as twice the scale of the dimensions you actually grabbed.

When you resize that image in your browser by scaling it down, you retain those extra pixels on high retina monitors. On non-retina monitors, you get 72 DPI no matter what, so the effect isn't as worthwhile.

Here's a detailed example. 

Using Snagit, I take a screen capture at 640 x 480px on a MacBook Pro retina monitor.

When I save the image, I select the check box that says "Save using retina size."

The resulting image is now 1280 x 960px. This is because the retina capture includes more pixels per inch, and Snagit is preserving these pixels but, I believe, resampling the image with 72 DPI. The extra pixels can only be included by scaling the image at twice the size.

When embedding the screenshot, either constrain the size of the image with an inline style or set a sitewide style that constrains a max-width for images. This means you're pushing more pixels into a smaller space.

Here are some links for additional reading:

* [Snagit (Windows): Images are blurry or fuzzy](https://support.techsmith.com/hc/en-us/articles/203732158-Snagit-Windows-Images-are-blurry-or-fuzzy)