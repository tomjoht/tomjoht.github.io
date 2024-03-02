---
title:  "Populating documentation templates using AI"
permalink: ai/prompt-engineering-populating-documentation-templates.html
course: "AI-powered API documentation"
sidebar: sidebar_ai
section: prompt-engineering
path1: ai/prompt-engineering.html
last-modified: 2024-03-02
---
{% comment %}
{% include coffeeshopbook.html %}
{% endcomment %}


In this tutorial, you'll learn how to use AI to populate documentation templates with information that you've gathered. This technique can be a quick way to get an initial draft of documentation, which you can then edit and review with SMEs.


## Prerequisites

Before you start, you'll need three things:


### A large body of accurate information

Gather up all the documents related to the API or features you're documenting, including meeting notes. If you don't have this information, you'll need to interview the product team to gather it. See [Creating high-fidelity, thematically organized notes from engineering meetings using AI](/blog/summarizing-meeting-notes-amplifying-visibility) for details on this approach. You might need to interview half a dozen team members to gather information, if it doesn't exist. From the myriad project documents you can find (one-pagers, product definitions, engineering design documents, business analysis docs, and more), quickly glance through and remove any information that isn't accurate. For example, in engineering design docs, the teams often explore alternative approaches that aren't ever implemented. You can remove those sections.

### Documentation templates

You'll need documentation templates that match your company's existing structure and style. If you're working for a large company with many existing docs, you should follow common patterns in other docs. If you don't have to match an existing structure and style, you can create your own templates, perhaps leveraging them from the [Good Docs project](https://thegooddocsproject.dev/) or by reverse engineering prompts from examples of good documentation. In this tutorial, I'll use a template for an API overview. In addition to template sections, your template should ideally include example content for each section.

### A powerful AI tool

You'll need access to an generative AI tool that accepts a large token input and is fairly powerful. The AI tools available to you vary by company. See the information security policies at your company for which tools you're allowed to use company data with. In general, use LLMs with high token inputs.

## The prompt

Let's get started with the prompt.

<div class="chat">
<p>
You're a technical writer creating API documentation for developers. As a technical writer, you write with both clarity and accuracy, following documentation style standards common in technical style guides. You've gathered a lot of source material <span class="pVar">{Source Material}</span> in the form of engineering docs, project designs, and more. You've also gathered information from meetings with the project team and have included transcripts of the meetings in <span class="pVar">{Source Material}</span> as well. 
</p>
<p>
You'll draw upon this <span class="pVar">{Source Material}</span> to populate a documentation template. A documentation template just specifies a specific pattern for information, putting information into a specific order and arrangement. In this case, you'll create an API overview, populating the API documentation template based on information in the <span class="pVar">{Source Material}</span>. You'll proceed section by section through the template, with me prompting you with the template sections and including an example each time. 
</p>
<p>
Stick as closely as possible to the <span class="pVar">{Source Material}</span> for your information. If the information doesn't exist in the <span class="pVar">{Source Material}</span>, don't invent information. Instead, write "No information available in source material" for that part of the template. 
</p>
<p>
Sounds good? Ready to begin? Here's the first section of the API overview template:
</p>
<p><span class="pVar">{Template for section 1}</span></p>
<p>
<strong>Section 1: API Name, Description and Visual Aid</strong>
</p>
<ul>
<li><strong>API Name </strong> &mdash; Clear and concise name of the API</li>
<li><strong>Description</strong> &mdash; A succinct overview of the API, its primary function, core benefits and value it offers to developers. This section should also clearly state the latest API version.</li>
<li><strong>Visual Aid </strong> &mdash; A diagram, workflow or other visual asset that provides a quick understanding of the API's architecture, components or a common use case.</li>
</ul>
<p>Here's an example:</p>
<p><span class="pVar">{Example for section 1}</span></p>
<p><strong>API Name:</strong> RetailGraph API</p>
<p><strong>Description:</strong> The RetailGraph API helps you understand your retail data better. Using special database technology, it shows you how products, customers, and sales information are connected.  For example, you can see which products are often bought together, how customers move through your website or store, and who your most influential customers are. This lets you make smarter decisions about marketing and inventory.</p>
<p><strong>Visual Aid:</strong> [Image] &mdash; A simplified visualization of a graph database, highlighting nodes representing customers, products and interactions. Arrows indicate the relationships and connections that can be queried and analyzed using the RetailGraph API.</p>
<p><span class="pVar">{Instructions for section 1}</span></p>
<p>Now draw upon the <span class="pVar">{Source Material}</span> and populate this first section of the template &mdash; API Name, Description and Visual Aid. For the image, just put [Image] instead of trying to actually create an image.</p>
<p>Here's the source material:</p>
<p><span class="pVar">{Source Material}</span></p>
<p>[Paste in all your source material here]</p>
</div>

AI responds ...

<div class="chat">
<p>
Great! Strive for richer detail if possible. And as always, stay accurate to the <span class="pVar">{Source Material}</span>. Now let's move on to section 2. Here's the template for section 2:
</p>
<p>
<span class="pVar">{Template for section 2}</span>
</p>
<p>
<strong>Section 2: Getting Started</strong>
</p>
<p>
<strong>Before You Begin </strong> &mdash; Essential information developers need before making their first call. This includes authentication methods (API keys, OAuth etc) with details on how to obtain and use them, base URLs for different API resources, rate limits, usage quotas and billing information. Security best practices for interacting with the API should also be highlighted.
</p>
<p>
<span class="pVar">{Example for section 2}</span>
</p>
<p>
Here's an example:
</p>
<p>
<strong>Before You Begin</strong>
</p>
<p>
To start using the RetailGraph API, you will need to:
</p>
<ul>
<li><strong>Obtain API Credentials:</strong> Generate your unique API key and secret from the RetailGraph Developer Portal. The API key will be included in the header of every request and the secret should be stored securely.</li>
<li><strong>Base URL:</strong> All requests should be made to the following base URL: <code>https://api.retailgraph.com/v2</code></li>
<li><strong>Authentication:</strong> RetailGraph uses API Key authentication. Include your API key in the header of every request like so: <code>x-api-key: YOUR_API_KEY</code></li>
<li><strong>Rate Limits:</strong> To ensure optimal performance for all our users, RetailGraph enforces rate limits. You can perform up to 1000 requests per minute. See our developer portal for details on how we handle rate limiting</li>
</ul>
<p>
<span class="pVar">{Instructions for section 1}</span>
</p>
<p>
Now draw upon the <span class="pVar">{Source Material}</span> and populate this second section of the template &mdash; Section 2: Getting Started.
</p>
<p>
AI responds ...
</p>
<p>
Nice work! You're really amazing. I like how you've added so much detail and how you've followed the structure I gave you. You're doing a really good job! Now let's keep going with the third section. Here's the template:
</p>
<p>
<span class="pVar">{Template for section 3}</span>
</p>
<p>
<strong>Section 3: Key Capabilities and Use Cases</strong>
</p>
<ul>
<li><strong>Key Capabilities &mdash; </strong>A bulleted list highlighting the API's main functions. Each capability should be briefly explained to give developers a quick grasp of the potential uses of the API</li>
<li><strong>Use Cases &mdash; </strong>Concrete, practical examples of how the API can be applied in different business scenarios. These should be written with the target audience's understanding and knowledge in mind</li>
</ul>
<p>
<span class="pVar">{Example for section 3}</span>
</p>
<p>
Here's an example:
</p>
<p>
<strong>Key Capabilities:</strong>
</p>
<ul>

<li><strong>Product Relationship Analysis:</strong> Identify products frequently purchased together, revealing opportunities for cross-selling and promotions, or those which are commonly returned together, highlighting potential issues with quality or compatibility.</li>
<li><strong>Customer Journey Mapping:</strong> Visualize the steps customers take leading up to a purchase, enabling you to optimize marketing campaigns and the sales funnel.</li>
<li><strong>Influencer Identification:</strong> Discover customers with a substantial impact on others' buying decisions, helping you develop targeted influencer marketing strategies.</li>
<li><strong>Trend Visualization:</strong> Identify and explore emerging sales patterns and trends through graph-powered analytics enabling data-driven decision making.</li>
</ul>
<p>
<strong>Use Cases:</strong>
</p>
<ul>
<li><strong>E-commerce Recommendations:</strong> Provide personalized product recommendations in real-time to enhance customer experience and boost sales.</li>
<li><strong>Customer Segmentation</strong>: Group customers based on their purchasing behaviours, demographics and preferences for targeted marketing campaigns.</li>
<li><strong>Fraud Detection</strong> Identify unusual patterns of behaviour in your transactional graph which may indicate fraudulent activity.</li>
</ul>
<p>
<span class="pVar">{Instructions for section 3}</span>
</p>
<p>
Now draw upon the <span class="pVar">{Source Material}</span> and populate this third section of the template &mdash; Section 3 &mdash; Key Capabilities and Use Cases.
</p>
</div>

AI responds...

<div class="chat">
<p>
It's looking good! Nice job. I especially like that you conform to technical style by being accurate, plain, and concise in the language. I also like the bulleted lists and other structures that make it easy to read this information. Way to go! Now let's move on to the next section. Here's the template for section 4:
</p>
<p>
<span class="pVar">{Template for section 4}</span>
</p>
<p>
<strong>Section 4: Technical Details</strong>
</p>
<ul>

<li><strong>Endpoints</strong> &mdash; A well-structured summary of all available endpoints, the HTTP methods associated with them and the expected data formats for requests and responses. Examples of both successful and error responses should be included, potentially with links to a Postman collection.</li>
<li><strong>Error Handling</strong> &mdash; Clear guidance for developers on how to handle errors. A list of potential error codes with their meanings and suggested resolutions, as well as the structure of error responses.</li>
<li><strong>Additional Considerations</strong> &mdash; This section provides additional technical specifications like available SDKs, code examples in various programming languages, pagination details, API versioning and the API's deprecation policy.</li>
</ul>
<p>
<span class="pVar">{Example for section 4}</span>
</p>
<p>
Here's an example:
</p>
<p>
<strong>Endpoints</strong>
</p>
<ul>
<li><strong>Get Product Relationships</strong> &mdash; <code>GET https://api.retailgraph.com/v2/products/{productID}/relationships</code> &mdash; returns products frequently bought or returned with the specified product ID. Request body should be formatted as JSON, example response:

<pre class="prettyprint">{
    "relationships" : [
        {
            "productId": "B00123",
            "relationshipType" : "frequently_bought_together",
            "strength" : 0.8
        }
    ]
}
</pre>
</li>
<li><strong>Get Customer Journey</strong> &mdash; <code>GET https://api.retailgraph.com/v2/customers/{customerID}/journey</code> &mdash; Visualizes the customer journey as a series of nodes and relationships.</li>
<li><strong>Identify Influencers</strong> &mdash; <code>GET https://api.retailgraph.com/v2/influencers</code> Returns a list of customers identified as influencers based on their network centrality and purchase history.</li>
</ul>
<p>
<strong>Error Handling</strong>
</p>
<p>
RetailGraph uses conventional HTTP response codes to indicate the outcome of an API request. For a full list of error codes see [Error Codes].
</p>
<p>
<strong>Additional Considerations</strong>
</p>
<p>
The RetailGraph API supports pagination, versioning and offers SDKs for Python, Javascript and Java. See [Pagination and versioning] for more details.
</p>
<p>
<span class="pVar">{Instructions for section 4}</span>
</p>
<p>
Now draw upon the <span class="pVar">{Source Material}</span> and populate this fourth section of the template: Section 4 &mdash; Technical Details.
</p>
</div>

AI responds...

<div class="chat">
<p>
Nice work. I like the way you draw upon the <span class="pVar">{Source Material}</span> for the information. Accuracy is really important to me. Above all else, I want users to have credible information. Let's keep going with the rest of the template. The following is the template for section 5.
</p>
<p>
<span class="pVar">{Template for section 5}</span>
</p>
<p>
<strong>Section 5: Developer Resources</strong>
</p>
<ul>
<li><strong>Tools</strong> &mdash; A summary of the different ways that developers can interact with the API, that is, via the console, CLI, SDKs or by making direct requests.</li>
<li><strong>Support</strong> &mdash; Information on where and how to seek help when using the API such as support channels, community forums, Stack Overflow, issue trackers, and feedback channels.</li>
<li><strong>Additional Resources</strong> &mdash; A collection of links to additional documentation like tutorials, quickstarts, blog posts and other pertinent materials.</li>
</ul>
<p>
<span class="pVar">{Example for section 5}</span>
</p>
<p>
Here's an example:
</p>
<p>
<strong>Tools</strong>
</p>
<ul>
<li><strong>RetailGraph API Console:</strong> Experiment with API requests directly in your browser through our interactive API console, no setup required!</li>
<li><strong>SDKs</strong> Integrate the RetailGraph API seamlessly into your applications using our well documented SDKs for Python, Javascript and Java.</li>
<li><strong>RetailGraph CLI</strong> For developers who prefer the command line, our CLI offers powerful features for interacting with the API.</li>
</ul>
<p>
<strong>Support</strong>
</p>
<ul>
<li><strong>RetailGraph Developer Portal</strong> &mdash; Your hub for extensive documentation, tutorials, and community resources.</li>
<li><strong>Community Forums:</strong> Engage with fellow developers and our team through our forums to seek assistance, share insights and ask questions.</li>
<li><strong>Github Discussions</strong> Raise any issues or feature requests directly with our engineering team.</li>
</ul>
<p>
<strong>Additional Resources</strong>
</p>
<ul>
<li><strong>RetailGraph Blog</strong> &mdash; Stay updated with the latest API developments, use cases, and best practices.</li>
</ul>
<p><span class="pVar">{Instructions for section 5}</span></p>
<p>
Now draw upon the <span class="pVar">{Source Material}</span> and populate this fifth section of the template: Section 5 &mdash;  Developer Resources. Again, if the information doesn't exist in the <span class="pVar">{Source Material}</span>, don't invent information. Instead, write "No information available in source material."
</p>
</div>

AI responds...

<div class="chat">
<p>Is there any other material in the <span class="pVar">{Source Material}</span> that wasn't part of the previous templates that you think might be a good idea to include in the API overview?</p>
</div>

## Verifying accuracy

After you make your way through the entire template, you need to check for accuracy. However, this is the tricky part. How do you know if it's accurate or not? Unless you've read through the source material, you probably won't know. Follow these steps to review the content for accuracy:

### 1. Apply an accuracy check with another AI session

Start a new AI session and use a prompt like this:

<div class="chat">
<p>
You are an expert fact-checker. Your task is to ensure the accuracy of the {Documentation}.  The <span class="pVar">{Source Material}</span> is the authoritative source of truth.
</p>

<p><strong>Identify Errors:</strong> Carefully compare the<span class="pVar">{Documentation}</span> against <span class="pVar">{Source Material}</span>. Look for the following types of errors:</p> 
<ul>
<li><strong>Factual Errors:</strong> Any statements that contradict information in <span class="pVar">{Source Material}</span>.</li>
<li><strong>Invented Information (Hallucinations):</strong> Details or concepts not explicitly present in <span class="pVar">{Source Material}</span>.</li>
<li><strong>Omissions:</strong> Important information from <span class="pVar">{Source Material}</span> missing from <span class="pVar">{Documentation}</span>.</li>
<li><strong>Logical inconsistencies:</strong> Contradictions or internal inconsistencies within the <span class="pVar">{Documentation}</span>.</li> 
</ul>

<p><strong>Provide Evidence:</strong> For each error you identify, do the following:</p>
<ul>
<li>Cite the specific section within <span class="pVar">{Documentation}</span> where the error occurs.</li>
 <li>If possible, provide a quotation from the <span class="pVar">{Source Material}</span> that either refutes the error or highlights the missing information.</li>
 <li>Offer a possible correction or suggestion for improved accuracy.</li> 
</ul>

<p><strong>Consider External Resources:</strong> If you're unsure whether something is accurate, consult reliable external sources [include a list of pre-approved sources here, if applicable].</p>

<p>
<strong>Example to Get You Started:</strong>
</p>
<p>
Let's say the <span class="pVar">{Documentation}</span> includes a statement like "The API supports real-time data streaming." If the <span class="pVar">{Source Material}</span> makes no mention of real-time capabilities, this would be an error (likely a hallucination).
</p>

<p>Here's the <span class="pVar">{Documentation}</span> </p>

<p>[Paste the documentation]</p>

<p>Here's the <span class="pVar">{Source Material}</span> </p>

<p>[Paste the source material]</p>
</div>

Keep in mind that you can't necessarily trust the AI's response. It's like listening to a liar who says he or she isn't lying. Sometimes an LLM might also invent a discrepancy that isn't actually a discrepancy. However, this accuracy check is relatively easy to do and might be a way to flag possible inaccuracies, especially if you want an easy way to highlight potential grey areas for others to focus on.

### 2. Read the source material 

Read through the source material to confirm the AI's output. This is likely time-consuming and tedious if you're documenting a large API. However, knowledge of the source material is probably key for working on the documentation anyway. My recommendation is to print everything out, then book an hour in a conference room away from a computer and read through it. Book multiple one-hour reading sessions as needed.

### 3. Review the content with SMEs

Review the material with someone who has a high degree of project knowledge (in other words, someone who is a "subject matter expert," aka SME), such as the tech lead for the project and the product manager. Let them know the content was AI-generated so that they're aware of the need to pay close attention to accuracy and possible hallucination. Gen AI tools write with such a high degree of confidence that it's easy to be persuaded by this ethos, so you have to be extra suspicious. 

## Conclusion

Getting an AI to produce an accurate piece of documentation like an API overview isn't zero-shot prompt. It involves quite a bit of work, but much less work than writing it yourself. By expertly wielding documentation templates against a large body of accurate source material, you can speed your way through writing documentation and arrive at a decent first draft. 

Collecting the source material and crafting the documentation prompts is the hard part. Once you've finished that, you can work your way through the rest of the documentation in a speedy way.
