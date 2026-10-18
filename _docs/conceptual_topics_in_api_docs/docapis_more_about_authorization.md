---
title: API authentication and authorization
permalink: learnapidoc/docapis_more_about_authorization.html
weight: 7.3
sidebar: docapis
section: docconceptual
path1: learnapidoc/docconceptual.html
last-modified: 2026-10-17
---

{% include coffeeshopbook.html %}

Before users can make requests with your API, they'll usually need to register for an API key or learn other ways to authenticate the requests. APIs vary in the way they authenticate users. Some APIs require you to include an API key in the request header, while other APIs require elaborate security due to the need to protect sensitive data, prove identity, and ensure the requests aren't tampered with. In this section, you'll learn more about authentication and authorization and what you should focus on in documentation.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Defining terms

First, let's define some key terms:

* **Authentication**: Refers to proving correct identity
* **Authorization**: Refers to allowing a certain action

An API might authenticate you but not authorize you to make a certain request.

<figure><img class="docimage medium border" src="{{site.api_media}}/nonref_authentication.svg" alt="Authentication versus authorization" /><figcaption>Authentication and authorization</figcaption></figure>

## Consequences if an API lacks security

{% include random_ad2.html %}

Why do APIs even need authentication? For read-only APIs, sometimes users don't need keys. But most commercial APIs do require authorization in the form of API keys or other methods. If you *didn't* have any security with your API, users could make unlimited amounts of API calls without any kind of registration. Allowing unrestricted requests would make a revenue model for your API difficult.

Additionally, without authentication, there wouldn't be an easy way to associate requests with specific user data. And there wouldn't be a way to protect against requests from malicious users that might delete another user's data (such as by making DELETE requests on another's account).

{% include random_ad4.html %}

Finally, you couldn't track who is using your API, or what endpoints are most used. Clearly, API developers must think about ways to authenticate and authorize requests made to their API.

Overall, authentication and authorization with APIs serves the following purposes:

* Authenticate calls to the API to registered users only
* Track who is making the requests
* Track usage of the API
* Block or throttle any requester who exceeds the [rate limits](docapis_rate_limiting_and_thresholds.html)
* Apply different permission levels to different users

## Different types of authorization

There are several methods for authorization. The following are various types of API authorization you might encounter:

* [API keys](#api_keys)
* [Basic Auth](#basic_auth)
* [HMAC](#hmac)
* [OAuth](#oauth)

### API keys {#api_keys}

Most APIs require you to sign up for an API key in order to use the API. The API key is a long string that you usually include either in the request URL or request header. The API key mainly functions as a way to identify the person making the API call (authenticating you to use the API). The API key might also be associated with a specific app that you register.

<figure><img class="docimage large" src="{{site.api_media}}/nonref-docs-preso_apikey.svg" alt="API keys use a string in a header property to authorize requests" /><figcaption>API keys use a string in a header property to authorize requests</figcaption></figure>

APIs might give you both a public and private key. The public key is usually included in the request, while the private key is treated more like a password and used only in server-to-server communication. For some API documentation sites, when you're logged into the site, your API key automatically gets populated into the sample code and API Explorer.

### Basic Auth {#basic_auth}

Another type of authorization is called Basic Auth. With this method, the sender places a `username:password` into the request header. The username and password are encoded with Base64, an encoding technique that represents the text using a set of 64 characters so that it can travel safely in an HTTP header. Base64 isn't encryption, though. Anyone who intercepts the string can decode it. Here's an example of a Basic Auth in a request header:

```
Authorization: Basic bG9sOnNlY3VyZQ==
```

APIs that use Basic Auth should also use HTTPS, which means the message content is encrypted within the HTTP transport protocol. (Without HTTPS, it would be easy for people to decode the username and password.)

{% include ads.html %}

When the API server receives the message, the HTTPS layer decrypts it, and the server examines the header. After decoding the Base64 string and checking the username and password, the server decides whether to accept or reject the request.

{% include image_ad_right.html %}

In Postman, you can configure Basic Authorization by clicking the **Authorization** tab, selecting **Basic Auth** from the drop-down selector, and then typing the **username** and **password** on the right of the colon on each row. The Headers tab will show a key-value pair that looks like this:

```
Authorization: Basic RnJlZDpteXBhc3N3b3Jk
```

Postman handles the Base64 encoding for you automatically when you enter a username and password with Basic Auth selected.

### HMAC (Hash-based message authentication code) {#hmac}

HMAC stands for Hash-based message authentication code and is a stronger type of authentication, more common in financial APIs. With HMAC, both the sender and receiver know a secret key that no one else does. The sender creates a message based on some system properties (for example, the request timestamp plus account ID).

The message and the secret key are then combined and passed through a secure hashing algorithm (SHA). (A hash is a scramble of a string based on an algorithm.) The resulting value, referred to as a signature, is placed in the request header.

When the receiver (the API server) receives the request, it takes the same system properties (the request timestamp plus account ID) and uses the secret key (which only the requester and API server know) and SHA to generate the same string. If the string matches the signature in the request header, it accepts the request. If the strings don't match, then the request is rejected.

{% include random_ad3.html %}

Here's a diagram depicting this workflow:

<figure><img class="docimage medium border" src="{{site.api_media}}/restapi_hmac.svg" alt="HMAC workflow" /><figcaption>HMAC workflow</figcaption></figure>

The important point is that the secret key (critical to reconstructing the hash) is known only to the sender and receiver. The secret key is not included in the request. HMAC security is used when you want to ensure the request is both authentic and hasn't been tampered with.

### OAuth 2.0 {#oauth}

One popular method for authorizing access is OAuth 2.0. This approach relies on an authorization server (sometimes called an authentication server) to grant access to the API server. You often see OAuth 2.0 when you're using a site and are prompted to log in using a service like Google, GitHub, or Apple.

<figure><img class="docimage " src="{{site.api_media}}/oauthwindow.png" alt="OAuth login window" /><figcaption>OAuth login window</figcaption></figure>

OAuth 2.0 defines several ways (called "grant types" or "flows") for an app to get an access token. The two you'll encounter most often are the following:

* **Authorization code flow**: Used when an app acts on behalf of a user, such as an app that reads your calendar. The user logs in and approves access, and the app receives a token tied to that user's permissions.
* **Client credentials flow**: Used for server-to-server requests where no user is involved. The app authenticates with its own client ID and secret.

(You might also see the terms "two-legged" and "three-legged" OAuth. These terms come from the older OAuth 1.0 specification, but people still use them informally. Three-legged refers to flows that involve a user, and two-legged refers to flows that don't.)

The authorization code flow involves three parties:

* The authorization server
* The resource server (API server)
* The user and the app acting on the user's behalf

Here's a simplified view of the OAuth 2.0 workflow:

<figure><img class="docimage medium border" src="{{site.api_media}}/restapi_oauth.svg" alt="OAuth authentication" /><figcaption>OAuth authentication (simplified)</figcaption></figure>

In more detail, the authorization code flow works like this:

1. The app redirects the user to a login page on the authorization server.
2. The user logs in and approves the access that the app is requesting.
3. The authorization server redirects the user back to the app with a short-lived authorization code.
4. The app sends the authorization code, along with its client credentials, to the authorization server's token endpoint. The authorization server responds with an access token.
5. The app makes requests to the resource server (API server), adding the access token to the `Authorization` header with the word `Bearer` followed by the token string. The API server checks the access token and decides whether to allow the request.

Apps that can't keep a secret safe, such as mobile apps and browser-based apps, add an extra step called PKCE (Proof Key for Code Exchange) to protect the authorization code. Current security guidance ([RFC 9700](https://www.rfc-editor.org/rfc/rfc9700.html), published in January 2025) requires PKCE for these apps and recommends against the older "implicit" flow, which returned the access token directly in the redirect URL.

Access tokens not only provide authentication for the requester but also define the permissions (often called "scopes") of how the app can use the API. Access tokens usually expire after a period of time. Many APIs also issue a refresh token, which the app can use to get a new access token without asking the user to log in again. For more information about OAuth 2.0, see these resources:

* [OAuth 2.0](https://oauth.net/2/), the official overview site for the OAuth 2.0 specification
* [OAuth 2 Simplified](https://aaronparecki.com/oauth-2-simplified/), by Aaron Parecki
* [Learn API Technical Writing 2: REST for Writers (Udemy)](https://www.udemy.com/learn-api-technical-writing-2-rest-for-writers/), by Peter Gruenbaum

## What to document with authentication

In API documentation, you don't need to explain how your authentication works in detail to outside users. In fact, *not* explaining the internal details of your authentication process is probably a best practice as it would make it harder for hackers to abuse the API.

However, you do need to explain some necessary information such as:

* How to get API keys
* How to authenticate requests
* Error messages related to invalid authentication
* Sensitivity around authentication information
* Token expiration times and how to refresh tokens
* Required scopes or permissions for each endpoint

If you have public and private keys, you should explain where each key should be used, and note that private keys should not be shared. If different license tiers provide different access to the API calls, these licensing tiers should be explicit in your authorization section or elsewhere.

Since the API keys section is usually essential before developers can start using the API, this section needs to appear at the beginning of your help.

## Samples of authorization sections

The following are a few samples of authorization sections in API documentation.

### SendGrid

<figure><a target="_blank" class="noExtIcon" href="https://www.twilio.com/docs/sendgrid/ui/account-and-settings/api-keys"><img class="docimage" src="{{site.api_media}}/sendgrid_authorization.png" alt="SendGrid API keys" /></a><figcaption>SendGrid API keys</figcaption></figure>

SendGrid offers a detailed explanation of API keys, starting with the basics by explaining, "What are API keys?" Contextually, the topic on API keys appears with other account management topics.

### Twitter

<figure><a target="_blank" class="noExtIcon" href="https://web.archive.org/web/20201111162754/https://developer.twitter.com/en/docs/authentication/oauth-1-0a/authorizing-a-request"><img class="docimage" src="{{site.api_media}}/twitter_authentication.png" alt="Twitter authorization" /></a><figcaption>Twitter authorization</figcaption></figure>

With Twitter's older OAuth 1.0a documentation (shown here from an archived copy), because the authorization requirements are a bit more involved, a detailed example is warranted and provided.

### Amazon Web Services

<figure><a target="_blank" class="noExtIcon" href="https://web.archive.org/web/20191206125623/https://docs.aws.amazon.com/AWSECommerceService/latest/DG/HMACSignatures.html"><img class="docimage" src="{{site.api_media}}/amazon_authentication.png" alt="Amazon authorization" /></a><figcaption>Amazon authorization</figcaption></figure>

The Amazon example uses HMAC. The process is complex enough that a full-fledged diagram is included to show the steps users need to perform.

### Dropbox

<figure><a target="_blank" class="noExtIcon" href="https://docs.dropboxapi.com/dropbox-api/docs/oauth"><img class="docimage" src="{{site.api_media}}/dropbox_authentication.png" alt="Dropbox authorization" /></a><figcaption>Dropbox authorization</figcaption></figure>

Dropbox uses OAuth 2.0. At the time of this screenshot, their documentation included not just one but two diagrams and an extended explanation of the process.

## <i class="fa fa-user-circle"></i> Activity with authorization

With the [open-source project you identified](docapis_find_open_source_project.html), identify the information about authorization for requests to the API. Answer the following questions:

1. What kind of authorization is required to make requests to the API?
2. Are there different access levels within the authorization (for example, free versus pro tiers) that determine how many requests you can make or the types of information you can access?
3. Are you able to get an API key or whatever authorization method is required to make test calls to the API?
4. How is the information about authorization integrated into the getting started tutorial?
