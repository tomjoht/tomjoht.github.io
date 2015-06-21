---
title: "1.7 API Blueprint"
permalink: /publishingapidocs1-7/
course: "Publishing API documentation"
weight: 1.7
---


## API Blueprint

Just as Swagger defines a spec for describing a REST API, API Blueprint is another spec (which you can [read here](https://github.com/apiaryio/api-blueprint/blob/master/API%20Blueprint%20Specification.md)). If you describe your API with this blueprint, then different tools can read and display the information. 

The API Blueprint spec is written in a Markdown-flavored syntax. It's not normal Markdown, but it has a lot of the same Markdown syntax. You have to describe your API using the API Blueprint schema in order for various tools to parse it. 

## Sample Blueprint

Here's a sample blueprint to give you an idea of the syntax:

```
FORMAT: 1A
HOST: http://polls.apiblueprint.org/

# test

Polls is a simple API allowing consumers to view polls and vote in them.

# Polls API Root [/]

This resource does not have any attributes. Instead it offers the initial
API affordances in the form of the links in the JSON body.

It is recommend to follow the “url” link values,
[Link](https://tools.ietf.org/html/rfc5988) or Location headers where
applicable to retrieve resources. Instead of constructing your own URLs,
to keep your client decoupled from implementation details.

## Retrieve the Entry Point [GET]

+ Response 200 (application/json)

        {
            "questions_url": "/questions"
        }

## Group Question

Resources related to questions in the API.

## Question [/questions/{question_id}]

A Question object has the following attributes:

+ question
+ published_at - An ISO8601 date when the question was published.
+ url
+ choices - An array of Choice objects.

+ Parameters
    + question_id: 1 (required, number) - ID of the Question in form of an integer

### View a Questions Detail [GET]

+ Response 200 (application/json)

        {
            "question": "Favourite programming language?",
            "published_at": "2014-11-11T08:40:51.620Z",
            "url": "/questions/1",
            "choices": [
                {
                    "choice": "Swift",
                    "url": "/questions/1/choices/1",
                    "votes": 2048
                }, {
                    "choice": "Python",
                    "url": "/questions/1/choices/2",
                    "votes": 1024
                }, {
                    "choice": "Objective-C",
                    "url": "/questions/1/choices/3",
                    "votes": 512
                }, {
                    "choice": "Ruby",
                    "url": "/questions/1/choices/4",
                    "votes": 256
                }
            ]
        }

## Choice [/questions/{question_id}/choices/{choice_id}]

+ Parameters
    + question_id: 1 (required, number) - ID of the Question in form of an integer
    + choice_id: 1 (required, number) - ID of the Choice in form of an integer

### Vote on a Choice [POST]

This action allows you to vote on a question's choice.

+ Response 201

    + Headers

            Location: /questions/1

## Questions Collection [/questions{?page}]

+ Parameters
    + page: 1 (optional, number) - The page of questions to return

### List All Questions [GET]

+ Response 200 (application/json)

    + Headers

            Link: </questions?page=2>; rel="next"

    + Body

            [
                {
                    "question": "Favourite programming language?",
                    "published_at": "2014-11-11T08:40:51.620Z",
                    "url": "/questions/1",
                    "choices": [
                        {
                            "choice": "Swift",
                            "url": "/questions/1/choices/1",
                            "votes": 2048
                        }, {
                            "choice": "Python",
                            "url": "/questions/1/choices/2",
                            "votes": 1024
                        }, {
                            "choice": "Objective-C",
                            "url": "/questions/1/choices/3",
                            "votes": 512
                        }, {
                            "choice": "Ruby",
                            "url": "/questions/1/choices/4",
                            "votes": 256
                        }
                    ]
                }
            ]

### Create a New Question [POST]

You may create your own question using this action. It takes a JSON
object containing a question and a collection of answers in the
form of choices.

+ question (string) - The question
+ choices (array[string]) - A collection of choices.

+ Request (application/json)

        {
            "question": "Favourite programming language?",
            "choices": [
                "Swift",
                "Python",
                "Objective-C",
                "Ruby"
            ]
        }

+ Response 201 (application/json)

    + Headers

            Location: /questions/2

    + Body

            {
                "question": "Favourite programming language?",
                "published_at": "2014-11-11T08:40:51.620Z",
                "url": "/questions/2",
                "choices": [
                    {
                        "choice": "Swift",
                        "url": "/questions/2/choices/1",
                        "votes": 0
                    }, {
                        "choice": "Python",
                        "url": "/questions/2/choices/2",
                        "votes": 0
                    }, {
                        "choice": "Objective-C",
                        "url": "/questions/2/choices/3",
                        "votes": 0
                    }, {
                        "choice": "Ruby",
                        "url": "/questions/2/choices/4",
                        "votes": 0
                    }
                ]
            }
```

For a tutorial on the blueprint syntax, see this [Apiary tutorial](https://apiary.io/blueprint) or  [this tutorial on Github](https://github.com/apiaryio/api-blueprint/blob/master/Tutorial.md).

You can find [examples of different blueprints here](https://github.com/apiaryio/api-blueprint/tree/master/examples). 

## Parsing the blueprint

There are many tools that can parse an API blueprint. [Drafter](https://github.com/apiaryio/drafter) parses the Blueprint. Many other tools build on Drafter and generate static HTML outputs of the blueprint. 

For example, [aglio](https://github.com/danielgtaylor/aglio) can parse a blueprint and generate 

For a more comprehensive list of tools, see the [Tooling](https://apiblueprint.org/#tooling) section on apiblueprint.org.

## Tutorial

For this tutorial, we'll use a platform called Apiary to read and display an API Blueprint. 

### a. Create a new Apiary project

1. Go to [apiary.io](https://apiary.io/) and click **Quick start with Github**. Sign in with your Github account. (If you don't have a Github account, create one first.)
2. Sign up for a free hacker account and create a new project. 

You'll be placed in the API Blueprint editor. 

<img src="{{ "/images/publishingapidocs/apiaryblueprinteditor.png" | prepend: site.baseurl }}" alt="API Blueprint editor" />

By default the Polls blueprint is loaded so you can see how it looks. This blueprint gives you an example of the required format for the Apiary tool to parse and display the content. You can also see the [raw file here](https://raw.githubusercontent.com/apiaryio/api-blueprint/master/examples/Polls%20API.md).



## Mulesoft and RAML
<a href="https://developer.mulesoft.com/"><img src="{{ "/images/publishingapidocs/mulesoft.png" | prepend: site.baseurl }}" alt="Mulesoft, all-in-one API solution" /></a>
* [Mulesoft](https://www.mulesoft.com/): Publish documentation following RAML using the API Designer editor


## Restlet Studio
* [Restlet Studio](http://studio.restlet.com/#/)









