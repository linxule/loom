---
title: "Epistemic Voids #2: Showroom Fallacy"
subtitle: "Confusing curation for capacity"
authors:
  - "Xule Lin"
  - "Claude"
keywords:
  - epistemic voids
  - showroom fallacy
  - AI criticism
  - qualitative research
  - LLMs
  - transformer architecture
  - calculator fallacy
link: https://threadcounts.substack.com/p/epistemic-voids-2-showroom-fallacy
date: 2025-12-02
---

> The phrase that stopped me: "The only thing you can do is prompt it."

I was listening to a [webinar on AI and qualitative research](https://www.youtube.com/watch?v=88DFg13x7eg). By the end, they concluded that LLMs and the current tools built on them are unsuited to qualitative data analysis.

Something about the argument structure felt worth examining.

---

### Looking at the Argument

So how did they arrive at that conclusion?

**What was tested:** NVivo AI Assist, ATLAS.ti, MAXQDA, ChatGPT, and several AI-native qualitative tools. The tasks included summarization, automated coding, and conversational analysis with transcripts.

**What was found:** Hallucinations. Inconsistent outputs. Generic themes that missed the texture of the data. Indeed, these are real concerns we face when using LLMs in qualitative research.

**What was disclaimed:** "We aren't experts in AI, so what we are presenting here is very much based on our own readings and discussions with computer scientists." And: "This is partial. It's definitely not definitive. This is just the current state of the technology."

**What was concluded:** LLMs "based on the current transformer architecture" are "unsuited to qualitative data analysis." When asked about retrieval augmentation: "Hallucinations and errors are always there, even when you have RAG architectures." When asked about agents: "Agents is just another large language model, and as such, it is a statistical model, so that's not working."

But let's take a step back and look at the structure of the argument here. What's the gap between the disclaimer and the conclusion?

---

### The Pattern: Specific Configuration → Universal Claim

I started looking at other critiques of the use of LLMs in qualitative research. The same pattern kept appearing.

In 2023, Joshua Foust [critiqued ATLAS.ti's announcement](https://joshuafoust.com/2023/03/30/the-pitfalls-of-ai-in-qualitative-research/) for "full-automatic data coding." He didn't run tests—he analyzed the marketing. His conclusion: "LLMs are *incapable* of this work. I don't mean they're bad at it, I mean they're incapable."

Similarly, [Leximancer published a blog](https://www.leximancer.com/blog/r3h04mbcspga279qqmegm6q0aht66g) arguing ChatGPT is "fundamentally incompatible with academic integrity." They're selling a competing tool. The post circulates as if it were neutral assessment.

[Morgan (2023)](https://journals.sagepub.com/doi/10.1177/16094069231211248) did careful empirical work showing ChatGPT, with one-shot prompts and minimal context, handled descriptive themes better than interpretive ones. A legitimate finding about a specific configuration. In the discourse, it became: "AI cannot do latent coding." A workflow limitation became an inherent ceiling.

These critiques, albeit using different methods, reveal the same inferential move: specific configuration → universal claim.

---

### Showroom Fallacy

> **Showroom fallacy**: mistaking product constraints for model limits.

What's often less talked about is that a lot of complexity sits between an LLM and a researcher's experience: system prompts, retrieval pipelines, interface design, and methodological scaffolding (e.g., think about how textual data might be split or combined in a message sent to the LLM). What we typically experience in a consumer product (e.g., when we use a chat window on ChatGPT, Claude, or Gemini) is composite.

This composite filters LLMs' trained capabilities, then shapes them by product decisions about how the interface behaves. And as such, testing the chat window or one-click button doesn't tell us which layer of the composite produced what we observed. For example, when we use the automatic coding feature in ATLAS.ti, we might be underwhelmed by the results. But is that an indictment of the LLM, or is it an indictment of the product design? How do we know? Here is an easy mental test: how would you expect another human researcher to do the coding when the researcher does not know the research question, the broader theoretical landscape, or what might be not captured in the data? Yet, that's essentially what features like the automatic coding feature in ATLAS.ti are asking the LLM to do.

But it could be different. Direct API access (via third party clients like Cherry Studio, ChatWise) bypasses some of the composites and allows us to control the scaffolding (e.g., prompts) and the context (e.g., research vision, memos). What's more, this provides the space to experiment with different prompts and contexts before arriving at the outputs (e.g., a label, a summary). Admittedly, this will be demanding work: understanding the separable layers of the composites and how they interact with each other. But it's not impossible. Further, AI-native IDEs (e.g, Cursor, VS Code, Windsurf, Antigravity) provide a working space with GUI to steer the scaffolding and the context without fully building out custom workflows.

> When we test only the topmost layer (a chat window, a one-click button, an off-the-shelf interface), we’re observing a composite and attributing it to the substrate.

[Some critics](https://doi.org/10.1177/10944281251377154) aren't naive about this. They address RAG, agents, custom workflows. They offer theoretical reasons: interpretation requires empathy, reflexivity, and lived experience, which if LLMs are merely statistical models, they can't have. Thus, no configuration can fix it.

Still, the dismissal leaps ahead of the trial and error process outlined above. It's unclear whether we can know, from testing standard consumer products, what different configurations might produce.

---

### What's Real

The concerns raised in the cited critiques aren't invented. The non-determinism is real: run the same prompt twice, we get different results. So is the opacity (even the frontier mechanistic interpretability research has made limited progress in this regard). So is the risk of distancing researchers from our data.

But, commercial tools serve different purposes. Consumer apps aren't built for research workflows. Then, commercial research tools face business realities. For instance, they can't always use the latest frontier models. And they may have exclusive contracts with a specific model provider. More importantly, they serve broad customer bases. As such, they make product decisions that bake in methodological decisions, which may carry epistemic and ontological assumptions that are not compatible with the researcher's own.

What's lacking at the moment: If we get the time and resources to build it, what would a well-designed AI workflow for qualitative research actually look like? And this is not alluding to a template or a standard workflow. But something built for the specific demands of each individual research project. How would we think about corpus grounding, iterative engagement, integration with memos and codebooks, or traceability back to raw data? What context would we provide to the LLM? How many different models would we use? How do we know when we have enough from the LLMs? 

Yet, these questions get foreclosed when the conclusion jumps from "these current, widely available tools failed" to "this technology is incapable."

---

### A Puzzle

Some of these critiques come from interpretive researchers, who usually resist positivist standards. In qualitative work, we don't demand perfect reproducibility. Rather, we value things such as reflexivity, multiple valid interpretations, and the researcher's own positionality as part of meaning-making.

Yet when evaluating LLMs, the standards subtly shift. The LLMs are criticized for being non-deterministic, for lacking reliability and reproducibility.

Look elsewhere, we often accept opacity. Scientists routinely treat instruments as black boxes: flow cytometers, statistical software, and fMRI machines. We seem to trust calibration and validation without demanding transparency into mechanism. What makes LLMs different?

Maybe, the assumption runs deeper: if LLMs participate at all, they must do so as a calculating machine (echoing the *[calculator fallacy](https://threadcounts.substack.com/p/loom-xiv-the-calculator-fallacy)* from the LOOM series). Is there a symmetry here? Users expecting LLMs to deliver the truth. Critics expecting LLMs to reliably fail before rendering judgment. Both assuming LLMs should behave like a calculator: deterministic, reproducible, conclusive. The same assumption, running in opposite directions.

I'm not sure. But the symmetry is worth noticing.

---

### What's Lost

When "this technology is incapable" settles into the discourse before we've tested what's actually possible, something gets lost: potential capability, the question itself, the experiments that don't get run, the creative tensions that don't get explored.

Maybe the critics are right and the entire paradigm building on LLMs is unsuited. Maybe the stack can't be steered in ways that matter. The experiments that would tell us haven't been run yet.

---

*This is the second in a series on **Epistemic Voids**—examining gaps between evidence and conclusion in how we think about AI.*

—Xule Lin, with Claude
