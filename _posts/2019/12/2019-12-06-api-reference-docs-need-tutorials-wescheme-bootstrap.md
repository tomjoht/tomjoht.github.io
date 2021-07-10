---
title: "When reference docs lack a tutorial -- a look at Wescheme's Bootstrap documentation for students learning programming"
permalink: "/blog/api-reference-docs-need-tutorials-wescheme-bootstrap"
categories:
- technical-writing
- api-docs
keywords:
bitlink: https://idratherbewriting.site/bootstrapweschemedocs
description: "This past week my 7th-grade daughter started a programming component in her Algebra class. I was elated about this because, sadly, whenever she needs help with math, I'm usually not much help. My wife is much sharper with math and seems to remember everything, so she takes the lead. But with the switch into programming, I got called up from the dugout to help out. After I browsed the material assigned and required tasks, I started to feel sorry for my daughter, the teacher, and the whole school's attempt to jump into programming."
---

Which language are they learning? They're learning "Bootstrap." Not the [Bootstrap web framework](https://getbootstrap.com/) that you're probably thinking of (the HTML, CSS, and JS front-end components). No, Bootstrap is a programming language someone made up. *It's its own thing*. See [Bootstrapworld.org](https://www.bootstrapworld.org/) for details.

Apparently, many schools incorporate Bootstrap into their curricula, in part because of its tie in with Algebra. You can apply mathematical functions to objects. Sounds good, right?

Well, things start to go downhill when you get to the docs. Bootstrap has a browser-based editor called [https://www.wescheme.org/](https://www.wescheme.org/).

<a href="https://www.wescheme.org/openEditor"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/weschemeeditor.png"/></a>

Notice the prominent [Documentation](https://www.wescheme.org/doc/wescheme.html) link in the top navigation bar. The documentation starts out all right. It provides an overview, example programs, information about the environment, and even a hello world tutorial.  

<a href="https://www.wescheme.org/doc/wescheme.html"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/weschemedocpage.png"/></a>

I will even overlook the fact that the sample resource in the hello world tutorial, `http://racket-lang.org/logo.png`, doesn't load in the WeScheme Editor. You can swap in your own web resource to an image and continue on.

Where the doc starts to really go downhill is the jump from the hello world tutorial in "2 The environment" to "3 World programming and Images API." Without any explanation about how to read the reference material, users are thrown into a list of functions available within Bootstrap. The first function (or "procedure" as it's called) is `big-bang`. I'm guessing that it takes two arguments: `world` and `big-bang-handler`. No where is the function syntax explained here, nor is any sample code shown. Additionally, it's unclear what the `→ world` means. Does this function generate a world of some kind? I have no clue.

My daughter pretty much skipped this documentation and instead figured out her Bootstrap tasks by looking at the sample programs. (By the way, one of the demo programs, "[Ninja Cat](https://www.wescheme.org/run?publicId=sggzRzgU5T)," doesn't share its source code. Of course, it's the program that has the functionality she needs.)

In general, reference documentation can be difficult to read without some primer that explains how to read the reference syntax. Reference docs often have a special syntax (showing the function's signature or format), but unless you're familiar with how to read it, that signature can look confusing.

Now let's look at another Bootstrap doc site: [An Hour of Code with Bootstrap](https://www.bootstrapworld.org/materials/spring2020/courses/hour-of-code/en-us/). This is a much better approach for the audience (middle school students).

First, the docs break up the information into a series of small chunks of digestible information. This is no doubt because the information is in the form of a learning tutorial rather than reference documentation.

After some basics, you finally get to the part where the function syntax is defined.

<a href="https://www.bootstrapworld.org/materials/spring2020/courses/hour-of-code/en-us/#"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/hourofcodebootstrap.png"/></a>

We now see that `(star 50 "solid" "blue")` follows a "contract" of `star : Number String String -> Image!`, where `star` is the function name and the next three items (`Number String String`) are arguments. The `--> Image!` refers to the output when you run the function. Now the reference docs begin to make more sense!

I don't so much mind the non-standard syntax of Bootstrap (though it is annoying that they can't just follow an existing standard). And I applaud the fact that WeScheme puts students working directly in the code rather than connecting blocks with block programming. But without the right tutorials that will explain how to read the reference documentation, students are going to be frustrated click the Documentation link so prominently displayed in the WeScheme Editor. They will probably conclude that programming is hard/confusing and not for them.

This is a good reminder to provide some kind of introductory explanation in your API docs about how to read the function syntax. Once you understand the syntax, it unlocks the rest of the reference docs in more accessible ways. I'm guessing that the Bootstrap developers created the reference docs, but teachers created that tutorial. There's a kind of plain language and communication in the tutorial that isn't present in the reference documentation. One is teaching rather than documenting.


