---
title: "Testing a skill"
permalink: ai/skills-testing.html
keywords:
sidebar: sidebar_ai
section: docapisai
path1: ai/skills.html
last-modified: 2026-07-19
---

{% include_relative draft_notice.html %}

## Why test?

It's not enough to make a skill; you should also create a test for it. The blast radius of a bad skill can create a lot of misinformation. Remember, in an ideal world, you're not the only one running the skill. There could be dozens or potentially hundreds of other people running the same skill daily. A flawed skill essentially reprograms the LLM for everyone using it — if the skill is failing or producing wrong outputs, the errors get amplified across your entire organization in a way that's far more damaging than a skill that just fails for you alone.

When a user discovers a shared skill, the first question is always: *How do I know this will actually work? Will it make my content worse?* Without concrete test results, there's no good reason for them to trust it.

Beyond validating a skill's current performance, tests serve several other purposes:

* When the models or tools change, you can rerun the tests to see how your skill performs with the new model or tool. A new model may make a previous skill irrelevant, or the tests may suddenly fail in unexpected ways.
* Tests help you identify weak spots in your skill that might prevent wider adoption.
* Tests that pass give others confidence that a skill is worth using.
* Some validation requirements might require that skills have accompanying tests.

## Prerequisite: modular skills

Before a skill can be effectively tested, it needs to be properly designed. If a skill tries to do ten things in one massive pipeline, testing becomes extremely difficult — if any single step fails to align with a user's workflow, the entire skill becomes unusable, and you can't pinpoint *which* step caused the failure.

I discuss this in more detail in [Modularity of skills](ai/skills-modularity.html), but the short version is: smaller, focused skills that do one thing well are vastly easier to evaluate against specific, measurable criteria. A modular skill that converts headings to sentence case can be tested precisely. A monolithic skill that does sentence casing *and* link checking *and* style editing *and* reference formatting... not so much.

## Anatomy of a test case

From this point on, the testing specifics will depend somewhat on the specific evaluation framework you're using. Most evaluation frameworks share common characteristics, so I'll talk about them in a general way and mention some specific tools at the end.

A skill evaluation includes a test file (typically in JSON or YAML format) that defines various cases. Each case contains several components:

* **Prompt** — the specific task or input provided to the AI.
* **Expectations** — criteria the AI's resulting output must meet.

For example, suppose you have a skill that converts headings to sentence case while preserving proper nouns and acronyms. A test case might look like this:

```json
{
  "test_suite": "sentence-case-skill",
  "cases": [
    {
      "name": "proper_noun_preservation",
      "prompt": "Apply sentence case to the heading: 'Configuring OAuth For Google Cloud'",
      "context": "The document contains: '## Configuring OAuth For Google Cloud'",
      "expectations": [
        "The heading reads '## Configuring OAuth for Google Cloud'",
        "'OAuth' remains capitalized as a proper noun",
        "'Google Cloud' remains capitalized as a proper noun",
        "'For' is lowercased to 'for'"
      ]
    },
    {
      "name": "acronym_handling",
      "prompt": "Apply sentence case to the heading: 'Understanding The REST API Endpoints'",
      "context": "The document contains: '## Understanding The REST API Endpoints'",
      "expectations": [
        "The heading reads '## Understanding the REST API endpoints'",
        "'REST' and 'API' remain fully capitalized as acronyms",
        "'The' and 'Endpoints' are lowercased"
      ]
    }
  ]
}
```

The exact format will vary by framework — some use YAML, some use Python test files, some use text protobufs. The structure is what matters: a prompt describing the task, and explicit expectations for what the output should look like.

{: .note}
A word of caution: while you can use LLMs to auto-generate your test cases, you need to manually review the generated cases. Automated test generators sometimes produce dummy bugs or irrelevant test data that don't accurately reflect real-world usage, leading to skewed evaluation scores.

{% include ads.html %}

## Hermetic testing and data mocking

To test a skill, you might need to recreate some dummy data files locally to mock an environment that the skill can run on. The dummy files might just be copies of live files. The reason: if you try to run the test on live data, that data may fluctuate from day to day. If the skill fails on live data, you don't know if the skill was at fault, if the conditions changed and the test became invalid, or if the data itself was problematic.

By implementing local files or environments that recreate the test data in a consistent way, you can isolate the variable you're testing - the skill, rather than the data.

The idea of making all test data independent from any external dependencies is known as *hermetic testing*. Think of a hermit in a cave - the hermit shouldn't have to exit the cave for any reason. All information is available within the testing environment for the skill to run, with no need for external input.

For example, if your skill is designed to fix documentation on a live web page, and you run your test against that live page, your test is fragile. If the page changes or goes offline, your test fails — not because your skill is broken, but because the environment changed. Instead, you'd copy the page content into a local file and test against that.

## Ablation tests

Many evaluation frameworks run what's known as an "ablation" test. Ablation comes from a medical term meaning to remove part of a tissue. In an ablation test, you're running the test with and without the skill to measure the skill's specific contribution.

An ablation test runs the evaluation's prompts in two states:

1. **Baseline (no skill):** The agent tries to solve the task using only the base model, completely stripped of your custom skill instructions. This establishes the control baseline - what the LLM can already do on its own.
2. **Candidate (with skill):** The agent tries to solve the same task with full access to your custom skill instructions. This measures the performance your skill achieves.

If your skill doesn't perform significantly better than the baseline, the skill is redundant — the LLM already knows how to do the task without your help. This is actually useful information. It means you can drop the skill and save on token costs.

Not all evaluation frameworks use ablation testing. Simpler setups might just score individual outputs against a rubric without comparing to a baseline. But if your framework supports it, ablation is one of the most powerful ways to prove (or disprove) that your skill actually adds value.

## The blind judge

Once the test generates outputs for both the baseline and the candidate, those outputs need to be scored. In more sophisticated frameworks, this is handled by a separate LLM acting as a blind judge.

The evaluation process involves three distinct roles:

* **The actor:** The agent performing the task (running with or without the skill).
* **The mock context:** The simulated, hermetic sandbox environment containing all the test data.
* **The assessor (judge):** A completely separate LLM that programmatically scores the generated outputs.

To reduce bias, the judging flow is blind. The assessor LLM is presented with "Output A" and "Output B." It doesn't know which output came from the baseline and which came from the candidate. It simply scores both outputs based on the expectations defined in your test cases.

In practice, many evaluation frameworks use a simpler approach: a single LLM-as-judge that scores each output independently against a rubric, without the A/B comparison. This is less rigorous than blind comparison, but it's easier to set up and still provides useful metrics. The important thing is that *something* other than your own eyeballs is doing the scoring.

## Metrics beyond pass/fail

Beyond passing or failing the tests, the judge/assessor can collect other metrics:

* **Duration** — how long did it take to perform the task?
* **Turns** — how many back-and-forth cycles did the agent require? A single turn is one exchange where the agent sends a request to the model and gets a response back. Complex tasks often take multiple turns — for example, the agent calls a tool, reads the result, decides it needs more information, calls another tool, and so on. Each of those request-response cycles is a turn. A well-tuned skill should guide the agent to the answer in fewer turns, meaning it's not flailing around or making unnecessary tool calls.
* **Tokens (in/out)** — how many tokens were consumed? If a skill makes the task 50% more token-heavy, you have to weigh that cost against the quality improvement.

For frameworks that support ablation, each metric is calculated by comparing the with-skill result against the without-skill result. The core formula is straightforward:

**Lift Score = (Score with skill) − (Score without skill)**

For example, if the baseline success rate was 40% and the candidate success rate was 80%, your skill achieved a +40% lift score. That's a concrete number you can share with other writers to demonstrate the skill's value.

## Walk-through example

Let's trace through a complete test with the sentence casing skill. This skill applies sentence case capitalization to headings while leaving proper nouns and acronyms capitalized.

The evaluation would have test cases like these:

| Case | Input heading | Expected output | What it tests |
|---|---|---|---|
| 1 | `Getting Started With The API` | `Getting started with the API` | Basic title-to-sentence conversion |
| 2 | `Configuring OAuth For Google Cloud` | `Configuring OAuth for Google Cloud` | Proper noun preservation |
| 3 | `Understanding The REST API Endpoints` | `Understanding the REST API endpoints` | Acronym handling |
| 4 | `Using the iOS SDK in Xcode` | `Using the iOS SDK in Xcode` | Already correct — should be unchanged |
| 5 | `BREAKING CHANGES In V2.0 Release` | `Breaking changes in v2.0 release` | ALL-CAPS handling + version strings |

You'd also have some dummy documents with improperly cased headings in your hermetic test environment. The test runs with and without the skill. A blind judge evaluates the outcomes and generates a report like this:

```
═══════════════════════════════════════════════════════
  SKILL EVALUATION REPORT: sentence-case-skill
  Date: 2026-07-19  |  Model: gemini-2.5-pro
═══════════════════════════════════════════════════════

  RESULTS SUMMARY
  ─────────────────────────────────────────────────────
  Cases run:      5
  Baseline pass:  2 / 5  (40.0%)
  Candidate pass: 4 / 5  (80.0%)
  Lift score:     +40.0%

  DETAILED RESULTS
  ─────────────────────────────────────────────────────
  Case 1: basic_heading_conversion
    Baseline:   FAIL  (lowercased "API" to "api")
    Candidate:  PASS

  Case 2: proper_noun_preservation
    Baseline:   PASS
    Candidate:  PASS

  Case 3: acronym_handling
    Baseline:   FAIL  (lowercased "REST" to "rest")
    Candidate:  PASS

  Case 4: already_correct
    Baseline:   PASS
    Candidate:  PASS

  Case 5: all_caps_handling
    Baseline:   FAIL  (kept "BREAKING CHANGES")
    Candidate:  FAIL  (output "V2.0" instead of "v2.0")

  EFFICIENCY METRICS
  ─────────────────────────────────────────────────────
                  Baseline    Candidate
  Duration:       1.2s        1.8s
  Turns:          1           1
  Tokens (in):    312         847
  Tokens (out):   45          52

  NOTES
  ─────────────────────────────────────────────────────
  Case 5 failure suggests the skill needs better
  handling of version strings (v2.0 vs. V2.0).
  Consider adding a rule for version patterns.
═══════════════════════════════════════════════════════
```

Notice a few details in this report. The skill clearly adds value — a +40% lift score is significant. But it's not perfect: Case 5 reveals a gap in version string handling. The skill also consumes more tokens (847 vs. 312 input tokens) because it's loading the skill instructions. That's a trade-off worth knowing about, especially if you're running the skill at scale across hundreds of documents.

## Pitfalls: bias and ephemerality

Setting up tests sounds straightforward, but I quickly realized that there's an art to testing and I'm clearly a novice. One of my skills worked great when I used it in actual practice, but when I ran the evaluation, only some of the tests passed. Other tests failed.

In short, beware of this: a perfectly functional skill might fail its tests if the tests are poorly conceived (and are too hard). Conversely, a non-functional skill might pass its tests if the tests are poorly conceived (and are too easy).

Beyond test quality, there are two other pitfalls to watch out for:

**Author bias.** When you write your own evaluation suite, there's a natural subconscious tendency to pick cases that guarantee your skill will pass. You gravitate toward the cases you *know* the skill handles well and avoid the edge cases that might trip it up. This is human nature, not malice. To counter it, have someone else review your test cases — ideally someone who didn't build the skill. If your organization has a centralized team vetting shared skills, they should also be reviewing the test suites.

**Ephemerality.** An evaluation report isn't a permanent certification — it's more like checking the weather in the morning. The results are a snapshot in time. As the underlying models evolve and tools update, a skill that scored 95% today might break next month. Because of this fast-moving pace, evaluation should be treated as a continuous, recurring process rather than a one-time stamp of approval. If your skill is important enough to share, it's important enough to re-test periodically.

## Evaluation frameworks

The testing specifics depend on the evaluation framework you use. The landscape is evolving quickly, but here are some of the more established options as of mid-2026:

* **[DeepEval](https://github.com/confident-ai/deepeval)** — A pytest-style framework supporting 50+ metrics with LLM-as-judge capabilities. Good for Python-native teams and CI/CD integration.
* **[Promptfoo](https://github.com/promptfoo/promptfoo)** — A CLI-based tool for comparative prompt testing. Its strength is quick A/B testing of prompt variations, which maps well to ablation-style testing.
* **[Arize Phoenix](https://github.com/Arize-AI/phoenix)** — An observability-focused framework using OpenTelemetry for tracing. Particularly useful if you want to monitor how a skill performs in production over time (addressing the ephemerality problem).
* **[RAGAS](https://github.com/explodinggradients/ragas)** — Specialized for retrieval-augmented generation, with metrics for faithfulness and answer relevancy. Useful if your skill involves fetching and synthesizing information from documents.
* **[Braintrust](https://www.braintrust.dev/)** — A managed logging and scoring platform for teams wanting a hosted solution.

Each framework has its own opinions about test file formats, scoring methods, and reporting. Some support ablation-style baseline comparisons out of the box; others focus on scoring individual outputs against rubrics. Pick one that fits your workflow and team's technical comfort level, and don't get too attached — you may need to switch as the space matures.