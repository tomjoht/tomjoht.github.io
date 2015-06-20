---
title: "2.0 Doc-only publishing platforms"
permalink: /publishingapidocs2-0/
course: "Publishing API documentation"
weight: 2.0
---

## Software as a service sites

You can publish documentation on hosted platforms specifically built for API and developer documentation. Two promising platforms are the following:

* [readme.io](http://readme.io)
* [readthedocs.com](http://readthedocs.com)

## No need to spend time developing your own site

If you consider how much time it requires to build, maintain, troubleshoot, etc. your own website, then it really does make sense to consider an existing third-party platform where someone has already built all of this out for you.

## Publish endpoint documentation on readme.io

In this tutorial we'll explore how to publish content on readme.io in more depth.

<a href="http://readme.io"><img src="{{ "/images/publishingapidocs/readmeio.png" | prepend: site.baseurl }}" alt="Readme.io" /></a>

In this workshop activity, you'll publish this [weatherdata endpoint documentation](https://www.mashape.com/fyhao/weather-13#weatherdata) on readme.io. 

### a. Set up a readme.io account

1. Click the **Sign Up** button in the upper-right corner and sign up for an account.
2. Add a Project Name (e.g., Weather API), Subdomain (e.g., weather-api), and Project Logo. Then click **Create Project**.
	
	<img src="{{ "/images/publishingapidocs/projectsettingsreadmeio.png" | prepend: site.baseurl }}" alt="Project Settings" />

### b. Configure API settings

1. In the left sidebar, under Settings, click **API Settings**.
2. For the API Base URL, enter **https://simple-weather.p.mashape.com**.
3. Leave the other settings not mentioned here at the defaults.
4. In the Static Headers section, click **Add Header** add these two headers as key-value pairs in the appropriate fields: 
	
	```
	X-Mashape-Key WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET
	Accept application/json
	```
	
	<img src="{{ "/images/publishingapidocs/readmioheaders.png" | prepend: site.baseurl }}" alt="Readme.io static headers" />
	
5. Select the **API Explorer** check box (if it's not already selected).
6. Click **Save**.

### c. Add endpoint documentation

1. In the left sidebar, click **Documentation**. 
2. Click **+** to add a new page. 
3. Select the **GET** method next to the top box.

	When you select this method, special settings for endpoint documentation appear.
	
	<img src="{{ "/images/publishingapidocs/getendpoint.png" | prepend: site.baseurl }}" alt="GET" />
	
4. Add in the documentation from the [weatherdata endpoint documentation](https://www.mashape.com/fyhao/weather-13#weatherdata). For example, add the description, parameters, cURL call, and response.
	
	<img src="{{ "/images/publishingapidocs/weatherdatareadmio.png" | prepend: site.baseurl }}" alt="Inputting weatherdata into readme.io" />
	
 5. Click **Save**. 
 6. At the top of the screen, click the project name to view the site. 
 
### d. Interact with the documentation
 
 1. Click **Documentation** in the header to go to your site.
 2. Click the **Weatherdata** endpoint in the sidebar.
 3. In the Try It Out section, insert some values into the lat and lng fields, and then click **Try It**.
    
	<img src="{{ "/images/publishingapidocs/readmeiotryitout.png" | prepend: site.baseurl }}" alt="Try it on readme.io" />
	
The experience is similar to Swagger in that the response appears directly in the documentation. This API Explorer gives you a sense of the data returned by the API.



