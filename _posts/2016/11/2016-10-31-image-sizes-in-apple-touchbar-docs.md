---
title: "How to get crisp images like in Apple's new Touch bar documentation"
categories:
- visual-communication
summary: "Apple's new Macbook laptops include a Touch Bar that replaces the function keys at the top of the keyboard. You can program these keys with your own custom functions. I was curious to see what the documentation for the Touch Bar looked like. In looking at the Apple docs, the most interesting element is the image sizes -- the original image sizes are 4 times the size of the shown graphic. This technique helps create a sharp, crisp look to text when the large image is constrained in the browser. However, I'm not sure that text callouts are the best strategy for images, especially if you're planning to translate the content."
---

You can check out the Touch Bar documentation here: [Meet the Touch Bar and Touch ID](https://help.apple.com/macbookprothunderbolt3/late-2016/#/apdea299d0db). In particular, take a look at the first graphic (the keyboard with callouts). In the browser, this image is about 400px. However, if you right-click and open the image in a new tab, you see that the full size is [much larger](https://help.apple.com/macbookprothunderbolt3/late-2016/en.lproj/Art/P0011_MBP4KeyboardTopView.png), about 1600px.

Why the difference? When you start with a large image and constrain its size down in the browser (by adding a `max-width` attribute to the image tag), the resolution looks a lot more crisp on a high retina display than a regular display. That's because the high retina display allows you to pack more pixels per inch.

You won't really see the difference on a regular monitor, but for fun, I embedded two graphics for comparison below. The first is the graphic at 400px width, while the second is 1600px wide.

<img src="{{ "/images/initialgraphicapple.png" | prepend: site.baseurl }}" max-width="400px" alt="400px original size image" caption="The original size of this image is 400px." />

<img src="{{ "/images/fullsizegraphicapple.png" | prepend: site.baseurl }}" max-width="400px" alt="1600px original size image" caption="The original size of this image is 1600px." />

On a regularly 72 DPI monitor, there's not much difference. But if you view the same images on a high retina display, which packs in a lot more pixels per inch, the text looks a lot sharper in the second image (with 1600px original size).

If you aren't sure how many pixels per inch your monitor has, look at [dpilove](http://dpi.lv/). My Macbook Pro has 227 pixels per inch, but my Dell monitors have only 166 pixels per inch.

(At my work, I have two flat panel Dell monitors connected to my Macbook Pro laptop. I *wish* I had a Thunderbolt monitor instead of the two Dells, but one can't have everything ...)

When I take screenshots, it's best to take them from the high retina display using Snagit, because Snagit gives me the option to save my screenshot using the pixels captured from the high retina monitor. 

<img src="{{ "/images/testresolution/saveusingretinasize.png" | prepend: site.baseurl }}" alt="Save using retina size" />

(This is one argument for using a high retina display when writing documentation.)

To take clarity one step further, you could use vector diagrams instead of rasters. Vectors use mathematical algorithms instead of pixels, so the display resizes to fill the width of its container, keeping the sharp, clear edges.

However, for all the theoretical advantages of vector graphics, they simply fall short when it comes to total cross-browser compatibility. I was feeling pretty confident in some vector graphics (just simple screenshots with callout text) I had with some docs at work, until I looked at [Browserstack.com](https://www.browserstack.com) to see the display across browsers. 

It turns out the [style hack](https://gist.github.com/larrybotha/7881691) I used for older IE browsers didn't work so well, nor did the display on some mobile devices. It's not only difficult to test vectors on all modern browsers (Chrome, Safari, Firefox, Edge, and IE 11), but especially difficult when you add in the plethora of mobile devices (iPad, iPhone, Kindle Fire, Android, Samsung, etc.).

Today I threw in the towel on my vectors and decided to replace them with the large images similar to the Apple diagrams I referenced earlier. However, even though I enlarged the image to twice the original size, for some reason the constrained images still looked a little blurry on Dell monitors in the Chrome browser (but they were fine in Firefox). 

The constrained images were sharp as ever on the Mac high retina display, but I could not for the life of me understand why downsizing an image made the text a little blurry on the Dell monitors in Chrome. I honestly spent about 2 hours playing with with various export settings in Illustrator (JPEG, PNG, 72-150-300 DPI, with transparency, without, 2x the original, 4x the original, maximum resolution, etc.). 

Finally I decided to give it a rest, and while resting, I realized that images probably shouldn't have text callouts anyway, since it's going to make translation a nightmare. 

Best practices with text and images -- particularly with translation -- is to put numbers in the callouts and elaborate below the image. Here are several examples:

* [http://news.mynavi.jp/articles/2014/02/10/tiwtter_howto/](http://news.mynavi.jp/articles/2014/02/10/tiwtter_howto/)
* [http://psgips.blog24.fc2.com/blog-entry-068.html](http://psgips.blog24.fc2.com/blog-entry-068.html)
* [http://www.alchemyschool.com/alch/blog/1080-1080.html](http://www.alchemyschool.com/alch/blog/1080-1080.html)

I tried to find some Apple documentation in Japanese to see if they also translated the text callouts or if they used legends. Although I couldn't find the Touch Bar docs, I did find [this pdf](https://manuals.info.apple.com/MANUALS/1000/MA1761/ja_JP/macbook_pro_13_2t3_late2016_qs_j.pdf), which suggests that they do translate the text callouts. 

<a href="https://manuals.info.apple.com/MANUALS/1000/MA1761/ja_JP/macbook_pro_13_2t3_late2016_qs_j.pdf"><img src="{{ "/images/applejpcallouts.png" | prepend: site.baseurl }}" alt="Translation of callouts" /></a>

Without question, putting the text near the object it describes increases the readability. However, there's also a downside to putting text in callouts -- you have a limited amount of space. You can't expand with any more details than a 1-2 word description. 

In that sense, the limited space available in text callouts makes them less understandable. You end up just giving items a name rather than providing both a name and some explanatory detail.

Additionally, because the text callouts usually stick out on the left or right, you have to shrink your image size smaller to fit your image into the allowed space. If you have more than 5 or 6 text callouts, you have to get really creative in drawing lines to the various regions. Then you end up spending a lot of time aligning things and adding the right spacing. 

In the end, it doesn't really matter whether your text in crystal sharp in callouts, because text normally shouldn't appear in callouts anyway.




