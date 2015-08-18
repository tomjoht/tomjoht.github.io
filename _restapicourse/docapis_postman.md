---
title: Submit requests through Postman
permalink: /docapis_postman/
categories:
- api-doc
keywords: 
course: "Documenting REST APIs"
weight: 1.6
type: notes_docapis
---
{% include notes.html %}

## GUI clients make REST calls a little easier

cURL makes for a great format for demonstrating requests and responses. But when you're frequently testing endpoints with different parameters, you may want to use a GUI REST client instead. With a GUI REST client, you can:

* Save your calls with specific names
* More easily enter information in the right format
* See the response in a prettified JSON view or a raw format

## Common GUI clients

Some popular GUI clients include the following:

* Postman (Chrome app)
* Advanced REST Client (Chrome browser extension)
* Paw (Mac, $30)

## Make a call in Postman

1. If you haven't already done so, download the [Postman app for Chrome](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en).
2. Copy the components of the cURL call into the appropriate places into Postman. It should look like this:
	
	<img src="{{ "/images/restapicourse/postmansample.png" | prepend: site.baseurl }}" alt="Postman request" />
	
	<ul>
	<li>Select <b>GET</b> for the method.</li>
	<li>Insert the endpoint URL (with the query string parameters) into the field next to GET.</li>
	<li>Expand the <b>Headers</b> section and insert the key value pairs (without quotation marks).</li>
	</ul>

5. Click **Send**.
	The response appears. In this case, the response is text only.
	
	Usually the responses are more detailed JSON. Notice that the header set the `Accept` type as `text/plain`. 
	
## Save the call
1. In Postman, click the **Save** button (the floppy disk next to Send). 
2. Create a new collection (e.g., weather). 
3. Type a name for the reqeust (e.g., aqi).
4. At the bottom of the dialog box, click **Add to Collection.**

Saved endpoints appear in the left column under Collections.

## Make calls for the other endpoints

Enter details into Postman for the other two endpoints:

* weather
* weatherdata

When you save these other endpoints, click the arrow next to Save and choose **Save as**. Otherwise you'll overwrite the settings of the existing call.

<img src="{{ "/images/restapicourse/postmansaveas.png" | prepend: site.baseurl }}" alt="Save as" />

## View the format of the weatherdata response in pretty JSON

The first two endpoint responses include text only. The weatherdata endpoint response is in JSON format. 

In Postman, run the weatherdata call. Then toggle the options to **Pretty** and **JSON**.

<img src="{{ "/images/restapicourse/postmanjsonresponse.png" | prepend: site.baseurl }}" alt="" />

The Pretty JSOn view expands the JSON response into more readable code. 

{{tip}} To "prettify" content means to un-minify it and format it with white space that is readable. {{end}}

## Paw

Here's the same call made in Paw:

<img src="{{ "/images/restapicourse/pawexample.png" | prepend: site.baseurl }}" alt="Paw" />

Paw allows you to easily see the request headers, response headers, URL parameters, and other data.
 



