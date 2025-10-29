---
title: "Recording of AI book club session of 'Hands-On Large Language Models: Language Understanding and Generation', by Jay Alammar and Maarten Grootendorst"
permalink: /blog/book-club-hands-on-llms
date: 2025-10-26
categories:
- ai
- ai-book-club
- podcasts
keywords: 
rebrandly: https://idbwrtng.com/book-club-hands-on-llms
description: "This is a recording of our AI book club discussion of <a href='https://www.amazon.com/Hands-Large-Language-Models-Understanding/dp/1098150961'>Hands-On Large Language Models: Language Understanding and Generation</a> by Jay Alammar and Maarten Grootendorst, held Oct 19, 2025. The book differs from other books in the series in that it's a more technical exploration of how LLMs work, without any ethics discussions. It's less narrative and more engineering-oriented. Our discussion focuses on understanding of conceptual details and whether, to use an analogy, understanding the plane's engine helps pilots fly the airplane better."
podcast_link: https://dts.podtrac.com/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/aibookclub-handsonllms.mp3
podcast_file_size: 46.4
podcast_duration: "59:33"
podcast_length: 46,378,158
image: handsonllmsthumb3.png
linkedin: https://www.linkedin.com/posts/tomjoht_ai-book-club-a-human-in-the-loop-activity-7389293727149899776-G3Xo
---

<iframe width="560" height="315" src="https://www.youtube.com/embed/HlqfvvUzzYs?si=GaQqVZFgIXozJP_5" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

* TOC
{:toc}

## Audio only

{% include audio.html %}

{% include ads.html %}

## NotebookLM for the book

See this [NotebookLM for the book](https://notebooklm.google.com/notebook/bed1ad26-f4ec-4ad0-ba0d-67981673bd19) for various resources.

## Discussion questions

Here are some questions for discussion for the book club. (Not AI-generated.) 

* Are there any practical takeaways for you from this book? For me, one of the most interesting ideas is autoregression, the idea that the AI constructs the response one token at a time, passing the sentence back into the LLM with each new token added to factor into the next predicted word. But I'm not sure if that empowers me to do anything different than I wasn't doing before. The author mentions trying to instill an “intuitive” understanding of AI. Do you feel like you have more of an intuitive understanding?
* Which models are you using and why?
* Have you ever played with the temperature and top_p knobs for your AI? It seems these are only available with the API parameters or with AI Studio. Why don't chat interfaces offer them?
* This book didn't seem to hit upon more recent topics, like MCP servers, agent markdown files, or even techniques like [Claude skills](https://www.anthropic.com/news/skills). Is a book written a year ago going to be inescapably outdated?
* Is all this knowledge actually useful, or is this like trying to learn how to fly an airplane by studying the engine?
* It's hard for me to comprehend how embeddings and auto-regression could possibly work. Each next-word prediction is based on passing the entire sentence to AI (constructed up to that point) for the next word? That's computationally insane. Is this one of those technologies that we'll never understand no matter how much we try to unpack the nuts and bolts?
* I find few shot prompts to be one of the most powerful techniques in prompt engineering. Defining some pattern examples also seems to orient us with the right mindset about pattern recognition tasks as well (pattern recognition is the sweet spot of AI). Which techniques resonate most with you when you write prompts?
* I'm also fascinated to see the reasoning models implement Chain of Thought (CoT) reasoning. Does this mean we no longer need to use CoT with prompt techniques?
* The idea of memory was also interesting to me. When using an AI chat interface that simulates a conversation, I didn't realize how much of a trick this is given the statelessness of the models. Each API call is stateless, so for the AI to understand the context of a question 10 turns into the conversation, we have to pass the context of the previous 10 questions and answers back into it. This helps me better understand why AI quality degrades over long conversations, why it's necessary to pin files in threads, and makes me wonder whether sliding windows, summaries, or other techniques are in place to facilitate the memory. Does understanding that AI models are stateless help with conversation management? It also makes me realize that using the API alone to interact with an AI would be very limited unless you have a way to pass in the conversational context into each call.
* I know the most sophisticated models still struggle with basic things like understanding how many instances of a letter appear in a word, or how to do basic math, or the correct spelling of words in images. Is this due to tokenization?
* I realized that I enjoy reading narrative books so much more than instructional books like this. Did you have the same conclusion? I wouldn't mind an instructional book if it were oriented more towards writing situations, but this was too much of a deep dive into how something works rather than how to use the tools more effectively. I think learning to use AI tools effectively will be a key strategy in keeping ahead in the future. This is something I argued in [​​Two strategies to succeed when AI seems to be eroding jobs around you](/blog/strategies-to-succeed-in-context-of-ai). Do you agree about tools knowledge? How do you learn these tools, and what tools are you focusing on? 
* I gave a presentation last week on using (essentially) Gemini Assist vs. Gemini CLI, and which capabilities each tool has. (I say “essentially” because I talked about the internal versions of these tools, which are substantially different.) I realized that understanding what you can do with a tool is quite difficult as it depends on the MCP servers it has, the extensions you've added, the prompt techniques you're using, the model you choose, the mode selected, any agent markdown files, (long-term memory), etc. It made it nearly impossible to provide definitive instruction about inputs and outputs. That's one of the challenges of trying to share how-tos and tips with these tools. Plus, most of my tool understanding is heavily based on internal tools, not the external ones, so it's challenging to share tools knowledge. But I realize that this AI book club would be much more popular if it were an “AI tools” club for writers instead. But maybe we should pivot?
* I mentioned that I didn't read this book cover to cover but instead relied on NotebookLM summaries, videos, and podcasts (see [my notebook here](https://notebooklm.google.com/notebook/bed1ad26-f4ec-4ad0-ba0d-67981673bd19)). Do you think NotebookLM can actually help you learn difficult concepts, or does it present a mirage of understanding, providing you with superficial, easily forgettable Cliff's notes instead? I was using it to try to parse through more difficult technical material. I decided that maybe this book isn't worth reading page by page, especially if so many concepts aren't going to be relevant, or which might be outdated. Reading is a tremendous time investment. Is the payoff worth it? I mean, if I spent 15 hours going through live learning tools workshops instead, would that be more beneficial than working my way through this book?
* Let's take the temperature on AI. What's your take on the current state of AI and tech comm? Is it something you're seeing take off, or do you think we're moving past the peak in the Gartner Hype Cycle and more towards the trough of disillusionment? In my workplace, there's a saturation of AI learning (a proliferation of AI meetings, training, demos, tools, etc.). But it's hard to measure direct gains from AI. I've tried to do this through meticulous measurement of weekly changelists, but it's hard to make the case. Productivity increases are offset by hallucinations, buggy tools, or other time spent figuring out AI. Productivity increases might only be 10-20%, not 75%. But unless we hit 75%, AI won't have the transformative effect many predict.

  Part of the problem is that AI sessions require careful supervision and review (the human in the loop, not only reviewing outputs but steering the AI to be successful). I'm not sure we'll get to the point where AI understands how to fix bugs or tackle doc issues without a lot of supervision. And if you let AI run on its own without that supervision, do you end up with a scenario that's much more complicated to review and fix? For example, suppose you ask if to fix a bug without feeding it changelists, bug references, API reference, and other material. Instead, it just goes out and tries to find this info on its own. But it finds the wrong info, and then you have a partially true answer, and so you have to untangle what's false from what's correct, which requires you to consume and ramp up on all the information anyway.

* If you were to take a workshop on AI, what kinds of things would you like to learn?

## Foundational concepts from the book

The book provides an introduction to many foundational concepts in the AI space. The following table lists 38 concepts along with definitions and examples generated from [NotebookLM for the book](https://notebooklm.google.com/notebook/bed1ad26-f4ec-4ad0-ba0d-67981673bd19) (hence, AI-generated). This vocabulary and understanding can help strengthen our technical foundations to help us better participate in and contribute to AI discussions.

<table>
  <tr>
   <td><strong>Concept</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Example</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Large Language Models (LLMs)</strong>
   </td>
   <td>These are advanced AI systems, usually based on the Transformer architecture, designed to understand, process, and generate human language, often using deep neural networks. An LLM's creation typically follows a multi-step training approach: initial language modeling (pretraining) followed by fine-tuning.
   </td>
   <td>A commercially available LLM like <strong>ChatGPT (GPT-4.0) is tasked with text classification by predicting '1' for a positive movie review and '0' for a negative review</strong>. In one evaluation, it achieved a high F1 score of 0.91.
   </td>
  </tr>
  <tr>
   <td><strong>Tokenization</strong>
   </td>
   <td>The necessary initial step where input text (the prompt) is broken down into tiny numerical pieces called <strong>tokens</strong> (which may be a whole word, part of a word, or punctuation) before being processed by the language model. Tokenizers are also used to translate the model's output IDs back into readable text.
   </td>
   <td>When the input prompt is "Write an email apologizing...", the tokenizer breaks this text into tokens that the model can understand, such as "Write," "an," "email," "apolog," and "izing".
   </td>
  </tr>
  <tr>
   <td><strong>Embeddings</strong>
   </td>
   <td>Numerical representations (vectors) of text (e.g., words, sentences, or documents) that capture the text's semantic content or meaning. Embeddings are essential because they convert unstructured textual data into a format that computers can easily process.
   </td>
   <td>In a semantic search query, the input, such as "how precise was the science," is converted into an embedding vector, allowing the system to find the nearest document vectors in a shared space, like the sentence "It has also received praise from many astronomers for its scientific accuracy...".
   </td>
  </tr>
  <tr>
   <td><strong>Autoregression</strong>
   </td>
   <td>The core method by which generative LLMs write text. The model operates in a loop, predicting and writing one token at a time, using the previously generated token as part of the context input for the next prediction step.
   </td>
   <td>After receiving the initial prompt, the LLM first generates a token (e.g., "Subject:"). It then reads the new, longer text (Prompt + "Subject:") and uses that as context to predict and write the next token.
   </td>
  </tr>
  <tr>
   <td><strong>Foundational Models (Base Models)</strong>
   </td>
   <td>These models are the result of the first, most resource-intensive step of LLM training (language modeling) on massive, unlabeled datasets. They learn general linguistic and semantic patterns but typically need subsequent fine-tuning to follow specific instructions or perform targeted tasks.
   </td>
   <td>The <strong>TinyLlama-1.1B-intermediate-step-1431k-3T</strong> model is an example of a base model that needs further training to transition into a model capable of following user instructions.
   </td>
  </tr>
  <tr>
   <td><strong>Supervised Learning</strong>
   </td>
   <td>A general machine learning paradigm where a model is trained using a dataset consisting of input examples paired with correct outputs (labels). In LLMs, this includes tasks like text classification or Supervised Fine-Tuning (SFT).
   </td>
   <td>Training a text classification model involves using a corpus of movie reviews already labeled as positive (1) or negative (0). The model learns to predict the correct label based on the input text.
   </td>
  </tr>
  <tr>
   <td><strong>Fine-Tuning (SFT)</strong>
   </td>
   <td>The process of adapting a pretrained foundational model to a specific desired behavior, domain, or task using a smaller, labeled dataset. This is commonly used to turn a base generative model into an instruction (or chat) generative model.
   </td>
   <td>To teach a base LLM to follow commands, <strong>Supervised Fine-Tuning (SFT)</strong> is applied using a dataset of user instructions paired with corresponding correct outputs (question-response data).
   </td>
  </tr>
  <tr>
   <td><strong>Parameter-Efficient Fine-Tuning (PEFT)</strong>
   </td>
   <td>Techniques, such as <strong>Low-Rank Adaptation (LoRA)</strong>, that optimize the fine-tuning process by updating only a small subset of the model's total parameters. This reduces training time, computational costs, and storage requirements compared to updating all weights (full fine-tuning).
   </td>
   <td><strong>LoRA</strong> approximates large weight matrices (e.g., 10x10, requiring 100 weights) found in the LLM with two much smaller matrices (e.g., 10x2 and 2x10, requiring only 20 weights) that are updated during training, saving major computational resources.
   </td>
  </tr>
  <tr>
   <td><strong>Quantization (QLoRA)</strong>
   </td>
   <td>A compression technique that reduces the numerical precision (number of bits) required to store the model's weights, making the model faster to run and significantly lowering VRAM memory requirements. <strong>QLoRA</strong> combines quantization with LoRA for maximum efficiency during fine-tuning.
   </td>
   <td>Applying a 4-bit quantization scheme to the TinyLlama model allows it to be loaded using only about 1 GB of VRAM, compared to the approximately 4 GB it would need without quantization.
   </td>
  </tr>
  <tr>
   <td><strong>Prompt Engineering</strong>
   </td>
   <td>The systematic practice of carefully crafting inputs (prompts) to guide an LLM to generate more purposeful, accurate, and high-quality responses. Effective prompts often specify the desired output structure, tone, persona, and context.
   </td>
   <td>Instead of simply asking for a product description, a user refines the prompt by adding components such as <strong>instruction</strong> ("Summarize the key findings"), <strong>format</strong> ("Create a bullet-point summary"), <strong>audience</strong>, and <strong>tone</strong> to ensure a specific, high-quality result.
   </td>
  </tr>
  <tr>
   <td><strong>Temperature</strong>
   </td>
   <td>A key parameter controlling the randomness or creativity of the LLM's output. It influences the likelihood of selecting tokens that are less probable; a temperature of 0 results in deterministic output (greedy decoding).
   </td>
   <td>Setting <code>do_sample=True</code> and <strong><code>temperature=1</code></strong> when asking the LLM to generate a joke increases randomness, making it highly probable that a different, creative response will be generated each time the query is run.
   </td>
  </tr>
  <tr>
   <td><strong>Top_p (Nucleus Sampling)</strong>
   </td>
   <td>A token sampling technique that restricts the pool of tokens the LLM considers for generation to a subset whose cumulative probability reaches the defined <em>p</em> value. A lower value restricts the selection pool, leading to less diverse output.
   </td>
   <td>When generating an email (a conservative task), setting <strong><code>top_p</code> to a low value (e.g., 0.2)</strong> ensures that the model only selects from a small subset of the most probable next tokens, creating predictable and focused output.
   </td>
  </tr>
  <tr>
   <td><strong>Few-Shot Prompting / In-Context Learning</strong>
   </td>
   <td>A technique where the user provides the LLM with one or more examples of input/output pairs directly within the prompt to demonstrate the desired task or output structure. This guides the model without requiring formal model training updates.
   </td>
   <td>When asking the model to create a character profile in JSON format, the user provides a <strong>one-shot example</strong> showing the desired JSON structure and specific required keys (e.g., <code>name</code>, <code>armor</code>, <code>weapon</code>). This guides the model to reproduce the specified output format.
   </td>
  </tr>
  <tr>
   <td><strong>Chain-of-Thought (CoT)</strong>
   </td>
   <td>An advanced prompting method that compels the LLM to generate intermediate reasoning steps or "thoughts" before producing the final answer. This significantly improves accuracy on complex, multi-step arithmetic tasks by mimicking system 2 thinking.
   </td>
   <td>Given the math problem: "The cafeteria had 23 apples... used 20... and bought 6 more, how many apples do they have?", the model first generates the reasoning: <strong>"23 - 20 = 3 apples left. Then they bought 6 more apples, so they now have 3 + 6 = 9 apples"</strong> before giving the final answer.
   </td>
  </tr>
  <tr>
   <td><strong>Tree-of-Thought (ToT)</strong>
   </td>
   <td>A complex reasoning framework that extends CoT by allowing the LLM to break a problem down and explore multiple possible paths or solutions at each step. The model then rates these intermediate "thoughts" to prune less promising paths.
   </td>
   <td>A prompt asks the LLM to <strong>"Imagine three different experts are answering this question"</strong> (a complex math problem). The resulting output shows the experts iteratively discussing step 1 and step 2 of the problem until they all agree on the final answer, 9 apples.
   </td>
  </tr>
  <tr>
   <td><strong>Retrieval-Augmented Generation (RAG)</strong>
   </td>
   <td>A system design that incorporates an LLM with a search mechanism to retrieve relevant external data, which is included in the prompt as context, enabling the LLM to generate grounded, factual responses.
   </td>
   <td>When asked the query "Income generated" regarding the film <em>Interstellar</em>, the system first retrieves sentences from the document index (e.g., "The film had a worldwide gross over $677 million...") and then <strong>feeds those sentences to the LLM</strong> to generate a concise, cited summary.
   </td>
  </tr>
  <tr>
   <td><strong>Reranker</strong>
   </td>
   <td>A powerful component in a multi-stage search pipeline, usually implemented as a language model (often a cross-encoder), that takes a preliminary set of search results (shortlisted documents) and rescores their relevance against the query to produce a vastly improved ranking order.
   </td>
   <td>A hybrid search first retrieves 10 candidate documents for the query "how precise was the science." The <strong>reranker</strong> then evaluates each of those 10 documents against the query simultaneously, assigning a relevance score (e.g., 0.169) to correctly prioritize the most accurate result.
   </td>
  </tr>
  <tr>
   <td><strong>Memory (Context/Statelessness)</strong>
   </td>
   <td>The mechanism needed to allow LLMs, which are naturally stateless, to retain context or conversation history across multiple turns by appending previous interactions (or summaries of them) to the current prompt.
   </td>
   <td>In a chat session, a user says, "Hi! My name is Maarten." When the user subsequently asks, <strong>"What is my name?"</strong>, the <strong>ConversationBufferMemory</strong> appends the initial interaction to the new prompt, allowing the LLM to successfully respond, "Your name is Maarten".
   </td>
  </tr>
  <tr>
   <td><strong>Chains and Pipelines</strong>
   </td>
   <td>Frameworks like LangChain simplify the process of connecting multiple modular components (such as an LLM, a prompt template, memory, or tools) together to create complex LLM systems and continuous workflows. Chains allow the output of one component to seamlessly feed into the input of the next.
   </td>
   <td>A system designed to create a story is broken into sequential steps: the initial user input (summary) creates a <strong>title</strong> (Step 1); the output of Step 1 feeds into Step 2 to generate a <strong>character description</strong>; and both outputs feed into Step 3 for <strong>story generation</strong>.
   </td>
  </tr>
  <tr>
   <td><strong>Attention Mechanism / Layer</strong>
   </td>
   <td>The core component of the Transformer architecture that enables the model to look back at all previous tokens and determine which ones are most relevant to the token currently being processed. This is essential for processing language context.
   </td>
   <td>In the sentence, "The dog chased the squirrel because <strong>it</strong> was hungry," the attention layer determines whether the word "it" refers to the dog or the squirrel by scoring the relevance of those prior words to the current position.
   </td>
  </tr>
  <tr>
   <td><strong>Language Modeling (Pretraining)</strong>
   </td>
   <td>The initial, resource-intensive training phase where an LLM is trained on massive, unlabeled text datasets. During this self-supervised process, the model learns general linguistic patterns by predicting the next token in a sequence.
   </td>
   <td>The training of a foundational model (or base model) like TinyLlama on a corpus of 2 trillion tokens is the language modeling phase, which results in a model that understands language but cannot yet follow instructions.
   </td>
  </tr>
  <tr>
   <td><strong>Context Length / Window</strong>
   </td>
   <td>The maximum number of tokens (input prompt tokens plus generated output tokens) that a Transformer model can process simultaneously in a single operation. This limit defines how much information the model can hold in memory during a conversation or task.
   </td>
   <td>A model with a 4K context length (4,000 tokens) will reach its limit if the combined input prompt and previous conversation history, plus the new output, exceeds 4,000 tokens.
   </td>
  </tr>
  <tr>
   <td><strong>Agent / Agents</strong>
   </td>
   <td>Advanced systems that leverage an LLM to autonomously determine a sequence of actions, often using external <strong>tools</strong>, to achieve a specific goal. Agents move beyond predetermined response chains by actively planning their behavior.
   </td>
   <td>An agent is given a complex financial question and decides its first action must be to use a search engine tool to find current stock data, followed by a second action using a math tool (calculator) to perform calculations.
   </td>
  </tr>
  <tr>
   <td><strong>ReAct (Reasoning and Acting)</strong>
   </td>
   <td>A powerful agent framework that structures the LLM's thought process into an iterative loop: <strong>Thought</strong> (what needs to be done next), <strong>Action</strong> (which external tool to use), and <strong>Observation</strong> (the results of the tool's action).
   </td>
   <td>To find the price of a MacBook Pro, the agent generates a <strong>Thought</strong> ("I need to search the current price"), triggers the <strong>Action</strong> ("search engine tool"), and receives an <strong>Observation</strong> (the price result) to inform its next step.
   </td>
  </tr>
  <tr>
   <td><strong>LM Head (Language Modeling Head)</strong>
   </td>
   <td>The final, simple neural network layer attached to the stack of Transformer blocks. Its function is to convert the internal output vector of the model into a probability score for every single token in the vocabulary, determining the likelihood of each token being the next generated word.
   </td>
   <td>After the model processes the context "I am driving a...", the LM Head might assign a 40% probability score to the token "car," a 15% score to "truck," and a 0.1% score to "elephant," allowing the decoding strategy to select one of them.
   </td>
  </tr>
  <tr>
   <td><strong>Feedforward Network (MLP)</strong>
   </td>
   <td>One of the two main components in a Transformer block (alongside the attention layer). This layer holds the majority of the model's learned information, acting as the "memory bank" that stores facts, enables interpolation, and supports generalization.
   </td>
   <td>When the model sees the partial phrase "The Shawshank," the FFN contains the memorized pattern that dictates "Redemption" is the most probable completion, based on patterns learned during pretraining.
   </td>
  </tr>
  <tr>
   <td><strong>Contrastive Learning</strong>
   </td>
   <td>A technique used primarily for training or fine-tuning embedding models, where the model learns by contrasting similar items with dissimilar items. The goal is to maximize the distance (dissimilarity) between negative pairs and minimize the distance (similarity) between positive pairs in the vector space.
   </td>
   <td>Training an embedding model using Natural Language Inference (NLI) data: a pair consisting of a premise and its entailment is a <strong>positive pair</strong>, which is contrasted with a pair consisting of the premise and a contradiction (<strong>negative pair</strong>).
   </td>
  </tr>
  <tr>
   <td><strong>Text Clustering</strong>
   </td>
   <td>An unsupervised technique used to automatically group large volumes of unstructured text based on the semantic similarity of their embeddings, allowing for efficient categorization and exploratory data analysis without needing predefined labels.
   </td>
   <td>Using the abstracts of thousands of research papers, a clustering algorithm identifies groups of similar documents, such as papers primarily discussing "sign language" or "automatic speech recognition".
   </td>
  </tr>
  <tr>
   <td><strong>Memory (Conversation Buffer)</strong>
   </td>
   <td>The mechanism needed to allow LLMs, which are naturally stateless, to retain context or conversation history across multiple turns by appending previous interactions to the current prompt. This is implemented via components like ConversationBufferMemory, which copies the full history into the prompt.
   </td>
   <td>In a chat session using a simple, stateless LLM, if a user states, "Hi! My name is Maarten," and then asks, "What is my name?", the model cannot answer. By adding <strong>ConversationBufferMemory</strong> to the chain, the full interaction history ("Human: Hi! My name is Maarten...") is appended to the new prompt's context, allowing the LLM to successfully respond, "Your name is Maarten".
   </td>
  </tr>
  <tr>
   <td><strong>Chains / Pipelines</strong>
   </td>
   <td>Framework structures (like LangChain) that connect multiple modular components (e.g., LLM, prompt template, memory, or tools) together to create complex, continuous workflows. This enables systems to break complex prompts into smaller subtasks where the output of one step seamlessly feeds into the input of the next.
   </td>
   <td>Instead of using one massive prompt to write a story, a chain can be used: the user input (a brief summary) generates a <strong>title</strong> (Step 1). The title and summary are then fed into Step 2 to generate a <strong>character description</strong>. Finally, all previous outputs are combined and fed into Step 3 to generate the final <strong>story.</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Reward Model</strong>
   </td>
   <td>A specialized language model trained using human feedback data to automate the assessment of generated output quality. Its purpose is to output a <strong>single numerical score</strong> that represents the quality or preference level of a generated response for a given prompt. This score is then used to guide the preference tuning of the main LLM.
   </td>
   <td>If a training dataset provides a prompt along with an <em>accepted</em> response and a <em>rejected</em> response, the reward model is trained to assign a higher score to the accepted generation and a lower score to the rejected generation, teaching it what constitutes preferred behavior.
   </td>
  </tr>
  <tr>
   <td><strong>Preference Tuning / Alignment / RLHF</strong>
   </td>
   <td>The final, crucial step in training a high-quality LLM, focused on aligning the model's output with human preferences and safety standards. This process distills human preference (what humans consider a "good" answer versus a "bad" one) into the model. <strong>RLHF (Reinforcement Learning from Human Feedback)</strong> is a common methodology used to achieve this alignment, often involving a <strong>Reward Model</strong> and techniques like <strong>Proximal Policy Optimization (PPO)</strong> or <strong>Direct Preference Optimization (DPO)</strong>.
   </td>
   <td>When training a model like ChatGPT (GPT-3.5), responses are generated for a prompt and then ranked by human labelers (e.g., scoring a complex explanation higher than a simple one). This preference data is used to train a separate Reward Model, which then guides the final fine-tuning of the generative LLM, nudging it to generate responses that maximize the predicted score (reward).
   </td>
  </tr>
  <tr>
   <td><strong>"Attention Is All You Need"</strong>
   </td>
   <td>The title of the seminal 2017 paper that introduced the <strong>Transformer architecture</strong>. This breakthrough eliminated the need for previous sequential processing methods (like Recurrent Neural Networks, or RNNs) by relying solely on the <strong>attention mechanism</strong>. This allowed all input tokens to be processed <strong>in parallel</strong> during the training phase, which dramatically sped up training and made the creation of massive LLMs feasible.
   </td>
   <td>Prior to this architecture, translating a sentence like "I love llamas" required models to consume each token sequentially, one after the other. The Transformer architecture, through its attention layers, allows the model to process all tokens ("I," "love," "llamas") simultaneously. This <strong>parallel token processing</strong> is what reduced training time from months to days for large models.
   </td>
  </tr>
  <tr>
   <td><strong>Multimodality</strong>
   </td>
   <td>The ability of models to handle and reason about different types (or modalities) of data beyond just text, such as images, audio, video, or sensors. This capability allows LLMs to solve new kinds of problems and is often achieved by building a <strong>Querying Transformer (Q-Former)</strong> bridge between a vision encoder (like ViT) and the underlying language model.
   </td>
   <td>A model like <strong>BLIP-2</strong> can process an image of a supercar and a question, such as, "Write down what you see in this picture," and accurately generate a text response like "A sports car driving on the road at sunset."
   </td>
  </tr>
  <tr>
   <td><strong>Contrastive Learning</strong>
   </td>
   <td>A powerful training technique used for developing or fine-tuning embedding models (like SBERT or CLIP). The method aims to train the model so that similar documents are closer together in vector space (positive pairs) while dissimilar documents are pushed further apart (negative pairs). This is essential for accurately capturing semantic similarity.
   </td>
   <td>Training an embedding model using <strong>Natural Language Inference (NLI) datasets</strong>: a premise and its entailment are designated a <strong>positive pair</strong>, and this pair is contrasted with examples of the premise and a contradiction (a negative pair).
   </td>
  </tr>
  <tr>
   <td><strong>Transformer-Based Sequential Denoising Auto-Encoder (TSDAE) / Sentence Reconstruction</strong>
   </td>
   <td>An unsupervised learning technique for creating text embedding models where the model is trained to reconstruct an original, intact sentence from a "damaged" version of that sentence (where words are randomly removed). This forces the model to create an accurate <strong>sentence embedding</strong> from the damaged input, because the more accurate the embedding is, the better the reconstructed sentence will be.
   </td>
   <td>To train an embedding model using TSDAE, the input sentence "Grim faces and hardened jaws are not people-friendly" is deliberately damaged to become, for example, "Grim jaws are." The model then processes the damaged input through an encoder to generate an embedding, from which a decoder attempts to reconstruct the original, full sentence.
   </td>
  </tr>
  <tr>
   <td><strong>Semantic Similarity / Meaning</strong>
   </td>
   <td>The degree to which two pieces of text (words, phrases, sentences, or documents) share the same meaning or semantic content. LLM components, particularly <strong>embeddings</strong>, are designed to capture this semantic nature. Texts with similar meaning are expected to be close to one another in the high-dimensional vector space, while dissimilar texts are pushed further apart.
   </td>
   <td>In a search system, the query "how precise was the science" is determined to be semantically similar to the document sentence "It has also received praise from many astronomers for its scientific accuracy..." even though they do not share many keywords. This similarity allows the system to retrieve the correct, relevant document.
   </td>
  </tr>
</table>

## Book summaries

If you would like summaries of each chapter in the book, see this [Notes and discussion document](https://docs.google.com/document/d/1COqjriSvHpX8nvtae33MyOXDG82dH-wwHtmFeF5N4HA/edit?tab=t.4q1loc5hjese). The document's tabs on the left summarize each chapter.


## Transcript

Here's a transcript of the book club discussion. Note: Edited with AI for readability.

***

Hi, this is a recording of an AI book club, "A Human in the Loop." This was recorded on October 19, 2025.

In this book club, we are discussing *Hands-on Large Language Models: Language Understanding and Generation* by Jay Alammar and Maarten Grootendorst.

This book is a lot different from the other books in the series in that it's an O'Reilly technical book, and the focus doesn't really touch on any ethical issues. It's all about the technical understanding of how large language models work. There are about five people in this discussion, which lasts around an hour.

The audio quality of these recordings isn't great; it's just a Google Meet recording, and people join with all kinds of different microphones. This book, although dense and technical, did offer a lot of key insights. See the accompanying document that I prepared, which has notes about a lot of different key concepts and other questions if you want to dive deeper.

If you'd like to join the book club, go to [idratherbewriting.com/ai-book-club](https://idratherbewriting.com/ai-book-club). My name is Tom Johnson, and we'd always love to have more people join and participate. Thanks for listening.

---

**Tom (1:27):** Welcome, Molly. Welcome, Dan. Molly and Dan are regulars here, and I'm glad to see both of you.

**Dan (1:34):** I'm glad to be here. I'm afraid I was only able to skim the first few chapters because I just have not had time to do anything. Even today, I thought I was going to be able to prep, but I've been with my toddler since 5:30 a.m. and I'm literally just coming downstairs now.

**Tom (1:54):** No, that's okay. I admitted that I didn't read the whole book page by page, either. I read the first probably 75 pages, and then I thought, "You know what? I think I'm going to better consume this book through some NotebookLMs with some extensive summaries and videos and podcasts." But, yeah. How about you, Molly? Did you make it through the whole book, or what?

**Molly (2:21):** I made it through. I also ended up skimming. I started out trying to set up the examples in Colab, and then by maybe the third one, I thought, "No, I'm just going to keep reading." And then my reading got even more "skimmy." But I still feel like it was good to read through some of the concepts, so I appreciated that about the book.

**Tom (2:46):** Well, that's great. That's encouraging. I honestly thought this might be one of these no-show meetings where nobody comes, but that's not the case. So, I'm excited that you're here.

I did put together—let me share my screen here—I put together some questions for discussion, and I'm happy to take this in whatever direction you want.

Okay, so I initially started out just trying to get a bunch of concepts from the book. I thought, "Let's just pull out what the key ideas are and understand those as a foundation for being able to be fluent in other AI conversations, topics, and podcasts, so we know what's going on." Then I thought, "You know what? Let me add some discussion questions as well"—just my own personal takeaways, questions, thoughts here.

I'm not really sure where we want to get started. Is there any particular topic or area where you think it would be a good...

**Dan (3:50):** One thing that I'd actually like to ask is... the introduction to the book said, "We assume familiarity with Python" and just generally how these work. I was wondering, what is... do any of you have experience with Python? I have had some training with JavaScript and Ruby, but I am not a coder by any stretch of the imagination. I mean, that training has helped me be a good technical writer, but I've not really used Python at all. And so I was curious about what was all your experience or level of knowledge with Python or coding or anything like that?

**Tom (4:33):** Yeah, I'm not a Python person. I don't really use Python hardly at all. I saw that the examples in the book were going to be more Python-oriented, but unlike Molly, I didn't even try any of the examples. I thought, "Gosh, I didn't want to do that." But did you try some, Molly? Did you actually do Python stuff?

**Molly (4:58):** I've done it. I have a transactional relationship with Python, where I use it for things like backup scripts for our knowledge base and things like that. For example, if I want to find out what articles weren't updated between 6 and 12 months and the UI for our CMS doesn't help us show that, then I'll use Python for that kind of thing, or for creating spreadsheets of things I need to review.

But Python is supposed to be one of those languages that the LLMs do really well with because there's so much good documentation and it's a very popular language. I think when you ask AI to write a script, it might lean towards Python, and it's supposed to be a good language for doing documentation processing type stuff, file manipulation, and so on.

**Dan (5:59):** But yeah, I think it's also a reasonably easy language to learn. I think in some ways it's supplanted Ruby as a back-end language, but I think there are a lot of different things that you can do with it. I definitely felt, once I was approaching this book, that there are all these different things layered on. And I thought, "I have to learn all this stuff, Python, this and this..." In some ways, it seems like this book is pre-disposed to working with over a long period of time. Yeah. So those are my thoughts.

**Valeria (6:38):** Yeah, I would say that maybe they made that note on Python because they used these Jupyter notebooks, but they were very well documented. I used Python a little bit; I have used it in the past. But it was very easy to follow. All the Jupyter notebooks were very well documented and they had a lot of comments, so it was easy to follow through the exercises. I didn't complete all of them. I just did maybe the first four chapters, and after that, I stopped.

**Tom (7:25):** Wow, pretty good. Yeah, I'm impressed. That is awesome. The Jupyter notebooks are an interesting platform choice. I guess—gosh, I'm going to ask dumb questions—but isn't Google's version of Jupyter notebooks called Colab? Isn't it the same kind of thing where you have a platform with all the resources right there?

Either way, at my work, they have the same Jupyter notebooks and they call them Colab. The idea is that you have so many resources exposed and available right on the platform so that people can easily replicate whatever task you're doing.

Last week, I was actually giving an internal presentation on two different tools: Gemini CLI versus Gemini Code Assist, two different tools that people use with docs and AI. I realize that it's very difficult to tell people what tasks you can do with each tool because it depends on the extensions or MCP servers you have configured. It depends on which model you're using, which mode you're using. Is it more of an agentic mode? Do you have an agent markdown file that's adding context? What is your prompt itself? How does the interface handle memory and so on?

It's nearly impossible to pin down all the prerequisites that somebody would have so that they could get the exact same experience going through some scenario. So maybe having Jupyter notebooks as a platform is an attempt to simplify all the setup and try to have a consistent experience, but even that seems like it didn't really last through the book for most people.

I was just curious, which sort of models and tools do each of you use? Are you using any particular type of model where you can control things like temperature and top-p and other things? Are you using the API or using chat interfaces? Are you using internal tools? Just curious.

**Dan (9:44):** I'll start because I'm sure I'm the most boring one here. Since I work on Windows and my company is very Microsoft-embedded, I just use Copilot a lot for work. In my own creative writing, I sometimes use that and also ChatGPT, just as a research assistant, not to really write text for me. But that's kind of the extent of it. And that was kind of... I was also interested in... Well, I'll just leave it at that and let other people answer.

**Molly (10:25):** Yeah. I think it kind of depends. I guess your workplace will dictate a little bit of what models you use at work anyway, because we use Gemini and NotebookLM through our work. And I love NotebookLM for release notes. I've figured out that if I just use our help docs, which I put in a project, and I ask it, "Okay, well, what if we could do this thing, which isn't possible yet, how would that help our customers?" And then it's something that we're releasing. So then it'll tell me, "This is how this would be useful to people," and that helps me with that introduction where I'm trying to think about why this would be useful to people, the "how value."

**Tom (11:11):** Yeah, that's interesting. So you use NotebookLM a lot, and you said Gemini. Do you use the web app, or do you use Code Assist or the CLI?

**Molly (11:18):** I use the web app. I use Copilot also, mainly because I have to write documentation for our MCP server and I need to... they're coming out with new tools like every week, and I have to figure out what they do and, you know, make sure that they're documented somewhere. But yeah, that's the main reason why I use it. I don't use it for my own personal workflow.

**Tom (11:40):** All right. And Valeria? Gosh, I'm trying to figure out my lighting. Sorry, I have windows right in front of me, so I'm either getting totally blinded or not. Valeria, what tools do you use?

**Valeria (11:57):** Well, I use almost everything. I use the chat interface lately, but I use Gemini, Perplexity, and NotebookLM.

**Tom (12:13):** Okay. Yeah. Do you use different things for different tasks or different products for different tasks?

**Valeria (12:20):** Yeah, I think I use Gemini and Perplexity for studying complex topics. Then I use NotebookLM more for reinforcing the information. And with this feature of the... the podcast feature, I use it to then reinforce everything that I have learned. And Claude and ChatGPT, I use more for writing tasks, like checking for clarity, conciseness, things like that, like cleaning my drafts.

**Tom (13:06):** That's awesome. Welcome, Lois. Lois is a colleague of mine, also at Google.

**Lois (13:12):** Hi, Tom. Hi, everyone.

**Tom (13:14):** So, it's interesting to hear the NotebookLM stuff because I really love that platform, and I have this little hidden idea in the back of my mind that it could be a great documentation platform because it just serves everything up in one interface. Sadly, that's not one of those tools that I'm allowed to totally use for certain docs, in terms of generating output.

But I use Gemini Code Assist a lot. I think that's how it's called externally, but internally there are a lot more features and other bells and whistles on it. It's quite powerful.

The reason that I ask about the tools sort of leads up to this larger question that was probably my main takeaway from this book, and it's one I posed in the list of discussion questions. Do you think that learning how the airplane engine works helps you be a better pilot to fly the airplane?

There was a lot of technical info about how large language models work: the parameters that are tuned, all these different techniques, and so on. But at the end of the day, does that help you use the tools better? Is it more of an intellectual curiosity about how this whole thing is working, or does it actually translate into better usage of the tools? And if so, how?

I thought one takeaway could be memory. I didn't realize how it worked. When you have a chat assistant and you're having a conversation, because these tools are stateless—meaning they don't remember anything from the previous call—they have to pass in all the previous turns of that conversation each time you ask a new question, which to me is insane. Computationally, how all that context is constantly being passed in... I don't know how that's possibly processed.

But the book talked about different strategies for preserving that context: sliding windows, summarization, or just passing the whole thing again each time. But it helped me understand that after 15 turns of a conversation, yeah, the thing is going to degrade. You really just need to get rid of that glut of previous context and start over. So that was one concept that I thought maybe translated from the conceptual to the actual tactical realm.

What do you think about that larger question I posed? Does understanding the engine help you fly the plane better, or is it just not really that impactful?

**Molly (16:09):** I think that's a reasonable thought to have. Especially when it's not producing the output that you expect or want, it can help to know how it's getting there. But it's probably limited. Memory is a good example, but other than that, like maybe temperature... I would struggle to come up with other areas where understanding how it works would make it better for you.

**Tom (16:39):** Here's another area: tokenization. Just last week, one of my colleagues was saying that she was really frustrated that Gemini couldn't count a number of things correctly. It said there were 190 items instead of 191, and it was driving her nuts.

I think this is one of those weird, paradoxical areas of LLMs where they can fail at really simple tasks while also doing incredibly sophisticated tasks at the same time. For example, understanding how many instances of the word "p" are in "apples." Maybe tokenization breaks up that word in a way that makes that task extremely difficult for the LLM because it doesn't have the word "apples"; it has the word "app" and "les" or something. I don't know, maybe that's a bad example, but...

Do you think tokenization is helpful? I mean, hopefully, a good AI hides that whole tokenization element so that it's not like you're seeing a bunch of errors related to that. But certainly, if you're getting errors, that could be one way that you could understand them better.

**Valeria (17:55):** I do think it's helpful. For example, understanding tokenization taught me to be concise in my prompts. Before, I used to give it very long context when I wanted to create a first draft. I would give it a lot of details that maybe were not necessary. So now that I understand that they have... that tokenization is important and the context window is also important to keep short, I try to be more concise and also to create new chats in the interface when the conversation gets too long. I try to implement that practice.

**Tom (18:49):** What about understanding the whole concept of embedding? The idea that everything you type, every sentence, is rendered as some kind of complex mathematical vector—a set of numbers representing the same ideas, and the numbers are just relationships to each other. This just blows my mind that this works. All this text that I'm adding is converted to numbers, which then the relationships between those numbers are examined, and then that generates the output. It's really... does that help? I don't know that that impacts how I do prompts at all, but it's just one of those things where I think, "How does this possibly work?"

**Dan (19:42):** I think one of the things that is always in the back of my mind when reading the six books we've read is that there's often a chapter on the history of generative AI and LLMs, how it is and what it is. It's been interesting to see how different writers approach that.

I feel like... I really liked Suleyman's introduction to that, or his overview. I also thought *The Coming Wave* was good, or it seemed very dense, at least. I listen to these on audiobook, and I'm like, "Oh, I need to really sit down with this." And so I was really appreciative to have such a granular breakdown of it, even though I'm still going to be working through it.

I think maybe it's because I sometimes feel like I don't think as abstractly as other people, or I feel like I need a concrete understanding of everything that goes into what I have to think about, that I'm like, "I need to understand how this works." Not necessarily even to use it better, but just for peace of mind.

But it does remind me of what Warner said in the first book we read. You know, he's totally anti-AI, and he says, "We should learn more about this." What he didn't say was, "We should use this more or experiment with it to try to learn how to use it best." He did not say that. And so there is this cleavage between knowing about it and then using it. I think that's something I struggle with. Am I using this enough? Am I experimenting with this enough? But for me, intellectually knowing how it's put together is very fascinating to me, even if I'm still trying to figure out how to apply it.

**Molly (22:04):** Yeah. So first, interesting for me is that when I read through the explanations, I didn't understand everything, but my reaction to reading about them was one of reassurance. It felt like it wasn't just a black box. I'm reading about how these things happen. Granted, I don't understand very much beyond the high-level concept of it, but it felt comforting to know that there are these processes that it goes through, and those concepts are at least a little more understandable than the whole process altogether. It's not magic, right? I think Karen Hao talked about how sometimes they'll say it's like magic and how dangerous that is.

But on the topic of Warner bringing up "we need to understand how these technologies work," is it possible to start researching AI and understanding how it works without using it? You know, can you just...?

**Dan (23:14):** Yeah, I agree. It's almost like learning all about flying an airplane, reading about it, but not flying an airplane. Yeah, I think that's a really good point.

**Molly (23:30):** Like, wouldn't you want to start using it once you start learning about it? I agree.

**Tom (23:36):** Definitely. Trying to understand how it actually works gives me more of a sense of respect and awe for the tools. Like this idea of auto-regression—that when it's giving me the answer, it's building it token by token, and each new token is looking at all the previous tokens that come before it to predict it. And then it adds a new one, and then it does that same loop. It's like, "Wow, that is pretty incredible," that it all works.

And so when there are so many themes in AI that are related to "AI slop," and "Oh, it's just lifting author's material," and it's "going to bring down humanity," it's like, "Well, this is actually quite a fascinating technology, quite impressive how this is potentially working underneath." So yeah, I do like that level of depth that understanding offers.

**Valeria (24:34):** Yeah. No, I... well, plus one to everything that you have said. I enjoyed learning about this, even though the book revealed to me how deep the iceberg is, and I am only understanding the very surface of this technology. That was very satisfying to understand. And at the same time, it's humbling because you see how complicated things are and how much we have accomplished with these models.

**Tom (25:20):** Yeah, understanding how deep the iceberg is and getting that glimpse is kind of humbling, isn't it? It's like, "Now I understand why some of these top AI researchers and talent get paid millions of dollars," because it's definitely not a trivial subject.

One other very fascinating part about how these work is seeing the reasoning going on. This is something that wasn't really emphasized that much in the book. It talked more about using chain-of-thought as a prompt engineering technique, where you try to walk the AI through a set of reasoning processes rather than just having it jump straight to a conclusion.

Have you ever... Okay, now I used to skip between Claude and ChatGPT and Gemini and Perplexity all the time, but then I sort of stopped doing that and now I mostly just use Gemini. But at least in Gemini, you can see the running train of thought behind a prompt. You can see it thinking in a chain-of-thought, reasoning-type process every little piece of the way. It's going way too fast to actually read it all, so it's mostly just quickly skimming it and seeing what's going on. But have you ever read through the reasoning, the "thinking models" output, and looked to see all that stuff that's going on while it's calculating the response?

**Valeria (27:01):** No, I haven't yet paid much attention, but I've skimmed through sometimes and I see the steps, like what it's doing. And it's interesting, but... Good point. I should be paying more attention to that part.

**Tom (27:17):** Well, yeah. Sorry. Now I'm curious because this came up last time, where I'm confused about internal tools versus external, but I'm pretty sure this reasoning mode is something that's common in all of these different tools, not just the internal ones.

But yeah, the reasoning that's going on behind any kind of problem you throw at it is very impressive. I often will skim at that to see if it's going in the right direction, to see if my prompt was understood, and just to see how it's approaching different problems.

All right. Well, any other themes you want to jump to? I've got a lot of different questions that I could focus on. Molly, you talked about temperature and top-p. I thought this was worth calling out. Do you ever play with the knobs in order to control the creativity of the outputs?

**Molly (28:16):** I only have done it through API endpoints, like I think you mentioned in your notes. I don't know of a way to configure it in a web app.

**Tom (28:30):** Yeah. I don't think you can. I think the only one you could do that in in the Gemini ecosystem is AI Studio.

**Valeria (28:42):** I think you can do it in Mistral.

**Tom (28:44):** Oh, can you? Yeah, I think so. I don't really use Mistral much. Is it more popular in European contexts?

**Valeria (28:55):** Oh, I don't know. I recently started using it, but very recently. But I saw that they have... Yeah, you can control the temperature for that one.

**Tom (29:04):** Yeah. And Molly, you were saying that it's good to understand contexts where you might want to have a more creative output and a less creative output. I think that's definitely worth...

**Molly (29:21):** Yeah, I was going to say it took me... I think I understand top-p now, but when I read it in the book, I did not get what he was talking about. Temperature, I think, is easier to comprehend, but top-p was harder. I think it's like it limits the number of options that it chooses from?

**Tom (29:43):** Yeah. The pool of words.

**Molly (29:46):** Yeah.

**Tom (29:46):** You know, when you called that out, I was like, "Oh, yeah. I keep hearing about top-p, but what is it?" And so I was trying to make sure I was grasping that. Yeah, top-p limits how big of a selection of words it's going to pull from, whereas temperature is just how likely you choose the most predictable next word.

It seems like you could play around with those knobs and see if you get different outputs. But I'm trying to think of situations where I want more creativity. I think in many tech-comm situations, people don't want any creativity at all. They want the most predictable outputs.

I actually... you can define an agent markdown file, like you call a file `GEMINI.md`. Claude, I'm sure, is highly similar. In fact, I think Gemini patterned this after Claude, where you have this agent markdown file where you can define things that you want. In my agent markdown file, I basically say, "I want you to make sure that everything you say can be backed up by the API reference material." So, it really restricts creativity. It's just... it will actually propose deleting stuff that it doesn't find in the API reference.

Do you ever use one of these agent markdown files, Molly, or...

**Molly (31:13):** Oh, I was... I do not, but I'm curious. In Gemini, is that the same thing as adding instructions for Gemini?

**Tom (31:18):** I've never done anything. Yeah.

**Valeria (31:21):** Okay. Can you also use that in the chat interface, or do you use it only for the API?

**Tom (31:28):** Um, so I think it's just for the Gemini CLI, but I could be wrong. I know that for our internal tools, yes, you've got a different file that you can use for Gemini Code Assist, but I don't know externally if it uses the same. I'm sorry.

But basically, look to see. Most tools have this now, where you've got an agent markdown file you can add additional instructions to. I have other instructions that say "Don't use all these words. Never say 'crucial,' never say 'delve,' never say 'leverage,'" you know, all the buzzwords that just scream, "I'm written by an AI." I also say, "Try not to use many adjectives or adverbs," because most AI output is overblown. It overhypes things verbosely.

So, I've done a lot of these manipulations through this agent markdown file instead of through the controls, the temperature and the top-p knobs. And I think that's maybe more of the current direction.

**Molly (32:34):** Do you find that it honors your instructions? Like, it never breaks those rules, right?

**Tom (32:39):** No. No. That's one of the more interesting parts, is that instruction following—which is the term, right, to describe that—is not a given. Sometimes it doesn't even look at the file. And I'm like, "Hey, why didn't you follow the instruction here?" and it's like, "Oh, oh, yeah. Sorry, I forgot to read that."

One little fun tip that a lot of people do to make sure that it's following your instruction is you can add an instruction that says, "At the end of your conversation, teach me a new fun, unusual word," or "teach me a word in Latin," or "teach me a new word in another language." And that way, it's a reminder that, "Oh yeah, it is actually following the instruction in this markdown file."

I actually saw a really interesting article... Let me see if I link to it... Did not link to it. It's called "Claude Skills." This is the idea that instead of just having a markdown file that adds additional context, you can have some documentation that describes how to perform certain tasks. And they call these "skills files." So that if, let's say, you're writing release notes and you specifically have a skill defined about how to write release notes, it can follow that skill and then perform the task better.

I thought... I mean, it seems like just a variation on the agent markdown file. I don't know why the two couldn't work together in the same way, but it sounded like it was more of an explicit skills file or something. Have you ever heard of this Claude Skills thing? If you just Google it, I think you'll find the article. Somebody was claiming that it was going to be bigger than MCP.

MCP was not even mentioned in this book that I saw. So I thought that was interesting. Somehow MCP was not on the radar a couple of years ago, and now it's one of the biggest topics, talking about how you give these tools additional capabilities. With the MCP, you can just connect your CLI tool in with additional capabilities, like extensions, so that it can have more power. It can read bugs, it can read change lists, it can read internal pages, it can read a set of documentation, it can do code builds, and so on.

**Valeria (35:19):** It also didn't talk about the format for the prompts. I've been trying to consume some content on what's the best format for prompts. Some people say it's XML, some people say it's markdown. I think there's not consensus right now.

**Tom (35:46):** Yeah. So in your prompts, are you looking to identify different facets like audience, output format, and you want to tag things? How are you trying to structure your prompt in a more strategic way, looking for a tagging language or markup or something?

**Valeria (36:04):** Yeah.

**Tom (36:10):** Yeah. I think that's a really valid critique of the book and a good question. Did anybody use any particular conventions? I often in my prompts will use three little underscores or three little dashes when I want to separate out different parts, like, "Hey, this is a part of the reference doc that I want you to look at...---... now I ask my question, make sure you pay attention to this," and so on. But I don't really use structured tags in prompts. Maybe I should.

**Valeria (36:46):** I use mostly markdown to structure by context, role, instructions, yeah.

**Tom (37:04):** All right. Let's see... any other thoughts, themes you want to talk about?

I was thinking about the popularity of topics. We realized in doing internal lunch-and-learns at work that topics related to tools are very popular, whereas non-tools topics are way less popular, and book clubs are the least popular of all. Not that we've had AI book clubs, but I did have a book club at my work related to automotive and transportation topics, and it just fizzled away.

It got me wondering: if this group were conceived of as an "AI Tools Club" instead of an "AI Book Club," do you think it would have five times as many interested people? Or would that just contribute to an AI saturation that's just fatiguing everybody already?

**Dan (38:18):** What would you want to... I don't know... what tools? I think one thing... Someone was giving a lecture to my company's design team, which I'm a part of, and someone asked, "There are so many tools out there, so many things, how do you keep up with all of them?" And the person said, "You don't. You really shouldn't, because you're just going to drive yourself crazy. There's always new stuff coming out. Just find the stuff you like and then just learn that, go with that."

So maybe I kind of throw the question back at you: are there specific topics that you're interested in, or specific tools that you're interested in learning more about, or ways of approaching tasks through AI that have really surfaced for you in the book club?

**Tom (39:19):** You know, I found that my interests in AI are heavily related to using it to create content, more of the prompt-engineering side. I'm not as interested in structuring a user experience to have a chat interface for my docs, in part because all my docs are behind a firewall and I can't really enable that very easily.

So I do get really into: "What are the techniques for doing certain doc tasks that would be helpful?" Like these agent markdown files as a way to get rid of the poor language of AI outputs. I like that idea.

I'm heavily involved in the Gemini ecosystem because that's the allowed toolset. So, my understanding of Claude, even though I've heard Claude and other tools are amazing, I'm not really using them. I wouldn't focus on tools that I don't use, because that's a lot of time. And you only have limited time. That's a reality, right? You have what, maybe five hours a week to actually do something outside of work and family. And so, am I going to spend that sinking time learning a tool that I can't actually use in my workday? No.

And people are probably the same way. Like, maybe you don't use Gemini, so maybe you use Claude and you don't want to learn Gemini. So I don't know. This question of where do I spend my time learning? Do I read books? Do I do workshops? Do I focus on the latest tools? Do I read podcasts and news? It's a good question. Does anybody have any thoughts on that whole topic? Like, what's the most valuable to you?

**Lois (41:10):** Sometimes I just feel like I want to do something that's totally useless. So for example, I might have a sudden interest in a math topic, and although theoretically it's related to AI, it's not necessarily going to help me with my work this week or next week or anything. But it's just... I get tired of having to make everything totally practical and just feel like I want to learn something that's, you know, whatever, but I can't necessarily tie it to anything practical.

**Tom (41:39):** I think for me... that's a great point, Lois. I think for me, there is an appeal to reading a book that is becoming lost in this sea of frenetic-paced change. And I missed that this month with this instructional book. It wasn't the same as a narrative book that has an analysis and more ideas-based thoughts, that's more in the humanities realm.

And there's value to that, which is partly why I wanted to do this book club: to kind of just force myself to not forget to read and to remember that I enjoy reading stuff, even if it's not that helpful. Even if it's just deepening my awareness of the ethical problems of something and it's not going to help me be twice as productive at work.

There's something about reading that is being lost. And I can tell—Dan and Molly, you've been to a lot of these, and you're deep thinkers and readers, and Valeria and Lois probably as well—you enjoy, you're more intellectual than probably a focus on just tools and "how to do this in this technical way" workshop would really draw upon.

**Dan (43:03):** To that, I feel like in some ways that is really my strength: reading books like this and sort of thinking about things in a more philosophical way, which is something that is really hard to find within a company or the tech industry. So that's one of the things I've really valued about it.

But it is interesting to also think about, "Oh, is there a threshold that at some point I'm like, 'Oh, I think I've read enough books about AI'?" I'm kind of curious about that, too. I mean, every time I read a new one, I'm like, "Oh, that's something that's definitely very new." And definitely the Karen Hao book was huge. That was such an incisive book.

So yeah, I think it's interesting to ask those questions at this point, because we've been doing it for at least half a year. But I do really like the humanities side of it.

**Tom (44:15):** I think you're asking the right question there. Will we hit a threshold where the topics are no longer new and it's just sort of regurgitating? And I think you're right. I think there will come a point. So, I haven't actually scheduled anything beyond February, because I'm curious to see if these new books will add to the discussion or if they will just tread old ground.

I've also decided that I'm never going to add a book to this schedule that doesn't have at least several hundred really positive reviews. With this technical book, it did have a lot of reviews, but even technical books never get more than like 50-60 reviews.

Anyway, with the automotive and transportation book club that I held at my work, I had that going for like two years, and we did hit a point where you're reading a book and it's referring to another book that we've already read and another author we've read. It starts to become a little bit repetitive, and it's like, "Well... " You really feel a sense of expertise about the domain, to be honest. In that club, we read literally like 20 books, and if you focus on such a small niche as automotive and transportation, there's not that many new books anymore. So we sort of exhausted it, and then I just ended it.

Interestingly enough, that book club, it only drew at most three to four people, and then it got smaller and smaller. But one of the persons that would come was like a VP, four or five levels above me, and it was amazing. He had so much history and insight, and he was a deep thinker and was just so polished as well. It was an amazing experience just to have him there.

It made me realize, in tech companies, we're surrounded by more mechanical tasks and more technical stuff. And we have this intellectual itch to scratch, and the books give us this opportunity to really think in a different mode and dive into something that doesn't necessarily translate to the latest project, but is enriching nonetheless.

**Lois (46:37):** And were people from different teams participating in that book club?

**Tom (46:43):** Yeah. It was cross-organizational. But I work in the automotive group, getting maps in cars and so on, embedded directly in your car. So it was mostly the people working in that geospatial sort of area of Google. But yeah, finding a genre and drilling into it is really kind of fascinating. It's almost like a graduate-level seminar on a specific theme. I mean, you wouldn't want to just take the same graduate-level seminar year after year after year, right? You get tired of books, and you've read enough in a genre where you probably level off and you're not really soaking in a bunch of new info. And maybe we'll hit that point. But we'll see in February. And, could also always pivot to another topic or just decide that reading is passé and we're going to do other stuff. I don't know.

There's always... I know there's different approaches to this. I've seen different meetups that do, "We're going to read one machine learning paper this week" or whatever, that type of thing. Like you have a technical focus, or... one a week is probably... would certainly be beyond me.

**Molly (48:02):** There is one of those paper... one of those clubs at work, actually, Lois. I think it's on AI safety, right? Which is always a fun topic because it's like existential doom domain.

**Lois (48:18):** Oh, if you know about it, send it to me.

**Tom (48:20):** I can find it. I will. I think a lot of the papers are pretty technical. I looked at one of them. A lot of them are from that 'arXiv' site, with an X. It's a lot of work to try to find papers like that. I noticed it's much easier to find books because you can easily vet them by looking at the number of reviews and seeing whether they're popular. With a journal article, it's a lot more work, to be honest.

But there are a lot of new AI books coming out that I'm exploring. It's fascinating that this topic has dug in its hooks and remained the main topic of conversation everywhere, even after two-plus years. So, there are just more people writing about it.

To tie this back to the technical book, coming back to a comment somebody added to my site on the Karen Hao book: Somebody said they listened to a podcast with Karen on *Hard Fork*. (If you don't listen to *Hard Fork*, by the way, it's a pretty good, popular AI podcast with some New York Times and other Platformer person, Casey Newton.) The hosts asked her if she used AI, just trying to gauge her level of understanding of the topic. Her responses didn't really indicate that she had a deep understanding of AI; it was more on the ethical side of things. And they lost interest in reading her book because of that.

Coming back to something Dan was touching upon earlier, and Molly: understanding the details, the technical details, at least superficially, on how these tools work really does give us a better invitation into the conversation, and familiarity and fluency. Whether you're for AI, against AI, or you have more of a pragmatic approach, having that technical foundation does seem like a requirement to have any kind of respect in a conversation or a post you're writing or just whatever other context you have.

All right. Well, on that note, the next book in the book club is a meaty one. Sorry, let me share my screen real quick.

This one is from Yuval Noah Harari, who was really well known for some other books that he wrote. What is he... Author of *Sapiens*.

**Lois (51:24):** Yeah. I don't know. Have you listened to *Sapiens*? I think it was like a history of humankind.

**Molly (51:30):** Yeah, I read one of his books, but I don't remember. I think it was *Sapiens*.

**Tom (51:34):** That's his most well-known book, I think. And he had another book, too, that was pretty popular. But this one, *Nexus*... 8,000 reviews, 4.6 stars. So, I'm really hoping that it delivers. And I think it's going to be on the side *against* AI, unfortunately. I think most books that are critical takes on something tend to be pretty anti-hype books. But it's kind of a long book. I hope it's readable.

**Lois (52:08):** Yeah, I saw this book at the bookstore last year and it looked really interesting, and then ultimately I thought, "No way I'm going to read all this." So I'm hoping that I'll get some motivation from this book club to actually tackle it. I guess my feeling would be, just talking about whether someone is an expert in the subject like Karen Hao is or not, I would feel he's probably not a technical expert. Is that going to...?

**Tom (52:36):** Yeah. I mean, I think he... I even heard a podcast where he was trying to avoid using his smartphone, too. So he may have gone fully the opposite direction. I don't really know. But I do like... he's definitely a very intellectual person, and his perspective is one of a broad perspective, looking at the history of information over time.

Anyway, if we find that this book is too long to fit into one month, I can always break it up. I don't want people to feel like they don't have time to get through some of the stuff. Sometimes I think a book isn't worth spending more than a month on; skim the parts that are boring. But anyway, that's next on the list. And we'll see how it goes. I have to think that it's going to be easier than this book we just did this month.

Yeah, this book this month made me feel like I really don't know nearly as much about AI as I thought. Like, all these things are... I can barely even understand them. So, you're not alone in that sense of intimidation or overwhelm there.

Any last thoughts before we wrap things up?

**Lois (53:58):** Getting back to what you were saying about, "does it help you fly the plane?" I think so. For example, if you think about the 737 Max and the disasters that occurred, if the pilots had known how it was engineered and what its limitations were, yes, I think they could have avoided the crash. So that's a very specific case where it was badly engineered, but if the pilots had known this, then they wouldn't have been in the same predicament that they had to resolve in the last couple of seconds.

**Tom (54:28):** Yeah. Yeah. I think that's a good point, and I hope that's the case, right? If I'm going to use an AI tool at work and I say, "Hey, go ahead and fix this bug," and I just hope that it's agentic and smart enough to do everything that it should, maybe understanding what it's doing, its capabilities, its weak points, would help me anticipate failures that might happen. Yeah, I actually put some thoughts on that specific scenario in my notes. Thanks, Lois.

And maybe the plane analogy isn't the greatest because so many plane crashes are probably triggering for people. But, you know, anything. Are you a better driver on the road if you understand how the pistons in your engine are working? Probably. Maybe a little. I don't know. If you floor it... There are probably ways that you could damage your car by driving it that, if you knew better how they work, you could prevent that through better maintenance.

Yeah. Okay. Well, thanks for coming to this, and I'll hopefully see you next month. I appreciate your participation and your insights. I will post this recording. I hope you're okay with the recordings that I'm sharing. If you ever aren't, just reach out to me and let me know. Not sure what I can do about it, but...

Do people listen to the recordings? Valeria said she's been listening to some of the recordings. So even though this is her first time attending live—being in Barcelona and so on—she has been checking out the recordings.

All right, have a great rest of your weekend.

**All (56:25):** Bye everyone. Take care. Bye.