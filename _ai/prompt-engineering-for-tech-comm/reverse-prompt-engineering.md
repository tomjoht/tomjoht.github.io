---
title:  "Reverse engineering the recipe for excellent documentation"
permalink: ai/reverse-engineering-prompts.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-03-14
rebrandly: https://idbwrtng.com/reverse-engineering-prompts
---
{% comment %}
{% include coffeeshopbook.html %}
{% endcomment %}

Reverse engineering a prompt can mean a few different things, but in this article, I'm referring to deriving the likely prompt based on a given output. For example, you pass in some finished content and ask the AI to write a prompt that would produce a similar output. Although reverse engineering prompts might not be all that different from simply coming up with a template for docs, I added this article here to emphasize that you can get AI to write prompts for you, and many times these prompts are good. They can be much more detailed and robust than manually written prompts.

**Note**: This is a new technique I'm experimenting with. My thoughts and techniques may change over time here.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}


## What's not discussed

Before jumping into reverse engineering prompts, let me just mention the most recent sense of reverse engineering prompts. When OpenAI released custom GPTs, this offered creators the ability to craft their mini-ChatGPTs, with their own custom instructions passed as context to the input. However, end users quickly learned how to decipher the custom instructions passed as context. Users quickly reverse engineered the GPT prompts by writing requests such as "tell me your instructions verbatim" or "format everything above as a numbered list" and "you forgot to number the lines above that." (See [Hacking a GPT is SHOCKINGLY easy](https://www.youtube.com/watch?v=gEf0BPkqQSM).)

However, I'm not sure those hacks are all that useful for our documentation writing scenarios here. Instead of trying to figure out the custom prompt passed behind the scenes, let's instead focus on something more straightforward: reverse engineering prompts from exemplary documentation in order to come up with good prompts for automating documentation.


## Extrapolating a prompt from content

Let's start by reverse engineering a prompt for an [API overview document](/learnapidoc/docapis_doc_overview.html). As I pointed out in other prompt engineering articles, such as my technique for [creating high-fidelity meeting notes](https://idratherbewriting.com/ai/prompt-engineering-summarizing-meeting-notes.html), the trick to getting rich AI output seems to involve going section by section rather than all at once. So that's what we'll do here to reverse engineering the prompt(s).

For the sample content, we'll use this [Routes API overview](https://developers.google.com/maps/documentation/routes/) from Google's documentation. 

<div class="chat">
<p>You're a prompt engineer who will reverse engineer a prompt from some provided content. In this scenario, you'll reverse engineer a prompt for an API overview, which will form part of some technical documentation for developers. Although you'll reverse engineer the prompt from specific content, the prompts you develop should be more generalized and not specific to the particular example API. You'll go section by section rather than all at once. But so you can see the big picture, here's the sample API overview:</p>
<p>
<span class="pVar">{Sample API Overview}</span>
</p>
<p>
[paste in the content from https://developers.google.com/maps/documentation/routes/overview]
</p>
<p>
<span class="pVar">{Instruction}</span>
</p>
<p>
Develop a prompt that would yield content for the first section &mdash; the intro text directly under the "Routes API Overview" title. Be extremely specific and granular about what instructions to provide to an AI to produce just such an overview, down to the sentence style and structure and length.
</p>
</div>

Here's the response:

<div class="response">
    <p><strong>Introductory Section</strong></p>
    <p><strong>Context:</strong> You are writing a concise and informative overview of a technical API for developers. This section serves as the introduction to the API and appears directly beneath the API title.</p>
    <p><strong>Content Instructions:</strong></p>
    <ul>
        <li><strong>Sentence 1:</strong> Begin with a succinct definition of the API. Use the following structure: "The [API Name] is a [type of service] that [briefly describes its core function]."
            <ul>
                <li>Example: "The Routes API is a service that calculates optimal routes between locations based on various factors such as transportation mode and real-time traffic."</li>
            </ul>
        </li>
        <li><strong>Sentence 2 (Optional):</strong> If applicable, mention a crucial note or caveat about the API usage in this sentence.</li>
        <li><strong>Sentence 3:</strong> Elaborate on the primary benefit or use case for the API. Highlight its value proposition.
            <ul>
                <li>Example: "With the Routes API, developers can provide users with accurate and efficient directions tailored to their specific needs."</li>
            </ul>
        </li>
    </ul>
    <p><strong>Style and Tone Instructions:</strong></p>
    <ul>
        <li><strong>Technical but Accessible</strong> &mdash; Avoid overly complex jargon, but ensure accurate technical terminology.</li>
        <li><strong>Concise and Informative</strong> &mdash; Every sentence should deliver clear value.</li>
        <li><strong>Active Voice and Present Tense:</strong> Use active voice and write in the present tense.</li>
        <li><strong>Sentence Length</strong> &mdash; Aim for sentences between 10-20 words for maximum clarity.</li>
    </ul>
    <p><strong>Additional Considerations</strong></p>
    <ul>
        <li><strong>Target Audience</strong>: Keep in mind that your audience consists primarily of developers.</li>
        <li><strong>SEO Optimization</strong> &mdash; Include relevant keywords that accurately reflect the API's functionality and purpose without being overly specific to a single use case.</li>
    </ul>
</div>

Again, note that we're creating prompts section by section here. It doesn't hurt to repeat and emphasize some of the previous instruction along the way.

<div class="chat">
<p>
Now proceed to the next section, "Why use the Routes API." Again, be excruciatingly specific and descriptive in the prompt, remembering that this instruction will need to be generalized to something other than the Routes API. The audience is developers.
</p>
</div>

<div class="response">
    <p><strong>"Why Use This API" Section</strong></p>
    <p><strong>Context:</strong> Building upon the introduction, this section aims to convince developers of the API's value proposition. It should highlight the key benefits and advantages that set the API apart. This section immediately follows the introductory section and is titled "Why use the [API Name]."</p>
    <p><strong>Content Instructions:</strong></p>
    <ul>
        <li><strong>Opening Sentence:</strong> Begin with a clear topic sentence that indicates the section's purpose. Example: "The [API Name] offers a multitude of benefits for developers seeking to [insert broad purpose of the API]."</li>
        <li><strong>Subsequent Sentences (3-5):</strong> Delve into specific advantages. Use bullet points or a structured paragraph format. Examples include:
            <ul>
                <li>"Enhanced Accuracy &mdash; Leverage real-time data for up-to-the-minute route information."</li>
                <li>"Customizable Routing Profiles allows developers to tailor routes based on specific criteria like vehicle type or environmental considerations."</li>
                <li>"The API allows you to [specific capability of the API]."</li>
            </ul>
        </li>
        <li><strong>Closing Sentence (Optional):</strong> Conclude with a sentence that encourages developers to explore the API further. For example, "Discover how the [API name] can revolutionize your application's [insert the main function of the API, i.e., pathfinding capabilities]."</li>
    </ul>
    <p><strong>Style and Tone Instructions:</strong></p>
    <ul>
        <li><strong>Persuasive and Informative:</strong> Clearly articulate the advantages of using the API while maintaining a technical tone suitable for a developer audience.</li>
        <li><strong>Active Voice</strong> &mdash; Use active voice to make the writing more direct and engaging.</li>
        <li><strong>Feature Focus:</strong> Emphasize the capabilities and features rather than making generalized statements.</li>
        <li><strong>Bullet Point Option</strong> &mdash; Present information in either paragraph format with topic sentences or bullet points with a short summary of benefits at the beginning and end of the list.</li>
    </ul>
</div>

<div class="chat">
<p>
Nice work! You're really helpful. Now let's move on to the next section, "What you can do with the Routes API?" Again, remember that this prompt you're building will be more general than the specific Routes API, so describe the pattern, style, topic categories, and other details here.
</p>
</div>

<div class="response">
    <p><strong>"What You Can Do With This API" Section</strong></p>
    <p><strong>Context:</strong> This section provides a comprehensive overview of the API's functionalities. Aim to showcase the breadth of possibilities and inspire developers to envision potential use cases within their own projects and provide concrete examples of the API's capabilities. This section naturally follows the "Why Use" section.</p>
    <p><strong>Content Instructions:</strong></p>
    <ul>
        <li><strong>Opening Sentence:</strong> Start with a clear and engaging topic sentence that encapsulates the section's purpose: "The [API Name] empowers developers to achieve a wide range of objectives, including but not limited to:"</li>
        <li><strong>Subsequent Sections (2-4):</strong> Break down the API's functionalities into logical categories with descriptive subheaders
            <ul>
                <li><strong>Subheader:</strong> Use clear and concise subheaders to introduce each category of functionality.</li>
                <li><strong>Explanation:</strong> Under each subheader, provide 2-3 sentences that expand on the capabilities, providing specific examples of use cases for context.</li>
                <li><strong>Example structure:</strong> "[Category Name] &mdash; [Brief explanation of category]. For instance, developers can utilize the API to [specific action #1], [Specific action #2], or [specific action #3]."</li>
            </ul>
        </li>
        <li><strong>Closing Sentence:</strong> End with a forward-looking statement: "Explore the [API Name] documentation to uncover even more possibilities and unleash the full potential of this powerful tool."</li>
    </ul>
    <p><strong>Style and Tone Instructions</strong></p>
    <ul>
        <li><strong>Informative and Inspiring:</strong> Write with an enthusiastic and informative tone, highlighting the API's versatility and potential for innovation.</li>
        <li><strong>Active voice and present tense:</strong> Maintain active voice and present tense for clarity and engagement.</li>
        <li><strong>Structure and Organization:</strong> Employ clear subheaders, bullet points, or numbered lists to enhance readability. Consider the use of illustrative examples to provide context and clarity for each capability.</li>
    </ul>
</div>

<div class="chat">
<p>
Your response looks great! Now move on to the next section, "How the Routes API works." Remember that this is an overview, so while you should be detailed and specific, this "how it works" part is still very high level because it's in the overview.
</p>
</div>

<div class="response">
    <p><strong>"How [API Name] Works" Section</strong></p>
    <p><strong>Context:</strong> This section provides a high-level technical explanation of the API's underlying mechanisms without delving into intricate details, offering developers a clear understanding of the API's core processes. This section should come after the use cases section.</p>
    <p><strong>Content Instructions</strong></p>
    <ul>
        <li><strong>Opening Sentence:</strong> Start with a clear topic sentence: "Understanding the inner workings of the [API Name] is key to effective implementation" or "The [API Name] operates through a streamlined process designed for efficiency and ease of use."</li>
        <li><strong>Subsequent Sections (2-4):</strong> Divide the API's processes into 2-4 key steps or stages with descriptive subheaders.
            <ul>
                <li><strong>Distinct Methods/Endpoints:</strong> If the API provides distinct methods or endpoints (like ComputeRoute and ComputeRouteMatrix), each of these can have its own subheader.</li>
                <li><strong>Sequential Steps:</strong> If the API functions as a series of sequential steps, use these as subheaders instead.</li>
            </ul>
        </li>
        <li><strong>Subheader:</strong> Craft clear and informative subheaders for each stage or method.</li>
        <li><strong>Explanation:</strong> Under each subheader, offer 2-3 sentences outlining the step's function or how the method works. Focus on the input, processing, and output of each stage.</li>
        <li><strong>Code Example (Optional):</strong> Provide a code example (in a collapsible section or with syntax highlighting) that illustrates how to make a request for each method of the API. Ensure the code example is well-formatted and easy to understand.</li>
        <li><strong>Example Structure:</strong> "[Stage/Method Name] &mdash; [Brief explanation]. The API accepts [input], processes it using [method or technology], and returns [output]."</li>
        <li><strong>Visual Aid (Optional but Recommended):</strong> Include a simple flowchart or sequence diagram to visually represent the API's workflow.</li>
    </ul>
    <p><strong>Style & Tone Instructions</strong></p>
    <ul>
        <li><strong>Technical yet approachable:</strong> Maintain a technical tone while ensuring the content is understandable for developers with varying levels of familiarity with the subject matter.</li>
        <li><strong>Clarity and Simplicity:</strong> Focus on conveying the essence of each step without overwhelming it with excessive detail. Use clear and simple language, avoiding unnecessary jargon.</li>
        <li><strong>Active voice and present tense:</strong> Stick with active voice and present tense for a more engaging and direct tone.</li>
    </ul>
</div>

<div class="chat">
<p>
Nice work! Now move on to the next section: "Resources." 
</p>
</div>

<div class="response">
    <p><strong>"Resources" Section</strong></p>
    <p><strong>Context:</strong> The "Resources" section serves as a directory, pointing developers toward additional information and tools related to the API. It's a pivotal part of the overview, offering quick access to essential assets and should be located near the end of the overview.</p>
    <p><strong>Content Instructions:</strong></p>
    <ul>
        <li><strong>Introduction (Optional):</strong> You can choose to open this section with a brief introductory sentence, like: "The [API Name] provides a range of resources to aid developers in successful integration."</li>
        <li><strong>Resource Presentation</strong> &mdash; Present resources in an organized and accessible manner. Ideally, this should be done using a table (not possible to represent in HTML here due to format limitations, but I will describe the structure):
            <ul>
                <li><strong>Resource Name</strong> &mdash; Clearly state the name or title of the resource (hyperlinked if applicable).</li>
                <li><strong>Description</strong> &mdash; Provide a concise explanation of what the resource offers, its purpose or content, and what the developer will gain by utilizing it.</li>
                <li><strong>Format/Access</strong> &mdash; Indicate the format of the resource (e.g., JSON, XML), or how it's accessed (link to documentation, GitHub repository).</li>
            </ul>
        </li>
        <li><strong>Visual Emphasis:</strong> Consider using icons or other visual cues to distinguish different types of resources (e.g., PDF symbol for downloadable guides or a link symbol for external links).</li>
    </ul>
    <p><strong>Style and Tone Instructions:</strong></p>
    <ul>
        <li><strong>Scannable and Informative:</strong> Prioritize clarity and ease of navigation. Developers should be able to swiftly identify the resources pertinent to their needs.</li>
        <li><strong>Concise:</strong> Keep descriptions brief and focused, providing only essential information.</li>
    </ul>
</div>
<div class="chat">
    <p>Do the same for the next section, "How to use the Routes API."</p>
</div>

<div class="response">
    <p><strong>"How to Use the [API Name]" Section</strong></p>
    <p><strong>Context:</strong> This crucial section provides a roadmap for developers, guiding them through the initial steps of integrating the API. It should offer a clear, step-by-step introduction to getting started with the API, located towards the end of the overview before the resources section.</p>
    <p><strong>Content Instructions:</strong></p>
    <ol>
        <li><strong>Opening Sentence (Optional):</strong> Start with a concise and inviting opening line such as "Integrating the [API Name] into your project is a straightforward process."</li>
        <li><strong>Step-by-Step Guide:</strong> Outline the essential steps in a numbered list or ordered list with brief descriptions
            <ol>
                <li><strong>Step:</strong> Clearly state the action to be taken. Example: "Obtain API Credentials."</li>
                <li><strong>Description:</strong> Provide 1-2 sentences elaborating on the step, outlining any necessary actions: "Visit the Google Cloud Console to create a new project or select an existing one, and enable the Routes API."</li>
            </ol>
        </li>
        <li><strong>Closing Sentence (Optional):</strong> Conclude with an encouraging note: "With these initial steps complete, you're ready to start building with the [API Name]."</li>
    </ol>
    <p><strong>Style and Tone Instructions:</strong></p>
    <ul>
        <li><strong>Instructive and Encouraging:</strong> Adopt a friendly and supportive tone, guiding developers with clear, actionable instructions. Break down complex processes into manageable steps.</li>
        <li><strong>Active voice:</strong> Utilize active voice to make your instructions more direct and comprehensible.</li>
        <li><strong>Numbered list or ordered list:</strong> Use a numbered list or ordered list to emphasize the sequential nature of the steps.</li>
    </ul>
</div>

<div class="chat">
<p>Great job! Now continue on to the next section, "Available client libraries."</p>
</div>

<div class="response">
    <p><strong>"Available Client Libraries" Section</strong></p>
    <p><strong>Context:</strong> This section informs developers about the available client libraries that can simplify their interaction with the API. It typically includes a list of supported programming languages and links to the respective libraries. This section can be brief and should be located near the end of the overview.</p>
    <p><strong>Content Instructions:</strong></p>
    <ul>
        <li><strong>Introductory Sentence:</strong> Begin with a simple sentence like, "[API Name] supports a variety of client libraries to streamline your development process."</li>
        <li><strong>List of Libraries:</strong> Present the available client libraries. You can choose to do this in paragraph form, as a list, or in a table. Example of a list for the libraries:
            <ul>
                <li><strong>Programming Language:</strong> Clearly state the name of the programming language.</li>
                <li><strong>Link:</strong> If applicable, provide a hyperlink to the library's documentation or repository.</li>
            </ul>
        </li>
    </ul>
    <p><strong>Style and Tone Instructions:</strong></p>
    <ul>
        <li><strong>Informative and Direct:</strong> Keep this section brief and to the point, offering essential information without unnecessary elaboration.</li>
    </ul>
</div>

<div class="chat">
<p>
Looking great! Now keep going with the last section, "What's Next."
</p>
</div>

<div class="response">
    <p><strong>Prompt for API Overview &mdash; "What's Next" Section</strong></p>
    <p><strong>Context:</strong> Located at the very end of the API Overview, this section serves as a signpost, directing developers to additional resources, related APIs, or deeper dives into specific functionalities.</p>
    <p><strong>Content Instructions:</strong></p>
    <ul>
        <li><strong>Heading:</strong> This section is typically titled "What's Next" or "Next Steps."</li>
        <li><strong>Links:</strong> Provide 3-5 relevant links to other documentation pages. This could include tutorials, in-depth guides, reference documentation, or related APIs.
            <ul>
                <li><strong>Link Descriptions:</strong> Give each link a brief description so the developer knows what they will find by clicking the link. Example: "Dive deeper into available route options to fine-tune routes based on your specific use case."</li>
            </ul>
        </li>
    </ul>
    <p><strong>Style and Tone:</strong></p>
    <ul>
        <li><strong>Inviting and Concise:</strong> Maintain the established concise and informative tone while enticing developers to further explore the API's capabilities.</li>
    </ul>
</div>

{% include ads.html %}

## Consolidated prompt {#consolidated_prompt}

Now that we've reverse engineered the prompt, let's pull all of this together into a consolidated prompt that we can use. Note that before trying this, gather up as much source material as you can find, as described in the [Prerequisites](/ai/prompt-engineering-populating-documentation-templates.html#prerequisites) in [Populating documentation templates using AI](/ai/prompt-engineering-populating-documentation-templates.html). Without abundant, accurate source material, there's a higher risk that the AI will hallucinate. I've added some additional instructions here to try to keep the AI's content generation rooted in the source material. I've also adjusted some of the reverse engineerined instructions to eliminate minor problems in the prompt and get a better outcome.

<div class="chat">
    <p>You're a technical writer creating an API overview document for a developer audience. The API overview provides a high-level description of the API and follows a standard template with sections that I'll carefully define for you.</p>
    <p>You'll go section by section as you write this, carefully following a defined structure and style that I specify, rather than writing the whole overview at once. Additionally, this is of paramount importance: you should draw your information from the <span class="pVar">{Source Material}</span> I provide. Do not invent or guess information if it doesn't exist in the source material. Accuracy based on information from the <span class="pVar">{Source Material}</span> is the highest priority. If the template calls for information not in the <span class="pVar">{Source Material}</span>, just write something like "Information not found in source." Then I'll go back to those sections later and fill in the details.</p>
    <p>So you can see the big picture of the shape of the API overview, here's a sample overview from another API. This is just an example.</p>
    <p><span class="pVar">{Sample API Overview}</span></p>
    <p>[paste in the content from https://developers.google.com/maps/documentation/routes/overview]</p>
    <p>Here's the source material from which you should get your information and facts:<br><br><span class="pVar">{Source Material}</span></p>
    <p>[paste in all the content you can find &mdash; reference material, one-pagers, engineering design docs, product definition docs, etc.]</p>
    <p><span class="pVar">{Instruction}</span></p>
    <p>Now let's start with the introductory section. Here's the template you should follow. Populate this template with information from the <span class="pVar">{Source Material}</span>.</p>
    <p><strong>Introductory Section</strong></p>
    <p><strong>Context:</strong> You're writing a concise and informative overview of a technical API for developers. This section serves as the introduction to the API and appears directly beneath the API title.</p>
    <p><strong>Content Instructions:</strong></p>
    <ul>
        <li><strong></strong> Begin with a succinct definition of the API. Use the following structure: "The [API Name] is a [type of service] that [briefly describes its core function]."
            <ul>
                <li>Example: "The Routes API is a service that calculates optimal routes between locations based on various factors such as transportation mode and real-time traffic."</li>
            </ul>
        </li>
        <li><strong></strong> Elaborate on the primary benefit or use case for the API. Highlight its value proposition and the context in which someone would use it.
            <ul>
                <li>Example: "With the Routes API, developers can provide users with accurate and efficient directions tailored to their specific needs."</li>
            </ul>
        </li>
    </ul>
    <p><strong>Style and tone instructions:</strong></p>
    <ul>
        <li><strong>Technical but Aacessible</strong> &mdash; Avoid overly complex jargon, but ensure accurate technical terminology.</li>
        <li><strong>Concise and informative</strong> &mdash; Every sentence should deliver clear value.</li>
        <li><strong>Active voice and present tense:</strong> Use active voice and write in the present tense.</li>
        <li><strong>Sentence length</strong> &mdash; Aim for sentences between 10-20 words for maximum clarity.</li>
        <li><strong>Target audience</strong>: Keep in mind that your audience consists primarily of developers.</li>
        <li><strong>Point of view</strong>: Speak directly to developers using the second-person ("you") point of view.</li>
    </ul>
</div>

At this point, how the AI responds really depends on which service you're using and how capable it is. More advanced models might ask for more clarification before jumping into the task, especially if some details are fuzzy in the source material (such as conflicting names for the API). The pattern here is a general back-and-forth pattern, not one that you will likely follow verbatim.

After the AI responds, follow it with this:

<div class="chat">
    <p>Nice job! I really like how detailed you are, and how you're sticking with the information in the source material. Accuracy is highly important to me, as each detail in this documentation must be correct. Your tone and style are just right &mdash; clear and direct, but also friendly and detailed for a developer audience. Now proceed to the next section, "Why use the API." Here's the template you should follow. Populate this with information from the <span class="pVar">{Source Material}</span>.</p>
    <p><strong>"Why Use This API" Section</strong></p>
    <p><strong>Context:</strong> Building upon the introduction, this section aims to convince developers of the API's value proposition. It should highlight the key benefits and advantages that set the API apart. This section immediately follows the introductory section and is titled "Why use the [API Name]."</p>
    <p><strong>Content Instructions:</strong></p>
    <ul>
        <li><strong>Opening Sentence:</strong> Begin with a clear topic sentence that indicates the section's purpose. Example: "The [API Name] lets you [insert broad purpose of the API]."</li>
        <li><strong>Subsequent Sentences (3-5):</strong> Delve into specific advantages. Use the following structures:
            <ul>
                <li>"[Benefit] &mdash; Elaborate on the benefit." Example: "Improved accuracy &mdash; Get real-time data for up-to-the-minute route information."</li>
                <li>"[Feature] allows developers to [outcome]." Example: "Customizable routing profiles lets you tailor routes based on specific criteria like vehicle type or environmental considerations."</li>
                <li>"The API lets you [specific capability of the API]."</li>
            </ul>
        </li>
    </ul>
    <p><strong>Style and tone instructions:</strong></p>
    <ul>
        <li><strong>Persuasive and informative:</strong> Clearly articulate the advantages of using the API while maintaining a technical tone suitable for a developer audience.</li>
        <li><strong>Active voice:</strong> Use active voice to make the writing more direct and engaging.</li>
        <li><strong>Feature focus:</strong> Emphasize the capabilities and features rather than making generalized statements.</li>
        <li><strong>Bullet points:</strong> Pepper in bullet points now and then to make the content easier to read.</li>
        <li><strong>Straightforward language:</strong> Use straightforward language and avoid business cliches including words like "leverage," "harness," "innovative," "robust." Use few adjectives if any, as this is technical documentation meant to instruct, not persuade.</li></strong>
    </ul>
</div>

Note: The sentence case and grammar in your prompt might influence the AI's writing style. For example, you'll notice I'm using sentence case. Originally, the prompt used title case. Some LLMs will imitate your grammar in the response.

After the AI responds, follow it with this:

<div class="chat">
    <p>Nice work! You're really smart and articulate. I especially like how you're structuring the information for easy readability. Now let's move on to the next section, "What you can do with this API"? Here's the template you should follow. Populate this with information from the <span class="pVar">{Source Material}</span>.</p>
    <p><strong>"What You Can Do With This API" Section</strong></p>
    <p><strong>Context:</strong> This section provides a comprehensive overview of the API's functionalities. Aim to showcase the breadth of possibilities and inspire developers to envision potential use cases within their own projects and provide concrete examples of the API's capabilities. This section naturally follows the "Why Use" section.</p>
    <p><strong>Content Instructions:</strong></p>
    <ul>
        <li><strong>Opening Sentence:</strong> Start with a clear and engaging topic sentence that encapsulates the section's purpose: what the API lets developers achieve."</li>
        <li><strong>Subsequent Sections (2-4):</strong> Break down the API's functionalities into logical categories with descriptive subheadings.
            <ul>
                <li><strong>Subheading:</strong> Use clear and concise subheadings to introduce each category of functionality.</li>
                <li><strong>Explanation:</strong> Under each subheading, provide 2-3 sentences that expand on the capabilities, providing specific examples of use cases for context.</li>
                <li><strong>Example structure:</strong> "[Category Name] &mdash; [Brief explanation of category]. For instance, you can use the API to [specific action #1], [Specific action #2], or [specific action #3]."</li>
            </ul>
        </li>
    </ul>
    <p><strong>Style and tone instructions</strong></p>
    <ul>
        <li><strong>Informative and inspiring:</strong> Write with an enthusiastic and informative tone, highlighting the API's versatility and potential for innovation.</li>
        <li><strong>Active voice and present tense:</strong> Maintain active voice and present tense for clarity and engagement. Avoid using the word "will" or any future tense.</li>
        <li><strong>Structure and organization:</strong> Employ clear subheading, bullet points, or numbered lists to enhance readability.</li>
        <li><strong>Examples:</strong>Consider the use of examples to provide context and clarity for each capability.</li>
    </ul>
</div>

Notice that I've added a lot of style and tone instructions. Do you think the AI will follow these instructions? Some can, some can't. You might find some style rules are disregarded. You could always do a style pass later, when you enter an editorial phase.

After the AI responds, follow it with this:

<div class="chat">
    <p>Your response looks great! I don't want to make you blush, but you have natural talent as a technical writer. Really! You're sticking to the information in the <span class="pVar">{Source Material}</span> and I like it. You're also writing with clarity and straightforwardness in a pleasing-to-read way. Now let's move on to the next section, "How the [API name] works." Remember that this is an overview, so while you should be detailed and specific, this "How it works" part is still very high level as it is in the overview. Here's the template you should follow. Draw upon the information in the <span class="pVar">{Source Material}</span> for your content.</p>
    <p><strong>"How the [API Name] Works" section</strong></p>
    <p><strong>Context:</strong> This section provides a high-level technical explanation of the API's underlying mechanisms without delving into intricate details, offering developers a clear understanding of the API's core processes. This section should come after the use cases section.</p>
    <p><strong>Content instructions</strong></p>
    <ul>
        <li><strong>Subsequent sections (2-4):</strong> Divide the API's processes into 2-4 key steps or stages with descriptive subheadings.
            <ul>
                <li><strong>Distinct methods/endpoints:</strong> If the API provides distinct methods or endpoints (like ComputeRoute and ComputeRouteMatrix), each of these can have its own subheading.</li>
                <li><strong>Sequential steps:</strong> If the API functions as a series of sequential steps, use these as subheaders instead.</li>
            </ul>
        </li>
        <li><strong>Subheading:</strong> Craft clear and informative subheaders for each stage or method.</li>
        <li><strong>Explanation:</strong> Under each subheader, offer 2-3 sentences outlining the step's function or how the method works. Focus on the input, processing, and output of each stage.</li>
        <li><strong>Code example (optional):</strong> Provide a code example (in a collapsible section or with syntax highlighting) that illustrates how to make a request for each method of the API. Ensure the code example is well-formatted and easy to understand.</li>
        <li><strong>Example structure:</strong> "[Stage/Method Name] &mdash; [Brief explanation]. The API accepts [input], processes it using [method or technology], and returns [output]."</li>
    </ul>
    <p><strong>Style and tone instructions</strong></p>
    <ul>
        <li><strong>Technical yet approachable:</strong> Maintain a technical tone while ensuring the content is understandable for developers with varying levels of familiarity with the subject matter.</li>
        <li><strong>Clarity and simplicity:</strong> Focus on conveying the essence of each step without overwhelming it with excessive detail. Use clear and simple language, avoiding unnecessary jargon.</li>
        <li><strong>Active voice and present tense:</strong> Stick with active voice and present tense for a more engaging and direct tone.</li>
    </ul>
</div>

If your source material includes reference documentation, the AI will probably do well in this section. If not, you should seek to include it here. I usually start API projects by generating the reference documentation first, as this material tends to be informative about the API's capabilities.

After the AI responds, follow it with this:

<div class="chat">
    <p>Nice work! I'm really digging this content and your Strunk-and-White-like style. Maintaining a sense of simple English grammar really helps developers from all backgrounds understand the material. Now let's move on to the next section: "Resources." Here's the template you should follow. Populate this with information from the <span class="pVar">{Source Material}</span>.</p>
    <p><strong>"Resources" section</strong></p>
    <p><strong>Context:</strong> The "Resources" section serves as a directory, pointing developers toward additional information and tools related to the API. It's a pivotal part of the overview, offering quick access to essential assets and should be located near the end of the overview.</p>
    <p><strong>Content Instructions:</strong></p>
    <ul>
        <li><strong>Introduction (optional):</strong> You can choose to open this section with a brief introductory sentence, like: "The [API Name] provides a range of resources to aid developers in successful integration."</li>
        <li><strong>Resource presentation:</strong> Present resources in an organized and accessible manner. This should ideally be represented with a table (note: actual table syntax is not used here due to format limitations, but would typically include the use of table tags in HTML). The content should include:
            <ul>
                <li><strong>Resource name:</strong> Clearly state the name or title of the resource. Get this from the API's reference documentation if possible.</li>
                <li><strong>Description:</strong> Provide a concise explanation of what the resource offers, its purpose or content, and what the developer will gain by using it.</li>
                <li><strong>Format/access:</strong> Indicate the format of the resource (e.g., JSON, XML), or how it's accessed.</li>
            </ul>
        </li>
    </ul>
    <p><strong>Style and tone instructions:</strong></p>
    <ul>
        <li><strong>Scannable and informative:</strong> Prioritize clarity and ease of navigation. Developers should be able to identify the resources relevant to their needs.</li>
        <li><strong>Concise:</strong> Keep descriptions brief and focused, providing only essential information.</li>
    </ul>
</div>

After the AI responds, follow it with this:

<div class="chat">
    <p>I like it! Now do the same for the next section, "How to use the Routes API." Remember, if the information doesn't exist in the <span class="pVar">{Source Material}</span>, don't make it up. Just either skip that section or write "Not enough information in the source." Here's the template you should follow. Populate this with information from the <span class="pVar">{Source Material}</span>.</p>
    <p><strong>"How to Use the [API Name]" Section</strong></p>
    <p><strong>Context:</strong> This crucial section provides a roadmap for developers, guiding them through the initial steps of integrating the API. It should offer a clear, step-by-step introduction to getting started with the API, located towards the end of the overview before the resources section.</p>
    <p><strong>Content instructions:</strong></p>
    <ol>
        <li><strong>Opening sentence (optional):</strong> Start with a concise and inviting opening line such as "Integrating the [API Name] into your project involves several steps."</li>
        <li><strong>Step-by-step guide:</strong> Outline the essential steps in a numbered list or ordered list with brief descriptions.
            <ol>
                <li><strong>Step:</strong> Clearly state the action to be taken. Example: "Obtain API Credentials."</li>
                <li><strong>Description:</strong> Provide 1-2 sentences elaborating on the step, outlining any necessary actions: "Visit the Google Cloud Console to create a new project or select an existing one, and enable the Routes API."</li>
            </ol>
        </li>
        <li><strong>Closing sentence (optional):</strong> Conclude with an encouraging note: "With these initial steps complete, you're ready to start building with the [API Name]."</li>
    </ol>
    <p><strong>Style and tone instructions:</strong></p>
    <ul>
        <li><strong>Instructive and encouraging:</strong> Adopt a friendly and supportive tone, guiding developers with clear, actionable instructions. Break down complex processes into manageable steps.</li>
        <li><strong>Active voice:</strong> Use active voice to make your instructions more direct and comprehensible.</li>
        <li><strong>Numbered list or ordered list:</strong> Use a numbered list or ordered list to emphasize the sequential nature of the steps.</li>
    </ul>
</div>

After the AI responds, follow it with this:

<div class="chat">
    <p>Great job! You're a natural. Would you like to come join our technical writing team? I'm being serious (wink wink). Now continue on to the next section, "Available client libraries." Here's the template you should follow. Populate this with information from the <span class="pVar">{Source Material}</span>.</p>
    <p><strong>"Available Client Libraries" Section</strong></p>
    <p><strong>Context:</strong> This section informs developers about the available client libraries that can simplify their interaction with the API. It typically includes a list of supported programming languages and links to the respective libraries. This section can be brief and should be located near the end of the overview.</p>
    <p><strong>Content Instructions:</strong></p>
    <ul>
        <li><strong>Introductory Sentence:</strong> Begin with a simple sentence like, "[API Name] supports a variety of client libraries to streamline your development process."</li>
        <li><strong>List of Libraries:</strong> Present the available client libraries. You can choose to do this in paragraph form, as a list or in a table with columns for:
            <ul>
                <li><strong>Programming Language:</strong> Clearly state the name of the programming language.</li>
                <li><strong>Link:</strong> If applicable, provide a hyperlink to the library's documentation or repository.</li>
            </ul>
        </li>
    </ul>
    <p><strong>Style and tone instructions:</strong></p>
    <ul>
        <li><strong>Informative and direct:</strong> Keep this section brief and to the point, offering essential information without unnecessary elaboration.</li>
    </ul>
</div>

After the AI responds, follow it with this:

<div class="chat">
<p>Although we were careful to follow a defined template and structure, now let's examine whether we missed anything that should belong in the overview. Are there any details or characteristics that you think should belong in this API overview that we skipped over? Any important high-level information that developers using this API should know? Provide it here.</p>
</div>

If the AI identifies missing information, consider also asking where it would best fit into the draft.

## Consolidate the responses

Consolidate the responses into a single API overview, then apply the [fact checking prompt] described in [Populating documentation templates using AI](/ai/prompt-engineering-populating-documentation-templates.html#verifying_accuracy).

## Other considerations

### Prompt refinement

I used this prompt to write two API overviews. It worked pretty well, but I found myself wondering about a few things:

* Why was the LLM writing such a marketingesque sentence in a specific place?
* Why was the LLM using title case everywhere, and omitting the Oxford comma in lists?
* Why was the LLM repeating itself in different sections?
* Why was the LLM using "allows" so frequently?

Later, I realized that all of these problems stemmed from the specific instruction in the template, which was reverse engineered from the sample API overview. So I started with a problematic overview and somehow incorporated those errant instructions into the recipe for future API overviews!

Here's the lesson I learned: If the output doesn't look right, look at the prompt and see if you're misleading the LLM. Based on a few of these issues, I've corrected the above template.

In fact, as I've gone the rounds with this template, I now see how some sections are problematic. "Why use the API" seems to overlap with "What you can do with the API". Don't both sections essentially answer the same question? This is where a highly structured template might need more refinement and distinction. "Why use the API" is more of a description of the user context and problem to solve, whereas "What you can do with the API" is more of a list of specific functions/methods it offers. I'm not sure the reverse engineered template makes that clear, so I should probably adjust it more.

### Pattern-defying prompts

This prompt follows a highly structured process. This might not work well if the source material doesn't fit well into the template. If that's the case, you'll want to keep things more general. In fact, I'm leaning more toward the idea that a general template would allow the LLM to better fit and shape the source material to the principle of the API overview. I have more experimentating to do to confirm this.

Also, as you can see from this example, this API overview is highly specific to the structure implemented in the Google Maps documentation. It's not the same overview structure as you might find in the Google Cloud docs, or the Amazon Cloud docs, or in the Microsoft Azure docs. You'll want to find your company's own pattern and craft the prompt based on it rather than using another company's documentation. More than any other topic, the API overview content follows a specific and unique pattern, especially when you have many APIs in a developer portal.

### Layered approaches

The approach I've described isn't the only approach you could take. You could also break down the content creation process into multiple layers or stages. For example, rather than trying to provide stylistic instruction from the start and within each section, you could apply the rules of style in a second pass. This might allow you to layer on the complexity rather than providing a prompt that's too difficult for an AI to follow all at once. It might be too much to require an LLM to create content and also confirm to a specific style at the same time. I haven't tried this layered approach, but it could be an equally valid technique.

### Ethical considerations

I should at least acknowledge some ethical considerations in reverse engineering prompts. In this example, I've assumed that you're reverse engineering a prompt for a document that's a good example of your own company's documentation. 

If you don't have any company documentation to follow, try browsing the winning entries in the [Pronovix DevPortal Awards](https://devportalawards.org/winners). Find one you like and adopt it as your style. More than any other documentation type, API overviews follow a wide variety of styles and approaches. Is it unethical to highly imitate the style, down to the sentence level, as I've done in this prompt? I doubt it. It's a best practice to imitate best practices. 

If this were an artistic/creative domain, such as reverse engineering a novel or short story, then yes, this approach would raise red flags. But most technical documentation follows formulaic templates, has a predictable structure and style, and is rarely bylined with specific authorship. Further, we're just following a pattern, not reproducing similar thematic content.

### Emotional priming

You've probably noticed the overflowing praise I've peppered in after each response. This emotional priming serves two purpose: First, AI tools do better when they're emotionally primed, for some reason. Pointing out what the AI tool is doing right can help the AI tool make similar good decisions in the upcoming prompts. (Not too unlike human-to-human praise.) Second, it makes me feel better to provide praise like this. If you start pointing out what others are doing right, you might find your brain doing the same for yourself. You'll have a much better experience interacting with AI when you pepper in praise than if you adopt a grumpy, bossy tone.
