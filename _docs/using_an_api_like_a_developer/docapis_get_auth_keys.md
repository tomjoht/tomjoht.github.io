---
title: Get authorization keys
permalink: learnapidoc/docapis_get_auth_keys.html
keywords:
course: "Documenting REST APIs"
weight: 2.2
sidebar: docapis
section: likeadeveloper
path1: learnapidoc/likeadeveloper.html
last-modified: 2026-10-17
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
2.  Click **Get API Key**. On the sign-in page, click **Create an Account** and complete the sign-up form.
3.  After you sign up, your API key is sent to the email address you provide.

    You can also find your API key on the site's developer dashboard. To find it, sign in at [home.openweathermap.org](https://home.openweathermap.org/users/sign_in), and then click the **API keys** tab (highlighted in the screenshot below).

    <figure><img class="docimage large" src="{{site.api_media}}/apikeysopenweathermap.png" alt="API Keys tab on OpenWeatherMap Developer Dashboard" /><figcaption>API Keys tab on OpenWeatherMap Developer Dashboard</figcaption></figure>

4.  Copy the key to a place you can easily find it.

(Note: It can take an hour or so for a new OpenWeatherMap API key to activate.)

## Get the Xweather API secret and ID {#xweather_apikey}

{% include random_ad4.html %}

Now for contrast, let's get the keys for the Xweather API, using a trial developer account. The Xweather API requires both a client ID and client secret to make requests.

1. Go to [https://www.xweather.com](https://www.xweather.com) and click **Free weather API key**. On the next page, click **Sign up for free**. (In the US and Canada, the pay-as-you-go plan includes 15,000 free accesses each month and doesn't require a credit card. Outside the US and Canada, the sign-up options differ.)
2.  Complete the required registration fields, then follow the instructions in the activation email to verify your account.
3.  After you sign up for an account, sign in and go to your [Dashboard](https://data.portal.xweather.com/account).
4.  Locate the **Your API key** section on the dashboard. An initial API key is automatically generated when you create your account.
5.  Copy your API key. You can also click **API Keys** in the left navigation menu to view and manage your keys.
6.  The API key combines your client ID and client secret into a single value, separated by an underscore (`_`):
    * **Client ID**: The portion before the underscore.
    * **Client secret**: The portion after the underscore.

When making API requests that require separate `client_id` and `client_secret` parameters, use the corresponding portions of your API key. For example, if your API key is `exampleID_exampleSecret`, use `exampleID` as the client ID and `exampleSecret` as the client secret.

Keep your API key and client secret in a secure location. Do not share them publicly or include them in source code.

{: .tip}
Keep in mind how users authorize calls with an API &mdash; this is something you usually cover in API documentation. Later in the course, we will dive into [authorization methods](docapis_more_about_authorization.html) in more detail.

{% include random_ad2.html %}

## Make sure you have a text editor

{% include image_ad_right.html %} In the upcoming activities, you'll work with code in a text file. When you're working with code, you use a text editor (to work in plain text) instead of a rich text editor (which would provide a WYSIWYG interface). Here are a few choices for text editors:

* [Visual Studio Code](https://code.visualstudio.com/) (Mac or PC). *(I recommend this editor the most.)*
* [Cursor](https://cursor.com) (Mac or PC) — a fork of VS Code with AI assistance built in
* [Sublime Text](https://www.sublimetext.com/) (Mac or PC)
* [Nova](https://nova.app/) (Mac)

These editors provide features that let you better manage the text. Choose the one you want. My own preference is VS Code for anything project-based, and Sublime Text when I just want to open a single code sample quickly. Avoid using TextEdit since it adds some formatting behind the scenes that can corrupt your content.

{% include random_ad3.html %}
