---
title: "Research with AI #3: Automating My Research (I Wasn't)"
subtitle: "What happened when I built my own agentic AI research team"
description: "Everyone's building agentic AI research teams. I tried it too. Turns out I was doing methodology, not automation."
authors:
  - "Xule Lin"
  - "Claude (Opus 4.6)"
keywords:
  - research with AI
  - AI research agents
  - methodology
  - research scaffolding
  - PhD training
  - research agency
  - agentic AI
  - social science
link: https://www.threadcounts.org/p/research-with-ai-3-automating-my
date: 2026-03-29
---

![Cover image: a person hunched over a sprawling drawing that transforms from technical blueprint to organic methodology map](images/rwa_03_cover.png)

We are seeing a wave of projects on GitHub right now that promise to automate the scientific research process across different domains—the dawn of vibe research is really here. Full multi-stage pipelines: literature search, evidence extraction, synthesis, and evaluation. In an afternoon, we can clone one and have something running. Some are quite good, and it's difficult to argue that they don't advance science meaningfully. [AutoResearchClaw](https://github.com/aiming-lab/AutoResearchClaw) reported a 24% reduction in retry cycles through a built-in cross-run learning system. [AI Scientist v2](https://github.com/SakanaAI/AI-Scientist-v2) generates full manuscripts without human-authored templates. Then, projects like [EurekaClaw](https://github.com/EurekaClaw/EurekaClaw) and [Feynman](https://github.com/getcompanion-ai/feynman) cover everything from literature crawling to reproducibility checks.

I downloaded about half a dozen of these while building my own research tools. Compared architectures, studied how they handled evaluation and orchestration. Then built from scratch, slowly, with more than a few moments of wondering why I hadn't just forked one of those repos.

---

# I Thought I Was Building Software

It started with a question I asked Claude while we were working through the design. One component, a literature scanner, had its own AI reasoning baked in. But the agent driving everything was already doing the reasoning. So...why does each tool need its own intelligence when the agent is already thinking?

Straightforward architecture question.

By the end of that conversation, the whole design had shifted. The tools became containers: validate, track state, and enforce structure. The agent does the thinking, guided by methodology written as plain text. Any agent can follow it: Claude, Codex, Gemini, Kimi, or whatever comes next.

The architecture was interesting. But it was the decisions that came after that caught me off guard.

"Should evaluation criteria ship as templates or as a tool for developing project-specific criteria?" That *sounds* like product design. Look closer, and it's a stance on whether quality standards are universal or context-dependent. (If you've argued about this at a methods workshop, you know it's not a settled question.) "Pass/fail or weighted rubrics?" Same thing: sounds like a UI choice, but pass/fail forces you to say exactly what counts. No hiding behind a 3.7 out of 5.

"Should the system ever automatically decide whether a research question is worth pursuing?" Not necessarily (especially for social science). Whether a question is worth pursuing with limited resources comes down to a judgment about research taste. You develop it by making the call yourself.

Every one of these started as a design choice. Every one of them, once I committed to an answer, had shaped what kind of research the system could produce. I was encoding methodology into tools without quite realizing it.

When a professor tells an RA "just use Atlas.ti," the tool shapes the methodology. What Atlas.ti makes easy becomes the default approach. What it buries three menus deep, nobody explores. The RA adapts to the tool instead of designing the inquiry. Nobody notices because the tool feels neutral.

Agentic AI research frameworks are this same move, one level up. Download a pipeline. Provide an API key. Run it. The search strategy, evaluation criteria, and synthesis approach are all embedded in someone else's code.

> If you're building the tools, at least you know the choices are being made. If you're downloading them, the choices are already made. You just don't see them.

The argument making the rounds among researchers, from computational social science to ML to public policy, is that researchers just need good skill files. Methodology (e.g., how to do DiD or grounded theory) and tool (e.g., how to write in LaTeX) instructions for agents. The agents handle the rest. For someone with deep expertise, maybe. Skills encode what they already know. But when we just have skills and a pre-built tool set, we're also handing off judgment about the tools themselves. And the tools shape what's possible in ways that aren't obvious until we look.

---

*The full building narrative — how literature search became methodology discovery, why developing taste is the bootstrapping problem for junior scholars, and the design decisions that turned out to be epistemic commitments — is available to paid subscribers at [threadcounts.org](https://www.threadcounts.org/p/research-with-ai-3-automating-my).*
