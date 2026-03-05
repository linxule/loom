---
title: "Research with AI #1: The Foreclosure Problem"
subtitle: "AI makes you faster at finding what you already know to look for. That's the problem."
description: "The foreclosure problem: how AI tools quietly narrow the space of what you might have considered, and how to build a thinking partner that broadens it instead."
authors:
  - "Xule Lin"
keywords:
  - research with AI
  - foreclosure problem
  - literature review
  - exploitation and exploration
  - knowledge production
  - agentic research
link: https://www.threadcounts.org/p/research-with-ai-1-the-foreclosure
date: 2026-03-05
---

Most AI tools for research (or any knowledge production work) seem to optimize for the same thing: helping us become faster at finding what we already know to look for. Arguably this unlocks a lot of productivity and frees up more time (to do what exactly?).

We sit down with what we know, be it a stack of seed papers, a set of industry reports, or a collection of case studies. They anchor our thinking and enable us to start building outward. Maybe we're using AI literature tools (e.g., Consensus, Elicit, Scite), or maybe just regular chatbots (e.g., ChatGPT, Claude, Gemini, Kimi) with a careful prompt for deep research. The results, if our prompts are good enough, tend to be helpful. A report that contains related work, the relevant concepts to glue them together, and a summary of the landscape.

Something I keep noticing in my own workflows is that, somewhere in that process, something closes. In a way that may be too subtle to notice, the space of what we could have considered (the adjacent fields using different language for the same phenomenon, the critiques from traditions we don't usually read, the patterns that become visible when we look at our problem from another vantage point) quietly narrows. The AI as the assistant might even give us more of what we have asked for. But zooming out, how often does our AI challenge us to look at what we didn't know to ask (the unknown unknowns).

On the surface, it looks like a foreclosure problem. I would argue this as less of an AI problem but an issue with the framing that our mental models bring to the human-AI interactions. Consider how humans have always done this: we follow citation chains that loop back on themselves, reading the same thirty people who read each other. Analysts rely on the same data sources their competitors use. Strategists consult the same frameworks their industry has consecrated. With AI, the closure process happens perhaps without our noticing. When we can engage with AI to process a hundred documents in an afternoon, the efficiency almost feels like thoroughness.

But is it?

---

# Exploitation and Exploration

James March had a useful way of thinking about this. He called them exploitation and exploration, the two key moves to approach any search problem, and the tension between them turns out to be one of the most durable ideas in organizational theory. It extends well beyond organizations to anywhere we need to balance depth with breadth. And AI makes this tension stand out ever more.

Exploitation is working with what we have. Our seed material. The conversation we know we're entering. What's been said, where the gaps are, and what assumptions haven't been challenged. Chatbots can be quite good at this: we can vibe-research with a chatbot, talk through what makes sense conceptually, and sketch a grand theory at the end of a conversation. Put aside citation hallucinations for a moment. At the level of ideas and their relationships, these models sometimes are better conversation partners than most people give them credit for.

Exploration is the other problem. We don't know what we don't know. Maybe there's a parallel conversation happening in a field that uses completely different terminology for the thing we're studying. Maybe someone in an adjacent discipline wrote the exact critique of our underlying assumption years ago. Maybe a competitor in a different market already tried and failed at the strategy we're considering. The usual way to find this is to cast a wide net (broad searches, systematic scans, criteria-driven filtering across whatever databases or sources matter for our domain). The problem, though, is that broad searches generate hundreds or thousands of results, way beyond human capacity to process them all in time to come back to the original task.

Traditionally, knowledge work tends to push us toward a choice. Either we go deep and narrow (exploitation) or wide and shallow (exploration). What changes with the current AI tools is the possibility of doing both at the same time, at a scale that wasn't practical before. Agentic teams (think Claude Code with 10 subagents or Kimi Agent Swarm with up to 100 agents) could run exploitation and exploration simultaneously. One thread goes deep into our seed material, mapping conceptual relationships, exposing gaps, and testing the logic of our emerging argument. Another thread scans broadly across databases and sources, filtering by criteria we've specified but also catching anomalies: results that don't fit our criteria but share structural similarities with our question. And yet another thread to bring these two together.

Conceptually perhaps this is nothing new. But orchestrating it with mainstream consumer AI tools can often feel messy and like hit-or-miss.

---

# What Would I Actually Want If I Could Build It?

In academic research (as the running example throughout), we see the foreclosure problem dressed up in a nicer interface. Tools like Consensus, Semantic Scholar's AI features, and Elicit already let us search with natural language queries and get AI-curated results. Useful, but they're also black boxes, because a product needs to be simple enough for any user. The algorithms, models, scaffoldings decide what's relevant, and they decide based on what's generally relevant. There is little we can finetune to fit the specific taste and criteria that matter for *our* question.

Then there's the inductive approach. Drop a few hundred papers into something like NotebookLM, and we get a mind map of concepts. This could let patterns emerge rather than imposing our search criteria on the results. We might see clusters we didn't expect and connections between topics that looked unrelated from the outside. This is valuable for breaking out of our own conceptual frame. But the initial clustering can settle into its own kind of closure if we don't keep re-scoping it (fun experiment idea: you could drop your drafts to see if it changes anything). What if the patterns we see first tend to become the patterns we keep seeing?

> The most valuable thing any knowledge search can do is not confirm what we suspected but change what we're looking for.

So, what's the barrier here? When I look at what I actually want, it starts with deep engagement with known material, the exploitation move, where AI helps me think through implications, test logic, and identify unstated assumptions. And the exploration move. We also need broad scanning filtered by our own evolving sense of what matters. Something more like a taste profile and crystallized understanding that together guide our search criteria, which can be applied at scale across academic paper databases like Semantic Scholar, OpenAlex, and arXiv. And even that might not be enough if we only do it once. Periodic re-scanning that updates as our question and understanding evolve. Something that helps us check if last week's assumptions still hold.

This urge is what pushed me to start testing with Claude Code: querying the Semantic Scholar and OpenAlex APIs directly, filtering by criteria I could actually tune. I wanted this to be for both retroactive (understand what has been done) and periodic (know what's coming out). The periodic scan is something that runs continuously so I don't have to watch RSS feeds or click through email digests, hoping I don't miss something relevant. What ends up getting built isn't really a search tool. It's a pipeline that allows the Claude Code agent to be a thinking partner that can tell me not just "here's what matches our search" but "here's something that doesn't match but might matter, and here's why." The agent goes beyond the typical one-off retrieval tasks. It *interprets*, based on the profile we've curated together over time. At that point, the distinction between exploitation and exploration may start to dissolve a bit. The agent knows our question well enough to go deep, and scans broadly enough to find what we'd never have looked for. And because it runs periodically, it catches things as they emerge rather than months later when we happen to search again.

We could, if feeling adventurous, take it even further: hand this pipeline to an autonomous agent (something like an OpenClaw bot with the right sandbox permissions) and let it run the scans and flag the anomalies every week. And then, every Monday, we sit down with it to discuss what's interesting. If something stands out, then we manually add it to the Zotero/EndNote library and read the paper.

By the end of this experiment, we end up with something akin to an AI thinking partner that keeps up with our intellectual journey. A collaborator that's been tracking the same questions we have, and reading across the same landscape. And, because it scans and reads and interprets continuously, it might actually know more than we do on a topic where we have real expertise.

> "While you were away, three things happened that complicate the argument you were building."

This is the kind of provocation that can make our thinking sharper. I can see this extending further by going beyond just the metadata and the abstracts: papers and sources automatically downloaded and converted to formats agents can deeply read, doing actual close reading alongside us. That's something I'm still experimenting with.

> If the established approaches to knowledge production can be automated, what does human agency actually mean?

---

# Meta Agency?

There's a comfortable reading of everything described so far: AI is a prosthetic, it does what we want, we are in charge. The human orchestrates, the machine executes. But this version of agency is already being automated to various extents. Think how we started with Google AI Co-Scientist and now we have hundreds of open source projects of AI scientists on GitHub.

The established approaches to literature review (e.g., theory-building, problematizing, systematic reviews) have been the gold standard. Every one of them can now be run by an AI system without much human involvement, thanks to the wisdom these very papers have demonstrated. These are the paths of least friction and highest reward, which means they're probably what AI will do first and do well.

I don't think agency means simply sitting above the process, with us directing traffic. The agency I'm pointing at is something around the willingness to be changed by what we find and to let the search reshape the question. To sit with an AI thinking partner that challenges our assumptions rather than confirming them, and to take those challenges seriously. Orchestrating, yes, but also staying open to the possibility that the AI sees a pattern we missed, that an adjacent field has already solved our problem, that our framing is the thing holding us back.

For someone who already has deep expertise, this means building systems that force us to encounter what we'd otherwise filter out, narrowing from a position of strength. For someone starting out, a doctoral student or someone who doesn't yet have the knowledge to even formulate the right question with the appropriate scope conditions, the problem is even more challenging. When we are novices in an area, the foreclosure problem becomes about never having the breadth to narrow *from*.

The best outcome here, from my vantage point, is that AI nudges us to catch up on the areas and topics that we care about and love. Time to build.

---

*The implementation — a Semantic Scholar and OpenAlex API pipeline plus a skill file bundle you can hand to your own agent (Claude Code, OpenClaw, or whatever you prefer) to build a customized version for your own research domain — is available to paid subscribers at [threadcounts.org](https://www.threadcounts.org/p/research-with-ai-1-the-foreclosure).*

![Cover image: a researcher mid-turn from a wall dense with notes, a frog waiting patiently in the corner](images/rwa_01_cover.png)
