---
title: "Achieving a feedback improvement loop with documentation by simulating user queries"
permalink: /blog/improvement-feedback-loop-docs
date: 2026-11-01
categories:
- ai
keywords: documentation feedback loop, AI chat logs, agent skills, AGENTS.md, Vercel agent evals, Next.js 16, retrieval-led reasoning, Developer Knowledge API, MCP servers, agent usability testing, OpenAI skill evals, Kapa.ai, Mintlify, Impersonaid, Google Maps Platform
rebrandly: https://idbwrtng.com/improvement-feedback-loop-docs
description: "A couple of weeks ago, I wrote about a documentation strategy I'm pursuing: mining chat logs from AI app builders to find doc problems and fix them in a continuous loop. In this post, I'll go deeper into the obstacles I faced when I looked at the logs, and describe a clever workaround &mdash; simulating the same user queries but asking the agent to document a build log &mdash; that turned out to be more useful than the logs themselves."
---

* TOC
{:toc}

A couple of weeks ago, I wrote about a documentation strategy I'm pursuing: mining chat logs from AI app builders to find doc problems and fix them in a continuous loop. (See [My AI strategy to fix docs based on chat logs](https://idratherbewriting.com/blog/ai-strategy-to-fix-docs-based-logs).) Since you might not have read that post, let me briefly set up the larger goal. 

For years, technical writers have written documentation largely in the dark, with little visibility into where developers get stuck when trying to use an API. Now that developers are using AI coding agents and app builders to build apps with our products, those chat sessions should be a goldmine. 

If we can look at the logs of how users are trying to build with our APIs, identify the frictions and failure points where the agent or user goes off the rails, turn those failures into actionable doc bug tickets, and feed them into an automated doc-bug-fixing skill, we can create a feedback loop that ratchets up documentation quality in impressive ways.

That was the idea, anyway. In this post, I'll go deeper into what got in the way when I tried to put this loop into motion, and describe a workaround that turned out to be more useful than the logs themselves.

## The logs don't show what the agent did with your docs

To test this workflow, I first got access to sanitized logs from an AI app builder where developers describe an app they want and an agent writes the code to build it ([AI Studio](https://aistudio.google.com/apps)). I expected the logs to show where the agent read our Google Maps Platform documentation, misunderstood an instruction or code sample, and produced broken code that we could trace back to a doc gap.

However, the logs didn't give me a clear picture of what was wrong with the docs. There's no neat log entry that says the agent read this page, misused this parameter, and the build failed as a result. The logs I had were sanitized summaries of each conversation, and they didn't record which docs or skills the agent loaded, which tools it called, or which errors it hit.

A bigger problem showed up first, though. In most sessions, the agent never consulted our docs at all:

* Many sessions had nothing to do with the product I document (Google Maps APIs).
* In sessions that did involve the product, our product skill rarely fired. It loaded in only a small fraction of sessions.
* The agent usually built from memory. It relied on what it already knew from training, and it often chose an open-source mapping library instead of ours.

Agents are confident (some would say *arrogant*). They assume they know how to build whatever the user asks for, so they rarely stop to look anything up. (Tech writers are probably groaning now. For years we complained that human users needed to RTFM; now, agents are adopting the same behavior of not reading the manual.)

## What Vercel found about skills that don't fire

Vercel ran into the same problem (product skills not being used by agents, which then relied on outdated training data) and wrote about it in [AGENTS.md outperforms skills in our agent evals](https://vercel.com/blog/agents-md-outperforms-skills-in-our-agent-evals). Vercel, which makes the Next.js framework, tested whether coding agents could correctly use Next.js 16 APIs that aren't in the models' training data.

When they gave agents a Next.js docs skill, the agents didn't invoke it in 56% of the eval cases. The pass rate (53%) was no better than having no docs at all.

Adding explicit instructions to `AGENTS.md` to use the skill raised the pass rate to 79%, but the wording mattered a lot. One instruction, telling the agent it must invoke the skill, made it anchor on the doc patterns and miss details in the project itself. Another, telling it to explore the project first and then invoke the skill, worked better.

What worked best was putting a compressed docs index (about 8 KB) directly into the project's `AGENTS.md` file, which the agent loads into its context on every turn. The index points to version-matched doc files in the project and includes this line:

> IMPORTANT: Prefer retrieval-led reasoning over pre-training-led reasoning for any Next.js tasks.

With that in place, the pass rate went to 100%, because the agent no longer had to decide whether to look something up. Vercel can do this because it owns the project scaffolding. Starting with Next.js 16.2, `create-next-app` adds an `AGENTS.md` file to new projects. An API provider usually doesn't create the developer's project, so it doesn't have that channel.

The same idea applies to the system prompt of an AI app builder. If you control that system prompt, you can add something like this:

> Your training data about Google Maps APIs is out of date. Before you build a solution that uses maps or location data, load the Google Maps Platform skill and use its docs instead of relying on memory.

I tried a version of this. I can't change the builder's system prompt, so I put a two-sentence hint like this at the start of the user prompt instead. Short prompts that clearly describe a map app loaded our skill with or without the hint, so I made longer prompts (which might simulate user behavior more closely) that didn't mention our product by name. 

Without the above hint, the agent loaded our skill in 0 of 2 runs. With the hint, it loaded the skill in 2 of 2 runs. A prompt for an app that didn't need a map still didn't load the skill, so the hint didn't make the agent load it everywhere. These are small samples, but they point the same direction as Vercel's results.

{% include ads.html %}

## A system prompt reaches only one platform

Adding instructions to a prompt, as I did, has limitations. Even if a hint like this works, it fixes the problem only on the platform whose system prompt you control. People build apps with Claude Code, ChatGPT, Cursor, Replit, and many other tools, and each one has its own system prompt that you can't change. On those platforms, the agent's choice depends on its training data, what it finds on the web, and which skills or MCP servers the developer installed (which help only developers who already chose your product). 

Still, fixing one platform is better than nothing. Once your skill fires and the agent starts building, you can get to the second (and more interesting) part of the problem: identifying what the agent struggles with in your docs.

## Recreating user sessions with a build log

If your logs record what docs the agent struggled with, great. Mine didn't. What I did have were sanitized, high-level descriptions of the kinds of apps people were trying to build &mdash; for example, a site for a bakery that shows its store locations on a map. 

So I had my `analyze-chat-logs` skill go through a week's worth of these descriptions (a sample, not the full set) and write 10 prompts that roughly simulated the most common scenarios. Then I ran those prompts myself in the same AI app builder tool ([AI Studio](https://aistudio.google.com/apps)). To each prompt, I added a block of instruction asking the agent to keep a build log file that records, for each step, what the agent did, which source it used, why, and the result or error. The block also asks the agent to note where the docs were hard to use.

Before you put too much stock in the agent's build log file, note that agents are unreliable narrators. In one build, the log said the agent used a skill that it never downloaded. In others, the agent downloaded doc files and never opened them. Because I ran these sessions myself, I could also check each one against the platform's action history. (In Google AI Studio's Build mode, the person running a session can see its action history.) Just to be clear, every session and action history I describe in this post is one I ran, not a user's.

## What the recreated sessions turned up

Across the 10 scenarios, I ran about 15 builds (some failed because of quota limits or platform errors, so I reran them), and 9 apps were built. I fed the built apps and build logs into AI for analysis. It identified 8 doc-related issues. Seven of them were in the product skills the agent loaded, not in the docs on our site.

The issues fell into a few broad patterns, which I suspect show up with many APIs:

* **Setup steps the agent had to discover by trial and error.** A missing configuration step cost a fix cycle in almost every build.  
* **Broad data requests.** Agents often requested more fields than the app used. The guidance on requesting only the fields an app needs wasn't prominent enough to change that behavior.  
* **Example code treated as a spec.** Agents copied examples line for line, shortcuts and placeholders included.  
* **Instructions that didn't hold everywhere.** A rule that worked for some endpoints caused errors on others.  
* **Thinner guidance for frameworks.** Guidance for building with a popular framework like React was weaker than guidance for the core API, partly because framework samples often live outside the main docs.  
* **Policy rules in the wrong place.** Requirements like attribution lived on pages the agent didn't open while it was writing code.

## Fresh docs help only if the agent fetches them

I expected agents to pull fresh docs on demand by calling a docs tool, such as an MCP server that searches the official docs. Because a docs MCP server searches the published docs when the agent asks, its results tend to stay close to the current version of each page.

In the builder I tested, the agent rarely made those tool calls. It got docs in three ways:

* **Product skills (most of the time).** The agent downloaded static Markdown files that a pipeline generates from the published docs.  
* **A docs retrieval tool (occasionally).** The agent called a Maps-specific docs retrieval tool (`retrieve-google-maps-platform-docs`, from the [Maps Code Assist MCP server](https://developers.google.com/maps/ai/code-assist)) in only a small fraction of sessions.  
* **Doc pages (rarely).** Once in a while, the agent fetched a doc page directly.

A docs API can still play a part, because a skills pipeline can use it to pull the pages that an LLM then rewrites into skills. In that case, though, the API feeds the pipeline, not the agent.

### Problems with generated skills between the docs and the agent

Having generated skill files sit between the docs and the agent creates two problems:

* **Slower doc updates.** A skill changes only when someone reruns the skill generation pipeline and publishes the output, and I'm not sure when the skill files my test agents loaded were last regenerated. A doc fix I publish today won't reach agents in this builder until the next skill regeneration.
* **Harder debugging when the agent makes a mistake.** Tracing a build failure back to a specific doc page takes detective work. The problem could come from several places:
  * The source doc page has an error or a gap.
  * The LLM introduced an error when rewriting the doc page into a skill.
  * The skill's example code has a flaw or shortcut that the agent copied.
  * The model ignored a rule that was right in front of it.

This setup applies to the one builder I tested. In IDE agents like Claude Code, Cursor, or Gemini CLI, a developer can connect a docs MCP server, such as the [Developer Knowledge MCP server](https://developers.google.com/knowledge/reference/mcp), so the agent queries live docs directly. Even in those tools, though, developers have to install the MCP server first. When a skill is also installed, the agent might read the skill first and call the docs tool only when the skill points to it or doesn't cover something, as the build log later in this post shows.

That's a strong argument for tech writers to take a bigger role in product skills instead of treating them as someone else's generated artifact. Writers can review what the generator produces (especially the example code, which agents copy line for line), have a say in how often skills are regenerated, and test whether a doc fix makes it all the way to the agent.

## One actionable doc bug

When I sent the 8 bugs through my doc bug-fixing workflow for another agent to fix, only one became a doc change. A couple of API reference pages didn't explain how the fields you request in a call affect the pricing tier for that request, so the fix adds that explanation to those pages. The other seven issues were in the skills, which a different team owns, so they became handoffs with proposed changes.

So my plan of mining chat logs for a steady stream of doc fixes was perhaps too dreamlike. Accessing, curating, and parsing the data to find doc problems is like looking for special seashells on the ocean floor. And most of what I found pointed to the skills, not the docs. However, simulating the same user queries and having agents describe their actions in build log files is more insightful than trying to mine the same information (often missing) from user chat logs themselves.

## A live example: embedding a biking map on my own blog

To show what a build log looks like in practice, I ran the same experiment on my own blog using Gemini in Antigravity IDE. I asked the Gemini coding agent to embed a Google Map of a 17.5-mile bike ride into an older post of mine, [The most perfect 17-mile biking loop in Santa Clara](/blog/biking-the-santa-clara-loop/), and to keep a `build_log.txt` file describing every step it took to retrieve information, whether from the Google Maps Platform plugin, remote skill files, a docs API, or memory.

Across 8 logged steps, the agent found the post, extracted the route coordinates from an older KML link, prompted me to install the official Google Maps Platform plugin, loaded 4 sub-skills and 9 reference files, fell back to the Maps Code Assist API when a routing reference file contradicted the main skill, and embedded a `<gmp-map>` web component with the route polyline and bicycling layer.

<details markdown="1" style="margin: 1rem 0; padding: 0.75rem 1rem; border: 1px solid #ddd; border-radius: 4px; background-color: #f9f9f9;">
<summary style="cursor: pointer; font-weight: 600;">View the full build_log.txt (Steps 1–8)</summary>

```text
=== AGENT BUILD LOG ===
Task: Embed a Google Map of the Santa Clara loop in https://idratherbewriting.com/blog/biking-the-santa-clara-loop/
Started: 2026-11-01T15:20:37-08:00

Step 1: Locate the target blog post and check the Agent Marketplace
- Action: Ran `find _posts -name "*biking-the-santa-clara-loop*" -o -name "*santa-clara-loop*"` via `run_command` to locate the markdown file in the Jekyll repository.
- Action: Called `search_marketplace` with queries `["google maps", "maps", "geo"]` to check if an official Google Maps skill or MCP plugin exists before consulting external docs or improvising from memory.
- Result (File search): Found `_posts/2020/11/2020-11-28-biking-the-santa-clara-loop.md`.
- Result (Marketplace search): Found an official uninstalled plugin: `antigravity-plugins-official/plugin/google_maps_platform` ("Google Maps Platform: Integration skill and tools for Google Maps Platform APIs").

Step 2: Inspect the existing post and route data
- Action: Read `_posts/2020/11/2020-11-28-biking-the-santa-clara-loop.md` using `read_file`.
- Observation: Line 19 already contains a legacy Google My Maps iframe (`https://www.google.com/maps/d/embed?mid=16lrGzUFJMukBvARwRrwCY2JBjvlDOu_D`).
- Action: Tested the existing My Maps embed and KML export endpoint (`https://www.google.com/maps/d/kml?mid=16lrGzUFJMukBvARwRrwCY2JBjvlDOu_D&forcekml=1`) using `curl` via `run_command`.
- Result: The KML endpoint returned the full route geometry (`<name>Santa Clara loop - biking trail</name>`, 1,157 lines of XML) with the exact `<LineString>` coordinates (1,047 points) and start/end `<Point>` placemarks at `Monroe @ San Tomas Creek, Santa Clara, CA 95051, USA` (`37.36404, -121.96868`).

Step 3: Pause for Google Maps Platform plugin installation
- Reason: Rather than relying on model training memory or scraping general Google Maps documentation manually, the Agent Marketplace provides the official `google_maps_platform` plugin.
- Action: Surfaced `<plugin-card catalog-id="antigravity-plugins-official/plugin/google_maps_platform"></plugin-card>` so the user could install it.
- Result: User installed the `google_maps_platform` plugin (`google_maps_platform/skills/SKILL.md`).

Step 4: Load the Google Maps Platform Main Skill & Dynamic Skills Index
- Action: Read `google_maps_platform/skills/SKILL.md` using `read_file`.
- Observation: The main skill enforces a strict Grounding and Routing Workflow:
  1. Never rely on training memory.
  2. Fetch the remote Skills Index (`https://www.gstatic.com/googlemapsplatform-agent-skills/index.json?client=antigravity`).
  3. Match and fetch relevant sub-skills (`SKILL.md` and reference docs) from `www.gstatic.com`.
  4. Use the Maps Code Assist endpoint (`https://mapscodeassist.googleapis.com/v1:retrieveContexts`) as a fallback for uncovered API details.
  5. Follow mandatory compliance checkpoints (review `compliance-review` skill, include `gmp_git_agentskills_v1` attribution ID, avoid deprecated APIs like `google.maps.Marker`, `DirectionsService`, `DirectionsRenderer`, and `KmlLayer`, and request a Google Maps API key or Maps Demo Key rather than hardcoding credentials).
- Action: Fetched `https://www.gstatic.com/googlemapsplatform-agent-skills/index.json?client=antigravity` via `curl`.
- Result: Retrieved 42 official Google Maps Platform sub-skills.

Step 5: Fetch Matched Sub-Skills and Reference Guides from gstatic.com
- Action: Matched four sub-skills from `index.json` and fetched their `SKILL.md` files with `?client=antigravity`:
  1. `maps-javascript-api-javascript/SKILL.md` (interactive 2D/3D maps, polylines, GeoJSON data layers, bicycling layer, routing)
  2. `maps-embed-api-javascript/SKILL.md` (iframe-based `directions` and `view` modes)
  3. `gmp-common-api-keys/SKILL.md` (API key management, restrictions, and Maps Demo Key quickstart)
  4. `compliance-review/SKILL.md` (mandatory Terms of Service and deprecation review methodology)
- Action: Fetched the specific capability reference files linked inside those sub-skills:
  - `maps-javascript-api-javascript/references/add-customizable-interactive-map-web-page-mobile-app.md`
  - `maps-javascript-api-javascript/references/add-marker-map.md`
  - `maps-javascript-api-javascript/references/add-kml-layer-map.md`
  - `maps-javascript-api-javascript/references/add-geojson-data-map.md`
  - `maps-javascript-api-javascript/references/add-shape-line-map.md`
  - `maps-javascript-api-javascript/references/add-bicycling-layer-map.md`
  - `maps-javascript-api-javascript/references/specify-the-travel-mode-drive-transit-walk-two-wheeled-for-route.md`
  - `maps-javascript-api-javascript/references/specify-stop-pass-through-point-for-route-request.md`
  - `maps-embed-api-javascript/references/embed-standard-google-maps-directions-view-into-iframe-web-page.md`

Step 6: Query the Maps Code Assist Grounding API (`mapscodeassist.googleapis.com`)
- Reason for Fallback: The sub-skill reference files for routing in `maps-javascript-api-javascript` had direct contradictions and outdated/broken code, forcing a fallback query to `https://mapscodeassist.googleapis.com/v1:retrieveContexts`.
- Action: Sent POST request with `"llmQuery": "Maps JavaScript API Route.computeRoutes bicycling route with createPolylines and createWaypointAdvancedMarkers"` and `"source": "antigravity"`.
- Result: Retrieved current reference documentation (`developers.google.com/maps/documentation/javascript/reference/3.65/route`) and official sample code (`samples/routes-markers/index.ts`) showing the actual `Route.computeRoutes()` signature and `result.routes[0].createPolylines()`.

Step 7: Confirm Architecture with User & Prepare Route Assets
- Action: Asked the user via `ask_question` to choose the embed method and how to handle the API key.
- Result: User selected `<gmp-map>` with the exact KML route polyline, markers, and `BicyclingLayer`, and requested a central config variable in `_config.yml` for experimenting with their Maps Demo Key.
- Action: Extracted the 1,047 coordinate points from the My Maps KML export into `/assets/files/santa-clara-loop-path.json` and saved `/assets/files/santa-clara-loop.kml`.

Step 8: Implement `<gmp-map>` in Blog Post & Configure Central API Key Setting
- Action: Added `google_maps_api_key: "YOUR_GOOGLE_MAPS_API_KEY"` to `_config.yml` so the user can drop their Maps Demo Key in one place and reuse `{{ site.google_maps_api_key }}` across any blog post.
- Action: Updated `_posts/2020/11/2020-11-28-biking-the-santa-clara-loop.md` to embed `<gmp-map>` with explicit CSS height, `map-id="DEMO_MAP_ID"`, `internal-usage-attribution-ids="gmp_git_agentskills_v1"`, a `<gmp-advanced-marker>` at the trailhead, and dynamic library loading (`google.maps.importLibrary`) for `BicyclingLayer`, `Polyline`, and `LatLngBounds`.
```

</details>

### How to read a build log for doc and skill bugs

Right away, all the mystery of how the agent accesses information &mdash; what order, what sources, etc. &mdash; is dispelled through this build log file.

The next obvious question: If you're a tech writer looking at a build log like this, how do you know whether there are doc issues to fix? After all, the build succeeded and the map renders on the page. If you only looked at the final output, you would move on.

However, when I asked the agent what it ran into while reading those files, five signals in the log pointed to 8 specific issues in the skills and reference files:

1. **Fallback escalation (Step 5 to Step 6).** The reference files from `gstatic.com` are the primary path, and the Code Assist endpoint is only a fallback for uncovered topics. When the agent fetches reference files for a capability and then calls the fallback API for the *same* capability, the reference files failed or contradicted the rules.
2. **Dead-end reads.** In Step 5, the agent downloaded 9 reference files, but in Step 8 it used only 4 of them. A high fetch-to-discard ratio suggests the index descriptions in `SKILL.md` promised one thing while the reference file delivered something deprecated or unrelated.
3. **Policy collisions between the main skill and child reference files.** The main skill lists legacy APIs that the agent must never use. When a child reference file teaches one of those banned APIs, the agent has to abandon the file and search elsewhere.
4. **Mixed patterns across files.** When the initialization files use modern web components (`<gmp-map>` and `google.maps.importLibrary`) while the feature files still use global callbacks (`window.initMap = initMap`), the agent has to invent glue code to bridge the two.
5. **Local script workarounds (Step 7).** The agent dropped into Python to parse the KML file into a JSON coordinate array. When an agent writes its own script to transform data before handing it to your SDK, it usually marks a deprecation gap or friction point in the docs.

### The 8 documentation and skill issues the log uncovered

When the agent logged the friction points behind those signals, 8 concrete issues came out of that single task, ranging from a sub-skill link that routed to a disabled `DistanceMatrixService` doc to a hallucinated `routeService.computeRoutes()` method and conflicting `<gmp-map>` attribute names.

<details markdown="1" style="margin: 1rem 0; padding: 0.75rem 1rem; border: 1px solid #ddd; border-radius: 4px; background-color: #f9f9f9;">
<summary style="cursor: pointer; font-weight: 600;">View all 8 documentation and skill issues uncovered in the log</summary>

* **Issue 1: A sub-skill link for route travel modes points to a disabled legacy Distance Matrix doc.** In `maps-javascript-api-javascript/SKILL.md`, the checklist item *"Allows setting the desired mode of transportation (driving, walking, transit, bicycling) for route calculation"* links to `references/specify-the-travel-mode-drive-transit-walk-two-wheeled-for-route.md`. The same URL is linked a second time further down under the Distance Matrix section. When the agent fetched that file to see how to set `BICYCLING` mode on a route, the file was titled *"Distance Matrix Travel Mode Configuration (Legacy)"* and taught `new google.maps.DistanceMatrixService()` using `var`. Meanwhile, the main `SKILL.md` states that `DistanceMatrixService` was disabled in March 2025 and forbids writing code against it.
* **Issue 2: A non-existent `routeService.computeRoutes()` instance method in the waypoints reference.** In `references/specify-stop-pass-through-point-for-route-request.md`, the sample code defines a `routeRequestWithStopovers` object and ends with two commented-out lines:
  ```javascript
  // Assuming you have a RouteService instance:
  // routeService.computeRoutes(routeRequestWithStopovers).then(response => { ... });
  ```
  There is no `RouteService` class in the modern Maps JavaScript API `routes` library. When the agent fell back to the Code Assist API in Step 6, the 3.65 reference doc and official sample (`samples/routes-markers/index.ts`) showed that `computeRoutes` is a static method on the `Route` class (`const { Route } = await google.maps.importLibrary('routes'); const result = await Route.computeRoutes(request);`). An agent that trusts the sub-skill reference file without verifying against Code Assist will either call a class that doesn't exist or leave the code commented out.
* **Issue 3: Incompatible initialization patterns across reference files.** The primary initialization guide (`add-customizable-interactive-map-web-page-mobile-app.md`) teaches the dynamic bootstrap loader (`google.maps.importLibrary`) and the `<gmp-map>` web component (accessing `mapElement.innerMap`). However, secondary feature guides (`add-bicycling-layer-map.md`, `add-geojson-data-map.md`, and parts of `add-shape-line-map.md`) still use the older callback pattern (`window.initMap = initMap; new google.maps.Map(...)`) and instantiate `new google.maps.BicyclingLayer()` off the global namespace without showing how it works with `importLibrary('maps')` or `<gmp-map>`.
* **Issue 4: Truncated Markdown table cells from unescaped pipe characters (`|`).** In `maps-embed-api-javascript/references/embed-standard-google-maps-directions-view-into-iframe-web-page.md`, the parameter table rows for `waypoints` and `avoid` explain that multiple values should be separated by the pipe character (`|`). Because the literal `|` inside backticks wasn't escaped when the Markdown table was generated, the parser treated it as a column delimiter and truncated both cells mid-sentence: `Multiple values must be separated by the pipe character (\|)`.
* **Issue 5: HTML attribute casing mismatch on `<gmp-map>` (`mapId` vs. `map-id`).** Setting a Map ID is required whenever you use `AdvancedMarkerElement`; without it, markers fail to appear. Yet `maps-javascript-api-javascript/SKILL.md` and `add-marker-map.md` use `<gmp-map map-id="DEMO_MAP_ID">`, while `add-customizable-interactive-map-web-page-mobile-app.md` uses `<gmp-map mapId="DEMO_MAP_ID">` (camelCase in the HTML attribute), and the Code Assist sample sets `innerMap.setOptions({ mapId: 'DEMO_MAP_ID' })` in JavaScript. Because the docs disagreed on the HTML attribute name, the agent set both `map-id="DEMO_MAP_ID"` on the element and `innerMap.setOptions({ mapId: "DEMO_MAP_ID" })` in JavaScript just to be safe.
* **Issue 6: Missing `solution_id` in the Maps Embed API reference file.** The parent skill `maps-embed-api-javascript/SKILL.md` marks `&solution_id=gmp_git_agentskills_v1` as a mandatory query parameter for all Maps Embed API URLs. However, the child reference file (`embed-standard-google-maps-directions-view-into-iframe-web-page.md`) omits `solution_id` from the base URL structure, the parameter table, and the example URL. This is the exact "policy rules in the wrong place" pattern from my earlier runs: if an agent reads the reference file for the parameters, it drops the attribution parameter.
* **Issue 7: Inconsistent relative paths in `SKILL.md` dependency lists.** In `maps-embed-api-javascript/SKILL.md`, links to reference files include the `references/` folder in the link text, whereas in `maps-javascript-api-javascript/SKILL.md` the link text and `*Dependencies*` arrays omit the `references/` prefix (for example, `["add-custom-geospatial-dataset-map.md"]`).
* **Issue 8: `KmlLayer` deprecation without a concrete client-side migration example.** In `maps-javascript-api-javascript/SKILL.md`, the checklist entry says *"Displays geographic data supplied in a KML (Keyhole Markup Language) file as an overlay on the map. Read add-kml-layer-map.md"* without mentioning deprecation. Only after fetching `add-kml-layer-map.md` did the agent learn on line 3 that `KmlLayer` is deprecated. The file tells the agent to suggest migrating to either cloud-hosted Datasets or third-party KML-to-GeoJSON conversion with `map.data`, and then spends the remaining 180 lines showing legacy `KmlLayer` code anyway. That's why the agent wrote a Python script in Step 7 to extract the KML coordinates into JSON and draw a `Polyline`.

</details>

You can see that the bugs agents surface are a whole new level of specific and technical. Most of them are a category of bugs that we rarely see when humans are logging bugs and filing issues. In fact, if you were able to successfully follow and understand each of the issues, my hat is off to you.

My next step would be to log these bugs in our issue tracker with as much context as possible, and then pass them to my `fix-doc-bugs` skill, which applies a detailed algorithm to fix the issues. 

The question for the technical writer is how many of these issues are real bugs, how many are fixable improvement opportunities in the docs, and how many should go to other teams. As Dave Rensin argues in [Elephants, Goldfish and the New Golden Age of Software Engineering](https://drensin.medium.com/elephants-goldfish-and-the-new-golden-age-of-software-engineering-c33641a48874), as agents take over more of the mechanical execution, **judgment** becomes our primary role. The technical writer's job now becomes looking at each highly technical, specific, and opaque bug the agent identifies and figuring out whether it's the right change to make.

## Agents as users we can observe

Above all, most tech writers care about producing clear, accurate docs that support the tasks users want to accomplish. When we come back to these "first principles" of tech comm, agents give us a tremendous advantage. For the first time, we have a user we can follow and observe in new ways.

Imagine if, a decade ago, you could ask a dozen users to do common tasks with your docs and observe their thoughts, friction, and errors as they struggled to build something with your APIs. That kind of record would have been a goldmine, and it almost never happened. In my 20+ years as a tech writer, I've watched users work with my documentation only a few times. I wrote about those experiences in [Best tech writing tip ever: Watch a user try to follow your instructions](/2007/08/01/best-tech-writing-tip-ever-watch-a-user-try-to-follow-your-instructions/) (2007) and [A few notes from usability testing: Video tutorials get watched, text gets skipped](/2011/07/22/a-few-notes-from-usability-testing-video-tutorials-get-watched-text-gets-skipped/) (2011).

With agents, we can give them tasks and have them log what they're doing. Even if you can't access an action history and must rely on the agent's unreliable narration, it's better than nothing. And unlike a usability lab, you can do this at scale and on a schedule.

For example, say a month of logs shows that many people are building store locators. You write a prompt that captures the typical request, such as "Build a store locator for a chain of 12 bike shops, with a search box and directions to the nearest shop," and add the build log instruction block. You run it every week. 

If agents keep losing a fix cycle on the same setup step, or keep requesting data the app doesn't need, that's a pattern worth a bug. After the fix ships, the same prompt becomes your regression test. If the friction disappears from the build logs, the fix reached the agent. If it doesn't, the fix is stuck somewhere between your docs and the agent, perhaps in a skill that hasn't been regenerated yet. Multiply that by the 20 or 30 most common scenarios, and you have a usability lab that runs continuously.

This is close to the approach OpenAI describes in [Testing Agent Skills Systematically with Evals](https://developers.openai.com/blog/eval-skills). You run a prompt, capture the agent's trace and the files it produced, apply a small set of checks, and compare scores over time. The difference is where the prompts come from. Engineers usually write their own test prompts, while tech writers can base them on what people are trying to build.

## Is anyone else doing this?

I've found people and tools working on parts of this. Docs chatbot platforms like [Kapa.ai](https://www.kapa.ai/) group the questions their bot couldn't answer into coverage gaps. [Mintlify](https://www.mintlify.com/) shows which AI agents read your docs and which pages they read. Fabrizio Ferri-Benedetti built [Impersonaid](https://github.com/theletterf/impersonaid), a tool that tests docs against LLM-simulated user personas. Vercel ran evals on how agents use its docs.

Most of this work looks at how people use docs: what questions they ask, and whether they find answers. With agents, I think we've moved past that. People now ask agents to build solutions with your products, and those agents don't come to your help site to ask questions. 

Instead of studying the questions users ask in chat, we need to capture what people are trying to build, recreate those sessions with agents, and ask the agents for build logs that show where they struggled.