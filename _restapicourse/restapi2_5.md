---
title: 2.5 Documenting the sample response
permalink: /restapicourse2-4/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.5
---
{% include notes.html %}
{% include restapicourse.html %}

## Provide a sample response

It's important to provide a sample response from the endpoint. This lets developers know if the endpoint contains the information they want, and how that information is labeled. 

Here's an example from Flattr's API. In this case, the response actually includes the response header as well as the response body:

<a href="http://developers.flattr.net/api/resources/activities/"><img src="{{ "/images/restapicourse/flattr.png" | prepend: site.baseurl }}" alt="" /></a>

If the header information is important, feel free to include it.

## Documenting the returned values

Some APIs describe each item in the response, while others, perhaps because the responses are self-evident, omit the response documentation. In the Flattr example above, the response isn't explained. Neither is the response explained in Twitter's API.

If the labels in the response are abbreviated or non-intuitive, however, you definitely should document the responses. Developers sometimes abbreviate the responses to increase performance by reducing the amount of text sent.

Plus, if you're documenting some of the response items but not others, the doc will look inconsistent.

## Documenting indented values

Many times the response contains nested values. Here Dropbox represents the nesting by using a slash. `team/name` provides the documentation for object within the object. 

<a href="https://www.dropbox.com/developers/core/docs#disable-token"><img src="{{ "/images/restapicourse/returnvaluedefinitions.png" | prepend: site.baseurl }}" alt="" /></a>

{{tip}} Notice how the response values are in a monospace font while the descriptions are in a regular font? This helps improve the readability. {{end}}


Other APIs will nest the response definitions to imitate the JSON structure. Here's an example from bit.ly's API:

<a href="http://dev.bitly.com/user_info.html"><img src="{{ "/images/restapicourse/bitlyresponsedoc.png" | prepend: site.baseurl }}" alt="Bitly response" /></a>

Personally, I think the indented approach with different levels of bullets is an eyesore.

In [Peter Gruenbaum's API tech writing course on Udemy](https://www.udemy.com/api-documentation-1-json-and-xml/), he also suggests using tables to represent the nesting with JSON responses:

<a href="http://idratherbewriting.com/2015/05/22/api-technical-writing-course-on-udemy/"><img src="{{ "/images/restapicourse/gruenbaumtable.png" | prepend: site.baseurl }}" alt="Peter Gruenbaum course" /></a>

eBay's approach is a little more unique. 

<a href="http://developer.ebay.com/Devzone/shopping/docs/CallRef/FindPopularItems.html"><img src="{{ "/images/restapicourse/ebayexampleresponse.png" | prepend: site.baseurl }}" alt="eBay example response" /></a>

For example, `MinimumAdvertisedPrice` is nested inside `DiscountPriceInfo`, which is nested in `Item`, which is nested in `ItemArray`. (Note also that this response is in XML instead of JSON.)

<a href="http://developer.ebay.com/Devzone/shopping/docs/CallRef/FindPopularItems.html"><img src="{{ "/images/restapicourse/ebaycode.png" | prepend: site.baseurl }}" alt="" /></a>

It's also interesting how much detail eBay includes for each item. Whereas the Twitter writers appear to omit descriptions, the eBay authors write small novels describing each item in the response.

{{note}} A lot of APIs also return responses in XML. It's mostly older APIs that provide the XML option, since XML used to be more popular than JSON. Some APIs give you the option of returning responses in either XML or JSON. If you're going to consume the API on a web page, then JSON is probably much more popular, because you can use JavaScript to grab the information you want. With XML, you would need to use XML scripts such as XPath and XQuery to parse through the response. {{end}}

## Design elements for the response

Some APIs collapse the response into a show/hide toggle to save space. Others put the response in a right column so you can see it while also looking at the endpoint description and parameters. Stripe's API made this tri-column design famous:

<a href="https://stripe.com/docs/api#charge_object"><img src="{{ "/images/restapicourse/stripetripanedesign.png" | prepend: site.baseurl }}" alt="Stripe's tri-column design" /></a>

A lot of APIs have modeled their design after Stripe's. (For example, see <a href="https://github.com/tripit/slate">Slate</a> or <a href="http://readme.io">readme.io</a>.)

To represent the child objects, Stripe uses an expandable section under the parent (see the "Hide Child Attributes" link in the screenshot above). 

I'm not sure that the tripane column is so usable. The original idea of the design was to allow you to see the response and description at the same time, but when the description is long (such as is the case with `source`), it creates unevenness in the juxtaposition. 

Many times, the descriptions aren't in the same viewing area as the sample response, so what's the point of arranging them side by side? It splits the viewer's focus and causes more up and down scrolling.

## Use realistic values

The response should contain realistic values. If developers give you a sample response, make sure each of the possible items that can be included are shown. The values for each should be reasonable (not bogus test data that looks corny).

## Dynamic responses

Sometimes responses are generated dynamically based on API calls to a test system. For example, look at the [Rhapsody API](https://developer.rhapsody.com/api) and click an endpoint &mdash; it appears to be generated dynamically). 

When I worked at Badgeville, we had a test/demo system we used to generate the responses. It was important that the test system has the right data to create good responses. You don't want a bunch of null or missing items in the response. 

## Format the JSON properly 

Use proper JSON formatting for the response. A tool such as [JSON Formatter and Validator](http://jsonformatter.curiousconcept.com/) can make sure the spacing is correct. 

## Add syntax highlighting
If you can add syntax highlighting as well, definitely do it. One good Python-based syntax highlighter is [Pygments](http://pygments.org/). 

Since your tool and platform dictate the syntax highlighting options available, look for syntax highlighting options within the system that you're using. If you don't have any syntax highlighters to integrate directly into your tool, you could add syntax highlighting manually for each code sample by pasting it into the [syntaxhighlight.in](http://syntaxhighlight.in/) highlighter.

## Create a section for a sample request in your surfreport/{beachID} endpoint

For your surfreport/{beachID} endpoint, create a section that shows the sample response. Look over the response to make sure it shows what it should.

Here's what mine looks like: 
```json
{
    "surfreport": [
        {
            "beach": "Santa Cruz",
            "monday": {
                "1": {
                    "tide": 5,
                    "wind": 15,
                    "watertemp": 80,
                    "surfheight": 5,
                    "recommendation": "Go surfing!"
                },
                "2": {
                    "tide": -1,
                    "wind": 1,
                    "watertemp": 50,
                    "surfheight": 3,
                    "recommendation": "Surfing conditions are okay, not great"
                }
                "3": {
                    "tide": -1,
                    "wind": 10,
                    "watertemp": 65,
                    "surfheight": 1,
                    "recommendation": "Not a good day for surfing."
                }
            }
        }
    ]
}
```


{% include restapicourse_next.html %}
