---
title:  "Using AI to learn coding"
permalink: learnapidoc/docapis_ai_learn_coding.html
keywords:
course: "Documenting REST APIs"
weight: 14.3
sidebar: docapis
section: docapisai
path1: learnapidoc/ai.html
last-modified: 2023-07-25
---

{% include coffeeshopbook.html %}

* TOC
{:toc}

## The challenge of learning code

One challenge API technical writers face is [understanding developer code and tools](jobapis_learning_code.html). This is by far the most intimidating aspect of being an API technical writer. Chances are, you're working with code from various programming languages without a deep understanding of them. Yet your job is to explain to a target audience of developers the purpose of the code and how to use it. At first, this requirement seems like API technical writers would need to be developers themselves to succeed.

As if documenting code for one project weren't enough, API technical writers must also support multiple projects simultaneously, often with different types of code. You might document a Java API for one project, a REST API for another project, some Go code for an SDK, some C++ code for another project, and so on. It can be nearly impossible to be fluent in all of these languages. Even keeping the terminology straight (a "function" in one language, a "class" is another, etc.) can be challenging.

Fortunately, you can use AI tools to learn code. AI tools can act like a friendly programming buddy who is sitting next to you, ready to explain anything you want, at whatever technical level you need. You can zero in on a specific question or broaden it out to increase your understanding from ground zero.

{% include random_ad4.html %}

## An example: Learning Javadoc tags

The other week I was trying to refamiliarize myself with all the [Javadoc tags](nativelibraryapis_javadoc_tags.html) I needed to know to make sure the Java project I was documenting was properly tagged. One area I specifically wanted to focus on was the `@link` tag. I prompted AI for a course on Javadoc tags: 

```
i'm a technical writer documenting a java api. i want to better understand how
to tag the source with comments that get generated as javadoc. create a course
that i can follow. i want you to teach me step by step, like a friend.
```

You can see ChatGPT's response and my thread [here](https://chat.openai.com/share/d1843d8c-df5b-429c-ba8c-1fff659fc7f7). For general topics like this, in which there are likely abundant sources online to train the model, the responses are pretty good. 

{% include image_ad_right.html %}

If you read my thread, you can see that I got stuck along the way and was able to use ChatGPT to work through issues. For example, I had a [sample Java project](nativelibraryapis_getting_the_source.htm) that I wanted to use to experiment with tags, but I'd forgotten how to generate the [Javadoc](nativelibraryapis_create_javadoc.html). Running the command that AI gave me didn't work and resulted in errors, so I asked it for help in sorting through the errors. In a few minutes, I installed the right VS Code Java extensions and got back on track. 

The ability to zoom in on specific issues, work through error messages, and control and pace and direction of the course makes for a phenomenal learning experience. If you're not already an AI enthusiast, using AI to learn a technical topic like this might make you a convert.

During the AI-generated course, I could also ask why my sample code didn't work. For example, as I experimented with the `@return` tag, the Javadoc didn't show the return comment in the output. Why not? 

```
i added a return tag to the following method, but i don't see a return parameter
in the output. Why?
```

Not only did the AI explanations cover the general reasons (the method used a `void` tag, which meant it didn't return anything, so my `@return` command was ignored), it used the specific method names and details from the example in its explanation. There was no need for me to adapt and fit general knowledge to my specific problem.

In other areas, I wanted to expand my knowledge of specific documentation style around the `@param` tag. 

``` 
what should the syntax be with @param? do i start with a lowercased verb
phrase? what happens if there's a period in there? does the javadoc output put
the content after the period in another place? 
```

Again, the AI was able to provide information specific to my documentation-oriented interests. In other places, I wanted more detail as well, such as how to handle definitions for the fields returned by the method. 

```
for the @return tag, in the example above you said "the area of the rectangle."
suppose my method returns a bunch of data, such as rectangle area, rectangle
style, rectangle depth. where would i define those definitions? in the method?
or elsewhere?
```

AI explained that field definitions are often encapsulated in another class. Now things were clicking and I started to understand the structure of the code I was documenting better. 

{% include random_ad3.html %}

What I appreciated most about the Javadoc course is that I could customize the content specific to my needs as a technical writer. Almost every book on Java I've ever read has been targeted for developers. There simply aren't books on Java written for technical writers. There might be a brief section on Javadoc nested within a gargantuan book that will take weeks to get through. And after making your way through the thick text or online course, do you ever get the answer to your documentation questions? Often not. Instead, using AI, I could go right to documentation-specific questions:

```
tell me more about the {@link} tag. what's the reason for the #? if i am
linking to a method inside a class, how would i do that?
```

The structure of the `@link` tag can be pretty complex, actually, especially when you're trying to link to a section within a class in another package.

Finally, I wanted to focus on the larger question: 

```
as a tech writer, i need to identify places in the java source files that are
missing the needed tags. how can i do that?
```

Overall, this AI-generated Javadoc course probably took me an hour to get through. Granted, if you spend 10x the time learning Java in a course targeted at developers, you'll probably have a much greater understanding. But here's the problem: I've read through multiple books and gone through online courses for programming languages. The experience is almost always the same:

* The material teaches you the basics, but those basics won't help much with documentation-specific questions beyond maybe orienting you to the right terminology.
* The material doesn't stick long term. After a few months of not using the code, I forget it.
* It takes too long to get to relevant material. It might be hours into a course before I even get to something that feels relevant.
* I'm a passenger in someone else's car. I go where the driver takes me, and that driver assumes I'm a developer learning to code, not a technical writer trying to understand how to document that code.

{% include ads.html %}

## The larger challenge: Finding the time

Whether you learn technical topics from AI, online courses, books, or other methods, the larger challenge is simply finding the time to do it. Chances are, you're busy as a technical writer, and you have an endless number of tickets and deadlines. You don't have time to carve out two hours a day for general tech learning. It takes a tremendous amount of discipline and long-term commitment to make your way through any learning endeavor.

The larger skill needed is the long-term, relentless commitment to a learning regiment. If you can set aside even one hour during the day to learn, and do that consistently over not just weeks but months and years, that will help you be a successful technical writer. How exactly do you muster this discipline for learning? What approaches or systems actually work? 

{% include random_ad2.html %}

Here's what I've found that works best:

* Focus on learning code related to the documentation projects you're working on. If someone isn't relevant, it will get deprioritized easily.
* Recognize what kind of learning is helpful for documentation tasks. You're a technical writer, not a programmer.
* Keep plugging away little by little. You'll be surprised the amount you can learn spending just one hour a day for a couple of weeks.

I'm confident that using AI tools might lead to more efficient code learning. Instead of taking hours to get to something relevant, I can go right to those topics and questions. Instead of pretending to be a junior developer learning to code, I can fashion the course so that it's tailored to technical writers. Instead of getting stuck on errors or other unexplained obstacles and going down Stack Overflow rabbit holes, I can use AI to work through them. Learning to code might be a whole lot easier with AI.

Best of all, AI tools excel at general programming topics and understanding, which might be too superficial for a programmer working at an advanced level but could be a perfect fit for technical writers. We usually don't need an advanced level of understanding, only a grounding in the basics, a familiarity with the right terms to use, and other beginner-type details for a programming language.

## Activity

To put theory to practice, try the following:

1.  Choose a technology you want to learn more about. 
2.  Customize this prompt:

    ```
    I'm a technical writer documenting a [Java API]. I want to better understand how
    to [tag the source with comments that get generated as Javadoc]. Create a course
    that I can follow. Teach me step by step, like a friend.
    ```

3. As you're learning about the topic, steer it in the direction that would be most helpful and relevant to you as a technical writer.

## More resources

For more resources on this topic, see the following:

* [You're using ChatGPT WRONG: How I would learn to CODE in 2023 with the help of AI](https://www.youtube.com/watch?v=0mSf_2RoWfM)