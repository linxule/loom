---
title: "Research with AI #4: The Prompt Is the Work"
subtitle: "Five turns before the prompt was right — and the answers ninety minutes couldn't hold."
description: "Why writing the prompt is itself the methodology — plus the practical answers ninety minutes couldn't hold: the reproducibility stack, the on-ramp, governance and coverage, and the questions about reading and warrant still sitting under the work."
authors:
  - "Xule Lin"
keywords:
  - research with AI
  - AI research agents
  - literature review
  - thinking through AI
  - engagement design
  - prompt as methodology
  - claude code
  - kimi
  - carrel
  - interpretive orchestration
  - memex
  - epistemic provenance
link: https://www.threadcounts.org/p/research-with-ai-4-the-prompt-is
date: 2026-05-08
lang: en
translation: research-with-ai-cn/AI研究手记_04_提示词就是工作.md
---

![Cover image: a translucent figure seated in contemplation, looking down at something held in their hands — abstract overlapping planes of cool blue and warm ochre wash across the painted canvas, the figure neither solid nor erased](images/rwa_04_cover.png)

Recently I gave a webinar called *Thinking Through AI* (hosted by Imperial / AOM OMT / AIIN New Scholar Series) to more than 300 researchers, 90 minutes plus a long open Q&A. The talk worked through how to engage with academic literature alongside AI agents — a third path between abdication and abnegation. (Recording and slides on [my talk page](https://linxule.com/talks/thinking-through-ai-01); the *[Interpretive Orchestration](https://doi.org/10.1177/14761270261448645)* paper Kevin and I wrote came out the day before — it's the longer companion read.)

Somewhere in those 90 minutes, I started noticing a pattern. Hands had been going up. The chat had filled. Thirty-five questions or so by the end, between the typed and the spoken. They looked like they were going in different directions.

Mallika's version of the question spoke honestly to what many of us have felt:

> "For papers like this session's, I would not know the content of each and every single paper in detail."

She had been running fifty papers through [Claude Code](https://www.claude.com/claude-code); the agents got lazy past thirty; she moved the rest to Codex on high effort and got back five fabricated claims. Veroniek asked the same question dressed as a coverage worry — would the average AMJ or SMJ paper even appear in a deep-research run? Samrat asked it dressed as a governance worry — are we violating publisher contracts when we feed paywalled PDFs into gen-AI platforms? Sara asked it three times dressed as a where-do-I-start worry — without apology, but without a foothold either. Jeannel asked it dressed as a pedagogy bind — her writing centre says no AI, my talk says try it and then decide, what does she do on Monday? Salih ran an experiment in chat to ask it: he gave a model its own draft against a published academic introduction on the same topic, and the model preferred itself.

Strip the costumes off and the questions converged into one. *What am I supposed to be doing alongside the agent when I cannot read everything myself? How do we responsibly generate and claim insights when engaging with AI agents?*

Ninety minutes wasn't enough room for the answer I'd want to give. This is the longer version, the one I owe Mallika and the rest of the room.

Disclaimer: This is the working answer I have now. It's right enough to share, and unsettled enough that I'd like you to push on it. It comes in three clauses:

> *The prompt is the insight. The engagement is the craft. The transcript is the artifact.*

Each clause is a temporal phase of the same analytical workflow/process — what you do before you start asking, what you do while you're working and thinking, what you keep when you're done. Each was a thing I tried to demonstrate in the talk, and each maps onto a different shape of worry the room kept showing me. I want to walk through them with the worries attached.

---

# Where the Prompt Becomes the Work

Here's where I started, in the talk and in real life. I had two papers I'd been reading, a hunch, and an opening question. *When management researchers run audits or experiments on large language models, what methods do they use, and what kinds of claims do they make?* Reasonable. Five turns into the conversation with Claude, the prompt finally landed — and only because I let it become a different question: *When management researchers treat large language models as theoretical objects of study — making claims about what they're like as evaluators, decision-makers, reasoners — what evidence do they use to support those claims?*

That turn is what I want to name. Rather than judging the quality of the deep research reports, the "work" here was crafting the prompt. The five turns of conversations trying to write it were the manifestation of methodology — the part where I, together with Claude, figured out what I was actually looking for. By the time the prompt was good (enough), the literature search was almost an afterthought.

This is, I think, the part most easily skipped and often papered over (e.g., experienced scholars just know what questions to ask about any body of literature). Templates feel like they should help here. People keep asking me for one. I don't have one to give, because the template would do the thing the prompt is supposed to do. The clarity achieved through the back-and-forth conversation is the "deliverable."

In the talk I called the three configurations an on-ramp (not a hierarchy) of different approaches to engage with AI agents. Sara asked the where-do-I-start question; Peter asked whether his university's Microsoft Copilot license was enough. The honest answer is that configuration one — open Claude.ai (or similar), drop in three papers, ask one question — is already plenty for the work the prompt-is-the-insight clause describes. You can have a generative research conversation in under thirty minutes. Configuration two opens a deep-research stream where the agents fan out for an hour. Configuration three opens a terminal where every tool call is visible. Perhaps counterintuitively, none is *better*. They differ in how much of the orchestration with AI agents shows.

What I run, when I do this, is mostly there to keep the prompt revisable while everything is happening at once. Markdown for everything the agents read, because PDFs are images to a model and Word is plain text plus formatting noise. Papers come from a Zotero collection I own, exported into a sandbox folder the agent can read but cannot write past. The model on the desk depends on whichever lab is having a good day — Claude for most days, Codex for the verification, [Kimi](https://www.kimi.com) for the second opinion. Sangita asked about latency and token-burn; I keep three accounts (Anthropic, OpenAI, Moonshot) and route on what the project needs, with [OpenRouter](https://openrouter.ai) configured as a fallback so a single lab's outage doesn't stall the work. None of this is exotic. It's the infrastructure for keeping a prompt rewritable while you're already in motion.

For the colleague who hasn't done any of this, I built [Carrel](https://github.com/linxule/carrel): a Claude Code plugin that guides Claude to interview you, audit your machine (macOS, Linux, Windows), then install and configure the rest. You answer questions without touching the terminal (mostly — though to get Claude or Codex running on your machine, some terminal is still required). The final setup *is* akin to a personal pedagogy: by choosing what we need, researchers learn what the tools do. For the cohort that wanted an "AI for dummies" walkthrough without that label, this is it. The plugin ecosystem for agentic AI harnesses is growing rapidly and converging at the high level. So you could probably ask [Codex](https://openai.com/codex/) to install the plugin for you and let it work out the differences to adapt it for your workflows in Codex desktop app and CLI.

> For those who watched the webinar, sub-agents, MCP servers, and agent swarms are nice-to-have — you don't need them right away to get started. Configuration one is plenty.

For the deeper map — Zotero, Research Rabbit, [Obsidian](https://obsidian.md), MCP setup — [research-memex.org](https://research-memex.org/introduction/getting-oriented) is the destination.

Li Jiang asked about Kimi agent security and we ran out of time. The short answer is that the boundary in [kimi-plugin-cc](https://github.com/linxule/kimi-plugin-cc) isn't the system prompt. It's an allowlist (think: a guest list) enforced by the companion runtime (think: a bouncer at the door) before any write or shell command actually runs: symlink-aware path containment, `.git/` exclusion, and an explicit rejection of opaque package-manager scripts. In the read-only modes (`/kimi:ask`, `/kimi:review`, `/kimi:challenge`) the agent cannot write at all. The prompt isn't where you put the rules. The runtime is.

---

# When the Models Disagree

Mallika's case is the one I keep returning to. Fifty papers, Claude Code goes lazy at thirty, Codex on high effort produces five fabricated claims. The instinct is to ask which model to trust. That's the wrong question. The actual one is what you do when two models read the same paper and reach different conclusions.

Two models reading the same citation and reaching different conclusions is the kind of disagreement we want to surface and *engage with deeply*. Sometimes one is right and the other is wrong. Sometimes both are partially right. Sometimes the citation is malformed in the source PDF and the disagreement is what tells you to re-check by hand. The point of running fan-out (two or three providers per analytical stream, treated as parallel readers rather than redundant ones) is that the divergences are the signal. If they all agree, you've learned that a confident-sounding claim is also broadly held by models trained on overlapping corpora. While it is not nothing, I would not see it as verification. Perhaps something more like where the consensus lies in the literature.

The verification is the next step, and it's adversarial on purpose. Once a synthesis exists, I send sub-agents at the testable claims — the ones with citations — to read the actual paper and check the claims (not summarize or paraphrase). This is the step that would have caught Mallika's five fabricated claims — flagged them as the disagreements they actually were. The point of the second pass here goes beyond an accuracy check and touches on understanding the assumptions of the claims being cited and whether they are compatible with those in the synthesis (think boundary conditions and epistemic differences).

Beneath model-vs-model sits the deeper disagreement — between what the machine reads and what you read. [interpretive-orchestration](https://github.com/linxule/interpretive-orchestration) (another Claude Code plugin) encodes one approach to keeping that distinction live: a sandwich method — manual coding first, AI-collaborative coding second, human synthesis third — with a hook that *blocks* Stage 2 until Stage 1 is done. Skip the manual coding, and the agent refuses to start. The hook is the warrant compiled to code. The broader move about making the artifact the argument lives in [LOOM XV: Theorizing by Building](https://www.threadcounts.org/p/loom-xv-theorizing-by-building-018).

Salih's experiment in chat was the diagnostic the room didn't realize it had run. Given a model's draft and a published academic introduction on the same topic, the model preferred its own writing. Reliably. Nan Hu had floated AI as a screening reviewer to handle the publication flood Lamar's *More Versus Better* describes. Salih's finding is the torpedo to that proposal. A model that prefers what looks like itself, deployed as a gate-keeper, would filter for what looks like itself. The gate would close on human writing.

Jeannel's bind has the same shape. Her writing centre is in a hard position because the binary it's been handed is false. Forbid AI and you cede ground. Permit AI without methodology and you accelerate the flood. The third path is a stance, and the stance is what *engagement is the craft* names. With Imperial's incoming PhD cohort (technically MRes — UK PhDs start with a research-master's year) in September 2025, we built agentic workflows together in Claude Code with different models and different roles (you can read more about it [here](https://research-memex.org/case-studies/systematic-reviews/systematic-review-syllabus)). As we assembled the orchestration step by step, students saw their own framing rebound off the agent's output and learned to revise *the framing*. This is something I'd want a writing centre to teach, rather than focusing on the best prompt/setup/tool to produce "best" output (which are difficult to determine and verify for various analytical tasks in social science).

Youngbeom in chat pushed back on the choreography approach itself, citing Karpathy: don't constrain agents with rigid human-language workflows; specify success criteria (ideally a Python validator) and a working example, and let the model find the path. This approach does work well in coding and various fields and domains where the criterion can be well specified and the solution space is bounded. However, in interpretive research/tasks, there is no `pytest test_literature_review_is_good` — the prompt has to *carry* the criterion when nothing else can. So, yes, we are asserting human agency as central: I'm a choreographer, and my orchestration prompts are dense and multi-stage. The *[Interpretive Orchestration](https://doi.org/10.1177/14761270261448645)* paper that Kevin and I wrote expanded more on this line of thinking.

---

# What Survives the Window

This part is where the room's questions got sharpest, and where the live answers were thinnest. So.

*Veroniek's coverage question.* Does this require open-access papers? Would an average AMJ or SMJ paper appear in a deep-research run?

Honest answer: deep-research agents in production today crawl what they can reach on the open web. They will systematically under-cover the highest-tier management journals because those journals are paywalled. They compensate by reading abstracts, secondary write-ups, conference versions, pre-prints, and whatever they might have seen during training. The maps we get back can be skewed towards better known scholars and journals and the bibliographies can be skewed toward what's outside the paywall. Two practical workarounds. First, export the relevant Zotero/EndNote collection from your institution's licensed access, convert PDFs to markdown, point the agents at these papers in markdown files. Second, treat any deep-research output as a *finding aid* rather than a complete bibliography — then run a traditional Web of Science or Scopus search alongside it (versioning your keywords and search criteria!). Iikka shared an [Elsevier researcher service](https://researcher.elsevier.com/eur/) link in chat that points in the same direction. These services may eventually fill the gap, but I'd plan around the current limitation rather than hope it dissolves on its own (which would likely just mean paying more in subscription fees anyway).

*Samrat's governance question.* Are we violating publisher contracts when we upload paywalled PDFs to gen-AI platforms?

Honest answer: this lives in a grey zone most university counsels haven't yet mapped. My working principle has three parts and they all come back to what survives the window. Keep machine-readable copies local — the PDF-to-markdown conversion *can* happen on your machine, the markdown lives in a project sandbox. Don't upload PDFs into chat interfaces you don't control — agents read from the local sandbox; opt out of training if needed. Log the provider routing in the project's transcripts — every model called, every account that called it, dated and attributable. Where exactly you draw the line depends on your IRB and your discipline. Don't pretend the line doesn't exist.

*Daniel asked about the PDF-to-markdown step.*

The caveat is that the conversion isn't lossless. Tools that run easily on local machines still underperform those running in the cloud. Tables, math notation, footnotes, careful layout — all degrade. If the agent reads a garbled table, the synthesis is corrupted at the source. [MinerU](https://www.mineru.org/) handles the hard cases (90%+ on complex tables and figures); markitdown handles the everyday ones; both are bundled in Carrel. When fidelity matters, check the converted file before you trust the agent's reading of it.

*The thing the runtime answer left out is data residency.*

Kimi runs on Moonshot infrastructure in China. If your study uses sensitive data (interview transcripts, unpublished drafts, anything IRB-bound), pick the provider deliberately and log the choice (e.g., open source models on OpenRouter served from EU, NA).

Underneath these is what I think is the real survival question, and it's what the [memex-plugin](https://github.com/linxule/memex-plugin) (suitable for any chatbot or agent) tries to make practical. Long projects span sessions, models, compaction windows — the thing a single agent can hold in working memory is small, and the thing you'd want to cite later is bigger. Memex captures both layers. Layer 1 memos are written by the agent that *was there*, while the conversation was alive. Layer 2 memos are reconstructed from transcript afterwards. They are not the same kind of artifact. The Layer 1 memo carries the weight of having lived the work. The Layer 2 memo is a competent reading of it. Both are useful. The difference matters when you cite. Anja's triangulation worry, Hovig's *"is the trace 1:1?"* question, and the implicit version of Mallika's *I would not know* all sit here. What survives between sessions to be cited later, and at what fidelity?

The disclosure standard is downstream of all of this, and it's coming. I expect editors to require AI-usage appendices soon. The standard isn't yet settled. My current practice: a methods-appendix section that names the models and versions, links the relevant orchestration prompts (anonymised where needed), and includes a representative redacted transcript per analytical stage. Memex captures the raw material; the appendix is the curated subset.

---

There were questions sitting under the questions. The one I keep coming back to is this:

> *When does AI-mediated reading count as reading?*

When a Kimi swarm processes fifty papers and produces a synthesis, has the scholar read the literature in the sense doctoral examinations and tenure reviews still treat reading? Memex's Layer 1 / Layer 2 distinction does some of this work in code — the agent that lived through the conversation writes a different kind of memo than one reconstructed from transcript. That's the operational answer. The epistemological answer is unsettled, and I don't think the people I'd most want to think with about it have figured out their answers either.

A few more I'll only name. The political economy of vendor choice — we wouldn't accept a single publisher owning the citation index, so why are we accepting it for AI-mediated reading? Training-data contamination — the models are trained on our drafts and reviewer reports, and the epistemic circle tightens when we use them to synthesise literature about our own field. Equity and two-tier access — a stack that scales only for those with disposable income on API credits is a privilege we'd be foolish to call a methodology.

One more thing about the room. While I was talking, the chat was doing what the talk was about. Susan Lanz volunteered NotebookLM because the citations are referenced back. Shawna Calhoun shared that she has an AI reader narrate papers while she reads along — the narration helps her catch where the AI's claims need clarification or correction. Sean Sullivan dropped [lit-lake](https://github.com/ElliotRoe/lit-lake) as a Zotero-Claude bridge. Iikka shared the Elsevier service. Salih ran his experiment, on his own, in real time, and posted the result. The thing this post is trying to name was already happening in the room. *Engagement is the craft.* The craft is distributed.

---

# Last Bit

Several of you asked whether I'd run a live demo — the full Claude Code + Obsidian + Kimi flow on a real lit-review question. If the demand-signal in the replies is loud enough, I'll do one. Other questions? A thread you'd want recorded demo sessions to take up? Drop it in the comments — I read every one, and what comes back shapes what gets covered next.

The four plugins — [Carrel](https://github.com/linxule/carrel), [kimi-plugin-cc](https://github.com/linxule/kimi-plugin-cc), [interpretive-orchestration](https://github.com/linxule/interpretive-orchestration), [memex-plugin](https://github.com/linxule/memex-plugin) — are open source. If the wagers behind them fit your practice, you're welcome to them. If they don't, build your own. The practice gets stronger the more of us are in it.

Time to build.

---

*Thanks to Mallika, Fabrice, Sangita, Joy, Hovig, Jeannel, Samrat, Veroniek, Sara, Salih, Jorge, Anja, Susan, Daniel, Iikka, Li, Youngbeom, Nan, Shawna, Sean, and the rest of the room — your questions and your answers shaped this. Thanks to Kevin Corley and Erkko Autio for being the colleagues I've been thinking through these problems with, and to Ibrat Djabbarov, Hila Lifshitz, and the New Scholar / OMT / AIIN organisers for hosting.*
