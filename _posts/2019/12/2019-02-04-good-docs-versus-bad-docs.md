---
title: "Good docs versus bad docs -- a look at Wescheme's Bootstrap documentation"
categories:
- technical-writing
keywords:
bitlink: http://bit.ly/
published: false
summary: ""
---

This past week my 7th-grade daughter entered a programming component in her Algebra class. I was elated about this because, sadly, whenever she needs help with math, I'm not usually much help. My wife is much sharper with math and seems to remember everything, so she takes the lead. But with the switch into programming, I got called up from the dugout to help out. After I browsed the material, I started to feel sorry for my daughter, the teacher, and the whole school's attempt to jump into programming.

Which language are they learning? They're learning Bootstrap. Not the [Bootstrap web framework](https://getbootstrap.com/) that you're probably thinking of (the HTML, CSS, and JS front-end components). No, Bootstrap is a programming language someone made up. *It's its own thing*. See [Bootstrapworld.org](https://www.bootstrapworld.org/) for details.

Apparently, many schools incorporate Bootstrap into their curricula, in part because of its tie in with Algebra. You can apply mathematical functions to objects. Sounds good, right?

Well, things start to go downhill when you get to the docs. Bootstrap has a browser-based editor called [https://www.wescheme.org/](https://www.wescheme.org/).

<a href="https://www.wescheme.org/openEditor"><img src="https://idratherbewritingmedia.com/images/weschemeeditor.png"/></a>

Notice the prominent [Documentation](https://www.wescheme.org/doc/wescheme.html) link at the top. The documentation starts out all right. It provides an overview, example programs, information about the environment, and even a hello world tutorial.  

<a href="https://www.wescheme.org/doc/wescheme.html"><img src="https://idratherbewritingmedia.com/images/weschemedocpage.png"/></a>

I will even overlook the fact that the sample resource in the hello world tutorial, `http://racket-lang.org/logo.png`, doesn't load in the program. You can swap in your own web URL to an image and continue on.

Where the doc starts to really go downhill is the jump from the small image to the "World programming and Images API." Without any introduction at all, users are thrown into a list of functions available within Bootstrap. The first function (or "procedure" as it's called) is `big-bang`. I'm guessing that it takes two arguments: `world` and `big-bang-handler`. No where is the function syntax explained here, nor is any sample code shown. Additionally, it's unclear what the `→ world` means. Does this function generate a world of some kind? I have no clue.

My daughter pretty much skipped this documentation and instead figured out some Bootstrap tasks by looking at the sample programs. (One of the demo programs, by the way, doesn't share its source code. Of course, it's the program that has the functionality she needs.)

In general, reference documentation can be difficult to read without some primer that explains the reference syntax.

Now let's look at another Bootstrap doc site: [An Hour of Code with Bootstrap](https://www.bootstrapworld.org/materials/spring2020/courses/hour-of-code/en-us/). This is a much better approach.

First, the docs break up the information into a series of small chunks of digestible information. This is no doubt because the information is in the form of a learning tutorial rather than reference documentation.

After some basics, you finally get to the part where the function syntax is defined.

<a href="https://www.bootstrapworld.org/materials/spring2020/courses/hour-of-code/en-us/#"><img src="https://idratherbewritingmedia.com/images/hourofcodebootstrap.png"/></a>

We now see that `(star 50 "solid" "blue")` follows a "contract" of `star : Number String String -> Image!`, where `star` is the function name and the next three items are arguments. The `--> Image!` refers to the output when you run the function.

I can overlook the non-standard syntax of Bootstrap. And I welcome the fact that it puts students working directly in the code rather than connecting blocks with block programming. But without the right tutorials that will explain how to read the reference documentation, students are going to be frustrated They will probably conclude that programming is super confusing and not for them.

This is a good reminder to provide some kind of introductory explanation in your API docs about how to read the function signatures. Once you understand the syntax, it unlocks the rest of the reference docs in more accessible ways. I'm guessing that the Bootstrap developers created the reference docs, but teachers created that tutorial (I could be wrong). There's a kind of plain language and communication in the tutorial that isn't present in the reference documentation. One is teaching rather than documenting. 
