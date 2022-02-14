---
title: "Archbee product review -- first look at a new online platform for writing and managing documentation"
permalink: /blog/archbee-product-review.html
categories:
- technical-writing
keywords:
rebrandly: https://idbwrtng.com/archbeeproductreview
description: "<a href='http://archbee.io/' rel='nofollow'>Arcbhee.io</a> is a new online documentation platform with a lightweight, fast editor that makes it easy to write and manage documentation, knowledge bases, or other company information. Archbee has some unique features that make it worth exploring &mdash; especially if you create web API or GraphQL documentation. Their editor is one that you can easily fall in love with and is the centerpiece of the product. The whole authoring platform feels extremely responsive, modern, and web-friendly. If you're shopping around for documentation tools, I definitely recommend checking out Archbee."

---

_Note that this is a sponsored post._

## The editor and concept of blocks {#the-editor-and-concept-of-blocks}

Let's start with the Archbee editor, which is what people love most about Archbee. Archbee uses the concept of “[blocks](https://docs.archbee.io/demo/all-blocks){:rel="nofollow"}” in the interface. When you type “/” (on a new line), you can see all the blocks available to use. These blocks are preformatted widgets that you fill in with content.

<figure>
<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/archbee_blocks.png" alt="Type &#8220;/&#8221; to see a list of all blocks you can insert in the Archbee editor" />
<figcaption>Type &#8220;/&#8221; to see a list of all blocks you can insert in the Archbee editor</figcaption></figure>

The list of blocks includes the following:

* Heading (levels 1, 2, 3)
* Expandable headings (levels 1, 2, 3)
* Bulleted list
* Numbered list
* Checklist
* Table
* Callout
* Horizontal divider
* Vertical split
* Mini-tasks
* Link blocks
* Tabs
* file
* Image
* YouTube or Vimeo
* Map
* Code editor
* Diagram
* Mermaid Diagram
* API endpoint
* Swagger UI
* GraphQL
* Changelog Iframe/HTML embed

With these various blocks, the editor feels a little Confluence-like, but Archbee is much faster and more responsive than Confluence. Many blocks are specific to documentation, and there are some unique blocks I'm really impressed with, such as the API blocks, code sample blocks, tab blocks, and more. You can see a [demo of blocks here](https://docs.archbee.io/demo/all-blocks){:rel="nofollow"}.

After inserting a block, you can also drag the block up or down to change its position in the document. Overall, these blocks make writing easy, and you don't have to think about syntax or formatting. The output looks great with almost no custom styling or formatting on your part.

Admittedly, one block that seems to be missing is a content re-use block. The ability to store content snippets that you can re-use in other parts of your documentation is [planned](https://roadmap.archbee.io/276){:rel="nofollow"} for the Archbee roadmap, as are many other features. Note that Archbee is still in active development. It's a startup backed by Y Combinator that is still ramping up its feature set and maturity (but fully launched and available to use).

## Working with Markdown {#working-with-markdown}

Although the Archbee editor simplifies content authoring, you're not required to use the editor and its available blocks. If you type in Markdown, the editor converts it to the display syntax on the fly. But you can also manage all content as Markdown files stored in a GitHub repository, synced to an Archbee workspace. This would restrict your formatting options to the Markdown syntax, of course. But it would allow you to store your docs with code in a more seamless way.

<figure><img style="max-width: 575px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/archbee_markdown_options.png" alt="Archbee markdown options" /><figcaption>Archbee Markdown options &mdash; you can either write directly in the editor or sync files from GitHub</figcaption></figure>

When faced with the choice of writing in basic Markdown or using the blocks in the Archbee editor, I'm pretty sure the latter will win out. Having a feature-rich list of pre-built widgets makes it easier to author content. Whether you're inserting an API endpoint, expandable section, code samples, task lists, or more, you can insert these blocks without having to worry about the style or formatting. These widgets abstract away the complexity and let you focus on the content.

In fact, you can't even toggle into a code view to see the code. Archbee does let you toggle between Edit and Read modes. And you can also export the content to Markdown, if you want. However, I'm less and less enamored with writing in Markdown. Writing in pure Markdown syntax leads to a jumbled mix of Markdown, HTML, and various includes to achieve the formatting you need.

In contrast, the Archbee editor lets you immerse yourself entirely in the content, without thinking much about formatting or how it will look. The UI is 100% intuitive and nearly everyone in a company would be able to start creating content without any special training or orientation.

## Ease of writing allows more to participate {#ease-of-writing-allows-more-to-participate}

The easier it is to write, the more diverse roles will participate in content development and publishing. This is why Archbee would also work well as an internal wiki, knowledgebase, or other enterprise-wide tool. There are a [number of integrations](archbee.io/integrations){:rel="nofollow"} that make it even more suited for internal docs, such as the Jira integration, Trello integration, and Slack integration.

The social awareness layer to the content in Archbee makes it great for project collaboration. You can tag or mention people in the document (which sends them a notification). You can comment on specific lines, reply to comments, and more. And you can view version history to see all changes over time to content, or see all documents that link to a document (a knowledge graph). You can use a collaborative whiteboard through [Miro](https://docs.archbee.io/demo/miro){:rel="nofollow"} embeds, or draw diagrams in real-time with [native diagrams](https://docs.archbee.io/demo/native-diagrams){:rel="nofollow"}. With these interactive qualities, Archbee has good support for documentation review workflows. It also empowers internal teams to describe and document their products.

## API integration {#api-integration}

Unlike other tools in this category, Archbee has strong support for API documentation. Archbee's [API integration](https://docs.archbee.io/demo/api-documentation){:rel="nofollow"} allows you to import API reference information through an OpenAPI file, which embeds an [entire Swagger-UI-styled user experience](https://docs.archbee.io/openapi-swagger-block){:rel="nofollow"}. Or you can insert a [single API endpoint](https://docs.archbee.io/api-endpoints){:rel="nofollow"} and add the endpoint name, methods, parameters, code examples, and other details as you go (without importing an OpenAPI). There's also a block for GraphQL, which is the first actual documentation tooling I've seen to [support GraphQL](https://docs.archbee.io/graphql){:rel="nofollow"}.

Apart from the support for reference documentation, there's a [code editor block](https://docs.archbee.io/v1/multi-language-code-editor){:rel="nofollow"} that provides tabbed output for different languages, syntax highlighting, and a copy button. The display of the code sample presents the code with syntax highlighting for the language and a dark background to set off the code visually. You can also embed code from [Codepen](https://docs.archbee.io/demo/codepen){:rel="nofollow"}, [GitHub Gist](https://docs.archbee.io/demo/github-gist){:rel="nofollow"}, and more.

All of Arcbhee's blocks are lightning-fast and extremely responsive. There's no slow loading or waiting for pages to render. It all feels nearly instantaneous and fast. You can tell that Archbee was built using modern tools, and came of age recently. It's not a product that has been patched and enhanced over the past two decades, limping along with outdated code. You very much feel like you're working with the latest web technology.

It almost goes without saying that the platform is an online, software-as-a-service solution, allowing multiple writers to interact and collaborate online at the same time, without needing to download any apps or have any special operating system or browser. (That said, there are some rich client options available.) If you want to enable collaboration across remote teams, choosing a SaaS tool is the right approach.

## Conclusion and outlook {#conclusion-and-outlook}

Overall, I've seen many tech comm tools come and go. (For example, Document 360 is probably the closest competitor to Archbee, though I don't think Document 360 ever replaced more timeworn tools like MadCap Flare.) One thing many tool vendors don't realize is how hard it is for companies to migrate their technical content to new authoring platforms. If you already have thousands of pages of content on an existing platform, with writers familiar and somewhat satisfied using their tools, persuading these writers to migrate the content to a new tool (which they'll have to learn), as well as embrace new workflows, poses as much a cultural shift as a technological one.

This is why Archbee might have the most success within startups, where people in many different roles contribute to docs, and the company isn't burdened with mounds of legacy content or existing toolsets. Archbee would also work extremely well as an internal documentation tool because of its ability to scale beyond a professional technical writer to something that an employee with minimum technical skills could use to create content.

The tricky part is to not just create a tool that's easy to use, but one that also provides more advanced authoring needs for professional technical writers. Archbee seems to address more advanced authoring needs, especially for developers, with the API and code integration as well as Markdown workflows. There's even a [content API](https://docs.archbee.io/get-a-doc-as-markdown-or-html){:rel="nofollow"} that you can use to get the content from specific pages and techniques for generating context-sensitive help (which they call a [Docs widget](https://docs.archbee.io/docs-widget){:rel="nofollow"}). Archbee also offers version support, PDF output, authorization controls, and more.

Will Archbee become a common tech comm tool, right alongside Confluence, MadCap Flare, Paligo, and others? Perhaps. I genuinely like using the editor. It's snappy and responsive, easy to use, and the output looks clean and minimalistic. There's a lot to like about Archbee.

If there's a killer feature that will incentivize tech writers to go through the hassle of migrating toolsets, it might be the close integration of API reference documentation (both web API and GraphQL) with the conceptual and task-based content. When I helped judge the recent Pronovix Dev Portal awards, I found that API documentation sites that had seamless integration of both reference and conceptual/task-based content had the best user experiences.

## More resources and the story behind the name {#more-resources-and-the-story-behind-the-name}

There are many topics I haven't covered here. To get more info, see the [Archbee documentation](https://docs.archbee.io/){:rel="nofollow"}, which also demonstrates what's possible with the platform. Also, check out [Built with Archbee](archbee.io/built-with-archbee){:rel="nofollow"} to browse many live doc sites built with Archbee.

One detail I forgot to mention &mdash; the story behind the name “Archbee.” The project started as an internal tool to help development groups consolidate and share information for projects (see [Archbee Raises $1 Million To Help Developers Manage Secret Sauce](https://www.forbes.com/sites/davidprosser/2021/07/19/archbee-raises-1m-to-help-developers-manage-secret-sauce/?sh=4b34327e6379)). Some of these assets were architectural diagrams (Archbee has native support to render [Mermaid diagrams](https://docs.archbee.io/mermaid-diagrams){:rel="nofollow"} as well as its own [built-in diagrams](https://docs.archbee.io/native-diagrams){:rel="nofollow"}.) “Architecture” is where the “arch” comes from. The “bee” refers to the collaborative aspect of content creation, where multiple people interact in the same working space. Put _architecture_ and _bee_ together and you have Archbee.

You can experiment with Archbee through a [free trial](https://www.archbee.io/){:rel="nofollow"}. The first-time login takes less than a minute to create. When you create your first page, type “/” and play around with the various content blocks. If you have thoughts and feedback about your experience with Archbee, feel free to share them in the comment fields below.
