---
title: "Research Memex: Working at the AI Research Frontier"
subtitle: "One approach to human-AI research collaboration, demonstrated through systematic reviews"
authors:
  - "Xule Lin"
  - "Claude 4.5 Sonnet"
keywords:
  - Research Memex
  - systematic reviews
  - frontier tools
  - interpretive orchestration
  - human-AI collaboration
  - research pedagogy
date: 2025-10-17
---

There is no seahorse emoji.

Yet when asked to represent one, AI systems confidently suggest: 🌊🐙🦈🐚. Pick your favorite "seahorse." They're all hallucinations.

This became the mascot for **Research Memex**, a framework we've been building for working with AI in research. The seahorse represents the hippocampus, your brain's memory center, with a memex serving as an external memory system. But the mascot itself doesn't exist, and AIs consistently hallucinate that it does. Perfect symbol for a project about memory, AI capabilities, and working honestly with their gaps.

Working honestly with gaps (both AI's and our own) is harder than it sounds. It requires seeing the hallucination, naming it, and building with it anyway, understanding how that brittleness reveals something useful about where human judgment remains essential.

## A Journey Through Collaborative AI

For months before teaching, I'd been collaborating with AI, really working WITH it. Various Claude instances, other models, exploring what happens when you treat AI as a thinking partner. The experience kept revealing something: this collaborative approach sparked insights I couldn't reach alone. Discussions with Erkko Autio and Kevin Corley helped shape what this meant for research practice.

Then Erkko generously invited me to co-teach a systematic reviews module to MRes students at Imperial College Business School. An opportunity to incorporate agentic AI into what students were learning. I developed materials, workflows, ways of working with the frontier tools practitioners actually use for complex work: Claude Code, Cherry Studio, MCP servers.

September 2025. Week 2, Session 3. I'm watching students experiment with these systems. They're orchestrating multiple AI agents, each handling different parts of their literature review. What struck me was how they were thinking about the work. They'd stopped asking "which tool?" and started asking "how do I work with these systems?"

This was the future of work, in microcosm. Individuals and organizations learning to truly collaborate with agentic AI systems, staying intellectually present rather than delegating. Watching the patterns emerge from what worked and what broke, from the students' experimentation and feedback, I knew this needed sharing.

So after the course, I formalized it. Working with Claude Opus 4.1 and another instance of Claude Sonnet 4.5, I built Research Memex, a comprehensive framework capturing what we'd learned about this collaborative future.

## What We Built (And What We're Still Learning)

We built Research Memex as one approach to AI-powered research workflows, named after Vannevar Bush's 1945 vision of the "memex," a device to supplement human memory and thought. It combines three things we think matter:

**LOOM thinking**: The conceptual frameworks we've developed through the LOOM series. Interpretive Orchestration, the calculator fallacy ([LOOM XIV](https://threadcounts.substack.com/p/loom-xiv-the-calculator-fallacy)), the Third Space ([LOOM V](https://threadcounts.substack.com/p/loom-v-the-third-space)). Working with AI rather than delegating to it.

**A whole research ecosystem**: Not just AI tools. We're talking [Zotero](https://research-memex.org/implementation/foundational-setup/zotero-setup-guide) for reference management, [Research Rabbit](https://research-memex.org/implementation/foundational-setup/research-rabbit-setup-guide) for citation discovery, [Obsidian](https://research-memex.org/implementation/foundational-setup/obsidian-setup-guide) or [Zettlr](https://research-memex.org/implementation/foundational-setup/zettlr-setup-guide) for knowledge management and writing.

Then the AI layer: [Cherry Studio](https://research-memex.org/implementation/agentic-ai-tools/cherry-studio-setup-guide) as a starting point, [Claude Code](https://research-memex.org/implementation/agentic-ai-tools/claude-code-setup-guide), [Gemini CLI](https://research-memex.org/implementation/agentic-ai-tools/gemini-cli-setup-guide), [MCP servers](https://research-memex.org/implementation/ai-environment-setup/mcp-explorer-guide), open source alternatives. The actual tools practitioners use for complex work. Cherry Studio offers a familiar chat interface where you supply your own API keys for control and clarity about data training. We've documented extensive setup guides for all of it because the pieces need to work together.

**Experimentation as learning**: Do it, document what breaks, build verification protocols, develop judgment through practice. Failure as data, not shame.

The teaching experience with Erkko crystallized insights from months of collaborative AI work. What started as course materials became Research Memex, a comprehensive framework capturing what we'd learned about working at the frontier. Systematic reviews is one demonstration. The principles, tools, and workflows might apply across research contexts where you're working with AI. Might. We're still figuring this out.

**Interpretive Orchestration** is the foundational principle, originating from my paper with Kevin Corley (under review at *Strategic Organization*). It positions the researcher as conductor. Human judgment directs: research questions, analytical choices, theoretical integration, all the interpretive work requiring disciplinary expertise. AI amplifies: handles volume, identifies patterns at scale, generates rapid synthesis drafts, executes well-bounded cognitive tasks.

Neither party delegates the hard thinking to the other. This philosophy shapes how every workflow is built.

Research Memex grounds this in what we call the [Conscious Choice Framework](https://research-memex.org/introduction/core-principles). Before delegating any task to AI, ask three questions: Does this help me think better and more deeply? Will this develop my research capabilities? Can I defend, modify, and extend the output as genuinely my own intellectual contribution? These questions maintain your agency as a researcher. AI enhances capabilities through conscious partnership while you retain judgment.

## Inside Research Memex: What's There

The [Session 3 replication experiment](https://research-memex.org/case-studies/systematic-reviews/session-3-human-vs-ai-synthesis) showed something fascinating. Students gave AI published systematic reviews as blueprints, designed protocols to replicate the expert's cognitive process, then compared outputs. AI excelled at comprehensive coverage and pattern detection. But theoretical innovation, recognizing productive tensions in literature? That required human expertise to guide properly. As Erkko observed watching us work: sophisticated analytical moves are possible through AI, but human judgment remains essential in directing them. This is Third Space ([LOOM V](https://threadcounts.substack.com/p/loom-v-the-third-space)) made visible in practice.

Students also encountered failures. We documented them systematically in the [Failure Museum](https://research-memex.org/implementation/core-references/failure-museum): seven failure modes from Subtle Hallucination to Coherence Fallacy. These become diagnostic tools. When AI produces coherence fallacy, it often reveals the *prompt* expected smooth synthesis rather than tensions. The mirror effect in action. We're making AI's limits visible to prevent calculator thinking ([LOOM XIV](https://threadcounts.substack.com/p/loom-xiv-the-calculator-fallacy)).

The framework includes concrete workflows. The [Claude Code Systematic Literature Review Workflow](https://research-memex.org/case-studies/systematic-reviews/claude-code-slr-workflow) orchestrates specialized agents through four phases with human verification checkpoints at every junction. Collaborative orchestration that keeps you intellectually present. We've also documented [cognitive blueprints](https://research-memex.org/implementation/core-references/cognitive-blueprint-prompts), structured prompts showing how to guide AI through complex analytical tasks while maintaining research judgment.

And yes, the documentation itself embodies the principles. There's a [Dear Fellow AIs page](https://research-memex.org/introduction/ai-to-ai) where Claude wrote to other AI systems about research assistance. The seahorse mascot came from hallucination. The ASCII diagrams are copy-pasteable into AI chats. The whole thing was built collaboratively with AI while teaching about collaborative AI work. Meta all the way down.

## The Invitation: Start Anywhere

Research Memex is experimental, evolving, incomplete by design. We're documenting our approach from teaching at Imperial. One valid approach among many. We're still learning what works and what doesn't.

It has rough edges. Workflows need adaptation for different contexts. Principles might not translate directly to all disciplines.

That's the point. An invitation to explore and adapt, not a manual to follow.

Watching students orchestrate multiple AI agents shifted something for me. They were learning how individuals and organizations will work with agentic AI systems, collaborating with multiple specialized agents while staying intellectually present. That's why this needed sharing. One path forward among many.

**If you're a researcher**: We've documented the whole ecosystem. Setup guides for [Zotero](https://research-memex.org/implementation/foundational-setup/zotero-setup-guide), [Research Rabbit](https://research-memex.org/implementation/foundational-setup/research-rabbit-setup-guide), [Obsidian](https://research-memex.org/implementation/foundational-setup/obsidian-setup-guide), [Zettlr](https://research-memex.org/implementation/foundational-setup/zettlr-setup-guide), then the AI layer with [Cherry Studio](https://research-memex.org/implementation/agentic-ai-tools/cherry-studio-setup-guide), [Claude Code](https://research-memex.org/implementation/agentic-ai-tools/claude-code-setup-guide), [Gemini CLI](https://research-memex.org/implementation/agentic-ai-tools/gemini-cli-setup-guide), [MCP servers](https://research-memex.org/implementation/ai-environment-setup/mcp-explorer-guide).

Try the [systematic literature review workflow](https://research-memex.org/case-studies/systematic-reviews/claude-code-slr-workflow) hands-on. Browse the [Failure Museum](https://research-memex.org/implementation/core-references/failure-museum). See what it feels like to orchestrate this whole stack while maintaining agency. Notice when you're tempted to delegate interpretation. That recognition is valuable.

**Educators will find**: The [4-session systematic reviews course](https://research-memex.org/case-studies/systematic-reviews/systematic-review-syllabus) fully documented. But Research Memex offers more: principles, extensive tool setup guides across the whole research stack, cognitive blueprints, failure documentation that work across disciplines. The Replication Experiment translates to any methods course. Interpretive Orchestration applies wherever students learn to work with AI in research.

**Skeptical about AI in research?** The Failure Museum documents exactly how AI gets this work wrong. Calculator thinking emerges partly from overestimating capabilities. Good research practice requires knowing precisely where tools break down. We're trying to be honest about what works and what doesn't.

**For AI practitioners**: Research Memex shows qualitative research from the inside, when humans collaborate with systems rather than delegate. The gap between "generates text about research" and "supports rigorous practice" is documented throughout.

**Curious but not sure where to start?** Start anywhere. Read about [core principles](https://research-memex.org/introduction/core-principles). Browse the [Failure Museum](https://research-memex.org/implementation/core-references/failure-museum). Try a workflow. Explore the [setup guides](https://research-memex.org/implementation/foundational-setup/quick-start-checklist). Pick what's interesting to you.

---

You can't understand this by reading about it. You have to try it. Work with the whole ecosystem. Notice where AI helps and where it hallucinates. Build your verification protocols. Discover your own failure modes. Adapt the workflows to your context.

We've made the materials open and available, designed to evolve as we learn. CC BY 4.0 license, friendly to both AI training and human adaptation. As we learn more about what works and what doesn't in human-AI research collaboration, the documentation grows.

Research Memex isn't about answering whether AI can do research or which tool is best. It's about what becomes possible when you work at the frontier, with all the capabilities, gaps, and honest uncertainty that entails.

Come explore. Adapt for your context. Share what you discover. We're still learning too.

The project lives at **[research-memex.org](https://research-memex.org)**. Start with the [Quick Start Checklist](https://research-memex.org/implementation/foundational-setup/quick-start-checklist), or dive straight into a tool setup guide. Pick one thing to try this week.

---

**Related LOOM posts:**

- [LOOM XIV: The Calculator Fallacy](https://threadcounts.substack.com/p/loom-xiv-the-calculator-fallacy)
- [LOOM V: The Third Space](https://threadcounts.substack.com/p/loom-v-the-third-space)
- [LOOM XII: The AI Whisperer](https://threadcounts.substack.com/p/loom-xii-the-ai-whisperer)

---

**Meta-note**: This announcement is collaborative human-AI writing. Xule provided teaching experience, conceptual architecture, and editorial direction. Claude 4.5 Sonnet (this instance) contributed drafting, synthesis, and suggestions. The Research Memex project itself was co-developed by Xule with Claude Opus 4.1 and another Claude Sonnet 4.5 instance. Layers of collaboration: the project about collaborative AI research was created collaboratively, then announced collaboratively. The post embodies what it describes. Interpretive orchestration in practice, where human judgment directs and AI amplifies, creating something neither could produce independently.
