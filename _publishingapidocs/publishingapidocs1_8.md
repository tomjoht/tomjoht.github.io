---
title: "1.8 Static site generators"
permalink: /publishingapidocs1-8/
course: "Publishing API documentation"
weight: 1.8
---

## What are static site generators

Static site generators are a breed of website compilers that package up a group of files (usually written in Markdown) and make them into a website. There are more than 350 different static site generators. You can browse them at [staticgen.com](http://www.staticgen.com/).

Jekyll is one of the most popular static site generators. All of my help content is on Jekyll. You can publish a fully functional tech comm website that includes content re-use, conditional filtering, variables, PDF output, and everything else you might need as a technical writer.

## Static site generators give you a flexible web platform

Static site generators give you a lot of flexibility. They're a good choice if you need a lot of flexibility and control over your site. You're not just plugging into an existing API documentation framework or architecture. You define your own templates and structure things however you want.

With static site generators, you can do the following:

* Write in a text editor
* Create custom templates for documentation
* Use a revision control repository workflow
* Customize the look and feel of the output
* Insert JavaScript and other code directly on the page

## Publish the surfreport in a Jekyll theme

In this activity, you'll publish an endpoint in a Jekyll theme.

The [Aviator API documentation theme](https://github.com/CloudCannon/Aviator-Jekyll-Theme) by Cloud Cannon is designed for REST APIs. You'll use this theme to input a new endpoint. If you're continuing on from the previous course (Documenting REST APIs), you already have a new endpoint called surfreport.

<a href="https://github.com/CloudCannon/Aviator-Jekyll-Theme"><img src="{{ "/images/publishingapidocs/aviatortheme.png" | prepend: site.baseurl }}" alt="Cloud Cannon Aviator theme" /></a>

{{note}} If you're on a Mac (with Rubygems and Jekyll installed), building Jekyll sites is a lot simpler. But even if you're on Windows, it won't matter for this tutorial. You'll be using CloudCannon, a SaaS website builder product, to build the Jekyll files.{{end}}
 
### a. Download the Jekyll Aviator theme

1. Go to [Aviator API documentation theme](https://github.com/CloudCannon/Aviator-Jekyll-Theme) and click the **Download ZIP** button.
	
	<a href="https://github.com/CloudCannon/Aviator-Jekyll-Theme"><img src="{{ "/images/publishingapidocs/gitdownloadzip.png" | prepend: site.baseurl }}" alt="Download ZIP button for Aviator theme" /></a>
	 
2. Unzip the files. 

### b. Add the weatherdata endpoint doc to the theme
 
1. Browse to the theme's files. In the _api folder, open 1_1_books_list.md in a text editor and look at the format. 
	
	In every Jekyll file, there's some "frontmatter" at the top. The frontmatter section has three dashes before and after it. 
	
	The frontmatter is formatted in a syntax called YML. YML is similar to JSON but uses spaces and hyphens instead of curly braces. This makes it more human readable.
	
2. Create a new file called 1-6_weatherdata.md and save it the same _api folder. 
3. Get the data from the weatherdata endpoint from this [Weather API on Mashape](https://www.mashape.com/fyhao/weather-13#weatherdata). (This is an API we worked with extensively in the <a href="{{ "/restapicourse" | prepend: site.baseurl | append: site.suffix }}">REST API course</a>previous course (Documenting REST APIs).) Put the data from this endpoint into the Aviator theme's template.
	
	The Aviator Jekyll theme has a specific layout that will be applied to all the files inside the _api folder (these files are called a collection). Jekyll will access these values by going to api.title, api.type, and so forth. It will then push this content into the template (which you can see by going to _layouts/multi.md). 
	
	Here's what my 1-6_weatherdata.md file looks like. Be sure to put the response within square brackets, indented with one tab (4 spaces). You can also <a href="{{ "/files/publishingapidocs/1-6_weatherdata.md" | prepend: site.baseurl | append: site.suffix }}">download the file here</a>. Remove the `raw` and `endraw` tags at the beginning and end of the code sample (which I had to add to keep Jekyll from trying to process it.)
	
	```
	---
	title: /weatherdata
	type: get
	description: Get weather forecast by Latitude and Longitude. 
	parameters:
	  title: Weatherdata parameters
	  data:
	    - lat:
	      - string
	      - Required. Latitude.
	    - lng:
	      - string
	      - Required. Longitude.
	right_code:
	  return: |
	---
	title: /weatherdata
	type: get
	description: Get weather forecast by Latitude and Longitude. 
	parameters:
	  title: Weatherdata parameters
	  data:
	    - lat:
	      - string
	      - Required. Latitude.
	    - lng:
	      - string
	      - Required. Longitude.
	right_code:
	  return: |
	    [
	    {
	    "query": {
	    "count": 1,
	    "created": "2014-05-03T03:57:53Z",
	    "lang": "en-US",
	    "results": {
	      "channel": {
	        "title": "Yahoo! Weather - Tebrau, MY",
	        "link": "http://us.rd.yahoo.com/dailynews/rss/weather/Tebrau__MY/*http://weather.yahoo.com/forecast/MYXX0004_c.html",
	        "description": "Yahoo! Weather for Tebrau, MY",
	        "language": "en-us",
	        "lastBuildDate": "Sat, 03 May 2014 11:00 am MYT",
	        "ttl": "60",
	        "location": {
	          "city": "Tebrau",
	          "country": "Malaysia",
	          "region": ""
	        },
	        "units": {
	          "distance": "km",
	          "pressure": "mb",
	          "speed": "km/h",
	          "temperature": "C"
	        },
	        "wind": {
	          "chill": "32",
	          "direction": "170",
	          "speed": "4.83"
	        },
	        "atmosphere": {
	          "humidity": "66",
	          "pressure": "982.05",
	          "rising": "0",
	          "visibility": "9.99"
	        },
	        "astronomy": {
	          "sunrise": "6:57 am",
	          "sunset": "7:06 pm"
	        },
	        "image": {
	          "title": "Yahoo! Weather",
	          "width": "142",
	          "height": "18",
	          "link": "http://weather.yahoo.com",
	          "url": "http://l.yimg.com/a/i/brand/purplelogo//uh/us/news-wea.gif"
	        },
	        "item": {
	          "title": "Conditions for Tebrau, MY at 11:00 am MYT",
	          "lat": "1.58",
	          "long": "103.74",
	          "link": "http://us.rd.yahoo.com/dailynews/rss/weather/Tebrau__MY/*http://weather.yahoo.com/forecast/MYXX0004_c.html",
	          "pubDate": "Sat, 03 May 2014 11:00 am MYT",
	          "condition": {
	            "code": "28",
	            "date": "Sat, 03 May 2014 11:00 am MYT",
	            "temp": "32",
	            "text": "Mostly Cloudy"
	          },
	          "description": "\n<img src=\"http://l.yimg.com/a/i/us/we/52/28.gif\"/><br />\n<b>Current Conditions:</b><br />\nMostly Cloudy, 32 C<BR />\n<BR /><b>Forecast:</b><BR />\nSat - Scattered Thunderstorms. High: 32 Low: 26<br />\nSun - Thunderstorms. High: 33 Low: 27<br />\nMon - Scattered Thunderstorms. High: 32 Low: 26<br />\nTue - Thunderstorms. High: 32 Low: 26<br />\nWed - Scattered Thunderstorms. High: 32 Low: 27<br />\n<br />\n<a href=\"http://us.rd.yahoo.com/dailynews/rss/weather/Tebrau__MY/*http://weather.yahoo.com/forecast/MYXX0004_c.html\">Full Forecast at Yahoo! Weather</a><BR/><BR/>\n(provided by <a href=\"http://www.weather.com\" >The Weather Channel</a>)<br/>\n",
	          "forecast": [
	            {
	              "code": "38",
	              "date": "3 May 2014",
	              "day": "Sat",
	              "high": "32",
	              "low": "26",
	              "text": "Scattered Thunderstorms"
	            },
	            {
	              "code": "4",
	              "date": "4 May 2014",
	              "day": "Sun",
	              "high": "33",
	              "low": "27",
	              "text": "Thunderstorms"
	            },
	            {
	              "code": "38",
	              "date": "5 May 2014",
	              "day": "Mon",
	              "high": "32",
	              "low": "26",
	              "text": "Scattered Thunderstorms"
	            },
	            {
	              "code": "4",
	              "date": "6 May 2014",
	              "day": "Tue",
	              "high": "32",
	              "low": "26",
	              "text": "Thunderstorms"
	            },
	            {
	              "code": "38",
	              "date": "7 May 2014",
	              "day": "Wed",
	              "high": "32",
	              "low": "27",
	              "text": "Scattered Thunderstorms"
	            }
	          ],
	          "guid": {
	            "isPermaLink": "false",
	            "content": "MYXX0004_2014_05_07_7_00_MYT"
	          }
	        }
	      }
	    }
	    }
	    }
	    ]
	---
	
	<div class="code-viewer">
	
	<pre data-language="cURL">
	curl --get --include 'https://simple-weather.p.mashape.com/weatherdata?lat=1.0&lng=1.0' \
	  -H 'X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p' \
	  -H 'Accept: application/json'
	  </pre>
	
	</div>

    ---

### c. Publish your Jekyll project on CloudCannon

In this example, we'll use CloudCannon to build and publish the Jekyll site. 

1. Go to [http://cloudcannon.com](http://cloudcannon.com) and sign up for a free test account by clicking **Sign Up**
2. After signing up and logging in, click **Create Site**.
3. Log in and click **Create Site**.
4. Type a name for the site (e.g., Aviator Test) and press your **Enter** key.
3. Click the **Upload Files** button in the upper-right corner. 

	<img src="{{ "/images/publishingapidocs/cloudcannonupload.png" | prepend: site.baseurl }}" alt="Uploading to Cloud Cannon" />

4. Open your Aviator theme files, select them all, and drag them into the upload file dialog box. (Don't just drag the Aviator theme folder into CloudCannon).
    	
5. After the files finish uploading (and little green check marks appear next to the files), click the preview link in the upper-left corner:
	
	<img src="{{ "/images/publishingapidocs/previewlinkcc.png" | prepend: site.baseurl }}" alt="Preview link" />
		
6. When prompted for a password for viewing the site to add, add one. 
7. Click the preview link to view the site. 

The site should appear as follows:

<img src="{{ "/images/publishingapidocs/weatherdataendpointcloudcannon.png" | prepend: site.baseurl }}" alt="CloudCannon Weatherdata endpoint" />

You can see my site at [http://delightful-nightingale.cloudvent.net/](http://delightful-nightingale.cloudvent.net/). The password is `stcsummit`.

{{tip}} If your endpoint doesn't appear, you probably have invalid YML syntax. Make sure the left edge of the response is at least one tab (4 spaces) in.{{end}}

Each time you save the site, CloudCannon actually rebuilds the Jekyll files into the site that you see.

{{note}} If you switch between the code editor and visual display, the code sample gets mangled. (The CloudCannon editor will convert the https path into a link.) This is a bug in CloudCannon that will be fixed.{{end}} 

## What's cool about CloudCannon and Jekyll

Jekyll is a good solution because it provides near infinite flexibility and fits well within the UX web stack. 

CloudCannon provides an easy way to allow subject matter experts to author and edit content, since CloudCanonn allows you to create editable regions within your Jekyll theme. This would allow a tools team to  maintain the site while providing areas for less technical people to author content.

However, CloudCannon wouldn't be a good solution if your docs require authentication in a highly secure environment. Additionally, Jekyll only provide static HTML files. If you want users to log in, and then personalize what they see when logged in, Jekyll won't provide this experience.

