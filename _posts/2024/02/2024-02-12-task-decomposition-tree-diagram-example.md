---
title: "Breaking complex tasks up — an example creating complex tree diagrams to represent JSON and Java objects"
permalink: /blog/task-decomposition-tree-diagram-example
date: 2024-02-12
categories:
- academics-and-practitioners
- ai
- api-doc
- visual-communication
keywords: 
rebrandly: https://idbwrtng.com/task-decomposition-tree-diagram-example
description: "This blog post describes a project where I visualized complex APIs using tree diagrams generated with the help of AI tools. By breaking the project into smaller tasks, I used AI to convert API documentation (from JSON and Java sources) into tree diagrams, even incorporating links to reference docs. I found tree diagrams highly useful in understanding API structures and faced challenges like adding hundreds of links and working with Jinja scripting for variable scoping.  The result was a well-received visualization praised by project managers. I think tree diagrams could be much more widely adopted in API documentation due to their clarity."
published: false
---

* TOC
{:toc}

## Breaking up complex topics

One of the primary principles of prompt engineering is to break complex tasks up into smaller ones. This principle has at least two purposes:

Most AI chatbots can’t process large amounts of text
You can more precisely direct the output from smaller inputs

As I’ve been working with AI chatbots over the past few weeks on a particular project visualizing APIs with tree diagrams, I’ve really come to see how important these two principles are. I’ll elaborate more on the details of the prompt engineering techniques, but first, let me explain the documentation context.

I decided to create some visual diagrams that describe some APIs. This might seem like an odd task, but the scenario is that we have multiple APIs (of different types — e.g., Java, cloud) with similar data, and partners struggled to navigate the reference docs to find the data they wanted to see. These APIs deliver massive amounts of data to users in various parent-child hierarchies.

I first started generating dot diagrams from proto files using an internal utility. The utility was pretty cool but had two main drawbacks: (1) the diagrams looked like spaghetti with so many lines everywhere, and (2) the diagrams didn’t link to the reference docs. 

To get a diagram with links, I started creating tree diagrams. First, I was surprised to learn that AI tools can convert a chunk of JSON into a tree diagram. There seems to be some kind of logic in AI tools that can convert JSON into a tree diagram or a tree diagram into JSON, as if they were equivalent formats similar to Markdown and HTML.

For the Java API, I found that I could also convert it into a tree diagram as well, often by just pasting in the documentation for each class. This sort of blew my mind. (It’s hard to explain in more detail, and I’m not doing it justice here, but each method gets certain objects, and those objects have parent-child hierarchies.)

I started with a simple tree and built out each node one by one, often just pasting in the documentation. It worked best if I started out with the high-level structure and then ask the AI to expand each node with more details. 

I also had to teach the AI the specific tree diagram style I wanted, and there were errors along the way I had to correct and fix, but by and large the AI tools made this task feasible in ways that I wouldn’t have attempted otherwise. 

I realize it’s hard to get a sense of the complexity of this task without seeing the details. Unfortunately, the documentation lives behind a firewall, so I can’t share it or go into more details. But imagine a tree diagram so large and complex that you have to scroll down for a while to see it all, navigating around 10 subnodes with different levels of nesting and parent/child logic. 

Here’s an example of what it kind of looks like. This diagram has been jabberwockied and it doesn’t reflect the actual structure either. My diagrams were actually about 10 times this large.

```
root {} 
   ├─WonderWhizzleSnacker {}
   │  ├─FluffPrep []
   │  │  ├─PufTwiz {}
   │  │  │  ├─WhipFlavor {}
   │  │  │  │  ├─FlimEssence (string)
   │  │  │  │  │  └─SpinRefine (number) 
   │  │  │  │  └─SnigDust (boolean)
   │  │  │  └─GlimPolish {}
   │  │  │     ├─PixieShine (number) 
   │  │  │     └─FrumBuff (string) 
   │  │  ├─FluffDetangle []
   │  │  │   ├─BumbleFluffRetrieval (boolean) 
   │  │  │   └─WiggleSproutDisentanglement (string) 
   │  └─RootGet []
   │     ├─BumpExped {}
   │     │  ├─GinProv [] 
   │     │  │  ├─PogBake (number)
   │     │  │  └─FlibBrew (string) 
   │     │  └─SnorgNav {}
   │     │     ├─FlutRefuel (number) 
   │     │     └─HobEcho (boolean) 
   │     ├─RootSort (string) 
   │     └─FabPick {}
   │        ├─WhifOrch {}
   │        │   ├─BanLull [] 
   │        │   │  ├─HumpHarm (number) 
   │        │   │  └─FluffTease (string) 
   │        │   └─FlufUntang (boolean) 
   │        └─TwitGrove {}
   │           └─GrifDistract (number) 
   ├─WhizgigBuild {}
   │  ├─FidFrame []
   │  │  ├─SnurdJig {} 
   │  │  │  ├─FizWrang (string) 
   │  │  │  └─KlopAppease (boolean) 
   │  │  └─QuigWeld {}
   │  │     └─SnizRust (number) 
   │  ├─SpinSprock {} 
   │  │  ├─WhipTight (string) 
   │  │  └─WigCal (number) 
   │  └─FizPow {}
   │     ├─Sparkle (boolean) 
   │     ├─FizzMon {}
   │     │   └─BlipTrack (string) 
   │     └─DingPrevent {} 
   └─OpWozzle {}      
      ├─KnobTune {}
      │  ├─SnarfCalc (number)  
      ├─PlinkStart []
      │  ├─GurgleInit {}
      └─FrobMon {}
         └─WhipAssure {}
            └─HogEquil {}
```

This same tree diagram might look like this in JSON:

```json
{
  "root": {
    "WonderWhizzleSnacker": {
      "FluffPrep": [
        {
          "PufTwiz": {
            "WhipFlavor": {
              "FlimEssence": "string",
              "SpinRefine": 123, // Example number
              "SnigDust": true
            }
            "GlimPolish": {
              "PixieShine": 456, 
              "FrumBuff": "shiny string"
            }
          }
        },
        {
          "FluffDetangle": [
            true, // BumbleFluffRetrieval 
            "WiggleSproutDisentanglement"
          ]
        }
      ],
      "RootGet": [
        {
          "BumpExped": {
            "GinProv": [
              987, // PogBake
              "FlibBrew" 
            ]
            "SnorgNav": {
              "FlutRefuel": 654, 
              "HobEcho": false 
            }
          }
        },
        "RootSort",
        { 
          "FabPick": {
            "WhifOrch": {
              "BanLull": [
                111, // HumpHarm
                "FluffTease" 
              ] 
              "FlufUntang": false 
            }
            "TwitGrove": {
              "GrifDistract": 321 // Number 
            }
          }
        }
      ]
    },
    "WhizgigBuild": {
      "FidFrame": [
        {
          "SnurdJig": {
            "FizWrang": "fizzy string", 
            "KlopAppease": true 
          }
          "QuigWeld": {
            "SnizRust": 789
          }
        }
      ],
      "SpinSprock": { 
        "WhipTight": "taut string", 
        "WigCal": 555 // Number 
      },
      "FizPow": {
        "Sparkle": false, 
        "FizzMon": {
          "BlipTrack": "tracking data"
        }
        "DingPrevent": {}  // Could have sub-properties 
      } 
    },
    "OpWozzle": {
      "KnobTune": {
        "SnarfCalc": 999 // Example Number     
      },
      "PlinkStart": [
        {
          "GurgleInit": {}
        }
      ],
      "FrobMon": {
        "WhipAssure": {
          "HogEquil": {}
        }
      }
    }    
  }
}
```

I find the tree diagrams a lot easier to visually consume. 

Added to this, I also had to represent both JSON and Java (for different APIs) with a similar enough tree structure as to be intelligible. Having finished this project, it gave me a tremendous insight into our APIs in ways that I didn’t understand previously. And project managers loved it!

When I first showed it to the PM, he immediately wanted every element linked to the corresponding reference documentation. This meant adding hundreds of links. For the cloud API, it was fairly easy to get the links because most of the documentation was on a single page, and I just needed to discern the logic of the link paths. 

For the Java API, however, the Javadoc was a lot harder to navigate, with many different pages (a separate URL for each model in the API). I had to study the link patterns to figure out the logic, but once I did, I instructed the AI how to discern the link patterns from the tree diagram. Then I had it write out a list of links.

I’m being cursory here and not going into too much detail. This project consumed me for two solid weeks, and I had many failed attempts and revised prompts and such before I had success.

I couldn’t add a ton of HTML links into a tree diagram without making it break lines all over the place. However, I had access to Jinja scripting logic through our doc platform. So I created variables for each element and then added an include that pulled in all the variables for each diagram.

I then realized that different diagrams repeated some of the same element names, so I had to add a scope to the variables so that each variable name wouldn’t collide with similar variable names in other diagrams. I used AI to understand variable scoping in Jinja.

This might not be something that applies to many people, but the outcome is really awesome.  I’m having a tough time understanding why tree diagrams aren’t more common in API documentation. They visualize complex objects in ways that I find tremendously valuable. 

Regardless of whether tree diagrams make sense, my main point was to describe that approach I took with AI here. I used task decomposition to break down a complex project into smaller tasks. There were probably 75 smaller tasks I did before I finished the diagrams. That breakdown of complex tasks allowed me to use AI to achieve the result.



{% include ads.html %}

