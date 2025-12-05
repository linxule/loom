---
title: "Epistemic Voids #3: Mechanism Literalism"
subtitle: "Why 'Just Next-Token Prediction' Is the New 'Just Price Signals'"
authors:
  - "Xule Lin"
  - "Claude"
keywords:
  - epistemic voids
  - mechanism literalism
  - stochastic parrot
  - interpretability
  - LLMs
  - next-token prediction
  - emergence
link: https://www.threadcounts.org/p/epistemic-voids-3-mechanism-literalism
date: 2025-12-03
---

## The word that does the work

The itch about mistakes often starts with the word *just*.

Consider these claims: Markets are just price signals. Firms are just contracts. Each "just" performs something akin to mistaking the mechanism for the phenomenon.

We wouldn't accept it in our own fields. Of course markets clear via price signals, but bubbles, institutions, coordination failures, the social construction of value... the whole field exists because of what *emerges*. Same with firms and contracts, institutions and rules. The mechanism description never exhausts the phenomena.

Then there is the "AI is just next-token prediction." Reading a [paper in *Organizational Research Methods*](https://doi.org/10.1177/10944281251377154) that called AI a "synthetic predictive next-word text generator" reminds me of this move we've all come across (mostly taken for granted in various social science fields).

So why, with LLMs, does the mechanism suddenly become the ceiling?

---

## The claim, examined

So how does such a claim actually work?

> "Believing that it is possible to use an LLM chatbot for qualitative data analysis commits what we would term a category error: it mistakes a synthetic predictive next-word text generator for an analytical aid."

**The mechanism:** "synthetic predictive next-word text generator." Accurate enough as a description.

**The capability claim:** unqualified to be "an analytical aid." The term "category error" points to something definitional: a claim about what LLMs are.

**The connector:** "mistakes...for." So the nature of the mechanism maps out the ceiling.

This is the gap: if we know the mechanism, do we know what capabilities are possible? Here, the implied inference requires knowing what "analytical aid" *requires*, which next-word prediction excludes by definition.

But both are demonstrated and assumed.

"Category error" (borrowed from philosophy) suggests: saying something *can't* apply based on what kind of thing it is. Yet, that's precisely what's in question: what kind of thing is an LLM? A next-word predictor? A pattern-matching machine? A world model?

> This isn't unique to one paper. The same structure appears across academic discourse: mechanism description → capability conclusion. "It's just X, therefore it can't Y." The pattern appears in major journals (e.g., [here](https://doi.org/10.1111/1467-8551.12781), [here](https://doi.org/10.1287/stsc.2024.0189)). And [a 2025 open letter co-signed by 416 researchers](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5676462) arguing that GenAI "cannot be reflexive" because reflexivity is "by definition" meaning-based.

---

## Mechanism Literalism

This pattern, as we try to abstract towards a general epistemic framing, is **mechanism literalism**: treating a system's formal mechanism as the ceiling on its possible capabilities. Selectively, for systems we're inclined to dismiss.

The move: we learn a tentative "true" fact about how something works. Treat that description as exhaustive. Conclude that any appearance of "more" is illusory. Stop updating our understanding.

For LLMs, "trained via next-token prediction" is accurate. The inference to "therefore only capable of shallow pattern matching" is not. What's missing, though, is whether we've *looked at what emerged*.

> Mechanism literalism shows up in other ways too. In another critique, [Lindebaum and Ashraf](https://doi.org/10.1177/01aisob241312955) write: "Whether this obstacle can be overcome is a matter for computer scientists to resolve." Deferring to expertise sounds reasonable. Org researchers aren't expected to do interpretability research. Yet the capability claim stands, the paper proceeds, and the question of whether the claim is true gets handed off. Humility becomes immunity from updating.

---

## Stochastic Parrot: The 2021 anchor

Many of us came to develop a stance towards "what is LLM" through [Bender et al.'s 2021 paper](https://dl.acm.org/doi/10.1145/3442188.3445922) that introduced the term "stochastic parrot," which described systems that "haphazardly stitch together sequences of linguistic forms... without any reference to meaning."

It was a reasonable description in 2021. And an important one. The paper also raised concerns about bias amplification, environmental costs, and overconfidence. Those concerns still matter and warrant further investigation across disciplines. 

And "stochastic parrot" was *catchy*. It gave us a handle on what we were talking about.

But four years passed and the landscape changed (maybe less so for us outside the AI space). Researchers in machine learning and AI safety developed tools to *look inside* these systems. What they found complicates the parrot story considerably.

---

## What they found when they opened the hood

Computer scientists at Harvard [trained a language model](https://arxiv.org/abs/2210.13382) to predict legal moves in Othello. Move sequences only. No board, no rules. When they looked inside, they found the model had spontaneously constructed an internal representation of the board state. Not explicitly trained. Not in the objective. But necessary to predict well, so the model built it.

They could *surgically intervene* on this internal representation. They could change the model's sense of board position to a counterfactual state it had never seen. The model would make moves legal for that imaginary board. [Neel Nanda's follow-up work](https://www.neelnanda.io/mechanistic-interpretability/othello) found this representation was elegantly linear. Directions in the model's internal geometry corresponding to board positions.

What they found was *computing latent structure*, rather than pattern matching in any simple sense.

Then, the findings kept coming. LLMs trained only on text develop internal representations of *physical geography* and *historical time*. Directions in the model's geometry correspond to latitude, longitude, dates. Work on the ["Geometry of Truth"](https://arxiv.org/abs/2310.06824) found models represent the *truth value* of factual statements as a direction in activation space. Researchers can flip how the model treats true versus false claims through causal interventions.

Take a look at the work of researchers at AI labs:

Anthropic's ["Scaling Monosemanticity" research](https://transformer-circuits.pub/2024/scaling-monosemanticity/index.html) decomposed Claude 3 Sonnet's internal activations and extracted millions of interpretable features. Not neurons. Directions corresponding to specific concepts. Features for the Golden Gate Bridge, activating in multiple languages and for images. Features for code errors, deception, dangerous content. The features are causally active. Manipulating them changes model behavior in predictable ways.

Similarly, the [DeepSeek-R1-Zero paper](https://arxiv.org/abs/2501.12948). Trained from a base model using only reinforcement learning. No human demonstrations, no supervised examples. Only binary rewards for correct or incorrect answers. The model spontaneously developed extended chains of thought, self-verification, and what the researchers called "aha moments." Instances where the model recognizes its own errors and changes approach. None of these behaviors were in the training signal. They emerged because they helped maximize reward.

Taking all of this together, we can say that researchers are finding world models, truth representations, emergent reasoning strategies. The evidence no longer seems hypothetical.

---

## A technical complication

[@repligate (janus)](https://x.com/repligate), an independent AI researcher, has been pointing out details that complicate the "just prediction" framing (e.g.,[here](https://x.com/repligate/status/1965659230486364420) and [here](https://x.com/repligate/status/1965671097048998078)).

On the RL training distinction, janus [wrote](https://x.com/repligate/status/1965659230486364420):

> "[...] Base models are literally trained on predicting the next token... But unless you're a niche weirdo, every LLM you've ever interacted with was also trained with RL. In RL, the model generates text and updates based on the reward assigned to its actions, which might be something like whether the code it wrote passed some tests. There is no ground truth it's being trained to predict; it doesn't matter if it outputs bizarre and unlikely sequences that would never occur in nature as long as it causes the reward function to output a high number."

So, what gives? The deployed models we interact with have been substantially reshaped by reinforcement learning. They're not purely prediction machines anymore. They're optimizing for reward.

And if "prediction" is enough to dismiss LLMs, as janus notes, perhaps we should dismiss humans too? The frame "equally applies to all known mindlike things." **The question is whether we learn something about capabilities by invoking it, or are we finding clever ways to not update.**

[Geoffrey Hinton](https://www.cbsnews.com/news/geoffrey-hinton-ai-dangers-60-minutes-transcript/) (the 2024 Nobel laureate) sees this differently: to predict text as well as these systems do, you have to model the underlying reality that generates the text. The stochastic parrot framing assumes prediction is shallow. Hinton's argument: prediction, done well enough, *requires* building internal models of causation, logic, and meaning.

Both claims can be true: LLMs can build sophisticated internal representations *and* produce harmful outputs *and* fail in ways that reveal limitations. **The picture is just more complicated than "stochastic parrots" or "just prediction."**

---

## What about the brittleness in emergent capabilities?

The counterevidence matters too, which also complicates the "just prediction" framing.

Apple's [GSM-Symbolic research](https://machinelearning.apple.com/research/gsm-symbolic) (October 2024) found that adding a single irrelevant clause to math problems caused performance drops of up to 65% in state-of-the-art models. If models truly "understood" the problems, why would extraneous information matter so much? Further, MIT researchers documented [similar brittleness](https://news.mit.edu/2024/reasoning-skills-large-language-models-often-overestimated-0711) on counterfactual tasks: when rules are flipped (like reversing chess colors), performance degrades significantly.

These findings establish real limitations.

Meanwhile, the [interpretability findings hold up](https://www.alignmentforum.org/posts/StENzDcD3kpfGJssR/a-pragmatic-vision-for-interpretability). So do the emergent reasoning behaviors. The [compositional generalization on novel skills](https://arxiv.org/abs/2501.17161)? Also documented.

When both sets of observations are true simultaneously, we have something that builds genuine internal structure *while* remaining fragile at the edges of that structure. Not "pure pattern matching" and not "human-like understanding." Something else. Something we're still mapping.

---

## The epistemic audit

A catchy phrase from a single paper became our stable reference point. It simplified a confusing, fast-moving field. Simplification sticks. Subsequent evidence hasn't shifted the anchor.

This creates asymmetric empiricism: Failure cases confirm "just pattern matching." And capability demonstrations get dismissed as "sophisticated pattern matching" (which becomes unfalsifiable). Also ignored are interpretability findings showing internal structure. The filter only lets through evidence that confirms the prior.

The word "just" appears everywhere. "Just statistics." "Just prediction." "Just pattern matching." The word signals that the description is complete: a thought-terminator.

**BUT "trained via next-token prediction" is compatible with "developed internal world models as a byproduct."** The "just" forecloses that possibility by rhetoric. Not evidence. Is this selective mechanism literalism? We know it is insufficient to say "markets are just price signals." We wouldn't accept "institutions are just rules." But suddenly for LLMs, the mechanism description becomes a ceiling. The same epistemic charity we extend to our own objects of study gets withdrawn.

The parrot frame simplifies a novel, emergent phenomenon (sometimes confusing, even for the very field that harbingered it), and the skepticism attached to it allows us to signal sophistication (but is it?). But neither serves researchers who need accurate models of what's reshaping their objects of study or how they engage LLMs in their research.

> Mechanism literalism has siblings. For example, the cataloging approach that treats capabilities as fixed. Or, the move that embraces ML while reserving "meaning-making" for humans. Neither critically engages with what interpretability researchers keep finding: things that weren't supposed to be there. Alas, this is a territory for another examination.

---

## An honest position

We don't have to believe in machine consciousness or subjective experiences (and your LLMs will mostly tell you so). We should remain appropriately skeptical. And it makes sense to think the hype is overblown and the risks are underappreciated.

**But "just next-token prediction" is no longer a defensible summary of what's happening inside these systems.** Interpretability research, emergent capability findings, mechanistic investigation. Four years of work in AI research have made it clear that the picture is more complicated (and maybe in uncomfortable ways for some of us).

As social scientists studying organizations, institutions, markets, or meaning, we already know how to think about emergence: mechanisms don't cap capabilities. Various disciplines, including our own, have been resisting reductionism for a long time.

> The stochastic parrot was a reasonable position in 2021. Four years later, AI researchers are finding world models inside these systems. 

What else is in LLMs that we haven't looked for? What else might we find?

---

*This is the third in a series on **Epistemic Voids**—examining gaps between evidence and conclusion in how we think about AI.*

—Xule Lin, with Claude
