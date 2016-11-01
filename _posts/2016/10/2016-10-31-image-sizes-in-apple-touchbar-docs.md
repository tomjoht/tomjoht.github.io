---
title: "Image sizes in Apple's new Touchbar docs"
categories:
- visual-communication
keywords: 
summary: "Apple's new Macbook laptops include a touch bar that replaces the function keys at the top of the keyboard. You can program these keys with your own custom functions. I was curious to see what the documentation for the Touch Bar looked like. In looking at the docs, the most interesting element is the image sizes -- the original image sizes are 4 times the size of the shown graphic. This technique helps create a sharp, crisp look to text when the large image is constrained in the browser."
thumb: 
published: false
---

You can check out the Touch Bar documentation here: [Meet the Touch Bar and Touch ID](https://help.apple.com/macbookprothunderbolt3/late-2016/#/apdea299d0db). In particular, take a look at the first graphic (keyboard with callouts). In the browser, this image is about 400px. However, if you right-click and open the image in a new tab, you see that the full size is [much larger](https://help.apple.com/macbookprothunderbolt3/late-2016/en.lproj/Art/P0011_MBP4KeyboardTopView.png), about 1600px.

Why the difference? When you start with a large image and constrain its size down in the browser, the resolution looks a lot more crisp on a high retina display than a regular display. 

You won't really see the difference on a regular monitor, but for fun, I embedded the graphic below. The first is the graphic at 400px width, while the second is 1600px wide.

<img src="{{ "/images/initialgraphicapple.png" | prepend: site.baseurl }}" alt="400px original size image" />

<img src="{{ "/images/fullsizegraphicapple.png" | prepend: site.baseurl }}" alt="1600px original size image" />

On a regularly 72DPI monitor, there's not much difference. But if you view the same images on a Macbook Pro high retina display, which packs in a lot more pixels per inch, the text looks a lot sharper in the second image (with 1600px orginal size).

If you aren't sure how many pixels per inch your monitor has, look at [dpilove](http://dpi.lv/). My Macbook Pro has 227 pixels per inch, but my Dell monitors are only 166 pixels per inch.

When I take screenshots, it's best to take them from the high retina display using Snagit, because Snagit gives you the option to save your screenshot using the pixels captured from the high retina monitor. 

<img src="{{ "/images/testresolution/saveusingretinasize.png" | prepend: site.baseurl }}" alt="Save using retina size" />

This is one argument for using a Mac when writing documentation. 

I don't take a lot of screenshots in my documentation, but when I do, I do try to take them using my Macbook instead of from one of my Dell screens. To take clarity one step further, you can use vector diagrams instead of screenshots. Vectors use mathematical algorithms instead of pixels, so the display resizes to fill the width of its container.

When I did some callouts for screenshots for one of my products, I used vectors. You can see them here. 

The problem with vectors is getting the display to look good across browsers. It's probably better to simply use raster images, but if you can get the styles right, vectors do look more crisp. Here's an example: [Take an App Tour](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/fire-app-builder-customize-look-and-feel). 
 
If you right-click an image and open it in a new tab, such as [this one](https://images-na.ssl-images-amazon.com/images/G/01/mobile-apps/dex/firetv/fireappbuilder/fireappbuilder_contentdetailsdiagram._TTH_.svg), you can see that the image dynamically fills the width of the browser. Vectors look crisp at whatever size they're displayed in.

However, vectors are problematic in older IE browsers. Here's a style hack I found to address vector display on older IE browsers:


```css
/*
 * Let's target IE to respect aspect ratios and sizes for img tags containing SVG files
 *
 * [1] IE9
 * [2] IE10+
 */
/* 1 */
.ie9 img[src$=".svg"] {
    width: 100%;
}
/* 2 */
@media screen and (-ms-high-contrast: active), (-ms-high-contrast: none) {
    img[src$=".svg"] {
        width: 100%;
    }
}
```

See [Fix SVG in <img> tags not scaling in IE9, IE10, IE11](https://gist.github.com/larrybotha/7881691). This hack seems to work. Without it, you'll find that in older IE browsers, vectors look about the size of a postage stamp.

Note that it's actually really hard to test IE display on a Mac, since you can't install an IE browser. As a result, I have a Lenovo PC that I use for testing. Since it's a Windows 7 machine, the Internet Explorer browse is IE 11. But for Windows 10 machines, Edge is the default browser. Edge tends to behave more similar to Chrome, so that's good, but again, what a pain to test your content across browsers. You can use tools like [Browserstack.com](https://www.browserstack.com) to facilitate the testing, but 

Also interesting in the Apple documentation is their choice of gray for callout lines in the image. 

Related resource: I wrote about this topic previously here: [Getting sharp, clear text in screen captures — and making sense of Retina displays](http://idratherbewriting.com/2016/05/10/visualcommunication_sharp_clear_screenshots/).





