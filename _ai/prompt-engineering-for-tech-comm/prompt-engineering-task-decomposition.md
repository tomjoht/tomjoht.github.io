---
title:  "Task decomposition and complex tree diagrams"
permalink: ai/prompt-engineering-task-decomposition.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-07-28
---
{% comment %}
{% include coffeeshopbook.html %}
{% endcomment %}

This tutorial will help you understand task decomposition by guiding you through the process of creating a complex tree diagram that's too sophisticated for an AI tool to create at once. Whether you're creating tree diagrams or not, it doesn't matter. This is just an example of how to break down complex information into smaller chunks and pass it into AI.

{: .note}
For another post about creating tree diagrams, which I'm calling API quick reference guides, see <a href="/ai/prompt-eng-api-qrgs.html">API quick reference guides</a>.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

{% if site.format == "web" %}

Here's a video version of this content: 

## Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/er8pKg5d31E" title="Uncovering and communicating the value of your tech comm teams' work, with Keren Brown" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
{% endif %}

## What is task decomposition?

In prompt engineering, task decomposition means breaking a complex task into smaller, more manageable components. There are several reasons why this is beneficial:

* Most AI tools have limitations on the amount of text they can process at once. 
* Large inputs can hurt accuracy, cause memory issues, or lead to the AI getting "lost" in the complexity.
* Proceeding in smaller chunks allows you to course-correct issues along the way for a better end result.
* Precision: Smaller prompts give you more control over the AI's output. You can provide tailored instructions for each step, directing the final result with greater accuracy.

Understanding how to break down complex tasks is essential for interacting effectively with AI tools. Even outside of prompt engineering, we do this naturally in many settings. Writing documentation often starts with a simple outline, expanding into greater detail over time. Similarly, a complex codebase is built through incremental steps, adding components over time. Learning to identify those smaller steps within a complex problem is fundamental to working with AI tools.

In this tutorial, you'll learn to create a complex tree diagram (in ASCII text) from a JSON block. Breaking this task down into smaller steps will make it easier for the AI to process and will ultimately yield a more accurate and visually appealing diagram.

You'll start with this JSON block and create a tree diagram from it:

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

*Although some AI tools might be able to handle this in one go, for the sake of this tutorial, pretend that the diagram is too complex for your AI tools.*

## Step 1: Define Your Tree Diagram Pattern

The first step is to provide a clear example of the style you want the AI to follow. Establishing patterns is usually a good idea with AI tools because their entire logic is pattern-based. A visual sample of the pattern tends to work much better than written descriptions. Here's a prompt you can use as a starting point:

<div class="chat">
<p>You're going to build a tree diagram in ASCII text that follows a style similar to this:</p>

<pre class="highlight">
API Documentation 
   ├─ Users {}
   │  ├─ Name (string)  
   │  └─ User ID (number) 
   └─ Orders []
      ├─ Order Date (string)
      └─ Items []
</pre>

<p>Additional instructions for the diagram:</p>

<ul>
<li>Objects should be represented with curly braces ({})</li>
<li>Arrays should be represented with square brackets ([])</li>
<li> Child items should have their data type in parentheses after the name (boolean, string, or number)</li>
<li>Don't include any sample values, just the titles</li>
</ul>

<p>In the following steps, you'll build this tree diagram from a JSON source. Are you ready to begin?</p>
</div>

## Step 2: Root Level Breakdown

Rather than ask the AI to tackle the entire diagram at once, start at the root level only. 

<div class="chat">

<p>Create a tree diagram that shows the nodes at the root level only:</p>

<pre class="highlight">
"WonderWhizzleSnacker" 
"RootGet" 
"WhizgigBuild" 
"OpWozzle" 
</pre>

<p>Draw the diagram following the style I described earlier. Put the tree inside a code block. These items will form the initial branches from the "root" node.</p>
</div>

The AI's response will look like this: 

<div class="response">
<pre class="highlight">
root 
   ├─ WonderWhizzleSnacker
   ├─ RootGet
   ├─ WhizgigBuild 
   └─ OpWozzle 
</pre>
</div>

Important: We're temporarily ignoring the complex substructures underneath each of those top-level items. We'll focus on expanding them one at a time later. This approach mimics the writing process for a complex topic. Consider how each node at the root level might represent an outline in a topic. You start at this high level by identifying the top level and then proceed one by one through the outline to expand each node with more detail.

## Step 3: Expand "WonderWhizzleSnacker"

Now let's focus on the "WonderWhizzleSnacker" node. Provide the AI with the following instructions and 

<div class="chat">
<p>Expand the "WonderWhizzleSnacker" node within the existing tree diagram using the following JSON. Remember to follow the established style from the initial example.</p>

<pre class="highlight">
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
}
</pre>
</div>

The result looks like this:

<div class="response">
<pre class="highlight">
root 
   └─ WonderWhizzleSnacker
       └─ FluffPrep []
           └─ PufTwiz {}
               ├─ WhipFlavor {}
               │   ├─ FlimEssence (string)
               │   ├─ SpinRefine (number)
               │   └─ SnigDust (boolean)
               └─ GlimPolish {}
                   ├─ PixieShine (number)
                   └─ FrumBuff (string) 
</pre>
</div>

## Step 4: Expand "RootGet"

Now let's shift our focus to the "RootGet" node. 

<div class="chat">
<p>Expand the "RootGet" node within the existing tree diagram using the following JSON. Maintain the visual style established in the initial example.</p>

<pre class="highlight">
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
],
</pre>
</div>

The response will look like this: 

<div class="response">
<pre class="highlight">
root 
   ├─ WonderWhizzleSnacker
   │   └─ FluffPrep []
   │       └─ PufTwiz {}
   │           ├─ WhipFlavor {}
   │           │   ├─ FlimEssence (string)
   │           │   ├─ SpinRefine (number)
   │           │   └─ SnigDust (boolean)
   │           └─ GlimPolish {}
   │               ├─ PixieShine (number)
   │               └─ FrumBuff (string) 
   └─ RootGet []
       ├─ BumpExped {} 
       │   ├─ GinProv []
       │   │   ├─ 987 (number)  // PogBake
       │   │   └─ FlibBrew (string)
       │   └─ SnorgNav {}
       │       ├─ FlutRefuel (number)
       │       └─ HobEcho (boolean)
       ├─ RootSort (string) 
       └─ FabPick {}
           ├─ WhifOrch {}
           │   ├─ BanLull []
           │   │   ├─ 111 (number) // HumpHarm
           │   │   └─ FluffTease (string) 
           │   └─ FlufUntang (boolean)
           └─ TwitGrove {}
               └─ GrifDistract (number) 
</pre>
</div>

## Step 5: Expand "WhizgigBuild"

Let's continue by expanding the "WhizgigBuild" node. 

<div class="chat">

<p>Expand the "WhizgigBuild" node within the existing tree diagram using the following JSON.</p>

<pre class="highlight">
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
</pre>

Please continue to use the established visual style from the initial example.
</div>

Here's what our diagram looks like now: 

<div class="response">
<pre class="highlight">
root 
   ├─ WonderWhizzleSnacker
   │   └─ FluffPrep []
   │       └─ PufTwiz {}
   │           ├─ WhipFlavor {}
   │           │   ├─ FlimEssence (string)
   │           │   ├─ SpinRefine (number)
   │           │   └─ SnigDust (boolean)
   │           └─ GlimPolish {}
   │               ├─ PixieShine (number)
   │               └─ FrumBuff (string) 
   ├─ RootGet []
   │   ├─ BumpExped {} 
   │   │   ├─ GinProv []
   │   │   │   ├─ 987 (number)  // PogBake
   │   │   │   └─ FlibBrew (string)
   │   │   └─ SnorgNav {}
   │   │       ├─ FlutRefuel (number)
   │   │       └─ HobEcho (boolean)
   │   ├─ RootSort (string) 
   │   └─ FabPick {}
   │       ├─ WhifOrch {}
   │       │   ├─ BanLull []
   │       │   │   ├─ 111 (number) // HumpHarm
   │       │   │   └─ FluffTease (string) 
   │       │   └─ FlufUntang (boolean)
   │       └─ TwitGrove {}
   │           └─ GrifDistract (number) 
   └─ WhizgigBuild {}
       ├─ FidFrame []
       │   └─ SnurdJig {}
       │   │     ├─ FizWrang (string)
       │   │     └─ KlopAppease (boolean)
       │   └─ QuigWeld {}
       │        └─ SnizRust (number)
       ├─ SpinSprock {}
       │   ├─ WhipTight (string)
       │   └─ WigCal (number)
       └─ FizPow {}
           ├─ Sparkle (boolean)
           ├─ FizzMon {}
           │   └─ BlipTrack (string)
           └─ DingPrevent {}
</pre>
</div>

Note: The ASCII representation's clarity may decrease as the diagram gets more detailed. Check the output to make sure it's accurate from the JSON, especially as the diagram starts to max out the input limits of the AI tool.

## Step 6: Expand "OpWozzle"

Let's tackle the final top-level node!

<div class="chat">
Expand the "OpWozzle" node within the existing tree diagram using the following JSON.

<pre class="highlight">
JSON
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
</pre>

Follow to the visual style established in the initial example throughout.
</div>


Result:

<div class="response">
<pre class="highlight">
root 
   ├─ WonderWhizzleSnacker
   │   └─ FluffPrep []
   │       └─ PufTwiz {}
   │           ├─ WhipFlavor {}
   │           │   ├─ FlimEssence (string)
   │           │   ├─ SpinRefine (number)
   │           │   └─ SnigDust (boolean)
   │           └─ GlimPolish {}
   │               ├─ PixieShine (number)
   │               └─ FrumBuff (string) 
   ├─ RootGet []
   │   ├─ BumpExped {} 
   │   │   ├─ GinProv []
   │   │   │   ├─ 987 (number)  // PogBake
   │   │   │   └─ FlibBrew (string)
   │   │   └─ SnorgNav {}
   │   │       ├─ FlutRefuel (number)
   │   │       └─ HobEcho (boolean)
   │   ├─ RootSort (string) 
   │   └─ FabPick {}
   │       ├─ WhifOrch {}
   │       │   ├─ BanLull []
   │       │   │   ├─ 111 (number) // HumpHarm
   │       │   │   └─ FluffTease (string) 
   │       │   └─ FlufUntang (boolean)
   │       └─ TwitGrove {}
   │           └─ GrifDistract (number) 
   ├─  WhizgigBuild {}
   │   ├─ FidFrame []
   │   │   ├─ SnurdJig {}
   │   │   │     ├─ FizWrang (string)
   │   │   │     └─ KlopAppease (boolean)
   │   │   └─ QuigWeld {}
   │   │        └─ SnizRust (number)
   │   ├─ SpinSprock {}
   │   │   ├─ WhipTight (string)
   │   │   └─ WigCal (number)
   │   └─ FizPow {}
   │       ├─ Sparkle (boolean)
   │       ├─ FizzMon {}
   │       │   └─ BlipTrack (string)
   │       └─ DingPrevent {}
   └─ OpWozzle {}    
       ├─ KnobTune {}
       │   └─ SnarfCalc (number)
       ├─ PlinkStart []
       │   └─ GurgleInit {}
       └─ FrobMon {}
           └─ WhipAssure {}
               └─ HogEquil {}
</pre>
</div>

## The larger point

You get the idea. If nodes have massive substructures, break them into smaller pieces for the AI to work with. This is especially useful if the diagram becomes quite large, putting a strain on your AI tool's memory capacity and input limits. How you might divide up the structure depends on the particular complexities and the limits of your tool. You can temporarily focus on building out these substructures piece by piece, working on isolated sections instead of attempting the entire diagram at once.

Expect some refining of your instructions and possibly re-dos of earlier parts as the diagram grows. It's unlikely that you'll achieve a perfect, complex diagram on the first attempt. By making sure the first few iterations produce the results you want, and making any needed refinements in your prompt, the later iterations will be more accurate on the first try.

I would keep going with this example, converting each element into a variable, then defining links for the variables, etc. However, I think the above sections have made the point about task decomposition without the need to carry this too far.

With this diagram example, note that AI tools struggle to construct long vertical lines. In Visual Studio Code, there's a trick to adding these. Select one area, then press Shift+Option (on a Mac) to select another area without losing the first selection. The result will highlight all the space between the two selections.

{% include ads.html %}

## From complex diagrams to complex essays

The task decomposition strategies used here to build complex tree diagrams are relevant in many creative and problem-solving tasks, including writing an essay. For example, similar to how you began the tree diagram journey with a basic skeletal outline of the top-level nodes, a good essay often starts with identifying the core sections or thematic points. A high-level outline acts as your guide as you dive into the finer details.

As the tree diagram expanded, you broke complex nodes into smaller, more manageable JSON chunks. Similarly, large essay topics can be broken down into subtopics or distinct arguments, making the overall writing process less daunting.

Just as the AI constructed and refined portions of the tree diagram iteratively, a well-written essay evolves through drafts. You might tackle individual paragraphs or specific supporting sections one at a time, rather than writing from start to finish in a single sitting. Writing a robust essay also requires proofreading and editing to catch any misspellings, grammatical inconsistencies, or  errors in logic.

Don't assume that the generated diagram will be completely error-free. As the complexity grows, the chance of misinterpretations or omissions due to memory constraints increases. Carefully review the results and be prepared to iterate on different sections until the entire diagram accurately matches your source JSON.

## Context windows and input limits

If you're working with large amounts of text and input, keep in mind the context windows of your LLM. The context window refers to how much content the LLM can remember in one session. This is different from an input maximum. For example, the input maximum might be 5,000 tokens, and the context window could be 12,000 tokens. The model itself might support 32,000 tokens, but the server that's providing the model might support a smaller number of tokens than the model itself supports.

As the context window reaches its maximum capacity, older information might be pushed out. This makes recalling specific, isolated details increasingly difficult over lengthy conversations. The context window could function as a sliding window, where the AI's memory pushes out the older and slides into focus with the new. Or the context window could be more static, expiring the thread once the maximum context window is reached. Different tools handle context windows differently, and few of them explain even what the context windows are (for both the servers and the models) nor how they work.

Some researchers test an AI's memory through needle-in-a-haystack experiments, such as telling the LLM a specific detail earlier on in the conversation and seeing how long it can remember the detail later. However, conversational memory could work in different ways. It could be that just like humans, LLMs prioritize concepts and information central to the ongoing conversation (providing summaries of threads and then archiving the summaries). To help an LLM remember a detail, use the detail and repeatedly integrate it into various elements of the discussion. Without repeated reinforcement, isolated details become less prominent in the LLM's understanding compared to major conversational themes. It's like any human-to-human conversation. Small, seemingly unimportant details become forgotten, while the important aspects of the conversation are remembered.

## Conclusion 

Input limits and context memory are rapidly evolving. The limits we experience today might not pose significant limitations weeks or months from now. For example, Gemini 1.5 will support a million token context window. At that point, it might no longer be necessary to chunk complex tasks. Even so, perhaps the tasks we attempt to perform with million-token context windows will be multitudes more complex.

<hr/>

*This content was AI-assisted.*
