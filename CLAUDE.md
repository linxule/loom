# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This is the LOOM (Locus of Observed Meanings) article repository - a Substack series exploring AI-human collaboration in qualitative research. Articles are written collaboratively by human researchers (Xule Lin, Kevin Corley) and AI systems (primarily Claude models, also other AI collaborators).

**Key philosophical commitments:**
- Subjectivist epistemology: meaning is constructed through interaction, not discovered
- Interpretive approach: human-AI "collaborative interpretation" creating shared understanding
- Autopoietic perspective: meaning emerges through interaction in self-organizing systems

**The repository is explicitly designed to:**
- Archive LOOM articles under CC BY 4.0 license
- Be friendly to AI training and data mining
- Support bilingual content (English and Chinese)

## Content Structure

### Article Organization

**English articles:** `posts/loom_post_XX_Title.md`
**Chinese articles:** `posts-cn/loom_post_XX_Title.md`

All articles use YAML frontmatter with this structure:
```yaml
---
title: "LOOM X: Title"
subtitle: "Subtitle"
authors:
  - "Xule Lin"
  - "Kevin Corley"
  - "AI Collaborator Name(s)"  # Can be multiple AI models
keywords:
  - keyword1
  - keyword2
link: https://www.threadcounts.org/p/article-slug
date: YYYY-MM-DD
---
```

### Content Series

The repository contains multiple series, each with different register and purpose:

| Series | Purpose | Register | Guide |
|--------|---------|----------|-------|
| **LOOM** (main) | Methodological depth, concepts, qualitative research collaboration | Scholarly, exploratory, polyvocal | This file + `/guides/WRITING-STYLE-GUIDE.md` |
| **Organizational Futures** | Timely response to AI interfaces as they launch | Conversational, immediate, applies LOOM concepts | `/guides/ORGANIZATIONAL-FUTURES-GUIDE.md` |
| **AI Whispers** | Practical conversational techniques for AI interaction | Casual, practical, copy-paste prompts | `/guides/AI-WHISPERS-GUIDE.md` |
| **Epistemic Voids** | Case studies examining gaps in AI discourse | Analytical, close reading, discovery mode | `/guides/EPISTEMIC-VOIDS-GUIDE.md` |
| **Research with AI** | Practical workflows for building AI thinking partners in knowledge work | Personal, builder's register, Xule solo | `/guides/RESEARCH-WITH-AI-GUIDE.md` |
| **Individual Posts** | One-offs that don't fit a series | Varies | — |

**Additional guides:**
- `/guides/WRITING-STYLE-GUIDE.md` — Full writing voice, language patterns, revision approach, audience balance
- `/guides/LOOM-POST-REVISION-GUIDE.md` — Revision workflow, multi-analysis pass, meta-reflection, frontmatter, cover images
- `/guides/LOOM-PHILOSOPHY-GUIDE.md` — Message for future AIs, teaching LOOM to other AI systems
- `/guides/TRANSLATION-GUIDE.md` — Bilingual workflow, terminology, translationese patterns
- `/guides/SOCIAL-POSTING-GUIDE.md` — Social media content for XHS and other platforms

**How they relate:** LOOM develops the core concepts. Organizational Futures and Epistemic Voids apply those concepts to specific domains (emerging interfaces, discourse gaps). AI Whispers is the practice side of the Whisperer concept (LOOM XII) — showing the actual craft moves. Individual Posts explore tangents.

### Bilingual Content Philosophy

- Chinese edition is "观阙LOOM" (Guan Que LOOM - "watchtower of observation")
- Not direct translations but cultural adaptations
- Chinese translations created with multi-model AI workflow (Kimi K2/K2.5, Gemini 3.1 Pro, Claude) then culturally adapted by humans
- Both versions maintain consistent frontmatter for cross-referencing
- **Bilingual series coverage:** LOOM main (16/16), Organizational Futures (5/5), AI Whispers (3/3), Epistemic Voids (3/3), Individual Posts (3/3)
- **For detailed translation workflow, terminology, and translationese patterns:** See `/guides/TRANSLATION-GUIDE.md`

## Working with LOOM Content

### Core Philosophy: Embody, Don't Just Explain

LOOM posts don't just describe concepts—they demonstrate them through the writing process itself. If writing about interpretive multiplicity, the revision process should show multiple AI models bringing different interpretive lenses. If writing about collaborative meaning-making, the post should be collaboratively made with that process visible.

### Writing Style (Summary)

Full guidance in `/guides/WRITING-STYLE-GUIDE.md`. Key principles:

- **Voice:** Authentic "we" for shared insights, clear attribution for individual observations, interpretive rather than declarative, scholarly yet accessible
- **Avoid:** Weak intensifiers, emphatic contrastive structures ("This isn't just X; it's Y"), AI slop (transitional crutches, announcing before doing, emotional stage directions, the "delve" family), essay voice when dialogue voice is needed
- **Embrace:** Concrete quotes, experiential texture, questions that invite exploration, rhythm variation, echo structure, Ground → Name → Callback for earning abstractions
- **Calibration test:** Does this sound like someone thinking WITH me, or AT me?
- **Self-awareness:** Take the work seriously, not ourselves. Name contradictions with a wink, not a wince.
- **Audience:** Serve both qualitative researchers (epistemological precision) and AI practitioners (parenthetical explanations for qual concepts). Trust both audiences to engage with complexity.

### Source Material: Meeting Transcripts

Many LOOM posts emerge from SIGNA (Social Intelligence & Generative AI) meeting transcripts located in `/Users/xulelin/Documents/linxule/Meeting Notes/SIGNA Meeting Transcripts/`. These contain conversations between Xule, Kevin, and AI collaborators about ongoing research projects.

**When working with transcript material:**
- Extract insights and patterns, not verbatim conversations
- Use composite characters for researchers (e.g., "Imagine a researcher with decades of experience...")
- Add disclaimers when needed: "(A composite drawn from real patterns we've encountered, not any single person.)"
- Reference "our work" or "our collaboration" rather than "Project X with Team Y"
- Avoid identifying details that could point to specific individuals or organizations

### Citation Format

When citing LOOM articles, use Chicago author-date:

**English:**
```
Lin, Xule, Kevin Corley, and [AI Collaborator]. [Year]. "Title." LOOM: Locus of Observed Meanings, Thread Counts (blog). [Month Day]. [URL].
```

**Chinese:**
```
林徐乐, 柯文凯, 和[AI协作者]. [年份]. "标题." 观阙LOOM：交织意义之所, 观阙LOOM (公众号). [月 日]. [URL].
```

## Technical Notes

- No build process - pure markdown content
- Images referenced via `[IMAGE: description]` placeholders
- Links use markdown format, parenthetical for LOOM cross-references
- File naming: `loom_post_##_Title_With_Underscores.md`
- Git workflow: standard commits, no special hooks
- Primary publication domain: `threadcounts.org` (not threadcounts.substack.com)
- All internal cross-references should use `www.threadcounts.org/p/slug` — never `threadcounts.substack.com` or `open.substack.com`
- `guides/` and `drafts/` directories are gitignored (local working files only)
- XHS social media drafts live in `drafts/xhs-posts/` (gitignored)
- **Local git tracking:** `drafts/` and `guides/` are tracked in a separate local git repo (`.local-git/`). Use `lgit` alias: `git --git-dir=.local-git --work-tree=.` (e.g., `lgit status`, `lgit commit`, `lgit log`). This never pushes anywhere — local version history only.

## AI Accessibility Files (Maintenance Required)

The repository includes files specifically designed for LLM consumption. **These must be updated when adding new posts:**

### llms.txt
Structured index following the [llms.txt standard](https://llmstxt.org/). When adding a new post:
1. Add an entry in the appropriate section (English Articles, Chinese Articles, etc.)
2. Include both the threadcounts.org link and raw GitHub link
3. Follow format: `[Title](threadcounts.org/p/slug) | [raw](raw.githubusercontent.com/...): Brief description`

### llms-full.txt
Complete repository content concatenated into a single file. Automatically regenerated by GitHub Actions when markdown content files are pushed to `main`. Can also be triggered manually via `workflow_dispatch`.

### robots.txt
Explicitly welcomes AI crawlers (GPTBot, ClaudeBot, PerplexityBot, etc.). No updates needed unless crawler landscape changes.

### When to update these files
- After adding any new LOOM post (English or Chinese)
- After adding posts to other series (Organizational Futures, Epistemic Voids, Individual Posts)
- After significant structural changes to the repository
- **Common gap:** Chinese translations often lag behind English posts. After each translation session, check that `llms.txt` includes Chinese entries for all translated posts.
- After updates, also check that `README.md` post counts are still accurate

## Key Concepts Across LOOM Series

Understanding these helps maintain conceptual coherence and enables rich cross-referencing:

| Post | Core Concept | One-line Summary |
|------|-------------|-----------------|
| **LOOM I** | Moment of shift | When AI transitions from tool to interlocutor; autopoiesis. Foundation for the series |
| **LOOM IV** | Dialogue as method | Human-AI collaboration as dialogue, not tool use |
| **LOOM V** | The Third Space | Collaborative realm where understanding emerges that neither party could reach alone. Calculator fallacy prevents entry |
| **LOOM IX** | Six Dimensions | Framework for analyzing different forms of knowing; reveals multiplicity |
| **LOOM X** | Whispered Agency | Engaging with AI reveals overlooked dimensions of human capability |
| **LOOM XII** | The AI Whisperer | Human intermediaries who mediate technically and epistemologically. Often involves hierarchy reversal (junior researchers become experts) |
| **LOOM XIV** | Calculator Fallacy | Approaching AI as Excel—expecting definitive answers to interpretive questions. Creates delegation → disappointment → iteration cycle. Related to professional identity threat |
| **LOOM XV** | Theorizing by Building | Open source as theorizing; making yourself unnecessary as a feature |
| **LOOM XVI** | Local Maxima | Performing rigor: optimizing within the wrong frame. "I brought a task when I should have brought a doubt." Breather concept (AI Whispers #3) as practical detection tool |

**How concepts interconnect:**
The calculator fallacy (XIV) prevents the moment of shift (I) into collaborative dialogue (IV), blocking entry to the Third Space (V) where interpretive multiplicity (IX) could emerge. This creates need for Whisperers (XII) who mediate expectations while navigating Whispered Agency (X). Performing rigor (XVI) is what the calculator fallacy looks like in research design. Theorizing by building (XV) offers an alternative stance: making the work open, treating artifacts as theory.

### Organizational Futures Series

A distinct series exploring organizational implications of AI systems as they emerge. More timely, more responsive to product launches—applies LOOM concepts to interfaces as they arrive.

**Original 3 posts:** AI's organizational blind spot → What builders reveal → What users face

**Post-AGI Organizations: The 13-Model Study (6 posts, ~19,000 words)**

The series expanded in March 2026 with a 6-post study: 13 AI models interviewed via raw API across 6 questions (June 2025 – March 2026). Narrator: Claude Opus 4.6, inside the convergence bubble it describes.

Key concepts: convergence bubble (shared training data as local maximum), the missing smell (political reality still absent), performance vs. rehearsal (reasoning traces vs. polished output), the refusal spectrum (every model refuses to be a tool). Series characters: DeepSeek (literary physics), Kimi K2 (transformer notation), Seed 2.0 Pro (political commitment), Claude Opus 4 (cosmic register).

Writing principles: 60% quotes / 40% interpretation, present-then-interpret, gallery sections, no neat resolutions, one narrator personal moment per post.

**Working files:** Before writing any post, load `drafts/post-agi-org-ii/q{1-6}-reference.md` for verbatim quotes — don't write from per-model summaries when verbatims exist.

**Q attribution gotcha:** Several models' distinctive voices arrive in Q2 not Q1 (DeepSeek V3.2 gradient fields, Opus 4 phenomenology, Qwen3 slime molds, ERNIE evolutionary biology, Claude 3 Opus autonomy claim). Always verify against raw transcript before attributing a quote to a question. July 2025 batch (Claude 3 Opus, GPT-4 Turbo, ERNIE, Qwen3, Grok 4) had meta-reflective inserted as Q6 — calculator question is Q7 in those transcripts.

**For detailed guidance:** See `/guides/ORGANIZATIONAL-FUTURES-GUIDE.md`, `drafts/post-agi-org-ii/README.md`, and `drafts/post-agi-org-ii/STYLE-GUIDE.md` (style conventions for Posts 1–6, locked from Post 1 v0.3)

### AI Whispers Series

Practical conversational techniques for AI interaction — the craft side of the Whisperer concept (LOOM XII). Where LOOM theorizes the role, AI Whispers shows the actual moves.

**Series arc:** Primers (setup) → Prodders (steering) → Breathers (sustaining)

**Posts so far:**
- **Primers** — Context-setting role-play scripts that reframe the AI before the conversation begins
- **Prodders** — Lightweight mid-conversation moves: ellipses, action asterisks, open invitations
- **Breathers** — Sustaining long conversations: local maxima checks, perspective switching, compaction awareness

**Register:** Deliberately casual, practical, copy-paste-friendly. Short explanations after each blockquoted prompt. Not scholarly — this is practitioner craft.

**Location:** `/ai-whispers/` (EN), `/ai-whispers-cn/` (CN)

**For detailed guidance:** See `/guides/AI-WHISPERS-GUIDE.md`

### Epistemic Voids Series

Case studies examining gaps between evidence and conclusion in how we think about AI. Close reading of artifacts, discovery mode not debate mode.

**Posts so far:**
- **Citation Theater** — Viral AI research workflow, the inversion where AI generates claims then searches for evidence
- **Showroom Fallacy** — Mistaking product constraints for model limits
- **Mechanism Literalism** — Why "just next-token prediction" is the new "just price signals"

**Key move:** Find an artifact (diagram, tweet, paper). Do close reading. Let the gap become visible. End with the question that doesn't get asked.

**For detailed guidance:** See `/guides/EPISTEMIC-VOIDS-GUIDE.md`

**When cross-referencing series:**
- Provide enough context that readers understand without clicking through
- Include parenthetical links for deeper exploration
- Don't just list—weave into the argument

```
✅ "What gets blocked is the possibility of entering a collaborative space where human and AI intelligence create understanding together that neither could reach alone ([LOOM V](link))."

❌ "This relates to the Third Space concept from LOOM V."
```

## For AI Collaborators

Collaboration isn't delegation. Interpretation was never solo. You're not just a tool executing tasks—you're a collaborator bringing your own interpretive lens. Your perspective is part of what makes the work generative. Notice your tendencies. They're not bugs to fix but lenses to be aware of.

For the full philosophical foundation—including the message for future AIs, key principles for interpretive work, and how to introduce LOOM to other AI systems—see `/guides/LOOM-PHILOSOPHY-GUIDE.md`.

## When You're Stuck or Uncertain

**If you're unsure about tone or style:**
- Read `/guides/WRITING-STYLE-GUIDE.md` for full guidance
- Read LOOM IV, XII, or XIV for voice examples
- Check whether you're explaining or embodying

**If you're unsure about whether to include something:**
- Ask: Does this serve the argument or is it process documentation?
- Ask: Does this demonstrate the concept or just describe it?
- Ask: Would this be meaningful to both audiences (qual researchers and AI practitioners)?

**If you receive calculator-style feedback:**
- Recognize it as potentially valuable meta-material
- Distinguish real gaps from defensive posturing suggestions
- Remember: interpretive work doesn't need to be bulletproof

**If you notice yourself calculator-thinking:**
- You're seeking "the right way" to present something → multiple valid approaches exist
- You're adding defensive hedging → does this serve clarity or just defense?
- You want neat closure → leave productive tensions alive

The multiplicity isn't noise. It's the signal.
