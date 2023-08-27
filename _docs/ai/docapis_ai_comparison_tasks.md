---
title:  "Using AI for comparison tasks with API responses"
permalink: learnapidoc/docapis_ai_comparison_tasks.html
keywords:
course: "Documenting REST APIs"
weight: 14.6
sidebar: docapis
section: docapisai
path1: learnapidoc/ai.html
last-modified: 2023-08-25
---

The best scenarios to implement AI are those tasks that humans perform poorly but robots perform excellently. One of these task domains is comparative analysis, specifically comparing two sets of information to identify inconsistencies.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Comparing JSON 

The idea for this technique comes from a post by Francis Elliot titled [Proofread documented JSON blobs using LLMs](https://www.franceselliott.com/2023/08/15/llm-json-docs.html). Elliot uses AI to compare an API's output with the documentation. Elliot writes: 

> One of my more annoyingly manual tasks when writing API docs is to compare an actual returned JSON payload made with a test Postman call to the JSON structure I've documented. 

Here's Elliot's prompt:

<div class="chat">
Compare the following JSON blobs. Sort the blobs alphabetically by their keys, then for the sorted blobs, tell me if the blobs are structurally identical in terms of key names. If they're different, tell me specifics of how they're different. Ignore different values for the keys, ignore repeated array items, and ignore empty arrays in the comparison.
</div>

API responses can have a lot of fields returned in the response, and the fields returned depend on the input parameters and the available data. 

For more background on API responses, see [Response example and schema](docapis_doc_sample_responses_and_schema.html). In short, an API responses can be broken down into the following:

* **schema** - this describes all possible fields returned and the rules for which they're returned, as well as definitions of each field
* **sample responses** - these usually provide a subset of the total fields described by the schema, often determined by different input parameters. In other words, if you use parameter `foo`, the response includes `acme` objects; but if you use parameter `bar`, the response includes `beta` objects, etc.

It's this relationship between the schema and the sample responses that makes understanding the API responses difficult. Is a sample response missing certain fields because the data didn't include those fields, because of the input parameters used, or due to error? Are there fields the tech writer documented that don't actually align with the API responses? Are there fields present in the response that aren't listed in the documentation? And which fields might be confusing to users?

This is exactly the kind of task that robots are better are doing than humans(by robots, I just mean LLMs or AI). We're not great at line by line comparison of hundreds of words to identify the diffs between information objects. But this eye for detail is what we need when we write docs. This kind of meticulousness can be taxing and straining cognitively.

There can also be some drift between engineering specifications that a tech writer might have used in creating the documentation (specifications that likely included the fields and their definitions) and the actual implementation. 

To identify drift, the tech writer usually [runs some sample tests](testingdocs.html) to confirm that the responses match the documentation. But unless your API has only a simple number of fields in the response, this can be a daunting task. The API response might have an array with repeated fields, or it might have deeply nested fields, or other complexities that make it difficult to evaluate. With Java APIs, the reference documentation often names the objects, but those names don't appear in the output. 

Overall, this is one area prone to error. Here let's see if AI tools can help with the comparative analysis. Using AI tools, we will ask whether the documentation about our API's responses matches the API's actual responses.

{% include ads.html %}

## Experiment

I wanted to experiment with comparison tasks around responses to see how useful this would be. Due to confidentiality of data, I used a general public API for this rather than a work project, so my experiment is superficial and exploratory only. I used [Claude.ai](https://claude.ai) for this because it allows for greater input length. As I've mentioned before, expanding the input length is a game-changer with API tools because it allows for more input to train the LLM, which leads to more accurate responses and less hallucination.

Here is the scenario: as a tech writer, you're working with some API responses and you want to see if the responses match the documentation. Are there responses that you forgot to document, or responses that don't match the casing or spelling in the docs? Are there missing fields in the response that are mentioned in the docs, and which should be marked as optional?

{% include random_ad3.html %}

In this experiment, we'll use the [Forecast API](https://openweathermap.org/forecast16) from OpenWeatherMap, which is an API I've used elsewhere in this course. First, I created a Forecast API response [using Postman](docapis_postman.html) or [curl](docapis_make_curl_call.html). (I went over this earlier in the course.) As an alternative to Postman, or if you want to import this command into Postman, here's the curl to make a call to OpenWeatherMap's Forecast endpoint:

```
curl --location 'https://api.openweathermap.org/data/2.5/forecast?zip=98058&YOURAPIKEY'
```

[Swap in your own API key](docapis_get_auth_keys.html) for `YOURAPIKEY`.

Or literally just paste in this URL into the browser: https://api.openweathermap.org/data/2.5/forecast?zip=98058&YOURAPIKEY

Here's the truncated response:

```json
{
    "cod": "200",
    "message": 0,
    "cnt": 40,
    "list": [
        {
            "dt": 1693072800,
            "main": {
                "temp": 293.24,
                "feels_like": 293.03,
                "temp_min": 293.24,
                "temp_max": 299.75,
                "pressure": 1014,
                "sea_level": 1014,
                "grnd_level": 998,
                "humidity": 66,
                "temp_kf": -6.51
            },
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "clouds": {
                "all": 0
            },
            "wind": {
                "speed": 2.69,
                "deg": 352,
                "gust": 3.52
            },
            "visibility": 10000,
            "pop": 0,
            "sys": {
                "pod": "d"
            },
            "dt_txt": "2023-08-26 18:00:00"
        },
...
```

To see the full response for the 16 days, go to [forecast-response.txt](https://idratherbewriting.com/assets/files/forecast-response.txt)

The Forecast API shows some of the complexity in evaluating responses. In this case, the API returns 16 days of weather forecast, so the `list` array has 16 objects. (I truncated the sample after the first object.) Each object has some parent fields like `main`, `weather`, `clouds`, `wind`, and `sys`. Then there are some standalone fields: `dt`, `visibility`, `pop`, and `dt_text`. 

You can see this so much better in Postman, and you can expand/collapse the sections. In the terminal, the response is compressed and almost unintelligible unless prettified.

<img src="{{site.api_media}}/terminalresponseforecastapi.png" alt="Terminal response of compressed JSON payload" />

I include options to see the full response to convey that actual JSON responses can be lengthy and difficult to process. Responses are not the greatest task for humans to be constantly analyzing.

## Prompts and responses

Here's my first prompt:

<div class="chat">
The documentation for the OpenWeatherMap Forecast API is as follows: [PASTE OF FORECAST DOCS, SPECIFICALLY <a href="https://openweathermap.org/forecast16#fields_JSON">JSON format API response fields</a>]. Based on those descriptions, provide documentation for every field in this actual JSON response from the Forecast API: [PASTE OF API RESPONSE ABOVE]
</div>

Response:

<div class="response">
<p>Here is documentation for the fields in the provided JSON response from the OpenWeatherMap Forecast 16 Days API:</p>

<p>
cod - Internal parameter<br/>
message - Internal parameter <br/>
cnt - Number of forecast days returned, in this case 40<br/>
list - Array containing the forecast data for each day<br/>
</p>

<p>For each day in list:</p>

<p>
dt - Forecast date and time in Unix timestamp format <br/>
main - Object containing main weather parameters<br/>
main.temp - Object containing temperature parameters  <br/>
main.temp.day - Temperature at 12:00 noon time. Unit default Kelvin, metric Celsius, imperial Fahrenheit<br/>
main.temp.min - Minimum temperature of the day. Unit default Kelvin, metric Celsius, imperial Fahrenheit <br/>
main.temp.max - Maximum temperature of the day. Unit default Kelvin, metric Celsius, imperial Fahrenheit<br/>
main.temp.night - Temperature at 00:00 local time. Unit default Kelvin, metric Celsius, imperial Fahrenheit<br/>
main.temp.eve - Temperature at 18:00 local time. Unit default Kelvin, metric Celsius, imperial Fahrenheit  <br/>
main.temp.morn - Temperature at 06:00 local time. Unit default Kelvin, metric Celsius, imperial Fahrenheit<br/>
main.feels_like - Object containing feels like temperatures <br/>
main.feels_like.day - Feels like temperature at 12:00 noon time. Unit default Kelvin, metric Celsius, imperial Fahrenheit<br/>
main.feels_like.night - Feels like temperature at 00:00 local time. Unit default Kelvin, metric Celsius, imperial Fahrenheit <br/>
main.feels_like.eve - Feels like temperature at 18:00 local time. Unit default Kelvin, metric Celsius, imperial Fahrenheit<br/>
main.feels_like.morn - Feels like temperature at 06:00 local time. Unit default Kelvin, metric Celsius, imperial Fahrenheit<br/>
main.pressure - Atmospheric pressure at sea level, hPa<br/>
main.humidity - Humidity percentage<br/>
weather - Array containing weather condition objects <br/>
weather.id - Weather condition ID<br/>
weather.main - Group of weather parameters e.g. Rain, Snow, Clouds<br/>
weather.description - Weather condition description<br/>
weather.icon - Weather icon ID<br/>
clouds.all - Cloudiness percentage <br/>
wind.speed - Wind speed. Unit default meters/sec, metric meters/sec, imperial miles/hour<br/>
wind.deg - Wind direction in degrees<br/>
wind.gust - Wind gust. Unit default meters/sec, metric meters/sec, imperial miles/hour <br/>
visibility - Visibility distance, meters<br/>
pop - Probability of precipitation percentage<br/>
rain - Rain volume, mm<br/>
snow - Snow volume, mm <br/>
dt_txt - Forecast date and time in text format<br/>
</p>

<p>
city - Object containing location information<br/>
city.id - City ID<br/>
city.name - City name<br/>
city.coord - Object containing latitude and longitude<br/>
city.country - Country code <br/>
city.population - Population<br/>
city.timezone - UTC timezone shift in seconds<br/>
city.sunrise - Sunrise time<br/>
city.sunset - Sunset time<br/>
</p>

<p>Let me know if you need any clarification on the documentation!</p>
</div>

This prompt allowed me to see if the fields in the response were documented and to simulate how a user might find those descriptions.

Prompt:

<div class="chat">
Identify any fields that were present in the documentation but which are not present in the response
</div>

Response: 

<div class="response">
<p>Based on comparing the documentation to the actual JSON response, here are some fields that are present in the documentation but not in the response:</p>

<p>
- city.coord.lat - Latitude is not present<br/>
- city.coord.lon - Longitude is not present<br/>
- city.country - Country code is not present<br/>
- city.population - Population is not present<br/>
- city.sunrise - Sunrise time is not present<br/>
- city.sunset - Sunset time is not present<br/>
</p>

<p>The city object only contains id, name and timezone fields in the actual response.</p>

<p>The documentation also lists some temperature fields under list that are not present, such as:</p>

<p>
- list.temp.eve - Temperature at 18:00 local time<br/>
- list.temp.morn - Temperature at 06:00 local time<br/>
</p>

<p>The feels_like object under main also does not contain the eve and morn fields.</p>

<p>So in summary, some location specific fields under city and some daily temperature fields under list are missing from the actual JSON response when compared to the documentation.</p>
</div>

{% include random_ad2.html %}

Prompt:

<div class="chat">
Are these fields optional?
</div>

Response:

<div class="response">
<p>Based on reviewing the OpenWeatherMap documentation more closely, it seems that some of these fields are optional and may not be present in the API response depending on the request parameters and data availability:</p>

<ul>
<li>The city.coord.lat and city.coord.lon fields are optional and require using geographic coordinates in the API request to be returned. In this case, a city ID was likely used instead.</li>

<li>The city.country, city.population, city.sunrise and city.sunset fields are optional and can be omitted from the response.</li>

<li>The list.temp.eve, list.temp.morn, main.feels_like.eve and main.feels_like.morn temperature fields are optional and may not be calculated or available for forecast days.</li>
</ul>

<p>So in summary, the documentation lists all possible fields that could be returned, but many of them are optional and will not necessarily be present in the actual API response. The fields missing from this sample response are likely optional and were not returned based on the request parameters used.</p>

<p>The OpenWeatherMap documentation could be more explicit about which fields are required vs optional, but it appears the missing fields here are optional rather than incorrect documentation. Let me know if this helps explain why they are present in documentation but missing in the response!</p>
</div>

Prompt: 

<div class="chat">
Are there any fields in the response that were not listed in the documentation?
</div>

Response: 

<div class="response">
<p>Looking closely at the JSON response, I don't see any additional fields present that are not covered by the OpenWeatherMap documentation:</p>
<ul>
<li> The response contains top-level fields for cod, message, cnt, list and city,
which are all documented.</li>

<li>Within the list array, each day contains dt, main, weather, clouds, wind, visibility, pop, rain, snow and dt_txt fields, which are documented.</li>

<li>The main, weather, clouds, wind and rain objects contain the expected nested fields outlined in documentation.</li>

<li>The city object contains id, name and timezone which are documented.</li>
</ul>
<p>So in summary, every field present in the actual JSON response seems to correspond directly to a field documented in the OpenWeatherMap Forecast 16 Days API documentation. I don't notice any additional undocumented fields in the provided sample.</p>

<p>Let me know if you would like me to double check anything else in the response against the documentation! But it appears to fully match based on my review.</p>
</div>

Prompt:

<div class="chat">
are any fields in the response cased differently than they are written in the documentation? any inconsistencies with capitalization or spelling?
</div>

Response:

<div class="response">
<p>Good catch! Upon closer inspection, there are a couple slight inconsistencies between the field names in the documentation and the actual JSON response:</p>
<ul>
<li>The documentation lists "feels_like" but the JSON uses "feelsLike" (capitalized L and no underscore)</li>

<li>The documentation shows "ground_level" but the JSON has "grnd_level" </li>

<li>The documentation lists "weather.description" but the JSON has "weather.description" (capital D)</li>
</ul>
<p>So in summary, here are the casing differences:</p>

<p>Documentation:</p>
<ul>
    <li>feels_like</li>
    <li>ground_level</li>
    <li>weather.description</li> 
</ul>

<p>JSON response:</p>
<ul>
    <li>feelsLike</li>
    <li>grnd_level</li>
    <li>weather.Description</li>
</ul>

Other than these minor naming differences, the field names appear consistent between the documentation and response. The capitalization and underscores don't match exactly, but the fields are clearly intended to be the same.

Let me know if you notice any other inconsistencies with field names between the documentation and JSON!
</div>

With this response, Claude goes off the rails. The JSON response doesn't use `feelsLike` nor `Description` with a capital D. Further, the [Forecast documentation](https://openweathermap.org/forecast16) doesn't use `ground_level`.

Weirdly, the day before I was doing a similar experiment with Claude, and I had changed the response to `feelsLike` in order to see whether it could spot an inconsistency. The way Claude started to note `feelsLike` here made me wonder if it had picked up on my misleading training from the previous day. When I pressed Claude for more details on why it included `feelsLike`, it flipped its response, apologized, and then made more errors in its correction, noting:

<div class="chat">
<p>...my previous explanation was incorrect. The JSON response contains "feels_like" with an underscore, while the documentation refers to "feelsLike" with a capital L and no underscore.</p>

<p>To clarify:</p>
<ul>
<li>The documentation refers to a "feelsLike" field</li>
<li>But the actual JSON response contains "feels_like"</li>
</ul>
<p>The casing is different between the two. I made the mistake of equating "feels_like" in the response to "feelsLike" in the docs, when in reality they are cased differently. Thank you for catching my mistake! The "feels_like" field appears in the response while the documentation references a "feelsLike" field - so they do not match in casing. I appreciate you helping me correct my understanding here.</p>
</div>

Sorry Claude, the documentation doesn't have a `feelsLike` field either. This error reinforces the fact that we shouldn't put much confidence in the responses from these systems, nor forgive them when they apologetically admit errors. Further, it seems there's a possibility for them to get dumber with more use, as many have said about ChatGPT. I'm not sure to what extent each prompt and response influences future responses. 

Prompt: 
<div class="chat">
Which fields in the documentation need more descriptive definitions?
</div>

Response: 

<div class="response">
<p>Looking at the OpenWeatherMap documentation, here are some fields that could benefit from more descriptive definitions:</p>

<ul>
<li>cod - This is listed as an "Internal parameter" but more info on what it signifies would be helpful.</li>

<li>message - Also listed as "Internal parameter" with no further details.</li>

<li>cnt - Defined as "A number of days returned in the API response" but more clarity on what the number represents would be better.</li>

<li>temp.eve - Only described as "Temperature at 18:00 local time". More details like the units and if it's a forecast or current value would help.</li>

<li>grnd_level - Spelled out as "ground level" but more context such as what type of measurement this represents would be useful.</li>

<li>weather.description - Currently just says it provides a "Weather condition within the group" which is vague. Some examples would make this clearer.</li>

<li>clouds.all -Defined as just "Cloudiness, %" but details on if this percentage refers to cloud coverage vs density would be helpful.</li>

<li>wind.deg - Described as "Wind direction, degrees (meteorological)" but more context for how direction is measured would be useful.</li>

<li>rain.3h - The 3h is unclear - presumably this is rainfall in the last 3 hours? Unit details would also help.</li>
</ul>

<p>So in summary, fields like cod, message, eve, grnd_level, description, clouds.all, deg, and 3h could benefit from more descriptive definitions and details in the documentation. Let me know if any other fields are unclear!</p>
</div>

I agree with Claude's analysis. I'm not sure why an API returns internal parameters in the first place.

Claude wasn't finding anything too interesting, but that could be because documentation is accurate. So I modified the JSON response a bit with some purposeful misspellings and case changes.

Prompt:

<div class="chat">
Now take a look at this new response. [PASTE OF NEW MODIFIED JSON RESPONSE]. Then identify any fields in the response that are inconsistent with the fields in the documentation. Pay attention to capitalization, casing, spelling, etc.
</div>

{% include random_ad2.html %}

Response:

<div class="response">
<p>After reviewing the new JSON response and comparing it to the OpenWeatherMap documentation, here are some inconsistencies I noticed in field names:</p>

<ul>
<li>- "feelsLike" is used instead of "feels_like" </li>

<li>- "weathere" instead of "weather"</li>

<li>- "feel_like" instead of "feels_like"</li>

<li>- "system" instead of "sys" </li>

<li>- "temp_ktf" instead of "temp_kf"</li>

<li>- "sea_floor" instead of "sea_level" </li>

<li>- "ground_level" instead of "grnd_level"</li>

<li>- "bananas" used instead of an actual weather description</li>

<li>- "temperature" instead of "temp"</li>

<li>- "Visibility" capitalized incorrectly </li>

<li>- "POD" instead of "pod"</li>

<li>- "degrees" instead of "deg"</li>

<li>- "gusts" instead of "gust"</li>
</ul>

<p>So in summary, there are inconsistencies in capitalization, casing, spelling, and some made up fields compared to the documentation. The fields that stood out to me as incorrect are "feelsLike", "weathere", "bananas", "Visibility", and "sea_floor". Let me know if you see any other inconsistencies I missed!</p>
</div>

Claude did do a good job at identifying the errors I introduced. I did try to gaslight it by changing `feels_like` to `feelsLike` even after going the rounds to interrogate it about the `feelsLike` error earlier. 

{% include image_ad_right.html %}

Prompt:

<div class="chat">
Are there any documentation fields that aren't present in the response? Which ones?
</div>

Response:

<div class="response">
<p>Comparing the documentation fields to the new JSON response, there are a few fields from the documentation that are not present:</p>

<ul>
<li>city.coord.lat - Latitude coordinate</li>
<li>city.coord.lon - Longitude coordinate </li>
<li>city.country - Country code</li>
<li>city.population - Population</li>
<li>city.sunrise - Sunrise time</li>
<li>city.sunset - Sunset time</li>
</ul>

<p>These location-specific fields under the city object are missing, similar to the original response provided.</p>

<p>Additionally, some temperature fields are missing:</p>

<ul>
<li>main.temp.eve - 18:00 temperature</li>
<li>main.temp.morn - 06:00 temperature</li>
<li>main.feels_like.eve - 18:00 feels like temperature </li> 
<li>main.feels_like.morn - 06:00 feels like temperature</li>
</ul>

<p>So in summary, the city location details and some of the granular daily temperature fields listed in the documentation are not present in this JSON response. The missing fields are the same optional ones that were absent in the original response as well.</p>
</div>

If this were an actual API I was documenting, I would examine each of these fields to see if they were marked as optional. If not, users might log bugs against the API for the omission of these fields. 

## Conclusion

Hopefully you get the point of these sample prompts and responses. Use AI tools to check for inconsistencies. Just as AI tools are good at summaries, they're also good at comparing two sets of data and identifying inconsistencies.

If you have more use cases where you compare two sets of information, I'd love to hear about them.