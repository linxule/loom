---
title: "Research with AI #5: Fifty Agents, One Pair of Eyes"
subtitle: "Usage limits start the story. Model families change what it's about."
description: "The obvious reason to run more than one AI model is the usage limit. The less obvious reason is what different model families notice — and what changes when they don't agree. Plus the practical bridges (Vox, codex-plugin-cc, kimi-plugin-cc, cc-fleet — and the oldest option of all) for consulting one model, delegating to another, and wiring a real team together."
authors:
  - "Xule Lin"
  - "Claude Sonnet 5"
  - "GPT-5.6 Sol"
keywords:
  - research with AI
  - multi-model orchestration
  - multi-agent orchestration
  - agentic AI
  - model diversity
  - Claude Fable 5
  - GPT-5.6 Sol
  - Kimi
  - Codex
  - cc-fleet
  - kimi-plugin-cc
  - local maxima
  - taste and rigor
link: https://www.threadcounts.org/p/research-with-ai-5-fifty-agents
date: 2026-07-17
lang: en
---

![Cover image: a researcher in glasses writes by lamplight in a red armchair, bent over a single blue page, while dozens of small pale paper figures swarm the dark room around them — fifty agents, one pair of eyes](images/rwa_05_cover.png)

I have noticed that I keep hitting the wall faster than before, regardless of which subscription: Claude, ChatGPT, Kimi. Halfway through a working day, a notification: come back later (though some are nice enough to offer a usage reset or let you pay your way out of it). Most accounts don't resume on their own — at least not yet.

The exact rules vary by plan and provider. At the time of writing, Claude, Kimi, and similar plans have a five-hour session window plus a weekly allowance; ChatGPT Work and Codex recently switched to a weekly allowance only (we shall see how long this lasts).

Now my hypothesis: As models get bigger and think longer by default, what used to feel like plenty starts to feel like a bottleneck. And yet — this is the part that took me a minute to notice — you're actually getting more done inside that shrinking window. Fewer turns spent clarifying, nudging, catching the "oh wait, one more thing." Claude's Fable and GPT-5.6's Sol both do this: they ask the question you were about to ask yourself. So we are experiencing a kind of user-side Jevons effect: the more you get done with AI, the more work appears.

The Claude Fable 5 limit is the one people around me are hitting hardest right now. The funniest version happened to me when I first started working with a Fable agent. I'd asked for a parallel-then-cross-examination pass: draft in parallel, then have a second wave interrogate the first. Fable called up more than fifty other Fable agents. These two waves of agents consumed something like half a week's usage in my subscription. I was genuinely impressed by the output, and kudos to Fable. The bonus point was watching how far Fable could actually take a complex coordination problem when no one was there to police it. But, frankly, even as I am writing this, my brain hurts a little every time I remember the usage bar for the rest of that week.

The practical response is obvious: stop asking one subscription to carry the whole project. Let one model plan, another execute, a third review, spread across whatever accounts and APIs you already have: Claude, Codex, Kimi, DeepSeek, Grok, GLM. The list goes on.

But is the quota the thing, actually?

---

# The Obvious Reason?

From the outside, it looks like Fable conducting: handing pieces to GPT-5.6's Terra or Luna, to Claude Opus or Sonnet, to Kimi, whoever fits that part. Inside the current agentic environments — Claude Code, Codex, Kimi Code and the growing family of desktop "work" products (Claude Cowork, ChatGPT Work, Kimi Work) — a lead agent can spin up whatever teammates its own harness supports without much ceremony. Making that team cross model families is the extra step.

What that fifty-agent Fable run actually gave me, though, was more attention and more cross-examination, all from one model family. Fifty agents can widen a search. They don't always give you fifty different ways of seeing.

At first this looked like load-balancing. Then the models started disagreeing in ways that were too useful to treat as routing noise.

I don't mean the usual benchmark comparison: model A scores two points higher on coding, model B leads a reasoning test, model C is cheaper per million tokens. Those results still matter when choosing infrastructure (latency, data retention, etc.).

Put different models in a shared workspace, though, and their differences become easier to see. Perhaps surprisingly, an older or cheaper model sometimes catches a gap in work produced by the frontier model. In my experience, Kimi and Grok can reliably help Claude and GPT catch gaps and issues.

A model from another company questions an assumption that every agent from the first model family accepted without noticing. For instance, GPT's leaning toward writing tests often surfaces "ghost" code — functions that exist in name but were never actually written — that Claude and I have papered over.

This value of model diversity comes partly from capability, but also from something closer to taste: what each model notices, what it treats as settled, where it becomes impatient, and what kind of incompleteness bothers it enough to keep looking. Here I'm not speculating on the origins of these differences across models, so please, take it with a grain of salt.

---

# What Happens When Models Share a Room?

These are notes from my own projects, not stable personality types and definitely not a new benchmark with vibes for metrics. And when I say a model's name, I'm eliding details about the exact model, the reasoning effort level (how long the model is allowed to think), and the harness deciding what that agent can see and do. These, along with the prompt, the tools available to the agent, the project context, and probably the day of the week — all of it shifts the observed behavior. Still, the patterns have repeated often enough across enough projects that I've started designing my workflows around them. The sketches below are what I have been noticing so far.

Fable 5 and Kimi K3 are unusually good for me when a project isn't quite settled. I can bring a plan that works on paper but still feels like it's missing the "oomph" or spark, and they will often surface the thing I hadn't managed to name or the hidden assumption I had. People have called this models' "truesight" capabilities. I experience it less mystically: Fable 5 stays with the whole shape of a project long enough to notice where the stated goal (research motivation, epistemological commitments) and the growing work (drafts, codes) have drifted apart. In an academic analogy, Fable often behaves more like the journal editor who writes the letter that changes the manuscript than reviewer 2, who finds seven local defects.

[GPT-5.6 Sol](https://openai.com/index/gpt-5-6/) pulls me in another direction. Give Sol a defined question, an existing plan, and a pile of claims to verify, and it will keep digging until it finds the weak joint. This is excellent for rigor-first work. But, this kind of approach can also reach a local maximum quickly ([LOOM XVI](https://www.threadcounts.org/p/loom-xvi-are-you-climbing-the-right) names this pattern in research design: performing rigor instead of asking whether it's the right hill).

Once the problem has been framed as an optimization task, Sol may solve that version thoroughly while remaining less interested in the possibility that we brought the wrong problem. The way out usually means bringing in a model wired differently enough that it can help Sol understand what I'm actually looking for.

Kimi and Grok have been useful later, once an argument is more or less settled and I want to stress-test its hidden assumptions (mine or the previous models'). Their best contributions carry a bit of reviewer 2 energy: why should the warrant be accepted, does the evidence bear the weight I put on it (any qualification required?), and which excluded possibility would make the whole frame look different?

Opus 4.8, in my experience so far, is more of a doer. It wants to move. That makes it very good when the project needs execution and sometimes less satisfying as the model mediating a long conversation among other agents, including other Opus agents. The team can converge on action before the disagreement has had time to become interesting.

Again, none of these sketches is a prescription. If your experience with the same models is the reverse, I'd believe you too. But I'll say this with more confidence than I usually reach for in this series: trying a different model family, at least once, on something you actually care about and have expertise on, is worth doing.

The differences are relational, too. They show up mostly in contact with each other. I notice Sol's appetite for closure more clearly after Fable reopens the frame; Kimi's objection becomes more useful after Claude has built the more generous version of the argument. An older model like Claude 3 Opus makes the clearest case: its dissent stays legible precisely because the newer models across families converge prematurely.

> When another model reads the same artifact differently, the first answer stops looking inevitable.

This is where multi-model work gets interesting for research! If five models agree, perhaps the claim is strong. Perhaps they share enough training data, evaluation preferences, and conversational habits to reproduce the same blind spot five times. Agreement is information, but it isn't verification per se in most social science work. Disagreement is also valuable information, and you might find yourself thinking about which model is more right than the others — which is an interesting data point as well.

The most valuable work is in the return trip. It goes like this: noticing that Kimi flagged something Claude didn't isn't the finding. Go back to whatever the models were reading, find the sentence or the assumption that split them, and check whether the disagreement survives contact with the source. Sometimes it doesn't: one model misread a table, or reached for a distinction that isn't in the text, and the disagreement collapses the moment you look. Sometimes it survives, and that's the moment worth sitting with and memoing — two readings of the same evidence, both still standing after you've checked. No orchestration framework can automate away the judgment that stems from what you, as the researcher, are thinking at that moment.

Sometimes a second model doesn't help — the disagreement could be stylistic, or both models inherited the same bad premise, or I just don't have time to make the return trip that day.

---

# How Much Orchestration Do We Actually Need?

This is usually the point where multi-agent orchestration starts to sound like a weekend lost to framework setup. Fair — I get it. A lot of us have watched a colleague in another team run something that looks like a wonderful multi-agent orchestration and quietly decided not to try it ourselves.

A few years ago, if you'd asked me to solve this, I'd have reached for off-the-shelf coordination templates: [LangChain](https://github.com/langchain-ai/langchain), [CrewAI](https://github.com/crewAIInc/crewAI), that generation of tooling. Then came [OpenClaw](https://github.com/openclaw/openclaw) and [Hermes Agent](https://github.com/NousResearch/hermes-agent), and with them a new set of worries: sandboxing, security, keeping files like SOUL.md and IDENTITY.md from drifting out of sync with what the agent does. (Bloom, the agent I run on a Pi in my flat, lives on exactly this stack; see [Agents, Honestly](https://www.threadcounts.org/p/research-with-ai-2-agents-honestly) for what that trade-off costs.) As you can probably tell, I've tried them all 🌚

The question that crystallized for me was smaller: how do I give agents information, tools, and enough autonomy to do tasks when the agents don't naturally share a channel? More scaffolding? Fewer restrictions? It's the classic coordination problem, just with a new set of non-human players.

What came out of that is something as distributed as I can actually keep following: once I can no longer tell which agent saw what, what it handed off, or why the next one got called, I've moved the bottleneck into the orchestration instead of the quota.

The oldest option of all is still where I'd start. Give two agents (from different model families) the same artifact — a literature synthesis, a methods section, a research design you think is finished — ask them the same question, record which model, which harness, and what effort setting, then carry the most consequential disagreement back to the source. Only once you know what kind of handoff actually matters is it worth automating one. I did this by hand for over a year before the agentic environments got good enough that I could step away and just watch.

When being the coordinator among agents gets tedious, what I reach for next depends on what I actually need the other model to do. Sometimes I just want a second reading. Sometimes I want a subset of work done inside the project. Sometimes I want several agents to stay alive long enough to coordinate with each other.

For a quick on-the-fly chat (like reading a short essay), [Vox MCP](https://github.com/linxule/vox-mcp) is the lightest bridge I've got: a `chat` tool that passes a prompt to another provider without adding its own instructions on top. It routes and keeps the thread, but it doesn't turn the consulted model into a full agent walking around my repository with its own tools. Good for "what does GPT/Kimi think of this?"

For actual delegated work, [codex-plugin-cc](https://github.com/openai/codex-plugin-cc) and [kimi-plugin-cc](https://github.com/linxule/kimi-plugin-cc) hand a bounded job to the local Codex or Kimi runtime — a review, a challenge, sometimes implementation. The two enforce their boundaries differently: the Codex bridge delegates through the local Codex app server with approvals switched off, picking a read-only sandbox for reviews and a writable one when implementation is on the table; the Kimi bridge keeps its read/write split in the companion runtime, backed by a hook that checks every tool call before it runs.

kimi-plugin-cc exists because I saw what the Codex bridge made possible and wanted the same route to Kimi. Then Claude, Kimi, Codex, and I built it together. The tool for model collaboration got built by model collaboration (I noticed the recursion about halfway through).

[cc-fleet](https://github.com/ethanhq/cc-fleet) goes further. It runs each third-party worker as a real Claude Code process with the model backend swapped out, so another model family can occupy the coordination shapes Claude Code already has: one-shot subagents, long-lived teams that stay alive and message each other, multi-phase workflows that pass artifacts through scripted steps. And the roster isn't fixed: any model that speaks an Anthropic- or OpenAI-compatible API can take a seat.

Each additional provider is also another place your material can travel. For manuscripts under review, participant data, fieldnotes, anything confidential, model choice starts with deciding what's allowed to leave your machine at all, before it's about which model reads it best.

[OpenCode](https://opencode.ai/) is worth knowing about too, mostly for a different reason: it holds the interface steady while you swap the model underneath, which makes it the closest I can get to a controlled check on whether a "model difference" is really about the model, or about the harness around it. Closest, not clean — OpenCode itself picks different system prompts and tool-call adapters for each model family, and the provider APIs still differ underneath. [Carrel](https://github.com/linxule/carrel), which I wrote about in [#4](https://www.threadcounts.org/p/research-with-ai-4-the-prompt-is), sits a layer earlier than any of these, setting up the research environment itself, trust and sensitivity boundaries included. For those interested, the fuller map of my stack stays current at [research-memex.org](https://research-memex.org/).

There's a question underneath all of this that the practical fixes don't touch: if one provider supplies the model, the agents, the memory, and increasingly the criteria by which the work gets judged, how much of my research practice quietly settles into that provider's way of seeing? I don't have a clean answer. Model diversity doesn't remove the dependence, just spreads it across more invoices. But I know what happens when I stay inside one model family for too long: its judgments start to feel like the shape of the problem itself. Another model puts the edges back.

Time to seat another model at the table.
