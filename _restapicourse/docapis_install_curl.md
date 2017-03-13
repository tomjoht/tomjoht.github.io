---
title: Installing cURL
permalink: /docapis_install_curl/
course: "Documenting REST APIs"
weight: 1.6
type: notes_docapis
---
{% include notes.html %}

It's better that you install cURL before the course so that you aren't bogged down with technical issues when you're trying to focus on the course material. cURL is usually available by default on Macs but requires some installation on Windows.

## Installing cURL

Follow these instructions for installing cURL:

### Mac

If you have a Mac, by default, cURL is probably already installed. To check:

1.  Open Terminal (press **Cmd + space bar** to open Spotlight, and then type "Terminal").
2.  In Terminal type `curl -V`. The response should look something like this:
    
    ```
    curl 7.37.1 (x86_64-apple-darwin14.0) libcurl/7.37.1 SecureTransport zlib/1.2.5
    Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp smtp smtps telnet tftp
    Features: AsynchDNS GSS-Negotiate IPv6 Largefile NTLM NTLM_WB SSL libz
    ```

If you don't see this, you need to [download and install cURL](http://curl.haxx.se/).

To make a test API call, submit the following:

```
curl --get -k --include "https://simple-weather.p.mashape.com/aqi?lat=1.3319164&lng=103.7231246" -H "X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p" -H "Accept: text/plain"
```

You should get back a two-digit number in the response. (This is the "air quality index" for the weather.)

### Windows

Installing cURL on Windows involves a few more steps. First, determine whether you have 32-bit or 64-bit Windows by right-clicking **Computer** and selecting **Properties.**

Then follow the instructions in this [Confused by Code page](http://www.confusedbycode.com/curl/#downloads).

Once installed, test your version of cURL by doing the following:

1. Open a command prompt by clicking the **Start** button and typing **cmd**.
2. Type `curl -V`.

The response should be as follows:

```
curl 7.37.1 (x86_64-apple-darwin14.0) libcurl/7.37.1 SecureTransport zlib/1.2.5
Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp smtp smtps telnet tftp
Features: AsynchDNS GSS-Negotiate IPv6 Largefile NTLM NTLM_WB SSL libz
```

To make a test API call, submit the following:

```
curl --get -k --include "https://simple-weather.p.mashape.com/aqi?lat=1.3319164&lng=103.7231246" -H "X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p" -H "Accept: text/plain"
```

{{note}} In Windows, Ctrl+ V doesn't work; instead, you right-click and then select Paste.{{end}}

You should get back a two-digit number in the response. (This is the "air quality index" for the weather.)

{{tip}}If you're on Windows 8.1 and you encounter an error that says, "The program can't start because MSVCR100.dll is missing from your computer," see <a href="http://www.faqforge.com/windows/fix-the-program-cant-start-because-msvcr100-dll-is-missing-from-your-computer-error-on-windows/">this article</a> and install the suggested package.{{end}}

## Notes about using cURL with Windows

* Use double quotes in the Windows command line. (Windows doesn't support single quotes.)
* Don't use backslashes (`\`) to separate lines. (This is for readability only and doesn't affect the call on Macs. Unfortunately the Weather API on Mashape uses these slashes in their cURL examples.)
* By adding `-k` in the cURL command, you bypass cURL's security certificate, which may or may not be necessary.


