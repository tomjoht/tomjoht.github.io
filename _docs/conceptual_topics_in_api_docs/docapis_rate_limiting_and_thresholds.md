---
title: API rate limiting and thresholds
permalink: learnapidoc/docapis_rate_limiting_and_thresholds.html
keywords:
course: "Documenting REST APIs"
weight: 7.5
sidebar: docapis
section: docconceptual
path1: learnapidoc/docconceptual.html
last-modified: 2026-10-17
---

{% include coffeeshopbook.html %}

Rate limits determine how frequently you can call a particular endpoint. Usually, companies have different tiers (for example, free versus pro) and licenses (open-source, business, commercial) corresponding to different capabilities or rate limits with the API.

* TOC
{:toc}

## What to cover with rate limiting

Companies with APIs make money by charging for access to the API, but they usually distinguish between low usage and high usage, often making the low usage options free so that developers can explore and experiment with the API. With the sample [OpenWeatherMap Weather API](https://openweathermap.org/price) that we've been using in this course, you can see where the pricing tier begins:

<figure><a target="_blank" class="noExtIcon" href="https://openweathermap.org/price"><img class="docimage" src="{{site.api_media}}/openweathermapratelimits.png" alt="Pricing tier for OpenWeatherMap API" /></a><figcaption>Pricing tiers for OpenWeatherMap API (screenshot from an earlier version of the page). Each call is a request to the API. The free tier currently allows 60 calls per minute and 1,000,000 calls per month. If your page makes one call for weather each time it loads, and you get more than 60 visitors per minute, you'll need to move past the free tier.</figcaption></figure>

If your site has hundreds of thousands of visitors a day, and with each page reload calls an API endpoint, you want to be sure the API can support that kind of traffic.

{% include random_ad3.html %}

Pricing related to rate limiting is probably information that's within the marketing domain rather than documentation domain. However, developers will still want to know a few key behaviors around the rate-limiting thresholds. For example:

* When you exceed the threshold, do your calls get throttled with slower responses?
* Do you get overcharges for every extra call?
* If you exceed the limit, do the responses return a particular status code (if so, which one)?
* Do responses include headers that show how many requests remain and when the limit resets?
* How long should developers wait before retrying a request?

The standard status code for rate limiting is `429 Too Many Requests` (defined in [RFC 6585](https://www.rfc-editor.org/rfc/rfc6585.html#section-4)), though some APIs return `403` instead. Many APIs also include a `Retry-After` header that tells the client how many seconds to wait before trying again. If your API returns these codes and headers, document them, and consider recommending a retry strategy such as exponential backoff (waiting progressively longer between each retry).

Also, when developers implement the code into their applications, how are they handling situations where the API doesn't respond due to rate limit violations? Are there conditions and checks to handle these throttled scenarios? Does the widget (or whatever might be implementing the API) freeze or hang, display empty or crash?

<figure><img class="docimage medium border" src="{{site.api_media}}/nonref_ratelimiting.svg" alt="Rate limiting affects development" /><figcaption>Rate limiting might seem like a marketing topic, but the rate limiting policies and how they affect API calls can have a significant impact on development.</figcaption></figure>

{% include ads.html %}

## Examples of rate limiting sections

Here are a few examples of rate limiting sections in API documentation.

### GitHub

<figure><a target="_blank" class="noExtIcon" href="https://docs.github.com/en/rest/using-the-rest-api/rate-limits-for-the-rest-api"><img class="docimage" src="{{site.api_media}}/githubratelimiting.png" alt="GitHub rate limiting" /></a><figcaption>GitHub rate limiting</figcaption></figure>

GitHub's documentation explains rate limits for authenticated versus unauthenticated requests (unauthenticated requests are limited to 60 per hour), the meaning of the rate-limiting headers (such as `x-ratelimit-limit`, `x-ratelimit-remaining`, `x-ratelimit-used`, and `x-ratelimit-reset`), how to check your current usage, what happens when you exceed a limit (a `403` or `429` response), when to retry, and more.

{% include random_ad2.html %}

### Linkedin

<figure><a target="_blank" class="noExtIcon" href="https://learn.microsoft.com/en-us/linkedin/shared/api-guide/concepts/rate-limits"><img class="docimage" src="{{site.api_media}}/dropboxratelimiting.png" alt="Linkedin rate limits section" /></a><figcaption>Linkedin rate limits section</figcaption></figure>

Linkedin's rate limiting documentation explains that limits apply over a 24-hour period and vary by endpoint. There are two kinds of limits: Application limits (the total calls your application can make in a day) and Member limits (the total calls a single member can make through your application in a day). The documentation also explains that the limits reset at midnight UTC.

### Bitly

<figure><a target="_blank" class="noExtIcon" href="https://dev.bitly.com/docs/getting-started/rate-limits/"><img class="docimage" src="{{site.api_media}}/bitlyratelimiting.png" alt="Bitly's rate limiting" /></a><figcaption>Bitly's rate limiting</figcaption></figure>

Bitly provides basic information on the page above. An earlier version of Bitly's docs also linked to [best practices for avoiding rate-limiting issues](https://web.archive.org/web/20190803031828/https://dev.bitly.com/best_practices.html). These best practices included tips such as caching, security issues, long page loads, batch processing, high-volume requests, URL encoding, and more.

{% include image_ad_right.html %}

By looking at these examples, you can see that while rate limiting might seem like a straightforward topic, there are layers of depth and complexity to cover. The relevance of the topic depends on your API and the rate-limiting policies your company sets, but this information cannot be entirely offloaded to Marketing to handle. So much of the information around rate limiting directly affects development.

{% include random_ad4.html %}

## <i class="fa fa-user-circle"></i> Activity with rate limits

With the [open-source project you identified](docapis_find_open_source_project.html), identify the information about rate limits with the API. Answer the following questions:

1. Does the API have rate limits?
2. What happens if users exceed the rate limits?
3. What status codes are sent if rate limits are exceeded?
4. What kind of rate limits exist with the free (or development) tiers of the API?
