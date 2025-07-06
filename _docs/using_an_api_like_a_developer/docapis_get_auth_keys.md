---
title: Get authorization keys
permalink: learnapidoc/docapis_get_auth_keys.html
keywords:
course: "Documenting REST APIs"
weight: 2.1
sidebar: docapis
section: likeadeveloper
path1: learnapidoc/likeadeveloper.html
last-modified: 2025-07-05
---

{% include coffeeshopbook.html %}

Almost every API has a method in place to authenticate requests. You usually have to provide an API key in your requests to get a response. Although we'll dive into [authentication and authorization](docapis_more_about_authorization.html) later, we need to get some API keys now to make requests to our weather API.

* TOC
{:toc}

## Why requests need authorization

Requiring authorization allows API publishers to do the following:

* License access to the API
* Rate limit the number of requests
* Control availability of certain features within the API, and more

To run the code samples in this course, you will need to use your own API keys, since these keys are usually treated like passwords and not given out or published openly on a web page.

{% include ads.html %}

## <i class="fa fa-user-circle"></i> Activity: Get an OpenWeatherMap API key {#openweathermap_apikey}

To get an API key for the OpenWeatherMap API:

1.  Go to [openweathermap.org](https://openweathermap.org).
2.  Click **Sign Up** in the top navigation bar and create an account.
3.  After you sign up, your API key is sent to the email address you provide.

    You can also find your API key on the site's Developer Dashboard. (To find your API key on the site, return to the OpenWeatherMap homepage and click **Sign in**. After signing in, you'll see the developer dashboard. Click the **API Keys** tab (highlighted in the screenshot below).

    <figure><img class="docimage large" src="{{site.api_media}}/apikeysopenweathermap.png" alt="API Keys tab on OpenWeatherMap Developer Dashboard" /><figcaption>API Keys tab on OpenWeatherMap Developer Dashboard</figcaption></figure>

5.  Copy the key to a place you can easily find it.

(Note: It can take an hour or so for a new OpenWeatherMap API key to activate.)

## Get the Xweather API secret and ID {#xweather_apikey}

{% include random_ad4.html %}

Now for contrast, let's get the keys for the Xweather API, using a trial developer account. The Xweather API requires both a secret and ID to make requests.

1.  Go to [https://www.xweather.com](http://www.xweather.com) and click **Developer > Free developer trial**.
2.  Click **Sign Up For Free Trial**. (The free developer version limits the number of requests you can make and expires in 30 days.)
3.  Complete the required fields to sign in. Click the activation email as well.
4.  After you sign up for an account, sign in and go to your [Dashboard](https://account.xweather.com/account/member).
5.  Click **Apps.** By default, you probably already have a Demo App. If not, click **Apps**, and then click **New Application**.
6.  In the Add a New Application dialog box, enter the following:
    * **Application Name**: My biking app (or something)
    * **Application Namespace**: *
7.  Click **Create App**.  

After registering your app, you should see an ID and secret for the app. Copy this information into a place you can easily access since you'll need it to make requests.

{: .tip}
Keep in mind how users authorize calls with an API &mdash; this is something you usually cover in API documentation. Later in the course, we will dive into [authorization methods](docapis_more_about_authorization.html) in more detail.

{% include random_ad2.html %}

## Make sure you have a text editor

{% include image_ad_right.html %} In the upcoming activities, you'll work with code in a text file. When you're working with code, you use a text editor (to work in plain text) instead of a rich text editor (which would provide a WYSIWYG interface). Here are a few choices for text editors:

* [Cursor AI](https://cursor.com)
* [Windsurf](https://windsurf.com/editor)
* [Visual Studio Code](https://code.visualstudio.com/) (Mac or PC). *(I recommend this editor the most.)*
* [Sublime Text](http://www.sublimetext.com/) (Mac or PC)
* [Atom](https://atom.io/) (Mac or Windows)
* [Coda](https://panic.com/coda/) (Mac)

These editors provide features that let you better manage the text. Choose the one you want. (My preference is to use Sublime Text when I'm working with independent code samples, and Atom when I'm working with Jekyll projects.) Avoid using TextEdit since it adds some formatting behind the scenes that can corrupt your content.

{% include random_ad3.html %}
