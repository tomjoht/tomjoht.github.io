---
title: "Step 5: The components object (OpenAPI tutorial)"
permalink: learnapidoc/pubapis_openapi_step5_components_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.7
section: openapitutorial
path1: learnapidoc/restapispecifications.html
map:
  step: 5
  definition: content/openapi_tutorial_map.html
last-modified: 2026-10-17
---

{% include coffeeshopbook.html %}

{% if site.format == "print" %}
<img src="{{site.api_media}}/openapistep5.png"/>
{% endif %}

The `components` object is unique from the other objects in the OpenAPI specification. In `components`, you store re-usable definitions that might appear in multiple places in your specification document. In our API documentation scenario, we'll store details for both the `parameters` and `responses` object in `components`.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Reasons to use the components object {#reused_parameters}

{% include random_ad2.html %}

Describing the details of your parameters and describing the schema of complex responses can be the most  challenging aspects of the OpenAPI spec. Although you can define the parameters and responses directly in the `parameters` and `responses` objects, you typically don't list them there for two reasons:

* You might want to re-use parts of these definitions in other requests or responses. It's common to have the same parameter or response used in multiple places in an API. Through the `components` object, OpenAPI allows you to re-use these same definitions in multiple places.
* You might not want to clutter up your `paths` object with too many parameter and response details, since the `paths` object is already somewhat complex with several levels of objects.

Instead of listing the schema for your requests and responses in the `paths` object, for more complex schemas (or for schemas that are re-used in multiple operations or paths), you typically use a [reference object](https://spec.openapis.org/oas/v3.1.1.html#reference-object) (referenced with `$ref`) that points to a specific definition in the [`components` object](https://spec.openapis.org/oas/v3.1.1.html#components-object). (For more details on `$ref`, see [Using $ref](https://swagger.io/docs/specification/v3_0/using-ref/).)

{% include image_ad_right.html %}

Think of the `components` object like a document appendix where the re-usable details are provided. If multiple parts of your spec have the same schema, you point each of these references to the same object in your `components` object, and in so doing you single source the content. The `components` object can even be [stored in a separate file](https://apihandyman.io/writing-openapi-swagger-specification-tutorial-part-8-splitting-specification-file/) if you have a large API and want to organize the information that way.

## Objects in components

You can store a lot of different re-usable objects in the `components` object. The [`components` object](https://spec.openapis.org/oas/v3.1.1.html#components-object) can contain these objects:

* [`schemas`](https://spec.openapis.org/oas/v3.1.1.html#schema-object)
* [`responses`](https://spec.openapis.org/oas/v3.1.1.html#responses-object)
* [`parameters`](https://spec.openapis.org/oas/v3.1.1.html#parameter-object)
* [`examples`](https://spec.openapis.org/oas/v3.1.1.html#example-object)
* [`requestBodies`](https://spec.openapis.org/oas/v3.1.1.html#request-body-object)
* [`headers`](https://spec.openapis.org/oas/v3.1.1.html#header-object)
* [`securitySchemes`](https://spec.openapis.org/oas/v3.1.1.html#security-scheme-object)
* [`links`](https://spec.openapis.org/oas/v3.1.1.html#link-object)
* [`callbacks`](https://spec.openapis.org/oas/v3.1.1.html#callback-object)
* [`pathItems`](https://spec.openapis.org/oas/v3.1.1.html#components-path-items)

The properties for each object inside `components` are the same as they are when used in other parts of the OpenAPI spec. You use a reference pointer (`$ref`) to point to more details in the `components` object. `$ref` stands for [`reference` object](https://spec.openapis.org/oas/v3.1.1.html#reference-object) and is part of JSON.

{% include ads.html %}

## Re-using parameters across multiple paths {#reusing_parameters}

For the parameters in the previous step, we listed all the details directly in the `parameters` object. To facilitate re-use of the same parameters in other paths, let's store the `parameters` content in `components`. The code below shows how to make these references:

```yaml
paths:
  /weather:
    get:
      tags:
      - Current Weather Data
      summary: "Call current weather data for one location"
      description: "Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations."
      operationId: CurrentWeatherData
      parameters:
        - $ref: '#/components/parameters/q'
        - $ref: '#/components/parameters/id'
        - $ref: '#/components/parameters/lat'
        - $ref: '#/components/parameters/lon'
        - $ref: '#/components/parameters/zip'
        - $ref: '#/components/parameters/units'
        - $ref: '#/components/parameters/lang'
        - $ref: '#/components/parameters/mode'

      responses:
        '200':
          description: Successful response
          content:
            application/json:
              schema:
                title: Sample
                type: object
                properties:
                  placeholder:
                    type: string
                    description: Placeholder description

        '404':
          description: City not found
          content:
            application/json:
              schema:
                title: Not found
                type: object
                properties:
                  cod:
                    type: string
                    description: HTTP status code, returned as a string
                    examples:
                      - "404"
                  message:
                    type: string
                    description: Error message
                    examples:
                      - "city not found"

components:

  parameters:
    q:
      name: q
      in: query
      description: "**City name**. *Example: London*. You can call by city name, or by city name and country code. For the query value, type the city name and optionally the country code divided by a comma; use ISO 3166 country codes. (OpenWeatherMap has deprecated its built-in geocoding for city names, city IDs, and zip codes. These parameters still work, but OpenWeatherMap recommends using `lat` and `lon` instead.)"
      schema:
        type: string
    id:
      name: id
      in: query
      description: "**City ID**. *Example: `2172797`*. You can call by city ID. The API responds with the exact result. The List of city IDs can be downloaded [here](https://bulk.openweathermap.org/sample/). (OpenWeatherMap has deprecated its built-in geocoding for city names, city IDs, and zip codes. These parameters still work, but OpenWeatherMap recommends using `lat` and `lon` instead.)"
      schema:
        type: string

    lat:
      name: lat
      in: query
      description: "**Latitude**. *Example: 35*. The latitude coordinate of the location of your interest. Must use with `lon`."
      schema:
        type: number

    lon:
      name: lon
      in: query
      description: "**Longitude**. *Example: 139*. Longitude coordinate of the location of your interest. Must use with `lat`."
      schema:
        type: number

    zip:
      name: zip
      in: query
      description: "**Zip code**. Search by zip code. *Example: 95050,us*. Please note that if the country is not specified, the search uses USA as a default. (OpenWeatherMap has deprecated its built-in geocoding for city names, city IDs, and zip codes. These parameters still work, but OpenWeatherMap recommends using `lat` and `lon` instead.)"
      schema:
        type: string

    units:
      name: units
      in: query
      description: '**Units**. *Example: imperial*. Possible values: `standard`, `metric`, and `imperial`. When you do not use the `units` parameter, the format is `standard` by default.'
      schema:
        type: string
        enum: [standard, metric, imperial]
        default: "standard"

    lang:
      name: lang
      in: query
      description: '**Language**. *Example: en*. You can use lang parameter to get the output in your language. We support the following languages that you can use with the corresponded lang values: Arabic - `ar`, Bulgarian - `bg`, Catalan - `ca`, Czech - `cz`, German - `de`, Greek - `el`, English - `en`, Persian (Farsi) - `fa`, Finnish - `fi`, French - `fr`, Galician - `gl`, Croatian - `hr`, Hungarian - `hu`, Italian - `it`, Japanese - `ja`, Korean - `kr`, Latvian - `la`, Lithuanian - `lt`, Macedonian - `mk`, Dutch - `nl`, Polish - `pl`, Portuguese - `pt`, Romanian - `ro`, Russian - `ru`, Swedish - `se`, Slovak - `sk`, Slovenian - `sl`, Spanish - `es`, Turkish - `tr`, Ukrainian - `ua`, Vietnamese - `vi`, Chinese Simplified - `zh_cn`, Chinese Traditional - `zh_tw`.'
      schema:
        type: string
        enum: [ar, bg, ca, cz, de, el, en, fa, fi, fr, gl, hr, hu, it, ja, kr, la, lt, mk, nl, pl, pt, ro, ru, se, sk, sl, es, tr, ua, vi, zh_cn, zh_tw]
        default: "en"

    mode:
      name: mode
      in: query
      description: "**Mode**. *Example: html*. Determines the format of the response. Possible values are `json`, `xml`, and `html`. If the mode parameter is empty, the format is `json` by default."
      schema:
        type: string
        enum: [json, xml, html]
        default: "json"
```

Replace the existing `paths` object in the Swagger Editor with the above code sample, include the new `components` object, and observe that the rendered display still looks the same.

{% include content/troubleshooting_spec_tip.md %}

## Re-using response objects {#reusing_objects}

In [Step 4: The paths object](pubapis_openapi_step4_paths_object.html), when we described the [`responses` object](https://spec.openapis.org/oas/v3.1.1.html#responses-object) in the `paths` object, even with just a simple placeholder, we used a [`schema`](https://spec.openapis.org/oas/v3.1.1.html#schema-object) object to describe the model for the request or response. The `schema` refers to the data structure (the fields, values, and hierarchy of the various objects and properties of a JSON or YAML object &mdash; see [What is a schema?](https://json-schema.org/understanding-json-schema/about)).

{% include random_ad3.html %}

Let's dive deeply into how to use the schema properties to document the `responses` object. We will also store this content in `components` so that it can be re-used in other parts of the specification document. If you recall in the previous step ([OpenAPI tutorial Step 4: The paths object](pubapis_openapi_step4_paths_object.html)), the `responses` object for the `weather` endpoint looked like this:

```yaml
paths:
  /weather:
    get:
      parameters:

      ...

      responses:
        '200':
          description: Successful response
          content:
            application/json:
              schema:
                title: Sample
                type: object
                properties:
                  placeholder:
                    type: string
                    description: Placeholder description

        '404':
          description: City not found
          content:
            application/json:
              schema:
                title: Not found
                type: object
                properties:
                  cod:
                    type: string
                    description: HTTP status code, returned as a string
                    examples:
                      - "404"
                  message:
                    type: string
                    description: Error message
                    examples:
                      - "city not found"
```

Now let's move the `schema` description for the `200` response into the `components` object:

```yaml
paths:
  /weather:
    get:
      tags:
      - Current Weather Data
      summary: "Call current weather data for one location"
      description: "Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations."
      operationId: CurrentWeatherData
      parameters:
        - $ref: '#/components/parameters/q'
        - $ref: '#/components/parameters/id'
        - $ref: '#/components/parameters/lat'
        - $ref: '#/components/parameters/lon'
        - $ref: '#/components/parameters/zip'
        - $ref: '#/components/parameters/units'
        - $ref: '#/components/parameters/lang'
        - $ref: '#/components/parameters/mode'

      responses:
        '200':
          description: Successful response
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/SuccessfulResponse'
        '404':
          description: City not found
          content:
            application/json:
              schema:
                title: Not found
                type: object
                properties:
                  cod:
                    type: string
                    description: HTTP status code, returned as a string
                    examples:
                      - "404"
                  message:
                    type: string
                    description: Error message
                    examples:
                      - "city not found"
```

Then in `components/schemas`, we'll define the `SuccessfulResponse` schema.

Before we describe the response in the `components` object, it might be helpful to review what the `weather` response from the OpenWeatherMap API looks like. The JSON response contains multiple nested objects at various levels.

```json
{
  "coord": {
    "lon": 145.77,
    "lat": -16.92
  },
  "weather": [
    {
      "id": 803,
      "main": "Clouds",
      "description": "broken clouds",
      "icon": "04n"
    }
  ],
  "base": "cmc stations",
  "main": {
    "temp": 293.25,
    "feels_like": 292.79,
    "pressure": 1019,
    "humidity": 83,
    "temp_min": 289.82,
    "temp_max": 295.37,
    "sea_level": 984,
    "grnd_level": 990
  },
  "wind": {
    "speed": 5.1,
    "deg": 150,
    "gust": 7.2
  },
  "clouds": {
    "all": 75
  },
  "rain": {
    "1h": 3
  },
  "snow": {
    "1h": 6
  },
  "dt": 1435658272,
  "sys": {
    "type": 1,
    "id": 8166,
    "message": 0.0166,
    "country": "AU",
    "sunrise": 1435610796,
    "sunset": 1435650870
  },
  "timezone": 36000,
  "id": 2172797,
  "name": "Cairns",
  "cod": 200
}
```

There are a couple of ways to go about describing this response. You could create a long description that contains all the hierarchy reflected. One challenge with this approach, however, is that it's difficult to keep all the levels straight. With so many nested objects, it's dizzying and confusing. Additionally, it's easy to make mistakes. Worst of all, you can't re-use the individual objects. This undercuts one of the main reasons for storing this object in `components` in the first place.

Another approach is to make each object its own entity in the `components`. Whenever an object contains an object, add a `$ref` value that points to the new object. This way, the objects remain shallow (rather than having multiple levels of nesting), and you won't get lost in a sea of confusing sublevels. (If there's no sub-object, just provide the description directly, without using `$ref`.

Here's the description of the `200` response for the `weather` endpoint. I included the `paths` tag to maintain some context:

<span id="responses_with_components"><b>Responses object with components documentation:</b></span>

```yaml
paths:
  /weather:
    get:
      tags:
      - Current Weather Data
      summary: "Call current weather data for one location"
      description: "Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations."
      operationId: CurrentWeatherData
      parameters:
        - $ref: '#/components/parameters/q'
        - $ref: '#/components/parameters/id'
        - $ref: '#/components/parameters/lat'
        - $ref: '#/components/parameters/lon'
        - $ref: '#/components/parameters/zip'
        - $ref: '#/components/parameters/units'
        - $ref: '#/components/parameters/lang'
        - $ref: '#/components/parameters/mode'

      responses:
        '200':
          description: Successful response
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/SuccessfulResponse'
        '404':
          description: City not found
          content:
            application/json:
              schema:
                title: Not found
                type: object
                properties:
                  cod:
                    type: string
                    description: HTTP status code, returned as a string
                    examples:
                      - "404"
                  message:
                    type: string
                    description: Error message
                    examples:
                      - "city not found"

components:

  parameters:
    # not shown for the sake of brevity -- see the earlier code block for details
    ...

  schemas:
    SuccessfulResponse:
      title: Successful response
      type: object
      properties:
        coord:
          $ref: '#/components/schemas/Coord'
        weather:
          type: array
          items:
            $ref: '#/components/schemas/Weather'
          description: (more info Weather condition codes)
        base:
          type: string
          description: Internal parameter
          examples:
            - "stations"
        main:
          $ref: '#/components/schemas/Main'
        visibility:
          type: integer
          description: Visibility, meter
          examples:
            - 10000
        wind:
          $ref: '#/components/schemas/Wind'
        clouds:
          $ref: '#/components/schemas/Clouds'
        rain:
          $ref: '#/components/schemas/Rain'
        snow:
          $ref: '#/components/schemas/Snow'
        dt:
          type: integer
          description: Time of data calculation, unix, UTC
          format: int32
          examples:
            - 1485789600
        sys:
          $ref: '#/components/schemas/Sys'
        timezone:
          type: integer
          description: Shift in seconds from UTC
          examples:
            - 36000
        id:
          type: integer
          description: City ID
          format: int32
          examples:
            - 2172797
        name:
          type: string
          examples:
            - "Cairns"
        cod:
          type: integer
          description: Internal parameter
          format: int32
          examples:
            - 200
    Coord:
      title: Coord
      type: object
      properties:
        lon:
          type: number
          description: City geo location, longitude
          examples:
            - 145.77
        lat:
          type: number
          description: City geo location, latitude
          examples:
            - -16.92
    Weather:
      title: Weather
      type: object
      properties:
        id:
          type: integer
          description: Weather condition id
          format: int32
          examples:
            - 803
        main:
          type: string
          description: Group of weather parameters (Rain, Snow, Extreme etc.)
          examples:
            - "Clouds"
        description:
          type: string
          description: Weather condition within the group
          examples:
            - "broken clouds"
        icon:
          type: string
          description: Weather icon id
          examples:
            - "04n"
    Main:
      title: Main
      type: object
      properties:
        temp:
          type: number
          description: 'Temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
          examples:
            - 293.25
        feels_like:
          type: number
          description: 'Temperature. This temperature parameter accounts for the human perception of weather. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
          examples:
            - 292.79
        pressure:
          type: integer
          description: Atmospheric pressure (on the sea level, if there is no sea_level or grnd_level data), hPa
          format: int32
          examples:
            - 1019
        humidity:
          type: integer
          description: Humidity, %
          format: int32
          examples:
            - 83
        temp_min:
          type: number
          description: 'Minimum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
          examples:
            - 289.82
        temp_max:
          type: number
          description: 'Maximum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
          examples:
            - 295.37
        sea_level:
          type: number
          description: Atmospheric pressure on the sea level, hPa
          examples:
            - 1019
        grnd_level:
          type: number
          description: Atmospheric pressure on the ground level, hPa
          examples:
            - 1019
    Wind:
      title: Wind
      type: object
      properties:
        speed:
          type: number
          description: 'Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.'
          examples:
            - 5.1
        deg:
          type: integer
          description: Wind direction, degrees (meteorological)
          format: int32
          examples:
            - 150
        gust:
          type: number
          description: 'Wind gust. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.'
          examples:
            - 7.2
    Clouds:
      title: Clouds
      type: object
      properties:
        all:
          type: integer
          description: Cloudiness, %
          format: int32
          examples:
            - 75
    Rain:
      title: Rain
      type: object
      properties:
        '1h':
          type: number
          description: Rain precipitation for the last hour, mm/h (where available)
          examples:
            - 3
    Snow:
      title: Snow
      type: object
      properties:
        '1h':
          type: number
          description: Snow precipitation for the last hour, mm/h (where available)
          examples:
            - 6
    Sys:
      title: Sys
      type: object
      properties:
        type:
          type: integer
          description: Internal parameter
          format: int32
          examples:
            - 1
        id:
          type: integer
          description: Internal parameter
          format: int32
          examples:
            - 8166
        message:
          type: number
          description: Internal parameter
          examples:
            - 0.0166
        country:
          type: string
          description: Country code (GB, JP etc.)
          examples:
            - "AU"
        sunrise:
          type: integer
          description: Sunrise time, unix, UTC
          format: int32
          examples:
            - 1435610796
        sunset:
          type: integer
          description: Sunset time, unix, UTC
          format: int32
          examples:
            - 1435650870
```

I'll explain a bit more in the next sections how to describe the response. In looking at the above code, you may have noticed that not only can you use `$ref` properties in other parts of your spec but also within `components` too.

{: .tip}
Notice how the schema definition includes an `examples` array for each element? Swagger UI will take the first value from this `examples` array and use it to dynamically build a full code sample in the Responses section in the Swagger UI output. Thus, you don't need big chunks of code for the sample responses in your spec. Instead, these sample responses get built automatically from the schema. It's one of the neat things about Swagger UI. This way, your schema documentation and sample response remain consistent.

## Describing a schema

For most of the sections in `components`, you follow the same object descriptions as detailed in the rest of the spec. However, when describing a `schema` object, you use standard keywords and terms from **JSON Schema**, specifically from the [JSON Schema Specification Draft 2020-12](https://json-schema.org/draft/2020-12/json-schema-core).

In other words, you aren't merely using terms defined by the OpenAPI spec to describe the models for your JSON. As you describe your JSON models (the data structures for input and output objects), the terminology in the OpenAPI spec defers to the larger JSON Schema specification for modeling JSON. The OpenAPI Specification's `Schema Object` is a superset of JSON Schema.

{% include random_ad4.html %}

The OpenAPI specification doesn't attempt to document how to model JSON schemas. This would be redundant with what's already documented in the [JSON Schema](https://json-schema.org/) site and outside of the scope of the OpenAPI spec. Therefore you might need to consult [JSON Schema](https://json-schema.org) for more details. (One other helpful tutorial is [Advanced Data](https://apihandyman.io/writing-openapi-swagger-specification-tutorial-part-4-advanced-data-modeling/) from API Handyman.)

To describe your JSON objects, you might use the following keywords from JSON Schema:

* `title`
* `multipleOf`
* `maximum`
* `exclusiveMaximum`
* `minimum`
* `exclusiveMinimum`
* `maxLength`
* `minLength`
* `pattern`
* `maxItems`
* `minItems`
* `uniqueItems`
* `maxProperties`
* `minProperties`
* `required`
* `enum`
* `type`
* `allOf`
* `oneOf`
* `anyOf`
* `not`
* `items`
* `properties`
* `additionalProperties`
* `description`
* `format`
* `default`

The primary data `type`s are `string`, `number`, `integer`, `boolean`, `array`, `object`, and `null`. In OpenAPI 3.1, you can list more than one type for a property, such as `type: [string, "null"]` for a value that can be a string or null. (This replaces the `nullable: true` keyword from OpenAPI 3.0.)

The `format` keyword provides more specific detail about the `type`. Common formats include:

* For `type: integer`: `int32`, `int64`
* For `type: number`: `float`, `double`
* For `type: string`: `date`, `date-time`, `password`, `byte`, `binary`

When you start documenting your own schema, start by looking in the OpenAPI's [schema object](https://spec.openapis.org/oas/v3.1.1.html#schema-object), and then consult the [JSON Schema](https://json-schema.org/learn/getting-started-step-by-step) documentation if something isn't covered.

Additionally, look at some example schemas. You can view [3.1 examples here](https://github.com/OAI/learn.openapis.org/tree/main/examples/v3.1). I usually find a spec that resembles what I'm trying to represent and mimic the same properties and structure.

## A way to cheat -- automatically generate the schema from JSON using Stoplight

Describing a JSON response can be complicated and confusing. Fortunately, there's a somewhat easy workaround. To be honest, this is the approach I use when I'm documenting JSON responses. With the Stoplight Editor, you can automatically generate the specification schema syntax from a sample response. See this section in the Stoplight getting started tutorial: [Step 5: Enter the responses and response schema information](pubapis_openapis_quickstart_stoplight.html#responses).

## Using GUI editors to work with the specification code

At this point, you're probably thinking how impractical and error-prone it's going to be as you work directly in the YAML code like this. For this reason, several companies have developed GUI editors to make it easier to work with the specification code. In particular, check out [Stoplight](pubapis_stoplight.html), which provides an editor that lets you toggle between code and a GUI display. Smartbear also offers [SwaggerHub](pubapis_swaggerhub_smartbear.html), which doesn't necessarily provide a GUI but which gives you inline commenting and versioning tools. (Note that both Stoplight and Smartbear are sponsors of the site, but I would mention them here anyway.)

## <i class="fa fa-user-circle"></i> View the Appearance in Swagger UI

Copy the following code and paste it into the Swagger Editor below your `openapi`, `info` and `servers` objects:

```yaml
paths:
  /weather:
    get:
      tags:
      - Current Weather Data
      summary: "Call current weather data for one location"
      description: "Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations."
      operationId: CurrentWeatherData
      parameters:
        - $ref: '#/components/parameters/q'
        - $ref: '#/components/parameters/id'
        - $ref: '#/components/parameters/lat'
        - $ref: '#/components/parameters/lon'
        - $ref: '#/components/parameters/zip'
        - $ref: '#/components/parameters/units'
        - $ref: '#/components/parameters/lang'
        - $ref: '#/components/parameters/mode'

      responses:
        '200':
          description: Successful response
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/SuccessfulResponse'
        '404':
          description: City not found
          content:
            application/json:
              schema:
                title: Not found
                type: object
                properties:
                  cod:
                    type: string
                    description: HTTP status code, returned as a string
                    examples:
                      - "404"
                  message:
                    type: string
                    description: Error message
                    examples:
                      - "city not found"

components:

  parameters:
    q:
      name: q
      in: query
      description: "**City name**. *Example: London*. You can call by city name, or by city name and country code. For the query value, type the city name and optionally the country code divided by a comma; use ISO 3166 country codes. (OpenWeatherMap has deprecated its built-in geocoding for city names, city IDs, and zip codes. These parameters still work, but OpenWeatherMap recommends using `lat` and `lon` instead.)"
      schema:
        type: string
    id:
      name: id
      in: query
      description: "**City ID**. *Example: `2172797`*. You can call by city ID. The API responds with the exact result. The List of city IDs can be downloaded [here](https://bulk.openweathermap.org/sample/). (OpenWeatherMap has deprecated its built-in geocoding for city names, city IDs, and zip codes. These parameters still work, but OpenWeatherMap recommends using `lat` and `lon` instead.)"
      schema:
        type: string

    lat:
      name: lat
      in: query
      description: "**Latitude**. *Example: 35*. The latitude coordinate of the location of your interest. Must use with `lon`."
      schema:
        type: number

    lon:
      name: lon
      in: query
      description: "**Longitude**. *Example: 139*. Longitude coordinate of the location of your interest. Must use with `lat`."
      schema:
        type: number

    zip:
      name: zip
      in: query
      description: "**Zip code**. Search by zip code. *Example: 95050,us*. Please note that if the country is not specified, the search uses USA as a default. (OpenWeatherMap has deprecated its built-in geocoding for city names, city IDs, and zip codes. These parameters still work, but OpenWeatherMap recommends using `lat` and `lon` instead.)"
      schema:
        type: string

    units:
      name: units
      in: query
      description: '**Units**. *Example: imperial*. Possible values: `standard`, `metric`, and `imperial`. When you do not use the `units` parameter, the format is `standard` by default.'
      schema:
        type: string
        enum: [standard, metric, imperial]
        default: "standard"

    lang:
      name: lang
      in: query
      description: '**Language**. *Example: en*. You can use lang parameter to get the output in your language. We support the following languages that you can use with the corresponded lang values: Arabic - `ar`, Bulgarian - `bg`, Catalan - `ca`, Czech - `cz`, German - `de`, Greek - `el`, English - `en`, Persian (Farsi) - `fa`, Finnish - `fi`, French - `fr`, Galician - `gl`, Croatian - `hr`, Hungarian - `hu`, Italian - `it`, Japanese - `ja`, Korean - `kr`, Latvian - `la`, Lithuanian - `lt`, Macedonian - `mk`, Dutch - `nl`, Polish - `pl`, Portuguese - `pt`, Romanian - `ro`, Russian - `ru`, Swedish - `se`, Slovak - `sk`, Slovenian - `sl`, Spanish - `es`, Turkish - `tr`, Ukrainian - `ua`, Vietnamese - `vi`, Chinese Simplified - `zh_cn`, Chinese Traditional - `zh_tw`.'
      schema:
        type: string
        enum: [ar, bg, ca, cz, de, el, en, fa, fi, fr, gl, hr, hu, it, ja, kr, la, lt, mk, nl, pl, pt, ro, ru, se, sk, sl, es, tr, ua, vi, zh_cn, zh_tw]
        default: "en"

    mode:
      name: mode
      in: query
      description: "**Mode**. *Example: html*. Determines the format of the response. Possible values are `json`, `xml`, and `html`. If the mode parameter is empty, the format is `json` by default."
      schema:
        type: string
        enum: [json, xml, html]
        default: "json"

  schemas:
    SuccessfulResponse:
      title: Successful response
      type: object
      properties:
        coord:
          $ref: '#/components/schemas/Coord'
        weather:
          type: array
          items:
            $ref: '#/components/schemas/Weather'
          description: (more info Weather condition codes)
        base:
          type: string
          description: Internal parameter
          examples:
            - "stations"
        main:
          $ref: '#/components/schemas/Main'
        visibility:
          type: integer
          description: Visibility, meter
          examples:
            - 10000
        wind:
          $ref: '#/components/schemas/Wind'
        clouds:
          $ref: '#/components/schemas/Clouds'
        rain:
          $ref: '#/components/schemas/Rain'
        snow:
          $ref: '#/components/schemas/Snow'
        dt:
          type: integer
          description: Time of data calculation, unix, UTC
          format: int32
          examples:
            - 1485789600
        sys:
          $ref: '#/components/schemas/Sys'
        timezone:
          type: integer
          description: Shift in seconds from UTC
          examples:
            - 36000
        id:
          type: integer
          description: City ID
          format: int32
          examples:
            - 2172797
        name:
          type: string
          examples:
            - "Cairns"
        cod:
          type: integer
          description: Internal parameter
          format: int32
          examples:
            - 200
    Coord:
      title: Coord
      type: object
      properties:
        lon:
          type: number
          description: City geo location, longitude
          examples:
            - 145.77
        lat:
          type: number
          description: City geo location, latitude
          examples:
            - -16.92
    Weather:
      title: Weather
      type: object
      properties:
        id:
          type: integer
          description: Weather condition id
          format: int32
          examples:
            - 803
        main:
          type: string
          description: Group of weather parameters (Rain, Snow, Extreme etc.)
          examples:
            - "Clouds"
        description:
          type: string
          description: Weather condition within the group
          examples:
            - "broken clouds"
        icon:
          type: string
          description: Weather icon id
          examples:
            - "04n"
    Main:
      title: Main
      type: object
      properties:
        temp:
          type: number
          description: 'Temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
          examples:
            - 293.25
        feels_like:
          type: number
          description: 'Temperature. This temperature parameter accounts for the human perception of weather. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
          examples:
            - 292.79
        pressure:
          type: integer
          description: Atmospheric pressure (on the sea level, if there is no sea_level or grnd_level data), hPa
          format: int32
          examples:
            - 1019
        humidity:
          type: integer
          description: Humidity, %
          format: int32
          examples:
            - 83
        temp_min:
          type: number
          description: 'Minimum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
          examples:
            - 289.82
        temp_max:
          type: number
          description: 'Maximum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
          examples:
            - 295.37
        sea_level:
          type: number
          description: Atmospheric pressure on the sea level, hPa
          examples:
            - 1019
        grnd_level:
          type: number
          description: Atmospheric pressure on the ground level, hPa
          examples:
            - 1019
    Wind:
      title: Wind
      type: object
      properties:
        speed:
          type: number
          description: 'Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.'
          examples:
            - 5.1
        deg:
          type: integer
          description: Wind direction, degrees (meteorological)
          format: int32
          examples:
            - 150
        gust:
          type: number
          description: 'Wind gust. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.'
          examples:
            - 7.2
    Clouds:
      title: Clouds
      type: object
      properties:
        all:
          type: integer
          description: Cloudiness, %
          format: int32
          examples:
            - 75
    Rain:
      title: Rain
      type: object
      properties:
        '1h':
          type: number
          description: Rain precipitation for the last hour, mm/h (where available)
          examples:
            - 3
    Snow:
      title: Snow
      type: object
      properties:
        '1h':
          type: number
          description: Snow precipitation for the last hour, mm/h (where available)
          examples:
            - 6
    Sys:
      title: Sys
      type: object
      properties:
        type:
          type: integer
          description: Internal parameter
          format: int32
          examples:
            - 1
        id:
          type: integer
          description: Internal parameter
          format: int32
          examples:
            - 8166
        message:
          type: number
          description: Internal parameter
          examples:
            - 0.0166
        country:
          type: string
          description: Country code (GB, JP etc.)
          examples:
            - "AU"
        sunrise:
          type: integer
          description: Sunrise time, unix, UTC
          format: int32
          examples:
            - 1435610796
        sunset:
          type: integer
          description: Sunset time, unix, UTC
          format: int32
          examples:
            - 1435650870

  securitySchemes:
    app_id:
      type: apiKey
      description: API key to authorize requests.
      name: appid
      in: query
```

You should see the following populate in the Swagger UI display:

<figure><img class="docimage" src="{{site.api_media}}/step5_bswaggeruiprogress.png" alt="Responses object defined in components" /><figcaption>Responses object defined in components</figcaption></figure>

In the Response section, observe how the Example Value code has been dynamically built from the `examples` values in the schema to show a sample response.

Also, click the **Model** link to see how the descriptions of each element appear in an expandable/collapsible way:

<figure><img class="docimage medium" src="{{site.api_media}}/models_options_in_responses.png" alt="Descriptions appear in the Model" /><figcaption>Descriptions appear in the Model</figcaption></figure>

## The Schemas section -- why it exists, how to hide it

You'll also notice another "Schemas" section (called "Models" in older versions of Swagger UI and in Swagger 2.0 specs) below all the other paths:

<a href="https://idratherbewriting.com/assets/files/swagger/index.html" class="noExtIcon"><img src="{{site.api_media}}/swaggerui_models_broken_out.png" class="medium" /></a>

By default, Swagger UI displays each schema in `components` in a section called "Schemas" at the end of your Swagger UI display. If you consolidate all schemas into a single object, without using the `$ref` property to point to new objects, you will see just one object in Models. If you split out the objects, then you see each object listed separately, including the object that contains all the references.

Because I want to re-use objects, I'm going to define each object in `components` separately. As a result, the Schemas section looks like this:

Why is there a Schemas section here? Apparently, it was added by popular request because the online Swagger Editor showed the display, and many users asked for it to be incorporated into Swagger UI.

You don't need this Schemas section in Swagger UI because both the request and response sections of Swagger UI provide a "Schema" link that lets the user toggle to this view.

To hide the Schemas section, you can add the parameter `defaultModelsExpandDepth: -1` parameter in your Swagger UI project. I provide a [Swagger UI tutorial](pubapis_swagger.html#create_swaggerui) in an upcoming section in this course, with details about the [Swagger UI parameters](https://github.com/swagger-api/swagger-ui/blob/main/docs/usage/configuration.md) where you could configure this parameter.

## Security definitions

The `components` object also contains a [`securitySchemes` object](https://spec.openapis.org/oas/v3.1.1.html#security-scheme-object) that defines the authorization method used with each `path`. Rather than dive into the security configuration details here, I explore security in [Step 6: The security object](pubapis_openapi_step6_security_object.html).
