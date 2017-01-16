---
title: "Adobe FrameMaker -- Looking in depth at FrameMaker's responsive HTMl5 webhelp"
categories:
- api-doc
keywords:
summary: "If you look at the surveys and other data collected about tool usage and priorities in the technical communication field, it's impossible not to acknowledge FrameMaker as one of the main tool options. Year after year it appears at the top of the charts, and print publishing remains a high priority in companies. Although commonly known for its print publishing capabilities, FrameMaker also has an excellent responsive HTML5 web output as well."
bitlink: http://bit.ly/adobeframemakertrends
published: false
---

## Reviewing recent surveys

In May 2016, Scott Abel from The Content Wrangler published [The 2016 Technical Communication Benchmarking Survey](http://thecontentwrangler.com/2016/05/26/2016-technical-communication-industry-benchmarking-survey/), which included more than 700 tech comm pros in the survey. Among other findings, Scott found that print publishing was still important as a delivery channel. Scott writes:

> <p><b>Print is still alive and well, despite what some may think.</b></p><p>Despite what some may believe, print is not dead. While print may seem obsolete in many ways, today it’s still the second most common delivery channel for product content; 49% of companies surveyed craft print deliverables.</p>
  
The WritersUA [2016 Skills and Technologies Survey](http://www.welinske.com/skills-and-technologies-survey-2016-technologies/), conducted by Joe Welinske and including 284 participants, also found that print publishing remains important. Joe writes:

> PDF (79%) is at the top of the list as the most valued technology used for producing support manuals. Using PDF as a delivery format has become a staple in our documentation sets. PDF files can be delivered to users in any number of ways. In the past, this technology was mainly used for legacy print documents like user guides, and also for supplemental white papers and troubleshooting information. Today we find many organizations using PDF files as the primary distribution format for product documentation. 

Despite the predominance of the web, it's clear that even in 2017, PDF is still important.

*Note: Adobe is one of the sponsors for this site.*

## Authoring tools

Given the need to produce high-quality print deliverables, it doesn't surprise me that tools that are adept at delivering PDF are also highly used. In Scott's 2016 benchmarking survey, he found that Adobe FrameMaker is used more than any other help authoring tool. (The only tool more used in TechSmith's Snagit, which is used for graphics, not help authoring.)

<a href="http://thecontentwrangler.com/2016/05/26/2016-technical-communication-industry-benchmarking-survey/"><img src="/images/benchmarkingsurveytoolslist.png" style="max-width:300px;" /></a>

Scott writes:

> Adobe FrameMaker is in use in 22% of the companies surveyed, making it the second most mentioned tool used by technical communicators in our survey. As far as authoring tools go, FrameMaker is used slightly more often than MadCap Flare (20%) and Oxygen XML Editor (13%). 

In the WritersUA survey, tools are measured in a separate survey, the last of which was 2014. The [2014 WritersUA tools survey](http://www.welinske.com/2014-user-assistance-tools-survey/) ranked a long list of tools with 1 to 5 ratings in terms of importance to writers. Adobe FrameMaker scored 199, higher than any other help authoring tool. (The next highest ranked tool was Flare at 148. OxygenXML scored 66.)

Job trends also list Adobe FrameMaker frequently in their listings. I [searched on Indeed for the key "FrameMaker"](https://www.indeed.com/jobs?q=Framemaker&l=) and found 251 results &mdash; which was higher than other tools I informally searched for.

## Reasons for high ranking

Part of the reason FrameMaker ranks so highly is the tool's versatility. You can use FrameMaker to author structured content (such as DITA) or unstructured content based on your own templates. Few other authoring tools let you make such as fundamental decision about formats. 

Additionally, FrameMaker goes beyond just PDF publishing and allows you to generate responsive HTML5 webhelp (as well as Microsoft HTML Help, ePUB, and Kindle). Although FrameMaker originally started as a print publishing tool, its ability to publish web formats in modern ways has made it an all-in-one publishing solution, removing the need for RoboHelp or other online conversion tools. 

FrameMaker's ability to output high-quality print is unquestioned, but fewer people are familiar with the responsive online output. The responsive webhelp output from FrameMaker is what I want to analyze most in this post. 

## Responsive HTML5 Webhelp

Adobe FrameMaker's help defines its responsive web output as follows:

> Using Responsive HTML5, you can create a single output that is optimized for all your screens. Responsive HTML5 automatically adjusts to the screen a user is accessing it from and also adjusts to dynamic screen size changes, such as a flip of orientation or resizing of the browser.

Responsive help responds to the viewport size of the device to display your content appropriately. In web design, creating a responsive site is one of the most challenging aspects in creating a site. It's one reason why so many web designers use [Bootstrap and its 12-column grid](https://getbootstrap.com/examples/grid/), so that they can get the responsive design right from the start. 

When I did WordPress consulting some years ago, I almost always started with themes that already contained responsive styling. Even then, I ran into issues on some devices. 

For example, one time I helped implement a [WordPress theme called Canvas](http://demo.woothemes.com/) for the [Rockley Group](http://rockley.com/). Even with Canvas being developed by top designers with responsive styling promoted as the main selling point, it fell short. Charles Cooper manually tested it with a box of about 17 different mobile devices and found a number of issues with the responsive display. 

In sum, building a responsive site that works well across all browsers, platforms, and devices is hard. It's not something you want to do from scratch.

## Google ranks non-responsive sites lower

Why does responsive display matter so much? If you look at help metrics, most analytics tell you how many visits come from mobile devices. Usage varies based on the content and audience, but even for my blog, mobile visitors account for about 15-20% of the overall traffic. 

This is a significant amount of traffic, but even if your mobile traffic for your docs is less than 5%, you can't dismiss the mobile view. Google will lower your SEO rank if your site doesn't display well on mobile devices. 

On a Google Webmaster Central Blog post in February 2015, Google stated:

> Starting April 21 [2015], we will be expanding our use of mobile-friendliness as a ranking signal. This change will affect mobile searches in all languages worldwide and will have a significant impact in our search results. Consequently, users will find it easier to get relevant, high quality search results that are optimized for their devices. ([Finding more mobile-friendly search results](https://webmasters.googleblog.com/2015/02/finding-more-mobile-friendly-search.html))

If your site isn't mobile friendly, Google will lower its rank. This means search results may get pushed to the second or third page. Given the need to promote help content as an asset, it's important to have strong SEO. 

## How to view the mobile responsiveness of a site

How do you evaluate the mobile responsiveness of a site? One way is to use [Google's Mobile-Friendly Test](https://search.google.com/search-console/mobile-friendly?id=xH4LiR06yo-xzRcJUPA7Kg).
 
I took a [sample page from FrameMaker's responsive HTML5 help](http://help.adobe.com/en_US/framemaker/2015/using/index.html#t=using-framemaker-2015%2Ffrm_generating_output%2FGenerate_dynamic_content_output-.htm&rhsearch=html5&rhsyns=%20&rhhlterm=html5) and analyzed it with Google's tool. 

<a href="https://search.google.com/search-console/mobile-friendly?id=50wpj4cVoP8N5TMwWfO6-w"><img src="/images/framemakermobilefriendlyreport.png" style="max-width: 700px" />

Google's assessed it as mobile friendly.

You can also manually shrink your browser window smaller to see the responsive view. Or you can use the Developer Tools option in Chrome by going to **View > Developer > Developer Tools**. Then click the Toggle Device Toolbar button as shown in the following screenshot:

<img src="/images/devicetoolbarchrome.png" style="max-width: 500px;"/>

You can choose different device displays from the drop-down menu at the top (highlighted in yellow above).

The device toolbar in Chrome tests the mobile display only superficially. To really test content on mobile, you need to use an actual device. For example, open this page on your mobile phone or tablet, and then click the [sample page from FrameMaker](http://help.adobe.com/en_US/framemaker/2015/using/index.html#t=using-framemaker-2015%2Ffrm_generating_output%2FGenerate_dynamic_content_output-.htm&rhsearch=html5&rhsyns=%20&rhhlterm=html5).

You can assess the mobile friendliness by looking at any of the following issues:

* Pinch and zoom
* Image sizes and aspect ratios
* Video playback and size
* Text readability
* Horizontal scrolling 
* Navigation controls 
* Page loading speed
* Popups or other interstitials
* Redirects and other JavaScript
* Overlapping or hidden elements

All of the above can pose issues. For example, images might extend beyond the viewport's size, or be oddly stretched. Videos with custom Flash players might not work. Text may be tiny or require horizontal scrolling. The navigation controls might not be easy to select, or other elements might overlap their display. Popups might be impossible to close. Page speed can take too long, and so on.

## Documentation websites and mobile-friendly displays

Without question, the most difficult aspect of *documentation* websites is what to do with the navigation menu in the mobile view. In Google's Mobile SEO guide, they show how elements may need to shift around in the mobile view: 

<a href="https://developers.google.com/webmasters/mobile-sites/"><img src="/images/responsiveshifts.png" style="max-width: 400px" />

Typically websites will move navigation from the side into the main column for mobile displays. While this may work for simple navigation, documentation websites with more robust navigation controls don't look good with extensive navigation embedded in the main column.

In FrameMaker's responsive view, the navigation menu elegantly slides in when you tap a button on the top menu. Additionally, you can choose to show another side menu for glossaries entirely. 

You can also do searches and view search results all within the mobile view. Adobe has done a superb job with their mobile friendliness, making a complex website simple to use and interact with.

Here are a few screenshots from FrameMaker's responsive help taken with my iPhone 5:

<div>
<figure style="margin: 5px 15px; float: left;"><img style="max-width: 300px; border: 1px solid #dedede;" src="/images/framemakerscreenshot4.png"/><figcaption>Single page view</figcaption></figure>
<figure style="margin: 5px 15px; float: left;"><img style="max-width: 300px; border: 1px solid #dedede;" src="/images/framemakerscreenshot3.png"/><figcaption>Nav menu expanded</figcaption></figure>
<figure style="margin: 5px 15px; float: left;"><img style="max-width: 300px; border: 1px solid #dedede;" src="/images/framemakerscreenshot2.png"/><figcaption>Glossary menu expanded</figcaption></figure>
<figure style="margin: 5px 15px; float: left;"><img style="max-width: 300px; border: 1px solid #dedede;" src="/images/framemakerscreenshot1.png"/><figcaption>Search results</figcaption></figure>
</div>

<div style="clear: left;"></div>

The navigation menu controls are easy to touch. The buttons to expand or collapse the options are large enough for my bulky thumbs but not so big that they take up too much screen real estate. It's a difficult balance to get right. The way the nav menu slides in and out make the page content easy to read and navigate -- it all makes Adobe FrameMaker's responsive output an elegant implementation. 

## Conclusion

Although it's possible to build your own responsive display, few do it, since it involves a heavy understanding of media queries and responsive web design. Technical writers should focus on content, not tools. The time you spend doing responsive styling can easily exhaust your bandwidth to focus on the help content for your next release.

Overall, Adobe FrameMaker continues to be a popular tool option in the tech comm industry for its versatility and robust publishing. While it's always been known as a print publishing tool, it also excels at responsive web design.

To learn more about Adobe FrameMaker, you can [download a free trial here](http://www.adobe.com/cfusion/tdrc/index.cfm?product=framemaker&loc=en_gb&sdid=XPCNHDD5&mv=other).







   
   

