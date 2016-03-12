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
If you capture your screen at the same ratio you display the images, then they will be sharp and clear. For example, suppose you capture your screen at 640x480px. If you also display your image in the same dimensions, you won't lose any of the clarity, and your screenshot will remain sharp and clear.

However, 640x480px is somewhat large. Lots of screenshots this size will bloat your documentation. Additionally, at times you may need to show larger captures than 640x480px, and then shrink them down to this size. 

## Zoom out on your browser's magnification

You can shrink your screen display by zooming out (Shift + - on a PC, Cmd +  - on a Mac). If the website is coded well, this may reduce the screen size while also keeping the text clear. 

However, not all sites retain the same proportions well when you zoom out. Additionally, it can be hard to remember exactly how many times you've zoomed out, which could create inconsistent magnification levels in your screenshots.


## Capture from a retina display

This is probably the best approach, but it requires a Mac with a high retina display. If you have a MacBook Pro, move your screen to this display and take your screen capture there. Using Snagit, when you save the screenshot you'll see a "Save using Retina size" option. (This option only appears if you take the screen capture from a high retina display.)

Save using the retina size, and then embed the screenshot on your page. If you were to view the screen shot display in the browser, you'll see that the screenshot actually looks huge. Add sizing to rescale the display in the browser, like this:
 
```
<img src="test1mac.png" style="max-width:640px"/>
```

Now you've got twice as many dots packed in half the space as usual. As a result, the screenshot will be sharper and clearer. 

What's going on here? Basically, screens display a certain number of pixels per inch (PPI). See this site to see your browser's PPI: [http://dpi.lv/](dpi.lv).

My Dell monitor has 166 pixels per inch, but my Macbook Pro screen has 277. This means you're capturing more pixels in your image on the retina display. When Snagit saves the retina capture, it magnifies the pixels into an output with 72 DPI, so as a result it looks huge.

When you resize that image in your browser by scaling it down, you retain those extra pixels on high retina monitors. On non-retina monitors, you get 72 DPI no matter what. 

capture on retina, you see the scaled dimensions.

Does that mean my 640 x 480 capture is saved at 1280 x 960 px dimensions?
yes

suppose I took a screenshot on a Dell monitor (non-retina) at 1280 x 960px, and then I resized it to half that size in the browser display. Would it look just as sharp as the retina version?
Alex O.
I would expect it to be similar, yes. But it is using a totally different resampling method, so it's something you would have to test

The more an image gets rescaled from its original dimensions, generally the worse the quality. That's the only reason I mention that

when i resize-down the image in the browser, am I pushing more pixels into a smaller space?

the whole PPI and DPI stuff is a little confusing to me. Can you clarify the difference between these two? is PPI the screen resolution, whereas DPI is the image resolution?

yes
## Capture at twice the size you plan to display


https://support.techsmith.com/hc/en-us/articles/203732158-Snagit-Windows-Images-are-blurry-or-fuzzy


There are some external article out there about how scaling down hurts image quality: https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=why%20does%20scaling%20down%20images%20hurt%20quality


You are right though, it can get a little tricky as there are many variables happening when rescaling, viewing on other monitors etc. Unfortunately I am not able to locate any specific documentation on our behalf regarding that checkbox