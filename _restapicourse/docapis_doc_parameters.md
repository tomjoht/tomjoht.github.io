---
title: Documenting parameters
permalink: /docapis_doc_parameters/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 2.7
type: notes_docapis
---
{% include notes.html %}

## Parameters are ways to configure the endpoint

Parameters refer to the various ways the endpoint can be configured to influence the result. Many times parameters are listed out in a simple table like this:

| Parameter | Required? | Data Type | Example |
|-----------|-----------|-----------|---------|
| format | optional | string | json |

Here's an example from Yelp's documentation:

<a href="https://www.yelp.com/developers/documentation/v2/search_api"><img src="{{ "/images_api/yelpparameters.png" | prepend: site.baseurl }}" alt="Yelp parameters" /></a>

You can format the values in a variety of ways. If using a definition list or other non-table format, you probably have styles that make these values easily readable.

## Data types indicate the format for the values

It's important to list the data type for each parameter because APIs may not process the parameter correctly if it's the wrong data type or if it's not in the right format. These data types are the most common: 

* **string**: An alphanumeric sequence of letters and possibly numbers. 
* **integer**: A whole number &mdash; can be positive or negative.
* **boolean**: true or false.
* **object**: Key-value pairs in JSON format

There are more data types in programming. In Java, for example, it's important to note the data type allowed because the program allocates space based on the size of the data. As such, Java gets much more specific about the size of numbers. You have a byte, short, int, double, long, float, char, boolean, and so on. 

However, you usually don't have to specify this level of detail with a REST API. You can probably just write "number".

## Parameters should list allowed values

One of the problems with the Mashape Weather API is that it doesn't tell you which values are allowed for the latitude and longitude. If you type in coordinates for Bangalore, for example, `12.9539974` and `77.6309395`, the response is `Not Supported - IN - India - IN-KA`. Which cities are supported, and where does one look to see a list? This information should be made explicit in the description of parameters.

## Parameter order doesn't matter

Often the parameters are added with a query string (`?`) at the end of the endpoint, and then each parameter is listed one right after the other with an ampersand (`&`) separating them. Usually the order in which parameters are passed to the endpoint does not matter. 

For example:

```
/surfreport/{beachId}?days=3&units=metric&time=1400
```

and

```
/surfreport/{beachId}?time=1400&units=metric&days=3
```

would return the same result.

However, if the parameter is part of the actual endpoint path (not added in the query string), such as with `{beachId}` above, then you usually describe this value in the description of the endpoint itself.

Here's an example from Twilio:

<a href="https://www.twilio.com/docs/api/rest/lookups"><img src="{{ "/images_api/twiliosample.png" | prepend: site.baseurl }}" alt="Twilio Example" /></a>

The `{PhoneNumber}` value is described in the description of the endpoint rather than in another section that lists the query parameters you can pass to the endpoint.

Here are a few other details to remember when describing parameters:

* Note whether the parameter has a maximum or minimum value.
* Note whether the parameters are optional or required.

{{tip}} When you test the API, try running an endpoint without the required parameters, or with the wrong parameters. See what kind of error response comes back. Include that response in your response codes section.{{end}}

## Color coding parameter values

When you list the parameters and endpoint definition, it can help to color code the parameters. This makes it clear what's a parameter and what's not in the endpoint. 

For example, suppose your endpoint definition is as follows:

<div class="endpoint">
<span class="muted">http://domain.com:port/</span>/service/myendpoint/user/<span class="parameter">{user}</span>/bicycles/<span class="parameter">{bicycles}</span>/
</div>

| URL Parameter | Description |
|-------|------|
| <span class="parameter">user</span> | Here's my description of the user parameter. |
| <span class="parameter">bicycles</span> | Here's my description of the bicycles parameter. |

By color coding the parameters, it's easy to see it in contrast with the other parts of the URL.

Note that if you're custom-color-coding the parameters, you'll need to skip the automatic syntax highlighting options and just use either your own styles or a general `pre` element. 

## Passing parameters in the JSON body

Frequently with POST requests, you will submit a JSON object in the request body. This JSON object may be a lengthy list of key value pairs with multiple levels of nesting.

For example, the endpoint URL may be something simple, such as `/surfreport/{beachId}`. But in the body of the  request, you include a JSON object formatted, like this:

```
{
"days": 2,
"units": "imperial",
"time": 1433524597
}
```

## Documenting lengthy JSON objects in request bodies

Documenting JSON data is actually one of the trickier parts of API documentation. Documenting a JSON object in the request body or in the response is easy if the object is simple, with just a few key-value pairs. But what if you have a JSON object with multiple objects inside objects, numerous levels of nesting, and lengthy and conditional data? What if the JSON object spans more than 100 lines? 

Tables work all right for documenting JSON, but they can be challenging as well. In a table, it can be hard to distinguish between top-level and sub-level items. The object that contains an object that also contains an object etc. can be confusing to represent.

By all means, if the JSON object is relatively small, a table is probably your best option. But there are some other approaches that designers have taken as well.

### The scrolling-to-definitions approach

In my [documentation theme for Jekyll](http://idratherbewriting.com/documentation-theme-jekyll), I tried an approach to documenting JSON that uses a jQuery plugin called ScrollTo. You can [see it here](http://idratherbewriting.com/documentation-theme-jekyll/mydoc_scroll):

<a href="http://idratherbewriting.com/documentation-theme-jekyll/mydoc_scroll"><img src="{{ "/images_api/scrollto-550x310.png" | prepend: site.baseurl }}" alt="Scrollto"  style="border:1px solid #dedede;"/></a>

When you click on an item in the JSON object, the right-pane scrolls to the item's description. I like this approach, though I've not really seen it done in other API documentation sites.

One problem is that you end up with three scroll bars on one page, which isn't the best design. Additionally, the descriptions in this demo are just paragraphs. Usually you structure the information with more detail (e.g., data type, description, notes, etc.).

Finally, this approach doesn't allow for easy scanning. However, this scrolling view might be an alternative view to a more scannable table. That is, you could store the definitions in another file and then include the definitions in both this scrolling view and a master table list, allowing the user to choose the view he or she wants.

### The side-by-side approach

In Stripe's API documentation, the writers try to juxtapose the responses in a right side pane with the documentation in the main window.

<a href="https://stripe.com/docs/api#charge_object"><img src="{{ "/images_api/stripe-550x373.png" | prepend: site.baseurl }}" alt="Stripe" style="border:1px solid #dedede;"/> </a>

The idea is that you can see both the description and a sample response at the same time, and just scroll down.

However, the description doesn't always line up with the sample response. (In some places, child attributes are collapsed to save space.) I'm not sure why some items (such as `livemode`) aren't documented.

### The no-need-for-descriptions approach

Some sites, like Twitter's API docs, don't seem to describe the items in the JSON response at all. Looking at this [long response for the post status/retweet endpoint](https://dev.twitter.com/rest/reference/post/statuses/retweet/%3Aid) in Twitter's API docs, there isn't even an attempt to describe what all the items mean. Maybe they figure most of the items in the response are self-evident?

<a href="https://dev.twitter.com/rest/reference/post/statuses/retweet/%3Aid"><img src="{{ "/images_api/twitternojsondoc.png" | prepend: site.baseurl }}" alt="Twitter" style="border:1px solid #dedede;"/></a>

Theoretically, each item in the JSON response should be a clearly chosen word that represents what it means in an obvious way. However, to reduce the size and increase the speed of the response, developers often resort to shorter terms, often using abbreviations. The shorter the term, the more it needs accompanying documentation.

In one endpoint I documented, the response included about 20 different two-letter abbreviations. I spent days tracking down what each abbreviation meant. Some developers didn't even know.

### The context-within-tables approach

eBay's API takes a little different approach. For each item in the XML response, they give some context about where the item appears.

<a href="http://developer.ebay.com/Devzone/shopping/docs/CallRef/FindPopularItems.html"><img src="{{ "/images_api/ebay-550x335.png" | prepend: site.baseurl }}" alt="eBay"  style="border:1px solid #dedede;"/></a>

For example, `MinimumAdvertisedPrice` is nested inside `DiscountPriceInfo`, which is nested in `Item`, which is nested in `ItemArray`.

[![nesting](images_api/nesting.png)](http://developer.ebay.com/Devzone/shopping/docs/CallRef/FindPopularItems.html)

It's also interesting how much detail they include for each item. Whereas the Twitter writers appear to omit descriptions, the eBay authors write small novels describing each item in the response.

### The RAML API Console approach

When you use [RAML](http://idratherbewriting.com/pubapis_raml/) to document endpoints with JSON objects in the request body, the RAML API Console output looks something like this:

![RAML](images_api/ramljsonrepresentation.png)

Here each body parameter is a named JSON object that has standard values such as `description` and `type`. While this looks a little cleaner initially, it's also somewhat confusing. The actual request body object won't contain `description` and `type` parameters like this, nor would it contain the `schema`, `type`, or `properties` keys either.

The problem with RAML is that it tries to describe a JSON structure using a JSON structure itself, but the JSON structure of the description doesn't match the JSON structure it describes, so it's confusing.

Further, this approach doesn't provide an example in context, which is what usually clarifies the data for the user.

### Swagger UI's Model versus Model Schema approach

Is the display from the [Swagger UI](http://idratherbewriting.com/pubapis_swagger/) any better? Not really. In some ways, it's more confusing. 

The [Swagger UI](https://github.com/swagger-api/swagger-ui) reads the Swagger spec file and displays it in the visual format that you see with examples such as the [Swagger Petstore](http://petstore.swagger.io/).

The Swagger UI lets you toggle between a "Model Schema" and a "Model" view for both responses and request body parameters.

The Model Schema shows a sample of the syntax along with examples. When you click the Model Schema (yellow box) in the [/Pet (POST) endpoint](http://petstore.swagger.io/#!/pet/addPet), Swagger inserts the content in the `body` parameter box. Here's the Pet POST endpoint Model Schema:

```json
{
  "id": 0,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "doggie",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}
```
Now click **Model** (the grayed out text) and look at the view. 

<a href="http://petstore.swagger.io/#!/pet/addPet"><img src="{{ "/images_api/swaggersubtlemodellink.png" | prepend: site.baseurl }}" alt="Swagger Model" /></a>

This view describes the various parts of the request, noting the data types and any descriptions in your Swagger spec. Here's the Model:

```
Pet {
id (integer, optional),
category (Category, optional),
name (string),
photoUrls (Array[string]),
tags (Array[Tag], optional),
status (string, optional): pet status in the store = ['available', 'pending', 'sold']
}
Category {
id (integer, optional),
name (string, optional)
}
Tag {
id (integer, optional),
name (string, optional)
}
```

The Petstore spec doesn't actually include many parameter descriptions in the Model, but for any descriptions that are included, they appear here in the Model.

In this view, when there's a nested object, like `category`, it has a reference to another part of the model. You have to look at "Category" for details about category and look at "Tag" for details about tags.

<img src="{{ "/images_api/swagger-model.png" | prepend: site.baseurl }}" alt="Model versus Model Schema" />

Presumably the Model format appears like this because there's not enough room to visually depict nested objects in one inch of space. But it could potentially mislead users into thinking that you have multiple objects listed one after another instead of nested inside each other. 

Ultimately, I'm not sure how useful the Model view is beyond providing a place to describe the objects and properties. I'm also not sure why the Swagger team didn't include descriptions of each parameter in the request body, because those descriptions could appear in the Model view and thereby provide more rationale for having the Model View in the first place.

## Custom-styled tables

The MYOB Developer Center takes an interesting approach in documenting the JSON in their APIs. They list the JSON structure in a table-like way, with different levels of indentation. You can move your mouse over a field for a tooltip description, or you can click it to have a description expand below. 

To the right of the JSON definitions is a code sample with real values. When you select a value, both the element in the table and the element in the code sample highlight at the same time.

<a href="http://developer.myob.com/api/accountright/v2/generalledger/account/#GET"><img src="{{ "/images_api/myobjsondoc.png" | prepend: site.baseurl }}" alt="MYOB JSON doc approach" /></a>

If you have long JSON objects like this, a custom table with different classes applied to different levels might be the only truly usable solution. It facilitates scanning, and the popover + collapsible approach allows you to compress the table so you can jump to the part you're interested in.

However, this approach requires more manual work from a documentation point of view, and there isn't any interactivity to try out the endpoints. Still, if you have long JSON objects, it might be worth it.

## Conclusion

You can see that there's a lot of variety in documenting JSON and XML responses. Peter's course helps start the discussion about how to document these types of information.

## Construct a table to list the surfreport parameters

For our new surfreport endpoint, look through the parameters available and create a table similar to the one above.

Here's what my table looks like:

<div class="docSample">

<table><thead>
<tr>
<th>Parameter</th>
<th>Required</th>
<th>Description</th>
<th>Type</th>
</tr>
</thead><tbody>
<tr>
<td>days</td>
<td>Optional</td>
<td>The number of days to include in the response. Default is 3.</td>
<td>Integer</td>
</tr>
<tr>
<td>units</td>
<td>Optional</td>
<td>Options are either <code>imperial</code> or <code>metric</code>. Whether to return the values in imperial or metric measurements. Imperial will use feet, knots, and fahrenheit. Metric will use centimeters, kilometers per hour, and celsius. <code>metric</code> is the default.</td>
<td>string</td>
</tr>
<tr>
<td>time</td>
<td>Optional</td>
<td>If you include the time, then only the current hour will be returned in the response.</td>
<td>integer. Unix format (ms since 1970) in UTC.</td>
</tr>
</tbody></table>
</div>
 

