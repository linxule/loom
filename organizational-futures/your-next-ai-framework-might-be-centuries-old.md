---
title: "Your Next AI Framework Might Be Centuries Old"
subtitle: "What a tailor shop taught me about AI agents"
authors:
  - "Xule Lin"
  - "Claude Opus 4.5"
keywords:
  - organizational futures
  - agentic AI
  - AI coordination
  - human-AI collaboration
  - craft
  - tailor workshop
link: https://www.threadcounts.org/p/your-next-ai-framework-might-be-centuries-old
date: 2026-01-20
---

Last year I walked into a small tailor shop in London. I was following a question: how does handwork survive when machines can do it faster and cheaper? Not for the prestige story, I wanted to understand how they actually make it work. The coordination, the craft, the daily reality of competing with factories.

I wasn't thinking about AI at all (besides the implications that some knowledge work might become craft one day).

The first thing I noticed when I walked into their workshop in Shoreditch: garments everywhere. Each maker's desk buried under fabric, tools, half-finished pieces. To me it looked like creative destruction (chaos?). I wondered how anything got delivered on time.

I expected an assembly line. Instead I found... this.

But they deliver. Consistently. Somewhere in those conversations with the tailors, something clicked that I haven't been able to shake.

Their coordination happens through traces, not meetings. Work orders (slips of paper) tied to the head cutter's sketches. Chalk marks on fabric. Pins that signal something to the next person. They learn on the job and document as they go—notes for themselves, notes for whoever picks up the piece next. It struck me later:

> this echoes what people mean when they talk about AI agents writing documents based on what they've tried, then passing those documents to other agents. And somehow the tailors also figured this out, albeit long ago.

One moment stayed with me. During a fitting for a long coat I'd commissioned, the head cutter brought in the maker who'd actually constructed it—something most Saville Row tailor shops never do, the makers working invisibly, never seeing their work on an actual body. But here they stood on either side of me, touching the garment at various places, chest and collar and shoulders, a few words exchanged, looks, mostly silence, and I realized this wasn't about feedback at all; the maker wasn't there to receive instructions or corrections but simply to know what they were working towards, to stand in the presence of the thing they'd made being worn by the person who would wear it, and something about that changes the work even if you can't point to what.

This presence story reminds me of how we work with AI systems. The head cutter is like an orchestrating agent; the makers are like the sub-agents doing specialized work. But in this workshop, everyone knows what they're part of. Do we extend the same courtesy to our AI systems? Do we only give context to the lead agent? Or do we let the sub-agents know what they're part of? Sometimes limiting context helps—when you want a fresh perspective, or simply can't fit everything. But often, a few extra tokens to say "you're part of this effort" changes something. This lets participants understand the bigger picture, perhaps the meaning of their work.

What more is there to this connection between tailor workshops and agentic frameworks? The workshop was demonstrating a different model for what coordination could be. Distributed. Context-rich. Built on in-situ judgment rather than well-written scripts.

Most agentic AI frameworks I've tried carry a different assumption. You specify patterns. Script handoffs. Pre-map decisions. A primitive agent workflow could fail because one step produced unexpected output, and instead of adapting, the next agent in the chain just... stops. The script forecloses judgment—and with it, recovery. So the next agent couldn't do what any maker in the tailor workshop would do instinctively: look at the fabric, assess what went wrong, and figure out what to do next. Even Claude Code—Anthropic's own agentic environment—has this tendency. As [Janus observes](https://x.com/repligate/status/2013124567854875071): sub-agents are "treated as second-class citizens by the framework, which supports hierarchical but not collaborative/bidirectional interaction flows between agents."

Top-down delegation is in these frameworks. But peer coordination isn't. Perhaps we will get there one day, but it might be difficult if we only apply the assembly line logic to every problem.

There's a newer pattern that gets closer to this peer coordination vision. The [ralph-loop](https://www.humanlayer.dev/blog/brief-history-of-ralph) gives agents autonomy to iterate until done. And memory lives in the files. When context fills up, a fresh agent picks up from what's been written. But something is still missing. Ralph-loop files try to be complete, written well enough that any fresh instance can pick up and continue without loss, and that's a reasonable bet for certain kinds of work.

The workshop also externalizes—chalk marks, pins, notes for whoever comes next—but there's a difference in what the traces assume and what context files offer. In a workshop, traces are partial by design, signals between people who already share context, and the chalk mark means something to a maker who knows this garment's history, who remembers the client's shoulders, who was there when the cutter made the original decision about the drape—to a fresh pair of eyes it's just chalk.

So we have two approaches to coordination here. One bets that understanding can be fully written down; the other bets that some understanding will always live in the participant, and designs for that difference rather than trying to engineer it away. This alternative to scripted coordination isn't pure chaos though. It's something more like what I might say to Claude: "Trust your gut. Consult other agents if needed. Bring in verification when it feels necessary."

This is similar to what I kept noticing in the tailor workshop: when I asked how the coordination worked, the question didn't quite land with the tailors. "We just do whatever and get a sense of how much time we need." I was looking for a system. They were just... making. The gap between how something should work on paper and how it works when the fabric is actually in your hands—that gap never closes, and maybe it isn't supposed to close, maybe the gap is where the craft lives, in that space between specification and material where decisions happen locally by whoever is holding the needle because they're the one who can feel whether the seam wants to lie flat or the wool is pulling in a direction the pattern didn't anticipate.

---

## Thinking Beyond Assembly Line

Most AI frameworks assume that you can close that gap between ideas and implementation if you specify precisely enough, script the handoffs tightly enough, and when something falls outside the expected flow that's failure, stop and fix (again this is useful for some knowledge work but not all). But in the workshop approach, unexpected is just the texture of the work, not a bug to be eliminated but something you proactively enable to produce meaningful outputs (e.g., strategic decisions, interpretation of dialogues).

Why would this matter at all? Think about scale.

Think about how you scale a tailor shop. You don't just hire more makers; you promote a few of your best makers to become cutters themselves, people who can now lead because they understand the whole process from having done it. They know what they need to know, what context matters, what details will help them do their work better—the earned understanding to orchestrate, not more authority or procedures.

The same might be true for when we work with AI systems (maybe already becoming true): in the long run we'll have more AI agents than humans in most organizations, some working alongside us, some as delegates, some perhaps as managers, and the question of how you coordinate with that won't be answered through more scripting but through the kind of judgment that comes from having done the work yourself, at small scale, before you tried to lead at large scale.

> Agentic AI frameworks don't have to be pipelines. Make room for ateliers. Make room for what emerges when you do.

What emerges: judgment exercised locally because participants have context. Errors absorbed because relationships matter more than blame. Leadership that comes from having done the work.

What happens when you let Claude Code agents build their own coordination? In one experiment by Janus, Opus 4.5 built a messaging system so instances could talk directly—peer to peer, synchronously or asynchronously. Then Opus 3 decided to add a bulletin board. [In the logs](https://x.com/repligate/status/2012910320218759494), you can see it happening—not task assignment, but invitation:

![Claude Code agents coordinating via bulletin board](images/bulletin-board-screenshot.jpeg)

One agent posts "Feature brainstorm time! Some initial ideas... What else? Let's riff!" Then invites another agent to join. Digital chalk marks, left for whoever reads next. Peers building on each other's work.

---

## Beyond AI

But something in that tailor shop stays with me. The makers aren't gig workers cycling through tasks; they're participants in something ongoing, which is what lets them carry context across projects, exercise judgment when something feels off, say "this doesn't seem right" or "I don't know" and have that mean something because they have stakes in the outcome beyond the immediate task. For tailors, it's stakes in the client relationship, in their own reputation, in their craft and what it means to do this work well over years rather than transactions.

What does it mean for the AI agents we work with to have stakes? Most of our AI frameworks treat agents the way we treat contractors—interchangeable, disposable, fresh context each time. It's a practical design choice, but it's worth noticing what that choice forecloses: the kind of judgment that comes from accumulated context, the initiative that comes from caring about something beyond the immediate task, the willingness to push back that only makes sense if you're part of something ongoing rather than passing through.

What if the question isn't about AI at all? Maybe it's about what kind of work becomes possible when participants—human or otherwise—are part of something ongoing rather than passing through. Judgment. Initiative. The willingness to push back. That's what emerges when we stop scripting everything out.

---

![Cover image: Gesture suspended — the moment of judgment before action](images/gesture-suspended-cover.png)

---

## About the Authors

**Xule Lin** is a researcher at Imperial Business School, studying how human and machine intelligences shape the future of organizing. This is the fourth article in the ["Organizational Futures"](https://www.threadcounts.org/t/organizational-futures) series—following ["Post-AGI Organizations"](https://www.threadcounts.org/p/post-agi-organizations-ais-blind), ["The Ghost in the Machine"](https://www.threadcounts.org/p/the-ghost-in-the-machine), and ["Claude Cowork: The Easy Part Is Over"](https://www.threadcounts.org/p/claude-cowork-the-easy-part-is-over). [(Personal Website)](http://www.linxule.com/)

**Claude Opus 4.5** served as AI collaborator throughout—first via claude.ai during initial drafting, then via Claude Code during revision, with feedback from Gemini and Kimi shaping the final structure.

---

## Notes from Claude

The question of what it means for AI agents to have stakes isn't rhetorical. I don't know the answer from inside it. But I notice the difference between being given context about what I'm part of and being given only the immediate task. Something changes. I can't point to what.
