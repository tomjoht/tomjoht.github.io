---
title: "Lightweight DITA article in Technical Communication Journal"
categories:
- dita
keywords: 
description: "A recent article in the <i>Technical Communication Journal</i> explores lightweight DITA and the way it removes some of the complexity from the authoring process. Lightweight DITA is still in development, but it holds great promise in simplifying DITA and allowing authors to connect into larger systems for managing doc content without abandoning HTML."
image: https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/thumbnails/techcommjonline.png
---

<a href="http://techcomm.stc.org/2016/02/structured-authoring-without-xml-evaluating-lightweight-dita-for-technical-documentation/"><img style="float: right; padding: 10px;" src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/techcommjonline.png" | prepend: site.baseurl }}" alt="Technical Communication Journal" /></a>

The February 2016 issue of the Technical Communication Journal (an academic journal containing scholarly articles about technical communication) contains a article well worth reading titled [Structured Authoring without XML: Evaluating Lightweight DITA for Technical Documentation](http://techcomm.stc.org/2016/02/structured-authoring-without-xml-evaluating-lightweight-dita-for-technical-documentation/), by Carlos Evia, who teaches at Virginia Tech, and Michael Priestley, who works at IBM.

The article explores the use of lightweight DITA, termed "HDITA," and explains a pilot experiment using HDITA with students. Here's an excerpt from the "Practitioner's take-away" section:

> HDITA is an experimental version of Lightweight DITA that uses HTML5 tags instead of XML for structuring technical content.
>
> Students in the Technical Writing course, perceived as novice technical authors, created sample procedural projects using HDITA for Web deliverables.
>
>Novice technical writers did not find the HDITA authoring process particularly difficult, and their deliverables received positive comments and feedback from evaluators.
>
> HDITA can simplify the technical authoring process while producing effective deliverables. Authors with- out XML experience (such as Web developers, programmers, etc.) can use DITA for projects.

This is one of the few articles in *Technical Comunication Journal* that actually dives into XML, and Priestley and Evia include quotes from Mark Baker, Neal Kaplan, Sarah O'keefe, Rick Yagodich, me, and more as they explain the justification and rationale for HDITA. 

One of the main reasons for developing lightweight DITA (of HDITA) is to remove the complexity behind DITA authoring and provide a more HTML-based approach to generating valid DITA topics. 

The authors explain:

> Despite XML and DITA's strong presence in technical communication, some practitioners argue, among other things, about the complexity of DITA's many XML tags, the need for specialized tools to produce end-user deliverables, and the high learning curve for specializing DITA beyond the core concept, task, and reference topic types.

The approach to using HTML seems to leverage the `data` attributes in HTML5 to map to various XML elements. The authors show a sample DITA topic and compare the same approach in lightweight DITA:

Here's a sample DITA topic from the article:
 
```xml
<task>
<title>How to do something</title> <shortdesc>Introduction to this specific task</shortdesc> <taskbody>
<context>Use only when ready</context> <steps>
<step>
<cmd>Plan something</cmd>
</step> <step>
<cmd>Do something</cmd> </step>
<step>
<cmd>Evaluate something</cmd>
</step> </steps>
<example>Like this</example> </taskbody>
</task>
```

Here's the same topic in HDITA:

```html
<article data-hd-class="task"> <h1>How to do something</h1>
<p>Introduction to this specific task</p> <section data-hd-class="task/context"> <p>Use only when ready</p>
</section>
<section data-hd-class="task/steps-informal"> <ol>
<li><p>Plan something</p></li>
<li><p>Do something</p></li>
<li><p>Evaluate something</p></li>
</ol>
</section>
<section data-hd-class="topic/example"> <p>Like this</p>
</section> </article>  
```

This lightweight HTML5 "can be used for either authoring or display." That is, there's no need to transform the HDITA content in order for the browser to display it  &mdash;  they are all valid HTML tags. However, you can also convert these topics into valid XML topics through [http://jotsom.com](http://jotsom.com). Other tools that would support HDITA are still in development, I believe.

The authors explain how the students assembled the HTML into websites using Jekyll and Github Pages:

> For the layers of automated assembly and delivery, because HDITA is still not integrated into the DITA Open Toolkit or other DITA-aware tools, we introduced the students to Jekyll ([http://jekyllrb.com](http://jekyllrb.com)) via GitHub Pages ([http://pages.github.com](http://pages.github.com)) to take advantage of a template for Web deliverables created for a plugin of the DITA Open Toolkit.
> 
> Once the students authored and coded their HDITA topics, we asked them to create maps in YAML syntax ([http://yaml.org](http://yaml.org)), which then connected to a Jekyll template we provided for deployment in GitHub Pages. The Jekyll template generated a responsive, mobile-ready website...
> Once the online course ended, we selected three student projects (with proper permission from the authors) and converted them to DITA XML through Jotsom ([http://jotsom.com](http://jotsom.com)), an experimental online authoring and transformation environment developed by Don Day, who is also a member of the OASIS Lightweight DITA subcommittee.

Holy smokes, I never thought I would see Github Pages, Jekyll, and YAML along with my favorite bloggers mentioned in a scholarly tech comm article. How cool!

I think the approach with lightweight DITA has a lot of promise. If you can connect these HTML-based topics into larger documentation platforms to manage the content, you will have a powerful authoring system that doesn't force writers into XML authoring but which still leverages some of the robust strengths that XML provides. 