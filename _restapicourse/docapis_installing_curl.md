---
title: "Installing cURL"
permalink: /docapis_install_curl/
course: "Documenting REST APIs"
weight: 1.0
type: notes_docapis
---
{% include notes.html %}

It's better that you install cURL before the course so that you aren't bogged down with technical issues when you're trying to focus on the course material. cURL is usually available by default on Macs but requires some installation on Windows.

## Installing cURL

Follow these instructions for installing cURL.

### Mac
If you have a Mac, by default, cURL is probably already installed. To check:

1. Open Terminal (press **Cmd + spacebar** to open Spotlight, and then type "Terminal").
2. In Terminal type `curl -V`. The response should look something like this:

    ```
    curl 7.37.1 (x86_64-apple-darwin14.0) libcurl/7.37.1 SecureTransport zlib/1.2.5
    Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp smtp smtps telnet tftp
    Features: AsynchDNS GSS-Negotiate IPv6 Largefile NTLM NTLM_WB SSL libz
    ```

If you don't see this, you need to [download and install cURL](http://curl.haxx.se/).

### Windows

Installing cURL on Windows involves a few more steps. First, determine whether you have 32-bit or 64-bit Windows by right-clicking **Computer** and selecting **Properties.**

Then follow the instructions here on this Zendesk article &mdash; [Installing and using cURL](https://support.zendesk.com/hc/en-us/articles/203691436-Installing-and-using-cURL#install) &mdash; to install cURL on Windows.

To test your version of cURL, open a command prompt:

* On Windows, click the **Start** button and type **cmd**.
* On a Mac, press the space bar and type **Terminal**.

Then type `curl -V`. It should show the following:

```
curl 7.37.1 (x86_64-apple-darwin14.0) libcurl/7.37.1 SecureTransport zlib/1.2.5
Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp smtp smtps telnet tftp
Features: AsynchDNS GSS-Negotiate IPv6 Largefile NTLM NTLM_WB SSL libz
```

To make a test API call, submit this:

```
curl --get -k --include "https://simple-weather.p.mashape.com/aqi?lat=37.354108&lng=-121.955236" -H "X-Mashape-Key: WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET" -H "Accept: text/plain"
```

{{note}} In Windows, Ctrl+ V doesn't work; instead, you right-click and then select Paste.{{end}}

You should get back a two-digit number in the response. (This is the "air quality index" for this web service.)

## Notes about using cURL with Windows

* Use double quotes in the Windows command line. (Windows doesn't support single quotes.)
* Don't use backslashes (`\`) to separate lines.
* By adding `-k` in the cURL command, you bypass cURL's security certificate. In this case


