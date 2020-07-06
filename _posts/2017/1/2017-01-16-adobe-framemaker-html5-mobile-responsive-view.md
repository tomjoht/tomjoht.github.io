---
title: "FrameMaker and the mobile web: Evaluating Adobe FrameMaker's responsive HTML5 output"
categories:
- technical-writing
keywords: Adobe FrameMaker, responsive html5 webhelp, documentation websites
description: "If you look at the surveys and other data collected about tool usage and priorities in the technical communication field, it's impossible not to acknowledge FrameMaker as one of the most common tools. Year after year it appears at the top of the charts, and print publishing remains a high priority. Although commonly known for its print publishing capabilities, FrameMaker also has an excellent responsive HTML5 web output. Getting responsive design right is difficult, particularly with documentation websites that have robust navigation sidebars. FrameMaker's responsive output is both mobile-friendly and impressively designed."
bitlink: http://bit.ly/fmweboutput
date: 2017-01-16 18:00:00
redirect_from:
  - /2017/01/16/adobe-framemaker-continues-to-top-charts/
---

## Responsive HTML5 output

FrameMaker is already well-known as an excellent print publishing tool, but what about its ability to publish web help, especially **responsive** HTML5 output? (You can actually publish ePub and Kindle with FrameMaker too, but in this post, I want to focus exclusively on responsive output.)

The HTML5 responsive output is a single output that can be easily viewed on any device (mobile, tablet, or desktop). When you view the site, the display adjusts or "responds" to the device's viewport size and dimensions to provide an appropriately readable view. 

In web design, creating a responsive site is one of the most challenging aspects you face. It's one reason why so many web designers use [Bootstrap and its 12-column grid](https://getbootstrap.com/examples/grid/), so that they can get the responsive design right from the start. 

When I did WordPress consulting some years ago, I almost always started with themes that already contained responsive styling. Even then, I ran into issues on some devices. 

For example, one time I helped implement a [WordPress theme called Canvas](http://demo.woothemes.com/) for the [Rockley Group](http://rockley.com/). Even with Canvas being developed by top designers with responsive styling promoted as the main selling point, it fell short. Charles Cooper manually tested it with a box of about 17 different mobile devices and found a number of issues with the responsive display. 

In sum, building a responsive site that works well across all browsers, platforms, and devices is hard. It's not something you want to do from scratch.

## Google ranks non-responsive sites lower

Is the mobile responsive view important if your mobile traffic is less than 5%? YES! The mobile view still matters because Google will actually lower your SEO rank for non-friendly mobile displays.

On a Google Webmaster Central Blog post in February 2015, Google stated:

> Starting April 21 [2015], we will be expanding our use of mobile-friendliness as a ranking signal. This change will affect mobile searches in all languages worldwide and will have a significant impact in our search results. Consequently, users will find it easier to get relevant, high quality search results that are optimized for their devices. ([Finding more mobile-friendly search results](https://webmasters.googleblog.com/2015/02/finding-more-mobile-friendly-search.html))

If your site isn't mobile friendly, the lower page rank may push your site to the second or third page of results. Given the need to promote help content as an asset (and help establish the value of docs in product discoverability phases) it's important to have strong SEO. 

## How to view the mobile responsiveness of a site

One way to evaluate the mobile responsiveness of a site is to use [Google's Mobile-Friendly Test](https://search.google.com/search-console/mobile-friendly?id=xH4LiR06yo-xzRcJUPA7Kg).
 
I took a [sample page from FrameMaker's responsive HTML5 help](http://help.adobe.com/en_US/framemaker/2015/using/index.html#t=using-framemaker-2015%2Ffrm_generating_output%2FGenerate_dynamic_content_output-.htm&rhsearch=html5&rhsyns=%20&rhhlterm=html5) and analyzed it with Google's tool. 

<a href="https://search.google.com/search-console/mobile-friendly?id=50wpj4cVoP8N5TMwWfO6-w"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/framemakermobilefriendlyreport.png" style="max-width: 700px" />

Google's assessed it as mobile friendly.

You can also manually shrink your browser window smaller to see the mobile responsive view. Or you can use the Developer Tools option in Chrome by going to **View > Developer > Developer Tools**. Then click the Toggle Device Toolbar button as shown in the following screenshot:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/devicetoolbarchrome.png" style="max-width: 500px;"/>

You can choose different device displays from the drop-down menu at the top (highlighted in yellow above).

The device toolbar in Chrome only superficially tests the mobile display. To really test content on mobile, you need to use an actual device. For example, open this page on your mobile phone or tablet, and then click the [sample page from FrameMaker](http://help.adobe.com/en_US/framemaker/2015/using/index.html#t=using-framemaker-2015%2Ffrm_generating_output%2FGenerate_dynamic_content_output-.htm&rhsearch=html5&rhsyns=%20&rhhlterm=html5).

You can assess the mobile friendliness by looking at any of the following aspects:

* Image sizes and aspect ratios
* Video playback and size
* Text readability
* Horizontal scrolling 
* Navigation controls 
* Pinch and zoom
* Page loading speed
* Popups or other interstitials
* Redirects and other JavaScript
* Overlapping or hidden elements

All of the above can pose issues. For example, images might extend beyond the viewport's size, or be oddly stretched. Videos with custom Flash players might not work. Text may be tiny or require horizontal scrolling. The navigation controls might not be easy to select, or other elements might overlap their display. Popups might be impossible to close. Page download time can be too slow, and so on.

## Documentation websites and mobile-friendly displays

Without question, the most difficult aspect of *documentation* websites is what to do with the navigation menu in the mobile view. In [Google's Mobile SEO guide](https://developers.google.com/webmasters/mobile-sites/), the authors show how elements may need to shift around in the mobile view: 

<a href="https://developers.google.com/webmasters/mobile-sites/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/responsiveshifts.png" style="max-width: 400px" />

Typically, websites will move navigation from the side into the main column for mobile displays. While this may work for simple navigation, documentation websites with more robust navigation controls don't look good with extensive navigation embedded in the main column.

In FrameMaker's responsive view, the navigation menu elegantly slides in when you tap a button on the top menu. You can choose to show another side menu for glossaries. Additionally, you can also do searches and view search results all within the mobile view. 

Adobe has done a superb job with their mobile friendliness, making a complex website simple to use and interact with.

Here are a few screenshots from FrameMaker's responsive help taken with my iPhone 5:

<div>
<figure style="margin: 5px 15px; float: left;"><img style="max-width: 300px; border: 1px solid #dedede;" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/framemakerscreenshot4.png"/><figcaption>Single page view</figcaption></figure>
<figure style="margin: 5px 15px; float: left;"><img style="max-width: 300px; border: 1px solid #dedede;" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/framemakerscreenshot3.png"/><figcaption>Nav menu expanded</figcaption></figure>
<figure style="margin: 5px 15px; float: left;"><img style="max-width: 300px; border: 1px solid #dedede;" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/framemakerscreenshot2.png"/><figcaption>Glossary menu expanded</figcaption></figure>
<figure style="margin: 5px 15px; float: left;"><img style="max-width: 300px; border: 1px solid #dedede;" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/framemakerscreenshot1.png"/><figcaption>Search results</figcaption></figure>
</div>

<div style="clear: left;"></div>

The navigation menu controls are easy to touch. The expand/collapse buttons in the nav menu are large enough for my bulky thumbs but not so big that they take up too much screen real estate (it's a difficult balance to get right). The way the nav menu slides in and out makes the page content easy to read and navigate.

## Conclusion

In Scott Abel's [2016 Technical Communication Benchmarking Survey](http://thecontentwrangler.com/2016/05/26/2016-technical-communication-industry-benchmarking-survey/), which included more than 700 respondents, Scott found that Adobe FrameMaker is used more than any other help authoring tool. (The only tool more used is TechSmith's Snagit, which is used for graphics, not help authoring.)

<a href="http://thecontentwrangler.com/2016/05/26/2016-technical-communication-industry-benchmarking-survey/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/benchmarkingsurveytoolslist.png" style="max-width:300px;" /></a>

Scott writes:

> Adobe FrameMaker is in use in 22% of the companies surveyed, making it the second most mentioned tool used by technical communicators in our survey. As far as authoring tools go, FrameMaker is used slightly more often than MadCap Flare (20%) and Oxygen XML Editor (13%). 

Similarly, the [most recent WritersUA tools survey](http://www.welinske.com/2014-user-assistance-tools-survey/) also showed that Adobe FrameMaker ranked as being more important than other help authoring tools (based on 1 to 5 number ratings from users). Adobe FrameMaker scored 199, higher than any other help authoring tool. (The next highest ranked tool was Flare at 148. OxygenXML scored 66.)

Both of these surveys point to the industry saturation of FrameMaker. A lot of technical writers use it for a reason &mdash; it works, not only for print (which is surprisingly still in high demand), but also for publishing responsive HMTL5 output on desktop and mobile.

Although it's possible to build your own responsive display, few do it, since it involves a heavy understanding of media queries and responsive web design. For the most part, technical writers should focus on content, not tools. The time you spend doing responsive styling can easily exhaust your bandwidth to focus on the help content for your next release.

To learn more about Adobe FrameMaker, you can [download a free trial here](http://www.adobe.com/cfusion/tdrc/index.cfm?product=framemaker&loc=en_gb&sdid=XPCNHDD5&mv=other).

*Note: Adobe is one of the sponsors for this site.*








   
   

