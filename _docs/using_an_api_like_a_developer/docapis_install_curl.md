---
title: curl intro and installation
permalink: learnapidoc/docapis_install_curl.html
course: "Documenting REST APIs"
weight: 2.4
sidebar: docapis
section: likeadeveloper
path1: learnapidoc/likeadeveloper.html
last-modified: 2019-01-01
---

{% include coffeeshopbook.html %}

While [Postman](docapis_postman.html) is convenient, it's hard to use it to represent how to make calls with it in your documentation. Additionally, different users probably use different GUI clients, or none at all (preferring the command line instead).

Instead of describing how to make REST calls using a GUI client like Postman, the most conventional method for documenting request syntax is to use curl.

* TOC
{:toc}

## About curl

curl is a command-line utility that lets you execute HTTP requests with different parameters and methods. Instead of going to web resources in a browser's address bar, you can use the command line to get these same resources, retrieved as text.

{: .note}
Sometimes curl is written as cURL. It stands for Client URL. "curl" is the more common convention for its spelling, but both refer to the same thing.

{% include image_ad_right.html %}

## Installing curl

These days curl ships with both macOS and Windows, so in most cases you don't have to install anything. Check first, and only install if the check fails.

{% include random_ad4.html %}

### Check for curl on Mac

curl is included with macOS. To confirm:

1.  Open Terminal (press **Cmd + spacebar** to open Spotlight, and then type "Terminal").
2.  In Terminal type `curl -V`. The response should look something like this:

    ```
    curl 8.7.1 (x86_64-apple-darwin24.0) libcurl/8.7.1 (SecureTransport) LibreSSL/3.3.6 zlib/1.2.12 nghttp2/1.61.0
    Protocols: dict file ftp ftps gopher gophers http https imap imaps ipfs ipns ldap ldaps mqtt pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
    ```

    Your version number will differ &mdash; that's fine. You just need curl to respond.

If you don't see this, you can [download and install curl](https://curl.se/).

### Check for curl on Windows

curl has been included with Windows since Windows 10 version 1803 (2018), so it's almost certainly already there. To confirm:

1. Open a command prompt by clicking the **Start** button and typing **cmd**.
2. Type `curl -V`.

The response should look something like this:

```
curl 8.9.1 (Windows) libcurl/8.9.1 Schannel zlib/1.3 WinIDN
Release-Date: 2024-07-31
Protocols: dict file ftp ftps http https imap imaps ipfs ipns ldap ldaps mqtt pop3 pop3s rtsp scp sftp smb smbs smtp smtps telnet tftp ws wss
```

If curl isn't available &mdash; which would mean a fairly old Windows installation &mdash; download a build from [curl's Windows download page](https://curl.se/windows/).

{: .note}
Windows PowerShell used to alias `curl` to its own `Invoke-WebRequest` cmdlet, which takes different arguments and will make the examples in this course fail. If a curl command behaves strangely in PowerShell, run it from Command Prompt instead, or type `curl.exe` explicitly to bypass the alias.

## Make a test API call

After you have curl installed, make a test API call:

```
curl -X GET "https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=APIKEY&units=imperial"
```

(In the above code, replace `APIKEY` with your actual API key.)

You should get minified JSON response back like this:

```
{"coord":{"lon":-121.96,"lat":37.35},"weather":[{"id":701,"main":"Mist","description":"mist","icon":"50d"}],"base":"stations","main":{"temp":66.92,"pressure":1017,"humidity":50,"temp_min":53.6,"temp_max":75.2},"visibility":16093,"wind":{"speed":10.29,"deg":300},"clouds":{"all":75},"dt":1522526400,"sys":{"type":1,"id":479,"message":0.0051,"country":"US","sunrise":1522504404,"sunset":1522549829},"id":420006397,"name":"Santa Clara","cod":200}
```

{% include ads.html %}

{: .note}
In older versions of the Windows Command Prompt, Ctrl+V doesn't paste &mdash; right-click and select **Paste** instead. Windows Terminal and current versions of Command Prompt support Ctrl+V normally.

{% include random_ad3.html %}

### Notes about using curl with Windows

If you're using Windows, note the following formatting requirements when using curl:

* Use double quotes in the Windows command line. (Windows doesn't support single quotes.)
* Don't use backslashes (`\`) to separate lines. (This is for readability only and doesn't affect the call on Macs.)
* By adding `-k` in the curl command, you can bypass curl's security certificate, which may or may not be necessary.

{% include random_ad2.html %}
