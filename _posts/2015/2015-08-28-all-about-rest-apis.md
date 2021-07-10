---
title: What is a REST API?
keywords:
categories:
- api-doc
description: "REST APIs use HTTP protocol (or rather, the web) to transport the request and response messages between clients and servers. The client and server can run on any language or platform as long as the request/response is sent via HTTP. To understand REST APIs, it helps to compare them with their predecessor: SOAP APIs. Both SOAP and REST APIs are a kind of web service. "
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/restapithumb.png
---

{% include notes.html %}

## About web services

In general, a web service is a web-based application that provides information in a format consumable by other computers. Web services include various types of APIs (Application Programming Interfaces), including both REST and SOAP APIs. Web services are basically request and response interactions between clients and servers (one computer makes the request, and the API provides the response).



All APIs that use HTTP protocol as the transport format for requests and responses can be classified as web services.

With web services, the client making the request and the API server providing the response can use any programming language or platform &mdash; it doesn't matter because the message request and response are made through a common HTTP web protocol. This is part of the beauty of web services: they are platform agnostic and therefore interoperable across different languages and platforms.

## SOAP APIs: The predecessor to REST

Before REST became the most popular web service, SOAP (Simple Object Access Protocol) was much more common. To understand REST a little better, it helps to have some context with SOAP. This way you can see what makes REST different.

### Standardized protocols and WSDL files
SOAP is a standardized protocol that requires XML as the message format for requests and responses. As a standardized protocol, the message format is usually defined through something called a WSDL file (Web Services Description Language).

The WSDL file defines the allowed elements and attributes in the message exchanges. The WSDL file is machine readable and used by the servers interacting with each other to facilitate the communication.

SOAP messages are enclosed in an "envelope" that includes a header and body, using a specific XML schema and namespace. For an example of a SOAP request and response format, see [SOAP vs REST Challenges](http://www.soapui.org/testing-dojo/world-of-api-testing/soap-vs--rest-challenges.html).

### Problems with SOAP and XML
The main problem with SOAP is that the XML message format is too verbose and heavy. It is particularly problematic with mobile scenarios where file size and bandwidth are critical. The verbose message format slows processing times, which makes SOAP interactions more slow.

SOAP is still used in enterprise application scenarios with server-to-server communication, but in the past 5 years, SOAP and XML have largely been replaced by REST and JSON, especially for APIs on the open web. You can browse some SOAP APIs at [http://xmethods.com/ve2/index.po](http://xmethods.com/ve2/index.po).

## REST

Like SOAP, REST (REpresentational State Transfer) uses HTTP as the transport protocol for the message requests and responses. However, unlike SOAP, REST is an architectural style, not a standard protocol.

{{note}}Sometimes REST APIs are called _RESTful_ APIs, because REST is an architectural style (not a defined standard) that the API follows.  {{end}}

Here's the general model of a REST API:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/restapi_restapi.svg" alt="REST API" />

### Any message format can be used
As an architectural style, you aren't limited to XML as the message format. REST APIs can use any message format the API developers want to use, including XML, JSON, Atom, RSS, CSV, HTML, and more.

### JSON most common
Despite the variety of message format options, most REST APIs use JSON (JavaScript Object Notation) as the default message format. This because JSON provides a lightweight, simple, and more flexible message format that increases the speed of communication.

The lightweight nature of JSON also allows for mobile processing scenarios and is easy to parse on the web using JavaScript. In contrast, with XML, you have to use XSLT to parse and process the content.

### Focus on resources through URIs
REST APIs focus on *resources* (that is, *things*, rather than actions, as SOAP does), and ways to access the resources. You access the resources through URIs (Uniform Resource Identifiers). The URIs are accompanied by a method that specifies how you want to interact with the resource.

Common methods include GET (read), POST (create), PUT (update), and DELETE (remove). The URI also may include query parameters that specify more details about the representation of the resource you want to see. For example, you might specify in a query parameter that you want to limit the display of 5 instances of the resource (rather than whatever the default might be).

### Sample URIs/endpoints
Here's what a sample REST URI might look like:

```
http://apiserver.com/homes?limit=5&format=json
```

This URI would get the homes resource and limit the result to 5. It would return the response in JSON format.

You can have multiple URIs (also called "endpoints") that refer to the same resource. Here's one variation:

```
http://apiserver.com/homes/1234
```

This might be an endpoint that retrieves a home resource with an ID of `1234`. What is transferred back from the server to the client is the "representation" of the resource. The resource may have many different representations (showing all homes, homes that match a certain criteria, homes in a specific format, and so on), but here we want to see home 1234.

### The web follows REST
The terminology of URIs and GET requests and message responses transported over HTTP protocol might seem unfamiliar, but really this is just the official REST terminology to describe what's happening. If you've used the web, you're already familiar with how REST APIs work, because the web itself more or less follows a RESTful style.

If you open a browser and go to https://idratherbewriting.com, you're really using HTTP protocol (`http://`)  to submit a GET request to the resource available at idratherbewriting.com. The response from the server sends the content at this resource back to you using HTTP. Your browser is just a client that makes the message response look pretty.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/restapi_www.svg" alt="Web as REST API" />

You can see this response in cURL if you open a Terminal prompt and type `curl https://idratherbewriting.com`. The web itself is an example of RESTful style architecture.

### REST APIs are stateless and cacheable
Some additional features of REST APIs are that they are stateless and cacheable. Stateless means that each time you access a resource through a URI, the API provides the same response. It doesn't remember your last request and take that into account when providing the new response. In other words, there aren't any previously remembered states that the API takes into account with each request. And the responses can be cached in order to increase the performance.

### No WSDL files, but some specs exist
REST APIs don't use a WSDL file to describe elements and parameters allowed in the requests and responses. Although there is a possible WADL (Web Application Description Language) file that can be used to describe REST APIs, they're rarely used since the WADL files don't adequately describe all the resources, parameters, message formats, and other attributes of the REST API. (Remember that the REST API is an architectural style, not a standardized protocol.)

In order to understand how to interact with a REST API, you have to read the documentation for the API. (This provides a great opportunity for technical writers! Hooray!)

Some more formal specifications &mdash; for example, Swagger and RAML &mdash; have been developed to describe REST APIs. When you describe your API using the Swagger or RAML specification, Swagger or RAML will produce documentation that describes how to interact with the API (listing out the resources, parameters, and other details).

The Swagger or RAML output can take the place of the WSDL file that was more common with SOAP. These spec-driven outputs are usually interactive (featuring API Consoles or API Explorers) and allow you to try out REST calls and see responses directly in the documentation.

But don't expect Swagger or RAML documentation outputs to include all the details users would need to work with your API (for example, how to pass authorization keys, workflows and interdependencies between endpoints, and so on).

Overall REST APIs are more varied and flexible than SOAP, and you almost always need to read the documentation in order to understand how to interact with the API. As you explore REST APIs, you will find that they differ greatly from one to another (especially their documentation formats!), but they all share the common patterns outlined here.

### Other REST formats: OData

Finally, I want to mention one sub-type of REST APIs: OData (Open Data). OData follows the RESTful API style but with a more specific format, especially with regards to the query parameters in the URIs. Many of the OData URIs follow a specific pattern.

For example, with OData APIs, you add query parameters in the URI prefaced by `$`. Common parameters are `format`, `orderby`, `filter`, and `top`.

Here's a sample OData request:

```
http://services.odata.org/OData/OData.svc/Products?$orderby=Price&$format=json
```

Responses can be in JSON or XML.

With most REST APIs, you don't use `$` before the query parameters like you do with OData. Query parameters are usually separated by `?`, and each REST API has its own variety of unique parameters.

OData is championed by Microsoft and used by Azure (the Microsoft cloud services). To learn more about OData, see the [http://www.odata.org/](http://www.odata.org/).
