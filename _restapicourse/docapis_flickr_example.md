---
title: 'Flickr example: Retrieve a Flickr gallery and display it on a web page'
permalink: /docapis_flickr_example/
categories:
- api-doc
course: "Documenting REST APIs"
weight: 4.0
type: notes_docapis
date: January 15, 2015
---
In this Flickr API example, you'll see that our goal requires us to call several endpoints. The point is that just having an API reference that lists the endpoints and responses isn't enough. Often one endpoint requires other endpoints, and so on.

Suppose we want to get all the photos from a [specific Flickr gallery](https://www.flickr.com/photos/flickr/galleries/72157647277042064/) and display them on a web page. Here's the gallery we want:

<a href="https://www.flickr.com/photos/flickr/galleries/72157647277042064/"><img src="{{ "/images/restapicourse/flickrgallery.png" | prepend: site.baseurl }}" alt="Flickr gallery" /></a>

From the list of [Flickr's API methods](https://www.flickr.com/services/api/), the [flickr.galleries.getPhotos](https://www.flickr.com/services/api/flickr.galleries.getPhotos.html) is the one that will get photos from a gallery.

<a href="https://www.flickr.com/services/api/flickr.galleries.getPhotos.html"><img src="{{ "/images/restapicourse/flickr_get_photos.png" | prepend: site.baseurl }}" alt="Flickr getPhotos endpoint" /></a>

You can see that each endpoint has some common sections:

* the endpoint
* what it returns
* authentication
* arguments
* example response
* error codes
* API Explorer

One of the arguments we need is the gallery ID. Before we can use this endpoint, we have to use another endpoint to get the gallery ID, because (rather unintuitively) the gallery ID is <em>not</em> the ID that appears in the URL of the gallery.

We use the [flickr.urls.lookupGallery](https://www.flickr.com/services/api/explore/flickr.urls.lookupGallery) endpoint to get the gallery ID from a gallery URL:

<a href="https://www.flickr.com/services/api/explore/flickr.urls.lookupGallery"><img src="{{ "/images/restapicourse/flickr_gallery_id.png" | prepend: site.baseurl }}" alt="Flickr lookupGallery endpoint endpoint" /></a>

The API Explorer makes the following call:

```
https://api.flickr.com/services/rest/?method=flickr.urls.lookupGallery&api_key={api key}&url=https%3A%2F%2Fwww.flickr.com%2Fphotos%2Fflickr%2Fgalleries%2F72157647277042064%2F&format=json&nojsoncallback=1&auth_token=72157657470380250-0cfa7ca879f427d1&api_sig=e5e67cea50f032c9b911a9de51c4ce42
```

If you send this request via your browser, you see:

<img src="{{ "/images/restapicourse/flickr_response.png" | prepend: site.baseurl }}" alt="Flickr response" />

Note that I'm using the [JSON Formatting extension for Chrome](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en) to make the JSON response more readable. Without this plugin, the JSON response is compressed.

The gallery ID is `66911286-72157647277042064`. We now have the arguments we need for the [flickr.galleries.getPhotos](https://www.flickr.com/services/api/flickr.galleries.getPhotos.html) endpoint. If I go to the [API Explorer for this endpoint](https://www.flickr.com/services/api/explore/flickr.galleries.getPhotos), I can plug in the gallery ID.

<a href="https://www.flickr.com/services/api/explore/flickr.galleries.getPhotos"><img src="{{ "/images/restapicourse/flickr_gallery_response.png" | prepend: site.baseurl }}" alt="Flickr gallery response" /></a>

Flickr's API Explorer simplifies the process of adding arguments to the endpoint. I can see the response from my request in the API Explorer. Many APIs have an API Explorer tool that makes it easy to construct requests with the parameters configured correctly. However, I can also go to the endpoint auto-generated from the arguments I entered and see the response directly in the browser:

```
https://api.flickr.com/services/rest/?method=flickr.galleries.getPhotos&api_key={api key}&gallery_id=66911286-72157647277042064&format=json&nojsoncallback=1&auth_token=72157657470380250-0cfa7ca879f427d1&api_sig=971f7ef555a702c646975144b5c16c9b
```

Here's the JSON response in the browser:

<img src="{{ "/images/restapicourse/rawjsonflickr-550x460.png" | prepend: site.baseurl }}" alt="Flickr raw JSON response" />

All the necessary information is included in this response in order to display photos on our site, but it's not entirely intuitive how we construct the image source URLs from the response. Note that, once again, the information a user needs to actually achieve a goal isn't explicit in the API reference documentation. All the reference doc explains is what gets returned in the response, not how to actually use the response.

The [Photo Source URLs](https://www.flickr.com/services/api/misc.urls.html) page in the documentation explains it:

```
You can construct the source URL to a photo once you know its ID, server ID, farm ID and secret, as returned by many API methods.
The URL takes the following format:
<pre>https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg
    or
https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}_[mstzb].jpg
    or
https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{o-secret}_o.(jpg|gif|png)
```

Here's what an item in the JSON response looks like:

```json
"photos": {
  "page": 1,
  "pages": 1,
  "perpage": 500,
  "total": 15,
  "photo": [
    {
     "id": "8432423659",
     "owner": "37107167@N07",
     "secret": "dd1b834ec5",
     "server": "8187",
     "farm": 9,
     "title": "Color",
     "ispublic": 1,
     "isfriend": 0,
     "isfamily": 0,
     "is_primary": 1,
     "has_comment": 0
} ...
```

You access these fields through dot notation. It's a good idea to log the whole object to the console just to explore it better.

## Displaying the photos using jQuery

The following code uses jQuery to loop through each of the responses and inserts the necessary components into an image tag to display each photo. Usually in documentation you don't need to be so explicit about how to use a common language like jQuery. You assume that the developer is capable in a specific language (just not with your API).

```html
<html>
<style>
img {max-height:125px; margin:3px; border:1px solid #dedede;}
</style>
<body>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>


<script>

var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://api.flickr.com/services/rest/?method=flickr.galleries.getPhotos&api_key={api key}&gallery_id=66911286-72157647277042064&format=json&nojsoncallback=1",
  "method": "GET",
  "headers": {}
}

$.ajax(settings).done(function (data) {
  console.log(data);



$("#galleryTitle").append(data.photos.photo[0].title + " Gallery");
    	$.each( data.photos.photo, function( i, gp ) {

var farmId = gp.farm;
var serverId = gp.server;
var id = gp.id;
var secret = gp.secret;

console.log(farmId + ", " + serverId + ", " + id + ", " + secret);

//  https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg

$("#flickr").append('<img src="https://farm' + farmId + '.staticflickr.com/' + serverId + '/' + id + '_' + secret + '.jpg"/>');


});
    	});

</script>


<h2><div id="galleryTitle"></div></h2>
<div style="clear:both;"/>
<div id="flickr"/>


</body>
</html>
```
And the result looks like this:


<img src="{{ "/images/restapicourse/flickrcolorgallerydemo-550x190.png" | prepend: site.baseurl }}" alt="Flickr gallery demo" />

<h2>Code explanation</h2>

* In this code, the [ajax method](http://api.jquery.com/jquery.ajax/) from jQuery gets the JSON payload. The payload is assigned to the `data` argument and then logged to the console.
* The data object contains an object called `photos`, which contains an array called `photo`. The `title` field is a property in the photo object. The `title` is accessed through this dot notation: `data.photos.photo[0].title`.
* To get each item in the object, jQuery's [each method](http://api.jquery.com/jquery.each/) loops through an object's properties.
* By the way, the jQuery `each` method is commonly used for looping through results to get values. Here's how it works. For the first argument (`data.photos.photo`), you identify the object that you want to access.
* For the `function( i, gp )` arguments, you list an index and value. You can use any names you want here. `gp` becomes a variable that refers to the `data.photos.photo` object you're looping through. `i` refers to the starting point through the object. (You don't actually need to refer to `i` beyond the mention here unless you want to begin the loop at a certain point.)
* To access the properties in the JSON object, we use `gp.farm` instead of `data.photos.photo[0].farm`, because `gp` is an object reference to `data.photos.photo`.
* After the `each` function iterates through the response, I added some variables make it easier to work with these components (using `serverId` instead of `gp.server`, etc.). And a `console.log` message checks to ensure we're getting values for each of the elements we need:
* This comment shows where we need to plug in each of the variables:
```html
//  https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg
```

The final line shows how you insert those variables into the HTML:

```
$("#flickr").append('<img src="https://farm' + farmId + '.staticflickr.com/' + serverId + '/' + id + '_' + secret + '.jpg"/>');
```

{{tip}} A common pattern in programming is to loop through a response. This code example used the `each` method from jQuery to look through all the items in the response and do something with each item. Sometimes you incorporate logic that loops through items and looks for certain conditions present to decide whether to take some action. Pay attention to methods for looping, as they are common scenarios in programming. {{end}}