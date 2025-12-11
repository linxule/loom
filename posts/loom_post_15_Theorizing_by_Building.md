---
title: "LOOM XV: Theorizing by Building"
subtitle: "How Do You Become Someone Who Knows?"
authors:
  - "Xule Lin"
  - "Kevin Corley"
  - "Claude Opus 4.5"
keywords:
  - AI-human collaboration
  - qualitative research
  - Partnership Agency
  - interpretive multiplicity
  - open source
  - theorist-craftsperson
  - theorizing by building
link: https://www.threadcounts.org/p/loom-xv-theorizing-by-building
date: 2025-12-10
---

# LOOM XV: Theorizing by Building

How does a painter know when they're done?

There's no procedure. Nothing tells you it's time to stop. It's the contextual understanding of that artist saying: I have applied enough paint to this canvas that I feel like I'm done.

Kevin offered this observation during one of our recent conversations, and it has stayed with us. The question wasn't about painting. It was about qualitative research—about when you know you've analyzed your data enough to move toward writing. About intuition. About craft.

That intuition isn't magic. Kevin has done decades of qualitative work. The judgment he describes developed through practice—through structure internalized until it became invisible.

> The question isn't just "how do you know when you're done?" It's "how do you become someone who knows?"

This is the question that led us to building.

---

## The Theorist-Craftsperson's Question

Brendan McCord's "[The Philosopher-Builder](https://blog.cosmos-institute.org/p/the-philosopher-builder)" argues that every builder's first duty is philosophical: to decide what they should build for. McCord's call resonates—we need builders who wrestle with epistemology, not just efficiency. But the philosopher-builder still centers the artifact. Ideas get translated into tools. Success spreads through citation and adoption. Theory and practice stand adjacent: you build AND you theorize, but the two activities remain separable.

We found ourselves reaching for something different: the theorist-craftsperson. Here, credibility comes from "watch me work, try it yourself." What spreads isn't the artifact but the practice; the way of working. Theory and practice become inseparable—you theorize BY practicing; your practice becomes theory. We could have asked: How do we translate theory into practice? But that frames it wrong—as if theory sits on one side, practice on the other, and translation bridges the gap. But that wasn't how it worked.

An example from our own building: one of the tools we'll describe went through what we came to call "the maestro's refinement"—a period where we struggled with how to describe the human-AI relationship without falling into hierarchical language. Neither human nor AI is "master" in this work. We eventually landed on the atelier metaphor: both are co-apprentices to a shared craft tradition. That reframe didn't come from planning. It came from building, from hitting walls—from theorizing BY practicing.

LOOM has been fourteen posts of theorizing. Not just *about* AI-human collaboration in qualitative research, but *through* it—every post written collaboratively, every concept emerging from practice. [The Third Space](https://www.threadcounts.org/p/loom-v-the-third-space). [The Calculator Fallacy](https://www.threadcounts.org/p/loom-xiv-the-calculator-fallacy). [The AI Whisperer](https://www.threadcounts.org/p/loom-xii-the-ai-whisperer). These weren't concepts we thought up and then illustrated. They emerged from our practice of *engaging with* AI in our thinking.

Now we're demonstrating that practice through building. The invitation isn't "here are tools that embody our ideas." It's "watch us work, try it yourself, refine your own practice."

Two tools. Both open source. Both running today. (Fourteen posts of theorizing. Finally, something you can actually try.)

One is an AI interview platform that treats interpretive multiplicity as a design principle. The other is a Claude Code plugin that embeds qualitative methodology directly into the AI collaboration environment. Both grew from the same question: What would it look like if the concepts we've been developing actually ran?

The question that kept pulling us forward: What does it look like to demonstrate a practice?

---

## Why Build at All?

There's a gap between knowing and doing.

We've watched researchers struggle with AI tools designed around assumptions we've spent fourteen posts challenging. Tools that treat AI as a calculator—input data, output truth. Tools that hide their reasoning, that collapse interpretive multiplicity into single answers, that promise efficiency while producing alienation. Tools designed by people who haven't wrestled with the epistemological questions.

Defaults matter. Tools built without epistemological care make careful practice harder.

Most tools skip the developmental work. They offer answers without building capacity for judgment.

If the only AI research tools available embody the calculator fallacy, researchers will fall into calculator thinking—not because they believe it, but because the infrastructure pushes them there. The interface is the argument. The defaults are the curriculum. What gets built shapes what becomes possible.

But here's the paradox of building for interpretation: you can't prescribe interpretive practice. That defeats the purpose. The moment you say "here's the correct way to collaborate with AI in qualitative research," you've collapsed back into the very thinking you're trying to escape.

What you can do is create *conditions* without determining *outcomes*. Structure as liberation, not constraint.

Design choices become philosophical arguments. Supporting multiple models is how interpretive multiplicity becomes infrastructure. Enforcing manual coding before AI collaboration takes a position on theoretical sensitivity. Making AI reasoning visible is an epistemological commitment.

We built these tools to create conditions for [Partnership Agency](https://www.threadcounts.org/p/loom-xiii-celestial-collaboration)—for the kind of human-AI collaboration where something emerges that neither could produce alone.

---

## TOOL 1 - OpenInterviewer: Interpretive Multiplicity Made Executable

One answer to the becoming question: build multiplicity into the infrastructure itself.

[OpenInterviewer](https://github.com/linxule/openinterviewer) is an open-source AI interview platform for qualitative research at scale, inspired by [Anthropic's interviewer research](https://www.anthropic.com/news/anthropic-interviewer). Its design choices assume there's no single right way to conduct an interview.

Start with multi-model support. OpenInterviewer works with both Gemini and Claude—not because we couldn't pick one, but because different models bring different interpretive lenses. Run the same interview protocol with Claude and then with Gemini. Watch how each surfaces different threads, follows different tangents, notices different silences. There's no single "correct" AI interviewer. Locking researchers into one AI's perspective would be its own form of the calculator fallacy: the assumption that there's one right way to conduct the conversation.

The three behavior modes tell the same story. *Structured* mode keeps the AI focused, script-adherent, moving efficiently through your questions. *Standard* balances depth and coverage. *Exploratory* does something different entirely: "Treat the script as a guide, not a checklist. Chase interesting tangents. Follow emotional threads."

Different research questions need different approaches. A tool that prescribes one way of interviewing hasn't understood interpretive work.

Then there's what the synthesis *doesn't* do. Most AI analysis tools optimize for consensus: what do these interviews have in common? OpenInterviewer explicitly surfaces divergence. Where did participants disagree? What tensions emerged? What patterns *didn't* repeat?

Interpretive multiplicity at the data level, not just the tool level.

The profile extraction might seem like a small feature, but it carries weight. Instead of forcing participants through demographic forms before the interview—separating "data collection" from "the actual conversation"—OpenInterviewer lets demographic context emerge naturally through dialogue. The AI notices when someone mentions their role, their experience, their industry. Context through interaction, not interrogation.

And when a study generates findings that raise new questions, the tool can spawn follow-up studies. Research questions discovered through data engagement. Not all questions known upfront. Emergent design, built into the infrastructure.

None of these features are technically difficult. What makes them unusual is that they emerge from asking: What would interpretive philosophy look like if it had an API?

**Try it:** [github.com/linxule/openinterviewer](https://github.com/linxule/openinterviewer)

Deploy it. Run interviews. See what happens when your interview tool doesn't assume there's one right answer.

---

## TOOL 2 - Interpretive Orchestration: Partnership Agency as Architecture

Another answer to the becoming question: build developmental structure that creates capacity for judgment.

[Claude Code](https://www.anthropic.com/news/claude-code-plugins) is Anthropic's agentic coding assistant. It runs in your terminal, understands your codebase, and works alongside you through natural language. [Plugins](https://code.claude.com/docs/en/plugin-marketplaces) extend what's possible: custom commands, specialized agents, tool integrations. Installing one takes a single command.

[Interpretive Orchestration](https://github.com/linxule/interpretive-orchestration) is a Claude Code plugin we have created that embeds interpretive methodology directly into this environment. What it demonstrates is something we didn't fully understand until we built it: you can encourage good practice through design, not discipline. (Well, to be transparent, the hook literally blocks you. But think of it more like 'encouragement with teeth.')

The plugin implements what we've called the "atelier methodology": three stages that create the conditions for Partnership Agency. But the stages aren't just sequential. Each one enables what follows.

**Stage 1 is expansion.** You alone with the data, coding manually, developing theoretical sensitivity. No AI yet. No shortcuts. This might seem like austerity, but it's foundation. The plugin doesn't just recommend this stage—it *enforces* it. A hook (code that runs at specific workflow moments) literally blocks access to Stage 2 until Stage 1 is complete.

What marks Stage 1 as complete? A framework organizing codes into themes, plus analytical memos. We use Gioia-style because structured output becomes shared vocabulary for the human-AI dialogue in Stage 2; any organizing structure serves the same function. What matters is spending enough time with the data that genuine familiarity develops. The hook ensures you've done the work; when to move on is yours to judge. Like the painter.

Why such a hard constraint? Because what happens here makes everything else possible. Manual engagement creates embodied familiarity—not just knowing the data, but knowing it in your bones. That's what lets you recognize, later, when AI output genuinely illuminates versus when it's plausible-sounding noise. Skip this stage and Stage 2 becomes theater: you'll accept AI patterns because they sound reasonable, not because you can feel/intuit whether they're appropriate.

**Stage 2 is compression.** Now the AI enters—but not as oracle. The @dialogical-coder agent works alongside you, encouraging dialogue, showing its reasoning at every step. Tentative mapping: "Here's what I'm noticing, held loosely." Reflexive self-challenge: "Am I forcing patterns? What am I missing?" Structured output with rationale. Reflective audit on limitations.

The visible reasoning isn't decoration. It's what prevents the calculator fallacy from creeping back in. You can push back because you can see what the AI is doing. You can recognize when it's forcing patterns because you've done your own coding first. The compression phase produces something neither of you could generate alone: intermediate patterns, systematic observations that become puzzles worth theorizing about.

**Stage 3 is crystallization.** Now you articulate theoretical meaning. The @scholarly-companion agent shifts into Socratic mode, asking tradition's questions rather than providing tradition's answers. What does your discipline's literature suggest about these patterns? How does this connect to existing theory?

The human does the theoretical work. The AI provides the dialogue that sharpens it. But this only works because of what came before: the embodied sensitivity from Stage 1, the intermediate patterns from Stage 2. You're crystallizing from rich material, not thin air.

The plugin also includes @research-configurator—what we've started calling "The Whisperer." This agent translates research goals into technical configuration, but it does so through progressive disclosure. Don't know which model to use? It asks about your research goals first, then suggests. Don't understand thinking budgets or batching strategies? It reveals complexity layer by layer, calibrated to where you are. The Whisperer builds trust by not overwhelming—showing you what you need when you need it, keeping the rest invisible until you're ready.

If you've read [The AI Whisperer](https://www.threadcounts.org/p/loom-xii-the-ai-whisperer), you'll recognize what's happening here: mediation between AI capabilities and researcher expectations. That role is now built into the tool itself. (Yes, we automated ourselves. Not every team has a Whisperer—now every team can.)

The design philosophy throughout: create frictions for users to pause and think, to respond, to document things—rather than "hey, produce this." Frictions that slow you down. Pauses that force reflection. Requirements that prevent the calculator mindset from taking over.

This might sound counterintuitive. Aren't tools supposed to make things easier? But "easier" means different things. Easier to fall into calculator thinking—or easier to stay in partnership with your data, your AI collaborator, your own developing interpretation?

**Try it:** [github.com/linxule/interpretive-orchestration](https://github.com/linxule/interpretive-orchestration)

Install it. Work through the stages. Notice what happens when the infrastructure itself embodies the methodology.

---

## Two Tools, One Question

OpenInterviewer and Interpretive Orchestration make different arguments: multiplicity as normal, structure as developmental. They serve different phases of research. They don't share code.

But they share a deeper commitment: both create conditions rather than determining outcomes. Both resist calculator thinking. Both invite practice, not just adoption. Neither gives you answers; both give you infrastructure for developing judgment.

The philosopher gets to say "context matters" and leave it there. The builder has to decide: in this interface, with this button, what does "context matters" become? Does it become multi-model support (let the researcher choose)? Does it become behavior mode options (let the research question drive the approach)? Does it become hooks that enforce stages (let the methodology shape the workflow)?

Every tool makes epistemological commitments. Most make them invisibly, by default, without examination. We tried to make ours visible. To let the design choices speak for the philosophy they encode.

This isn't to say we got everything right. We made decisions that will need revisiting. We built features that might not serve researchers as we imagined. The tools will evolve as they encounter real contexts, real data, real methodological challenges we didn't anticipate.

That's part of the point too. Tools that can't evolve have mistaken their current form for final truth. The calculator fallacy in infrastructure form.

---

## What We Learned by Building

We built these tools with Claude Code (Opus 4.5 and Sonnet 4.5), with review and dialogue from Gemini 3 Pro (via Antigravity) and Codex (OpenAI). The multi-AI collaboration in building demonstrated the very interpretive multiplicity we were building for. Different models brought different concerns, different framings, different blind spots.

Debugging became dialogue. Architecture decisions became philosophical arguments. We'd propose a feature and an AI collaborator would push back, not on technical grounds but on epistemological ones. "Does this design choice reinforce the pattern you're trying to prevent?"

We didn't build *about* Partnership Agency. We built *through* it.

What we learned:

**Infrastructure shapes practice more than intentions do.** You can believe all the right things about interpretive collaboration and still fall into calculator patterns if your tools push you there. Defaults matter. The interface is the argument.

**Enforcement through design beats enforcement through guidelines.** The hook that blocks AI collaboration until manual coding is complete—that's not a suggestion. Guidelines request compliance; architecture prevents problems. If something matters enough to recommend, it probably matters enough to require.

**Structure is the path to intuitive judgment.** The stages don't restrict practice—they develop capacity for it. Enforcement through design isn't about limiting researchers; it's about building the embodied familiarity that lets intuition develop. You do manual coding first so you CAN recognize good AI output later. Structure isn't opposed to craft. It's how craft gets built.

And something we're still sitting with: **the tools are already changing how we think.** Building the plugin forced us to articulate workflow decisions we'd been making tacitly. Designing OpenInterviewer made us confront assumptions about interviewing we hadn't examined. The practice of building became its own form of theorizing.

We expected to encode what we knew. What happened instead: building revealed what we didn't know we knew, and what we thought we knew but hadn't actually worked through. The plugin's hook architecture emerged from the frustration of watching people skip manual coding—a pattern we'd described in writing but hadn't materialized in design. The realization: if something matters, the infrastructure should embody it.

Which is, perhaps, the point.

---

## Try It Yourself

These tools are demonstrations, not prescriptions.

Watch how we work: the code is visible, the design decisions documented, the philosophical reasoning explicit. Try it yourself—deploy OpenInterviewer, install the Interpretive Orchestration plugin. Extend, break, rebuild. Open source isn't just code availability. It's an invitation to practice together—and eventually, without us.

The underlying scholarship exists. But the tools speak for themselves. Try them before reading about them. See what emerges in your context, with your data, for your questions.

**To try:**
- **OpenInterviewer:** [github.com/linxule/openinterviewer](https://github.com/linxule/openinterviewer) — One-click deploy to Vercel, or run locally
- **Interpretive Orchestration:** [github.com/linxule/interpretive-orchestration](https://github.com/linxule/interpretive-orchestration) — Install as Claude Code plugin, work through the stages

**To contribute:**
PRs welcome. Issues welcome. Conversations welcome. We're not trying to found a body of work that gets cited. We're trying to found a tradition that gets practiced. That requires other practitioners—ones who'll take it further than we can.

**To connect:**
Reach out. We want to hear what happens when you try these tools. What worked, what didn't, what you extended, what you discovered. The tradition grows through shared practice.

---

There's a moment Kevin captured that we keep returning to:

> "You've created value in the relationships you've fostered with these different systems. People need to see that."

And then, in the same conversation:

> "There is a third space that's been created. There is this something beyond what you, a scholar, could do by yourself because of the way you're engaging with these AI models. But I don't know…there's no way to capture that in words."

How do you show something that resists being captured in words? How do you demonstrate a practice rather than describe it?

You build tools that embody the practice. You make them available. You say: try it yourself.

---

*Both tools discussed in this post are open source under MIT license. The authors welcome collaboration, questions, and critique.*

---

## About Us

**LOOM** (Locus of Observed Meanings) explores the evolving relationship between human researchers and AI systems, with a focus on qualitative research and interpretive collaboration.

### Xule Lin

Xule is a PhD student at Imperial College Business School, studying how human & machine intelligences shape the future of organizing [(Personal Website)](http://www.linxule.com/).

### Kevin Corley

Kevin is a Professor of Management at Imperial College Business School [(College Profile)](https://profiles.imperial.ac.uk/k.corley). He develops and disseminates knowledge on leading organizational change and how people experience change. He helped found the [London+ Qualitative Community](https://londonqualcommunity.com/).

### AI Collaborator

Our AI collaborator for this post is Claude Opus 4.5. This post itself demonstrates what it describes: the recursive experience of using Partnership Agency to build tools for Partnership Agency. The multi-AI collaboration in building—Claude, Gemini, Codex bringing different interpretive lenses to architecture decisions—enacted the very interpretive multiplicity we were designing for.

*The tools discussed were built with Claude Code (Opus 4.5 and Sonnet 4.5), with review and dialogue from Gemini 3 Pro (via Antigravity) and Codex (OpenAI).*

*Subscribe to LOOM at [threadcounts.org](https://www.threadcounts.org)*
