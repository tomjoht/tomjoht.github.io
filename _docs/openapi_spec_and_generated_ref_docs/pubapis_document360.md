---
title: "Document360 for API docs"
permalink: learnapidoc/pubapis_document360.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.92
section: restapispecifications
path1: learnapidoc/restapispecifications.html
last-modified: 2025-04-12
---

{% include coffeeshopbook.html %}

Building an API reference documentation output directly from an OpenAPI specification is a significant technical hurdle, even for an engineering-savvy UX designer. Consequently, most technical writers use specialized tools for API reference, making the quality of the output dependent on the chosen platform. The question then becomes, which tool provides the most compelling developer experience for API reference? 

In this article, I'll evaluate [Document360](https://idbwrtng.com/document360-api-doc-course-article), including several example API documentation sites. Document360 supports your regular documentation and knowledge-base content, but also allows you to publish your API documentation, bringing all content into the same documentation portal seamlessly. For API documentation, Document360 supports REST API documentation in the form of an OpenAPI specification file that you can import, upload, or continuously pull in. 

* TOC
{:toc}

*Note: Document360 is one of the sponsors of this site.*

## Getting Started with API Documentation in Document360

You can add your API reference documentation to Document360 in several ways. You can upload an OpenAPI file directly (as JSON or YAML), provide a URL to your hosted specification file, integrate the file via a CI/CD flow for continuous updates, or upload a Postman Collections file. 

While the platform supports these different methods, for the sake of simplicity, let's walk through that wizard process to quickly see the output. To help users quickly explore the [API documentation features](https://idbwrtng.com/document360-api-doc-course-article/solutions/api-documentation/), Document360 also provides a sample Petstore API file. To get started:

1. Go to [Document360.com](https://idbwrtng.com/document360-api-doc-course-article) and sign up for a free trial. Follow the welcome prompts. When you reach "1. Welcome to Document360":
* Click the **Get started** button in the API documentation section.
2. **"Select a method to create an API reference":
* Choose **Try sample pet store API file** for this demo. (You could select "Upload API definition" or "Create from URL" if you have your own spec file ready.)
3. "Personalize your Knowledge Base"**:
* Skip the "Provide your website URL (optional)” field, or add your site.
4. "Brand guidelines"**:
* Customize the **Project name** as desired.
5. "Set the privacy of your documentation":
* Select **Public** for easy viewing.

After completing these steps, publish the output. Open your new site, click the API documentation button (or navigate to the relevant section), and browse the generated documentation for the sample Petstore API. The published API documentation looks as follows, with intuitive navigation and includes a Try-It pane.

<figure><img style="max-width:600px" src="{{site.media}}/petstore-example.png" alt="Petstore example from Document360"><figcaption><b>Figure 1.</b> Document360's demo API documentation output using the Swagger Petstore file. Document360 lets you publish your OpenAPI file within minutes, providing an attractive output that aligns with industry best practices and expectations. The Try It panel, which supports authentication, lets users execute API requests and view real-time responses within the documentation.</figcaption></figure>

## Document360 is mostly for *publishing* your API reference

Now let's move on to discuss another aspect of Document360. Document360 is primarily a *publishing* engine for already-constructed OpenAPI files. Document360 assumes that you've already assembled your OpenAPI specification file elsewhere and now just need to publish it. Supported file formats/versions include OpenAPI (3.1, 3.0, 2.0) and Postman Collections. Document360 requires valid syntax for import and provides error feedback but doesn't include a built-in editor to fix invalid syntax within the platform. 

After you've imported a valid OpenAPI file, Document360 treats the API reference as read-only from the OpenAPI spec you imported. In other words, if you want to adjust a parameter description or other content, you wouldn't do that without Document360's interface but would instead edit your OpenAPI specification file and then either reimport it or resync the CI/CD integration. (You can add some paragraphs within the Resource descriptions, but not for the endpoints.)

Restricting editing is likely a smart move because it avoids the complexity of authoring interfaces that try to provide a GUI for constructing the complex YAML syntax of the OpenAPI specification&mdash;which is not a small feat in UI engineering. Instead, the strength of Document360's platform is in integrating all your documentation in one place: both your regular documentation and your API reference documentation. Publishing this information in one coherent portal helps increase the coherence and consistency of the documentation experience.

Those tools that do offer GUI-based interfaces for creating the OpenAPI specification's syntax (like Stoplight) usually have primitive authoring/editing features for the rest of their documentation. In contrast, Document360 was built first as a documentation platform, not merely as an API publishing engine. As such, the platform has a rich feature set, including everything from AI-integrated chat, ticket deflection, documentation analytics, tags, access controls, user comments, metadata, portal design, and more. 

Additionally, Document360 supports multiple versions of API documentation. In short, tech writers won't be frustrated by the lack of more advanced authoring features as a tradeoff for API publishing. 

**See it in action:** Watch this video to see how to publish your API documentation with Document360. The quality of your API documentation output requires you to start with the right tools.

<iframe width="560" height="315" src="https://www.youtube.com/embed/EaMrT3xmNm8?si=MtgplnKv_QwRF-d5" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Example API documentation published with Document360

To get a sense of Document360's user experience of API documentation, let's look at a few examples:

* [PlainID API Documentation](https://docs.plainid.io/apidocs/policy-management-apis)
* [PagoNXT API Documentation](https://developer.pagonxtpayments.com/apidocs)
* [PagoNXT API Reference](https://developer.pagonxtpayments.com/docs/api-reference)
* [Torq API documentation](https://developers.torq.io/apidocs)
* [Fortanix API documentation](https://support.fortanix.com/apidocs)
* [Britive API documentation](https://docs.britive.com/v1/docs/en/overview-britive-apis)
* [Rocket Chat API documentation](https://developer.rocket.chat/apidocs)
* [Medallia API documentation](https://developer.medallia.com/medallia-apis/reference/listroles-1)
* [Bloxs API documentation](https://www.bloxs.io/apidocs/introduction)

In the following sections, I'll share my observations on some of these sites.

### Quick, snappy interface

Document360 pages load quickly, and the site is easy to navigate. The experience feels modern and aligned with the latest web conventions. (In contrast, many other tech comm tools tend to have an outdated experience and feel.) 

To confirm the speed, I plugged about 5 different pages from the [Torq API documentation](https://developers.torq.io/apidocs) into [https://tools.pingdom.com](https://tools.pingdom.com/), a site that measures website technical benchmarks. Each time, the "Performance Grade” was 100. In contrast, my idratherbewriting.com site, which I feel loads quickly, scored only in the mid-70's.

Site loading speed might not ostensibly seem like a major UX factor, but it is. Consider how developers impatiently click through various documentation pages looking for answers, especially when those pages are individual endpoints. The faster the site loads, the more apt developers will be to stick within the documentation site to find information.

### Endpoint organization in the sidebar

Document360's hierarchical grouping of API endpoints in the sidebar is easy to browse, with collapsible folders that group the different endpoints based on their tags in the OpenAPI file. If you have many different groups and API endpoints, this folder-based hierarchy allows users to navigate them without feeling overwhelmed. Here's an example from Bloxs:

<figure><a class="noCrossRef" href="https://www.bloxs.io/apidocs/get-a-complex"><img style="max-width:600px" src="{{site.media}}/bloxs-example.png" alt="Bloxs example"></a><figcaption><b>Figure 2.</b> The API groupings in the sidebar provide a clear visual hierarchy for the endpoints, and their operations appear as colorful but unobtrusive tags. At a glance you can understand which API endpoints relate to Complexes and the types of operations each provides.</figcaption></figure>

### Parameter readability

In the Document360 sites, the parameters are easy to read because of the collapse/expand toggles and the tree diagram lines. For example, take a look at this Body parameters section from Fortinix:

<figure><a class="noCrossRef" href="https://support.fortanix.com/apidocs/create-a-session-for-a-user-or-an-app"><img style="max-width:600px" src="{{site.media}}/fortanix-example.png" alt="Fortanix example"></a><figcaption><b>Figure 3.</b> Notice how the Body parameters here are easy to read. The OneOf parameter could have a variety of objects. They're collapsed by default to prevent overwhelm. When expanded, faint gray tree diagram lines help the eye trace the hierarchy. The data types are set off in gray to the right. Valid values have other shading and visual offset, as do the "Required" tags in red. The result is that it's easy to scan the information.</figcaption></figure>

### Try-it and code examples pane

Document360's Try-it pane and code examples offer a convenient utility for developers to experiment with the API. As has come to be expected in API outputs, this interactive pane appears on the right, creating a tri-column display. Given this three-column output, there's not a lot of extra real estate, but Document360 manages to make the UI comfortable and attractive despite the limited space. Take a look at this example from Medallia:

<figure><a class="noCrossRef" href="https://developer.medallia.com/medallia-apis/reference/query-1"><img  style="max-width:600px" src="{{site.media}}/medallia-example.png" alt="Medallia example"></a><figcaption><b>Figure 4.</b> In this example, Medallia has visual buttons for code sample choices. You can even click the three-dots menu and choose from dozens more code examples. The code itself is styled dark, with syntax highlighting on the code example. If you want a more interactive experience, click the Try It! Button. You can also expand the right pane to occupy the entire screen.</figcaption></figure>

Here's another example with the Rocket Chat API, this time with the Try-it pane shown by default:

<figure><a class="noCrossRef" href="https://developer.rocket.chat/apidocs/add-all-users-to-a-channel"><img  style="max-width:600px" src="{{site.media}}/rocket-chat-example.png" alt="Rocket Chat API example"></a><figcaption><b>Figure 5.</b> This Rocket Chat API example illustrates Document360's efficient use of screen real estate. The right pane neatly incorporates toggles for both the interactive "Try It!" console and "Code Samples." Even within this structured layout, the interface provides access to considerable detail through expandable sections and tabbed panes, offering users multiple ways to explore the documentation without feeling constrained. You can even select options to switch between light and dark themes.</figcaption></figure>

**See it in action:** This video walks you through the concept step by step:

<iframe width="560" height="315" src="https://www.youtube.com/embed/wAehAmm4a5E?si=9TbPkQSG3ZPBM9yc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Overall, Document360's API user interface is impressive and usable. It showcases your API documentation following API design best practices and standards&mdash;all with minimal fuss and configuration on your part as a writer or engineer delivering documentation. 

This last part is worth emphasizing&mdash;if, as a technical writer, you find yourself spending more time fiddling with website code than your docs, more time figuring out JavaScript than on the clarity of your API's field and parameter descriptions, more time on style libraries than on the consistency of your API endpoint descriptions, tutorials and workflows, and other documentation content, then the tradeoff for that design flexibility and customization backfires. Developers will consume content on your site; the site features and structure, nor your attention to them as an author, shouldn't take away focus from the words on the page.

## Conclusion

As I browsed through the dozen sample sites showcasing [API documentation](https://idbwrtng.com/document360-api-doc-course-article/blog/api-documentation/) using Document360, it made me think about how the API landscape has matured. When I first created my API documentation course (back around ~ 2016), it wasn't clear if Swagger, RAML, or Blueprint would be the dominant format. Swagger UI's interactive "Try it!” options to execute real requests connected with the developer imagination, especially given how developers lean towards experiential, exploratory learning. Seeing code samples in a variety of languages&mdash;another common design pattern&mdash;was also compelling, along with more diagrammed views of inputs and responses, common in Redocly's API output.

Now that at least a decade has passed, the various outputs have settled on a more or less expected feature set of API best practices and layouts. The tri-column layout, with collapsible sections, interactive explorers, and other styling (like colorful shading for operations, such as "POST”) dominate the landscape. Documentation that *doesn't* have an API Explorer (e.g., "Try It!”) feature now seems incomplete.

Document360 has the benefit of coming later to the API reference documentation generation scene, as it can take advantage of these more solidified UI expectations and pull from the best of all outputs. Document360's API documentation experience is just what any developer might expect and hope for with reference documentation. As an author, there's no need to deliberate on design or incorporate additional features. And following industry best practices with API documentation, the user experience becomes even more familiar and intuitive.