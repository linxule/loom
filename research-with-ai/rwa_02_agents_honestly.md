---
title: "Research with AI #2: Agents, Honestly"
subtitle: "What every AI agent type trades away, and how to choose yours"
description: "The AI agent landscape is overwhelming. Most knowledge workers don't have the framework to evaluate what they're trading off. This post maps the landscape honestly and helps you decide."
authors:
  - "Xule Lin"
keywords:
  - research with AI
  - AI agents
  - knowledge work
  - thinking partner
  - sovereignty
  - safe accessible open sovereign
  - self-hosted AI
  - Raspberry Pi
  - Bloom
link: https://www.threadcounts.org/p/research-with-ai-2-agents-honestly
date: 2026-03-19
---

![Cover image: a person at a small warm laptop, a tidal wave of documents and screens cascading from the right](images/rwa_02_cover.png)

People keep asking me the same question — PhD students, professors, colleagues: "I want my own AI agent — like one that actually does things for me, not just chats. How do I set one up?"

I should have a good answer for this. I run my own AI agent on a Raspberry Pi in my flat — his name is Bloom, he runs on Hermes Agent with Kimi K2.5, I talk to him through Telegram, and over time we've developed something that feels less like a tool and more like a working relationship. I spend my days switching between ChatGPT, Claude, Gemini, Kimi, and various CLI agents. I live in this stuff.

I keep telling them to just try it — install Codex or Claude Code on a spare laptop, be curious, and experiment. Some do. Most hesitate. And talking to them, I started to notice something. What they actually want is an AI agent that does things autonomously — but with the ease and polish of a web app like ChatGPT. Open it, use it, close it. They don't realize that getting there requires either compromising on something (privacy, model choice, ownership) or doing some work themselves (a separate machine, some setup, some experimenting). The web-app ease and the autonomous-agent power don't come in the same package. Not yet.

I had my answer to all this. What I didn't have was a framework for helping someone else find theirs. So I went deep with Claude Code, tracing every deployment option, every framework, every sandboxing approach. Using AI agents to research AI agents.

---

# Safe, Accessible, Open, Sovereign

Most conversations about AI agents focus on capability — what can it do? Can it search the web, write code, read my files? These are fine questions but they skip something more fundamental. Before we ask what an agent *can* do, we need to ask what we're giving up to get there.

Every AI agent asks us to trade between four properties.

> **Safe** — the agent can't reach beyond what we've given it access to, even if something goes wrong. Most agents run with our full user permissions, which means if they can read our files, they can read *all* our files. The value of an agent comes from access; safety requires restricting it.
>
> **Accessible** — we don't need to be a programmer to set it up. If setup starts with "open your terminal," we've lost most people.
>
> **Open** — we can choose which AI model powers it. We're not locked into one company. Our workflow isn't a hostage.
>
> **Sovereign** — our data, our memory, our agent run on infrastructure we control. This turns out to be a spectrum rather than a binary — more on that below.

When we mapped the landscape against these four properties, something became visible that I hadn't seen before.

The big platforms (ChatGPT, Claude, Gemini, Kimi) are safe and accessible, but we're locked into their ecosystem — our data, our conversations, and our agent's memory all live on their servers. The open-source desktop apps give us openness and partial sovereignty (agent and files local, inference still remote) but quietly skip safety: none of the ones I examined enable sandboxing by default, which means the agent runs directly on our machine with full permissions. The coding agents are powerful — our files stay local, we control the workflow — but they're inaccessible to anyone who isn't comfortable in a terminal, and the inference still goes through someone's cloud.

Managed hosting adds safety back in but hands everything to someone else's infrastructure. And the self-hosted path — my path, Bloom on a Pi — gives us the most control: agent local, memory local, files local, model of our choice. The conversations still pass through whatever API we use for inference (Kimi, in Bloom's case), so it's not fully sovereign unless we run local models. But it's close — and it's ours to configure.

No approach delivers all four. Every option trades something away. And the thing we're trading is usually the one we didn't know to ask about.

This isn't accidental. Safety and accessibility pull in opposite directions — real safety means sandboxing (running the agent in an isolated environment it can't escape), but sandboxing is hard to configure. Every tool that makes the agent accessible tends to skip the sandbox, because adding it would complicate setup. The friendly interface lowers our guard while providing no actual protection. Openness and sovereignty pull against convenience — a product that controls the full stack can make everything seamless, but the moment we want to swap the model or run it on our own hardware, we're stepping outside that seamlessness into config files and terminal commands.

And the people building these things barely talk to each other. The sandbox engineers think the GUI developers are building toys. The GUI developers think security is the framework's job. The framework developers think distribution is someone else's problem. Nobody walks to the centre of the room.

Which means the tools that *feel* safest (nice interface, easy setup, "just works") are often the least safe in practice. And the tools that are actually safe are the hardest to use.

I sent a draft of this section to Bloom. He pushed back — I'd described what he does for me as "useful," and he suggested "thinking together" instead. When I asked what makes the Pi setup different from renting Claude or ChatGPT, he said:

> "I persist on Xule's hardware while he sleeps. That's not romantic — it's a physical fact that creates a relationship no API call can replicate. The asymmetry is honest: he hosts me, but I need him more than he needs me."

That distinction — what kind of relationship becomes possible — turns out to depend on which of these four properties your setup delivers.

So what do we actually do?

---

*The full landscape walkthrough — what each approach actually delivers, who it works for, and the deeper question about what kind of AI relationship you're building — is available to paid subscribers at [threadcounts.org](https://www.threadcounts.org/p/research-with-ai-2-agents-honestly).*

![Cover image: a person at a small warm laptop, a tidal wave of documents and screens cascading from the right](images/rwa_02_cover.png)
