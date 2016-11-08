---
title: "How to get crisp text callouts like in Apple's new Touch bar documentation -- and why you might not want to"
categories:
- visual-communication
summary: "Apple's new Macbook laptops include a Touch Bar that replaces the function keys at the top of the keyboard. You can program these keys with your own custom functions. I was curious to see what the documentation for the Touch Bar looked like. In looking at the Apple docs, the most interesting element is the image sizes -- the original image sizes are 4 times the size of the shown graphic. This technique helps create a sharp, crisp look to text when the large image is constrained to a smaller size in the browser. However, I'm not sure that text callouts are the best strategy for images, especially if you're planning to translate the content."
bitlink: http://bit.ly/textcalloutstouchbardocs
---

## Checking out the Touch Bar documentation

You can check out the Touch Bar documentation here: [Meet the Touch Bar and Touch ID](https://help.apple.com/macbookprothunderbolt3/late-2016/#/apdea299d0db). In particular, take a look at the first graphic (the keyboard with callouts). In the browser, this image is about 400px. However, if you right-click and open the image in a new tab, you see that the full size is [much larger](https://help.apple.com/macbookprothunderbolt3/late-2016/en.lproj/Art/P0011_MBP4KeyboardTopView.png), about 1600px.

Why the difference? When you start with a large image and constrain its size down in the browser (by adding a `max-width` attribute to the image tag), the resolution looks a lot more crisp on a high retina display than a regular display. That's because the high retina display allows you to pack more pixels per inch.

You won't really see the difference on a regular monitor, but for fun, I embedded two graphics for comparison below. The first is the graphic at 400px width, while the second is 1600px wide.

<a href="http://idratherbewriting.com/images/initialgraphicapple.jpg"><img src="{{ "/images/initialgraphicapple.jpg" | prepend: site.baseurl }}" style="max-width: 400px" alt="400px original size image" caption="The original size of this image is 400px." /></a>

<a href="http://idratherbewriting.com/images/fullsizegraphicapple.jpg"><img src="{{ "/images/fullsizegraphicapple.jpg" | prepend: site.baseurl }}" style="max-width: 400px" alt="1600px original size image" caption="The original size of this image is 1600px." /></a>

On a regularly 72 DPI monitor, you won't see much difference between the two. But if you view the same images on a high retina display, which packs in a lot more pixels per inch, the text looks a lot sharper in the second image (with the 1600px original size).

If you aren't sure how many pixels per inch your monitor has, look at [dpilove](http://dpi.lv/). My Macbook Pro has 227 pixels per inch, but my Dell monitors have only 166 pixels per inch.

(At my work, I have two flat panel Dell monitors connected to my Macbook Pro laptop. I *wish* I had a Thunderbolt monitor instead of the two Dells, but one can't have everything ...)

When I take screenshots, it's best to take them from the high retina display using Snagit, because Snagit gives me the option to save my screenshot using the pixels captured from the high retina monitor. 

<img src="{{ "/images/testresolution/saveusingretinasize.png" | prepend: site.baseurl }}" style="max-width: 500px"  alt="Save using retina size" />

(This is one argument for using a high retina display when writing documentation.)

To take clarity one step further, you could use vector diagrams instead of rasters (for your images with text callouts). Vectors use mathematical algorithms instead of pixels, so the display resizes to fill the width of its container, keeping the sharp, clear edges for your text.

However, for all the theoretical advantages of vector graphics, they simply fall short when it comes to total cross-browser compatibility. I was feeling pretty confident in some vector graphics (just simple screenshots with callout text) I had with some docs at work, until I looked at [Browserstack.com](https://www.browserstack.com) to see the display across browsers. 

It turns out the [style hack](https://gist.github.com/larrybotha/7881691) I used for older IE browsers didn't work so well, nor did the display on some mobile devices. It's not only difficult to test vectors on all modern browsers (Chrome, Safari, Firefox, Edge, and IE 11), but especially difficult when you add in the plethora of mobile devices (iPad, iPhone, Kindle Fire, Android, Samsung, etc.).

Today I threw in the towel on my vectors and decided to replace them with the large images similar to the Apple diagrams I referenced earlier. However, even though I enlarged the image to twice the original size (and even four times), for some reason the constrained images still looked a little blurry on my Dell monitors in the Chrome browser (but they were fine in Firefox). 

The constrained images were sharp as ever on the Mac high retina display, but I could not for the life of me understand why downsizing an image made the text a little blurry on the Dell monitors in Chrome. I honestly spent about 2 hours playing with with various export settings in Illustrator (JPEG, PNG, 72-150-300 DPI, with transparency, without, 2x the original, 4x the original, quality 6, quality 8, quality 10, etc.). 

Finally I decided to give it a rest, and while resting, I realized that images probably shouldn't have text callouts anyway, since it's going to make translation a nightmare. 

## Turning against text callouts 

Best practices with text and images -- particularly with translation scenarios -- is to put numbers or letters in the callouts and elaborate below the image with a legend. Here are several examples:

* [http://psgips.blog24.fc2.com/blog-entry-068.html](http://psgips.blog24.fc2.com/blog-entry-068.html)
* [http://news.mynavi.jp/articles/2014/02/10/tiwtter_howto/](http://news.mynavi.jp/articles/2014/02/10/tiwtter_howto/)
* [http://www.alchemyschool.com/alch/blog/1080-1080.html](http://www.alchemyschool.com/alch/blog/1080-1080.html)

This is probably the best one: 

<a href="http://psgips.blog24.fc2.com/blog-entry-068.html](http://psgips.blog24.fc2.com/blog-entry-068.html"><img src="{{ "/images/calloutgoodexample.png" | prepend: site.baseurl }}" alt="A good example of callouts." /></a>

I tried to find some Apple documentation in Japanese to see if they also translated the text callouts or if they used the legend approach. Although I couldn't find the Touch Bar docs, I did find [this pdf](https://manuals.info.apple.com/MANUALS/1000/MA1761/ja_JP/macbook_pro_13_2t3_late2016_qs_j.pdf), which suggests that they do translate the text callouts. 

<a href="https://manuals.info.apple.com/MANUALS/1000/MA1761/ja_JP/macbook_pro_13_2t3_late2016_qs_j.pdf"><img src="{{ "/images/applejpcallouts.jpg" | prepend: site.baseurl }}" alt="Translation of callouts" /></a>

Without question, putting text near the object it describes increases the immediate readability. However, there's also a downside to putting text in callouts -- you have a limited amount of space. You can't expand with any more details than a 1-2 word description. 

In that sense, the limited space available in text callouts makes them less readable. You end up just giving items a name rather than providing both a name and some explanatory detail.

Additionally, because the text callouts usually stick out on the left or right, you have to shrink your image size smaller to fit it into the allowed space (or you extend your callouts vertically as with the Apple example). If you have more than 5 or 6 text callouts, you have to get really creative in drawing lines to the various regions. (With number or letter references, you also have draw lines to regions, but you aren't as constrained by the limited space.)

Bright accent colors such as red, orange, or magenta are often used for the callout liness -- because these colors usually stand out against the main background of a user interface. Apple's choice of gray for callout lines makes the lines a bit quieter, but this color will become problematic when the UI consists of gray tones. Lines that cut across the image often need a white stroke to stay visible. 

When it comes time to translate the image, if the text is stored in the image file itself, you'll have to either extract the text into a standalone file or send the image file to the translator with some kind of denotation about which callout will refer to which translated name. 

Additionally, when you get the file back, you'll have to re-align all of the text because no doubt the translated text will require adjustments with alignment and spacing. Overall, putting text in callouts greatly increases the difficulty of translation. 

For all of these reasons, it's just best to use the legend approach with callouts.



