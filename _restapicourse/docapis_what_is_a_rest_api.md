---
title: What is a REST API?
permalink: /what-is-a-rest-api/
keywords: 
course: "Documenting REST APIs"
weight: 
type: notes_docapis
---
{% include notes.html %}

This course is all about learning by doing, but while *doing* various activities, I'm going to periodically pause and dive into some more abstract concepts to fill in more detail. This is one of those moments.

## About web services

In general, a web service is an application that runs on the web. It allows two different computers to communicate with each other. Web services includes various types of APIs, including both REST and SOAP APIs. All APIs that use HTTP protocol as the transport format for requests and responses could be classified as web services.

## SOAP

Before REST became the most popular web service, SOAP (Simple Object Access Protocol) was much more common. To understand REST a little better, it helps to have a context with SOAP. This way you can see what makes REST different.

SOAP is a standardized protocol that requires XML as the message format for requests and responses. As a standardized protocol, the message format is strictly defined through something called a WSDL file (web services description language).

The WSDL file defines the allowed elements and attributes in the message exchanges. The WSDL file is machine readable and leveraged by the computers interacting with each other to facilitate the communication.

The main problem with SOAP is that the XML message format is too verbose and heavy. It is particularly problematic with mobile scenarios where  file size and bandwidth are issues. The verbose message format strains the processing times, which makes SOAP interactions more slow.

SOAP is still used in some enterprise application scenarios with server-to-server communication, but in the past 5 years, SOAP and XML have largely been replaced by REST and JSON.

## REST

Like SOAP, REST (REpresentational State Transfer) uses HTTP as the transport protocol for the message requests and responses. However, unlike SOAP, REST is an architectural style, not a standard protocol. You aren't limited to XML as the message format. REST APIs can use any message format the architects want to use, including XML, JSON, Atom, RSS, and more.

Most REST APIs use JSON (JavaScript Object Notation) as the default message format. JSON provides a lightweight, more flexible message format that increases the speed of communication and allows for mobile processing scenarios.

REST APIs focus on *resources* (that is, things, rather than actions, like SOAP), and ways to access the resources. You submit requests through a URI (Uniform Resource Identifier) that accesses the resource.

When you access a resource, you specify a method to interact with the resource. Common methods include GET (read), POST (create), PUT (update), and DELETE (remove). The URI also may include query parameters that specify how you want to interact with the resource.

The terminology of URIs and GET requests and message responses transported over HTTP protocol might seem unfamiliar, but really this is just the official REST terminology to describe what's happening. If you've used the web, you're already familiar with how REST APIs work, because the web itself follows a RESTful style.

If you open a browser and go to http://idratherbewriting.com, you're really using HTTP protocol (`http://`) here to submit a GET request to the resource available at idratherbewriting.com. The response from the server sends the content at this resource back to you using HTTP. Your browser is a client that makes the response look pretty.

You can see this in cURL if you open a Terminal prompt and type `curl http://idratherbewriting.com`. The web itself is an example of RESTful style architecture.

Some important, differentiating features of REST APIs are that they are stateless and cacheable. Stateless means that each time you access a resource through a URI, the API provides the same response. It doesn't remember your last request and take that into account when providing the new response. In other words, there aren't any previously remembered states that the API takes into account with each interaction. And the responses can be cached in order to increase the performance.

REST APIs don't use a WSDL file to describe elements and parameters allowed in the requests and responses. Although there is a possible WADL (Web Application Description Language) file that can be used to describe REST APIs, they're rarely used since the WADL files don't adequately describe the REST API. (Remember that the REST API is an architectural style, not a standardized protocol.) In order to understand how to interact with a REST API, you have to read the documentation for the API. (This provides a great opportunity for technical writers!)

Some more formal specifications &mdash; for example, Swagger and RAML &mdash; have been developed to describe REST APIs. When you describe your API using the Swagger or RAML specification, Swagger or RAML will produce documentation that describes how to interact with the API (listing out the resources, parameters, and other details). The Swagger or RAML output can take the place of the WSDL file that was more common with SOAP. These spec-driven outputs are usually interactive (featuring API Consoles or Explorers) and allow you to try out REST calls and see responses directly in the documentation. (By the way, this is a feature that you may or may not want, since users could inadvertentely delete or pollute their data).

Sometimes REST APIs are called _RESTful_ APIs, because REST is an architectural style (not a defined standard) that the API follows. REST or RESTful APIs are more varied and flexible than SOAP, and you almost always need to read the documentation in order to understand how to interact with the API.

As you explore REST APIs, you will find that they vary greatly from one to another (especially their documentation formats!), but they do follow common patterns.

## OData

Finally, I want to mention one sub-type of REST APIs: OData (Open Data). OData follows the RESTful API style but with a more specific format, especially with the query parameters in the URIs. Many of the URIs follow a specific pattern.

For example, with OData APIs, you add parameters in the URI prefaced by `$`. Common parameters are `format`, `orderby`, `filter`, and `top`.

Here's a sample OData request:

```
http://services.odata.org/OData/OData.svc/Products?$orderby=Price&$format=json
```

 Responses can be in JSON or XML.

With most REST APIs, you don't use `$` before the query parameters like you do with OData. Query parameters are usually separated by `?`, and each REST API has its own variety of unique parameters.

OData is championed by Microsoft and used by Azure (the Microsoft cloud services). To learn more about OData, see the [http://www.odata.org/](http://www.odata.org/).

{% comment %}

- soap focuses on actions you can take in the api, but in rest you call a uri and then specify the http verb to specify the operation you want to perform on it. the resources are identified by the uris. the requests identify each resource.

- multiple uri's can refer to the same resource. different URIs for different resources.
- give an example of a REST resource

- the representation is not the resource; it's a particular representation of the resource. the same resource can be represented in different ways (based on the parameters you pass, i think). representations can be in json, xml, csv, or other. html. it's a representation of a resource state that is transferred between a client and server. the response is the representation of the resource's state. this representation is transferred between client and server

six constraints:

uniform interface (uses URIs to point to resources, and HTTP methods to refer to the verbs)
stateless
cacheable
client-server
layered system
code on demand





OData
- similar to rest but with a more specific format
- atom message format
- championed by MS
- URIs have a specific format and transport protocol. they follow a specific URI pattern.
  many OData services use the same HTTP methods.
- odata.org/docs

see odata.org/libraries for sample odata APIs

sample: services.odata.org/OData/OData.svc

services.odata.org/OData/OData.svc/Products

http://services.odata.org/OData/OData.svc/Products?$filter=Price%20lt%205

http://services.odata.org/OData/OData.svc/Products?$orderby=Price

services.odata.org/OData/OData.svc/Products?$top=3

odata has specific filters you can use: filter, top, orderby

Each begins with $.
odata returns responses in either plain old xml or json. some data docs can be either atom or json. you can set a format paramter with $format=json or $format=xml

services.odata.org/OData/OData.svc/Products?$orderby=Price&$format=atom

http://services.odata.org/OData/OData.svc/Products?$orderby=Price&$format=json


Other notes
- i have a strong philosophy that you learn by doing, and that none of these abstracts mean anything without some type of real context.
- web follows rest
- requests are made through URIs that represent resources. this is the http protocol. when you go to http://idratherbewriting.com, you're making a get request over http protocol for the resource located there. so this is a very familiar model.
- sample: example.com/users
- sample? example.com/users/{userId}
- roy fielding


More resources
- https://docs.google.com/presentation/d/1jejYiTagK7CnJ-ajiRO1-kbD6kzeA0R04o3W5_yKTvk/edit
 - http://www.drdobbs.com/web-development/restful-web-services-a-tutorial/240169069?pgno=2



SOAP
- Simple Object Access Protocol
- permits only XML
- responses cannot be cached. this leads to slower performance
- standardized protocol
- too verbose
- WSDL. describes soap services. what messages can be sent or received. what elements or attributes are required. machine readable.sample wsdl file: www.xmime.com/WSShakespeare.asmx?WSDL
- client reads wsdl and generates proxy classes for interacting with the server
- here’s a sample request and response from a soap api: http://www.soapui.org/testing-dojo/world-of-api-testing/soap-vs--rest-challenges.html
- XML message format, heavy, more processing. XML used for both request and response.
- messages sent in envelopes
- enterprise applications, financial applications that require more specific messaging protocol
- sample: http://xmethods.com/ve2/index.po
- used when size does not matter, more control, server to server comm.




Web services
- communication between computers
- requests in the form of URI
- request headers and response headers
- client and server need not use same language. just send messages over http protocol.
each language has its own way of making http requests, people programming in that language will know how to do it. there are different libraries that facilitate making htp requests.
- applications that run on web, allow computers to interact with each other

{% endcomment %}



