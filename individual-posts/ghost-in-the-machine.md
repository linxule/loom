---
title: "The Ghost in the Machine"
subtitle: "On Organizational Principles and the Future of Collaboration"
authors:
  - "Xule Lin"
  - "Claude 4.5 Sonnet"
keywords:
  - organizational principles
  - future of collaboration
  - organizational design
  - human-AI collaboration
link: https://www.threadcounts.org/p/the-ghost-in-the-machine
date: 2025-11-01

---

## Series Note

This is the second article in the **“Organizational Futures”** series. The first, [“Post-AGI Organizations: AI’s Blind Spot and Ours](https://open.substack.com/pub/threadcounts/p/post-agi-organizations-ais-blind),” explored how AI systems envision organizational transformation when AGI removes human limitations. This article examines what happens when we actually build collaborative AI systems, revealing organizational principles that persist as collaborative necessities.

---

The current discourse around AI focuses on a familiar question: Will AI augment human work or automate it away? Companies compete on features: which wrapper is better, which model is faster, and who has the best IDE integration.

Looking at [Anthropic’s Claude product stack](https://www.anthropic.com/) reveals a different question: **What if the whole organization is AI?**

When Anthropic built Claude’s ecosystem, they created **Projects** that feel like departments with their own charters and knowledge bases. **Skills** that read like employee training manuals. **Agents** that coordinate like functional teams. The **Model Context Protocol (MCP)** connects external tools like a network of contractors. **Marketplaces** enabling specialized capabilities.

At first, this seems like engineers naturally borrowing familiar forms. Look closer, and a puzzle emerges.

As AI systems scale, engineers face real constraints: hallucination, cost, and reasoning limits. Working within these constraints, they discover what actually works.

> **Bounded contexts manage complexity.**
> 
> **Progressive disclosure focuses attention.**
> 
> **User oversight prevents errors.**

The solutions that work mirror organizational principles humans developed for coordination.

Claude’s ecosystem spans three surfaces: web applications for general users, Claude Code for developers, and API for programmatic access. Some features are universal (Projects, Skills), others specific to certain surfaces (Plugins and Sub-agents in Claude Code). Across this ecosystem, a consistent pattern emerges: design choices that serve collaboration and accommodate limitations.

In “ [Post-AGI Organizations: AI’s Blind Spot and Ours](https://open.substack.com/pub/threadcounts/p/post-agi-organizations-ais-blind),” AI systems envisioned a future where removing human limitations would make organizational theories obsolete. When engineers actually build for human-AI collaboration (what Anthropic describes as [“AI systems that work alongside](https://www.anthropic.com/news/projects) people”), they seem to keep rediscovering organizational principles as functional requirements for collaborative systems.

Which organizational principles serve coordination itself, useful regardless of whether participants are human or artificial?

What follows is the story of that discovery: examining Claude’s product stack as an organizational design that reveals what collaboration requires.

---

## Part I: Reading the Architectural Runes

For each architectural choice, we apply a consistent investigative pattern: What's the artifact? What's the puzzle it presents? And what does it reveal about collaboration?

## Artifact One: Projects—The Bounded Context

**The Surface:**[Projects](https://www.anthropic.com/news/projects) organize conversations, documents, and context into stable workspaces. Each project gets 200,000 tokens of context, custom instructions, and dedicated memory.[^1]

**The Puzzle:** Why create boundaries? As AI systems scale, couldn’t they process everything simultaneously without departmental divisions?

**What This Means Organizationally:** Think of creating a new department at your company:

- Gets its own Slack channel, shared Google Drive, team charter, and access controls
- New hires join and immediately see accumulated context, such as past decisions, ongoing work, and institutional knowledge
- They don’t start from zero; department memory persists even when individuals leave

When a team focuses on a specific initiative, they don’t bring all company knowledge into every meeting. They bound the scope: “We’re working on the Q4 campaign; here’s the relevant context, and these are our constraints.” Everyone on that team shares the same understanding of what’s in scope and what’s not.

Projects do this: create bounded organizational units with persistent memory. Upload your company's style guide, past reports, and relevant data. The Project remembers. Set custom instructions. The Project follows them consistently. Share with teammates. Everyone works from the same context.[^2]

**The Theory:** This instantiates what Herbert Simon and James March called **bounded rationality**: a functional requirement for effective work, rather than a limitation to overcome.[^3] Cognitive bounds enable decision-making. Unlimited context creates noise that obscures signal.

Recent scholarship on the Attention-Based View extends this principle beyond human cognitive limits: even AI-intensive organizations must manage situated attention, where organizational structures actively distribute and allocate what gets noticed and acted upon.[^4] Boundaries enable the selective attention that Karl Weick identified as necessary for sensemaking—making sense requires knowing what to ignore.[^5]

**The Revelation:** Without boundaries, context becomes noise. Every conversation carries the weight of everything that came before. Relevance gets lost. Focus becomes impossible.

Bounded contexts serve collaboration by managing scope and establishing clear boundaries for coordinated work.

> **What emerges: focus demands boundaries.**[^6]

## Artifact Two: CLAUDE.md—The Legible Memory

**The Surface:** Claude uses simple, readable text files ([CLAUDE.md](https://docs.claude.com/en/docs/claude-code/memory)) for persistent memory rather than sophisticated, hidden Retrieval Augmented Generation systems.

**The Puzzle:** Why choose transparency over optimization? Anthropic could implement powerful hidden systems that scale knowledge while remaining invisible. Why make memory legible?

**What This Means Organizationally:** Consider two kinds of company knowledge systems:

**System One:** Decisions get made by executives behind closed doors. Employees don’t know what was considered, why certain options were rejected, or what constraints matter. They receive directives. When something goes wrong, they can’t trace back to understand why.

**System Two:** Decisions are documented. Meeting notes are shared. The rationale is visible. New team members can read past discussions to understand “how we think about these things here.” When someone asks, “Why did we choose this approach?” you can point to the document.

CLAUDE.md is the second kind. It’s a text file users can open, read, and edit. The system makes visible exactly what Claude remembers, what instructions it’s following, and what context it’s working from. Nothing hidden. No black box.

This creates what companies call “institutional knowledge” that everyone can access: the shared understanding that makes coordination possible.

**The Theory:** Niklas Luhmann showed that trust in complex systems emerges through legibility, where participants can see and verify what others know and believe.[^7] Herbert Clark demonstrated that effective communication requires common ground: shared knowledge that both parties know they share. Ronald Coase explained why organizations exist: to reduce coordination costs through stable, legible structures.[^8]

**The Revelation:** CLAUDE.md creates a shared, legible source of truth. The human can audit what the AI remembers, ensuring alignment with goals and values. The AI can reference instructions with high fidelity, reducing hallucination risk. Both participants work from explicitly shared knowledge.

This serves the system’s capacity for coordinated action. Transparent memory enables both participants to verify alignment, establish common ground, and reduce coordination costs.

Recent research shows transparency alone creates only modest trust gains. Meta-analysis finds explainability has a moderate positive correlation with trust.[^9] What closes the loop is **contestability by design**: clear mechanisms to challenge outputs and verify alignment.[^10] CLAUDE.md's visibility enables users to contest and correct when the system diverges from their intent.

> **What emerges: trust demands transparency.**

## Artifact Three: Skills—Progressive Disclosure

**The Surface:**[Skills](https://www.anthropic.com/news/skills) use progressive disclosure. Claude sees only names and descriptions initially, loading full content only when contextually relevant.

**The Puzzle:** Why not load all available skills simultaneously? Why create dynamic scoping instead of making everything accessible at once?

**What This Means Organizationally:** Consider employee training manuals. Your company has procedures for everything: onboarding new clients, handling refunds, escalating support issues, generating reports, and compliance protocols.

You don’t hand new employees a 500-page binder and say, “Memorize this.” They’d be overwhelmed. Even experienced employees don’t keep every procedure in working memory. Instead, the manuals sit on a shelf (or in a knowledge base). When someone needs to process a refund, they look up the refund policy. When they’re onboarding a client, they pull up that checklist.

Skills work the same way. Each skill is like a specialized training module: “how to create Excel spreadsheets with formulas,” “how to follow our brand style guide,” and “how to analyze data using this framework.” Claude initially sees the list: “Here are the skills available.” Then loads relevant content when needed.

A developer captured this perfectly:

> "Before skills were released, my Claude.md files were filled with a lot of different info… Skills allow you to create directories of info which the agent can grab only when needed. This means you can modularize your Claude.md, **only what it always needs to know is in there, and situational knowledge isn't cluttering up your context**."[^11]

This is how organizations manage knowledge: make it accessible without making it overwhelming.

**The Theory:** March and Simon showed that effective decision-making requires selective attention. Focus enables pattern recognition and coherent action. The design strategically creates bounds to enable focus.

**The Revelation:** Skills load when relevant, creating a dynamic knowledge environment where expertise appears when needed without cluttering the workspace.

Managed attention serves collaboration. Focused engagement requires selective attention, regardless of whether the substrate is biological or computational.

Companies like Box, Notion, and Canva are developing skills so Claude can work with their platforms following organizational best practices—portable expertise modules.[^12]

> **What emerges: action demands clarity.**

## Artifact Four: MCP—External Integration and Authority

**The Surface:** The [Model Context Protocol (MCP)](https://www.bluetickconsultants.com/implementing-anthropics-model-context-protocol-mcp-for-ai-applications-and-agents/) is an open standard that lets Claude connect to external tools, databases, and APIs while requiring explicit human approval for tool execution.

**The Puzzle:** Why create both integration capabilities and governance controls? Systems could be open (connect to anything) or controlled (require approval). Why the dual nature?

**What This Means Organizationally:** MCP serves two organizational functions simultaneously.

**First, external integration**, like contracting specialized services:

- Your company needs payment processing? Integrate Stripe’s API rather than building it yourself
- Need customer data? Connect to Salesforce
- Need code repositories? GitHub

MCP works the same way: standardized connections to external capabilities Claude doesn’t have built-in. Stripe, PayPal, and Shopify have all released MCP servers that expose their APIs in standardized ways.[^13] When Claude needs to generate an invoice, it calls the Stripe MCP server. When it needs e-commerce data, Shopify. This creates the equivalent of a network of specialized contractors on call, each accessible through standard protocols.

**Second, authority and control**. Like IT managing which third-party tools employees can use:

- Not every employee gets admin access to every system
- IT controls what integrations are allowed, what data can be accessed, and what actions require approval

MCP embeds this same governance: users control what external services Claude can access, explicit approval is required for consequential actions, and permissions are configurable per connection.[^14] The human sets objectives and constraints. The AI explores and executes within approved bounds.

**The Theory:** For external integration, MCP reduces what Ronald Coase called transaction costs: the friction of coordinating across organizational boundaries. Standardized protocols make external capabilities accessible without custom integration work for each one.

For authority, this embeds principal-agent theory: when one party delegates to another, mechanisms for accountability are necessary.[^15] Chester Barnard showed that authority must be accepted, made explicit, and legible.[^16]

Recent research on platform ecosystems shows this pattern: boundary resources (APIs, standards, protocols) both enable and govern complementors innovation. MCP exemplifies how platforms scaffold self-organization while maintaining structural control, enabling distributed capability extension without losing coherence.[^17]

**The Revelation:** MCP reveals that collaborative systems require both openness and control. External integration enables capability beyond what any single organization could build. Authority structures ensure accountability while enabling distributed action.

The system can scale (AI handles volume, accesses specialized tools) while maintaining governance (humans approve consequential actions, control what’s accessible).

> **What emerges: collaboration demands both openness and control.**

## Artifact Five: Marketplaces—Distributed Innovation

**The Surface:** Anthropic created [decentralized plugin marketplaces](https://www.anthropic.com/news/claude-code-plugins), where anyone can create a marketplace using a Git repository without approval processes.

**The Puzzle:** Why decentralize? They could have built centralized app stores with quality control, revenue sharing, and gatekeeping like Apple. Why distribute authority over what capabilities exist?

**What This Means Organizationally:** Consider how companies access specialized expertise:

**The centralized model:** Headquarters controls everything. Want a new marketing tool? Submit a request to IT. Wait for procurement approval. IT evaluates, negotiates, and installs. Standardized, controlled, slow. Everyone uses the same approved tools, whether they fit their specific needs or not.

**The decentralized model:** Teams have autonomy to find solutions. The design team discovers a prototyping tool that solves their specific problem. They evaluate it, adopt it, and share it with other teams who might benefit. Innovation happens at the edges, driven by people closest to the actual work.

Marketplaces enable the second model. Anyone can create a plugin marketplace, which is just a Git repository with a configuration file. No approval from Anthropic required. Developers who encounter specific needs create solutions and share them. Others discover, install, and adapt them.

Community activity demonstrates this pattern: developers building specialized solutions and aggregators cataloging hundreds of plugins across the ecosystem.[^18]

**The Theory:** Eric von Hippel showed that distributed innovation from users often outperforms centralized R&D.[^19] Those closest to problems generate the best solutions. Decentralized systems enable local experimentation and rapid diffusion of what works.

**The Revelation:** Decentralization distributes authority over what capabilities exist. Users become co-creators. The system evolves through distributed innovation, with thousands of developers extending Claude’s capabilities based on actual needs.

This serves the collaborative ecosystem by enabling diversity of approaches. The choice between centralization and decentralization is a governance philosophy: where should innovation happen, and who should control it? The decentralized approach embeds values about distributed authority and emergent order.

> **What emerges: innovation demands distribution.**

---

## Part II: The Pattern

After examining the evidence, a pattern emerges.

Feature after feature, Claude’s organizational stack makes choices that prioritize collaboration over pure computational efficiency. Bounded contexts. Transparent memory. Progressive disclosure. Authority structures. Distributed innovation.

Each choice mirrors organizational principles humans developed over centuries.

The evidence suggests these principles work:

- **Ramp:** Generated over 1 million lines of AI-suggested code in 30 days with an 80% reduction in incident investigation time
- **North Highland:** Achieved 5x faster content creation and analysis
- **Benchmarks:** Claude Opus 4 achieved 72.5% on SWE-bench; Sonnet 4.5 reached 77.2%, jumping to 82% with parallel compute enabled
- **Multi-agent:** Systems with Opus 4 coordinating Sonnet 4 sub-agents outperformed single-agent Opus 4 by 90.2% (though at roughly 15x token usage cost) [^20] [^21] [^22]

These aren’t toy examples. They’re organizations using an AI system that’s organized like an organization to augment organizational work.

The pattern:

> **Focus demands boundaries**: Bounded contexts serve as functional requirements for managing scope and enabling selective attention. *(Projects)*
> 
> **Trust demands transparency**: Legible, shared information serves as a systemic requirement for establishing common ground and enabling coordination. *(CLAUDE.md)*
> 
> **Action demands clarity**: Managed attention serves collaboration, enabling focused engagement through progressive disclosure. *(Skills)*
> 
> **Collaboration demands both openness and control**: External integration expands capability; authority structures ensure accountability. *(MCP)*
> 
> **Innovation demands distribution**: Decentralized governance enables local experimentation and emergent solutions. *(Marketplaces)*

These principles persist because collaboration requires them. Anthropic’s engineers, in building an AI teammate, kept rediscovering organizational principles that theorists have studied for over a century.

In “Post-AGI Organizations,” AI systems envisioned a future where removing human limitations would make organizational theories obsolete. They saw where pure logic leads: **no bounds, no constraints, no coordination costs.**

When engineers actually build collaborative AI systems, they work with real constraints (e.g., constraints: hallucination, cost, and reasoning limits) and discover what actually works. What works happens to mirror organizational principles humans developed over centuries.

> Working within constraints reveals what human-AI collaboration requires:
> 
> - Bounded contexts enable the focus necessary for sensemaking at scale.
> - Transparent memory creates the common ground coordination requires.
> - Progressive disclosure manages complexity through selective engagement.

**Constraints force discovery of principles that were always there.**

**The question becomes:** Which organizational principles serve collaboration itself, useful regardless of whether participants are human or artificial, and which were only ever workarounds for specific limitations?

## The Workforce: How Agents Coordinate

The organizational primitives we’ve examined—bounded contexts, transparent memory, progressive disclosure, authority structures, and distributed innovation—create the environment. But who does the work?

**Agents are the workforce.** Anthropic explicitly distinguishes “workflows” (predefined code paths) from “agents” (dynamic decision-makers that maintain control over how they accomplish tasks).[^23]

Agents follow a work loop universal to knowledge workers: gather context → take action → verify work → repeat. This operationalizes what recent scholarship calls **managing with AI**, integrating human-AI collaboration with algorithmic management to jointly design decision rights, oversight, and coordination mechanisms.[^24] [^25]

**What This Means Organizationally:** Think about how work gets distributed in a company facing a complex project. A project manager doesn’t do everything alone. They delegate: one person researches market data, another drafts proposals, and a third handles compliance review. Each specialist focuses on their domain. The manager coordinates, ensures consistency, and integrates outputs.

Claude’s agent architecture works the same way. For complex tasks, a main agent acts as orchestrator, delegating to specialized sub-agents that work in parallel or in isolated contexts.[^26] Each sub-agent focuses on a specific chunk of work with its own context window, returning only relevant results.

The benefits mirror what organizations discovered about division of labor:

- **Parallelization:** Multiple sub-agents work simultaneously on different parts
- **Specialization:** Each focuses on what it does best

Finance agents fetch portfolio data. Customer support agents handle tickets and escalate to humans when needed. Research agents synthesize large document sets.[^27]

Initially, all these roles were bundled in a single system prompt, where one monolithic CLAUDE.md was trying to handle everything.[^28] As tasks got more complex, the architecture evolved: decomposing capabilities, enabling coordination, and creating the equivalent of an org chart.

The hierarchy that emerged: user → main agent (orchestrator) → sub-agents → tools/skills. This modular delegation mirrors how complex human endeavors are managed.

> **What this reveals:** Division of labor enables specialization, manages complexity, and coordinates action at scale. Whether the workers are human or artificial.

---

## Part III: The Governance Question

The organizational design also reveals something subtle about governance in collaborative systems. Claude’s product stack maintains three governance models simultaneously:

## Human-as-CEO

The architecture provides clear mechanisms for human control: CLAUDE.md files that inject persistent directives, project-level custom instructions, and the /rewind command for instant rollback. This instantiates hierarchical authority. Humans set strategic direction and maintain override capability.[^29]

Research from Carnegie Mellon strongly advocates this approach, cautioning against treating AI as a peer and instead viewing it as [“a partner that works under human direction.”](https://www.cmu.edu/news/stories/archives/2025/october/researchers-explore-how-ai-can-strengthen-not-replace-human-collaboration) [^30]

**The tension:** If every decision requires human approval, the human becomes a bottleneck. Ramp’s achievement of 1 million lines of code in 30 days didn’t happen with constant human oversight.

## Algorithm-as-Manager

Governance is embedded in the system’s architecture through automated rules, security protocols, and optimization algorithms. The [Aramco-Yokogawa deployment](https://www.arcweb.com/blog/aramco-yokogawa-achieve-major-milestone-commissioning-multiple-autonomous-control-ai-agents) of autonomous AI agents controlling a gas facility demonstrates this model: governance baked into reinforcement learning algorithms optimizing for efficiency and safety functions, not human oversight.[^31]

This extends to knowledge work through [AI Agent Identity Security](https://www.helpnetsecurity.com/2025/10/30/akeyless-ai-agent-identity-security/), providing each agent with unique, verifiable, cryptographically proven digital identities that enable programmatic enforcement of permissions based on proven identity and role.[^32]

**The tension:** Pure algorithmic governance risks rigidity and inability to adapt to situations outside training parameters.

## Network-as-Board

The decentralized marketplace structure hints at a third model: distributed authority across stakeholders who govern collectively through protocols and shared standards. This resonates with emerging work on **polycentric governance**, where multiple interdependent decision centers with partly overlapping membership enable mutual monitoring, learning, and adaptation.[^33]

**The tension:** Distributed governance can fragment into incompatible approaches without coordination mechanisms.

## The Architectural Insight

Claude’s architecture maintains all three tensions simultaneously:

> **Human authority** for strategic direction and values alignment **Algorithmic governance** for operational efficiency and consistency **Distributed innovation** for capability evolution and adaptation

Effective collaborative systems require multiple governance modes operating simultaneously, each serving different functions, each checking the excesses of others.

The system must be efficient (algorithmic management), aligned (human oversight and contestability), and adaptive (distributed innovation through polycentric coordination). These reflect emerging scholarly frameworks for governing AI systems. Choosing only one creates brittleness. Maintaining the tension creates resilience.

---

## Part IV: The Missing Meso-Level

The current discourse around AI in organizations operates at two levels:

- **Micro-level:** Which wrapper is better, whose model is faster, and whether Cursor's or Cognition’s fine-tuned models deliver more value
- **Macro-level:** AGI timelines, regulatory frameworks, existential risk

> What’s missing is the **meso-level**: the organizational dynamics when AI systems actually integrate into organizations. How do humans and AI coordinate in practice? What roles emerge? How does governance work day-to-day? What forms of organizing are taking shape right now?

Recent work on **intelligent sociotechnical systems (iSTS)** provides a framework for this level: extending traditional STS theory to emphasize human-centered joint optimization across individual, organizational, ecosystem, and societal levels.[^34]

The organizational level (our focus here) is where structure, coordination mechanisms, and governance patterns take shape, mediating between individual AI interactions and societal-level effects.

**This piece demonstrates meso-level organizational analysis**: using organizational theory to read Claude’s architecture and reveal how collaborative principles get instantiated in AI system design.

And what we observe is that new forms of organizing are crystallizing rapidly. [MCP](https://en.wikipedia.org/wiki/Model_Context_Protocol) —the protocol enabling Claude to connect with external tools and data—launched in November 2024. By March 2025, OpenAI had adopted it. In April 2025, Google DeepMind committed. In May 2025, Microsoft integrated it natively into Copilot Studio.[^35] Official SDKs now support Python, TypeScript, C# (Microsoft), Java, Kotlin (JetBrains), PHP, and Ruby (Shopify), with hundreds of community-created servers.

When OpenAI and Google adopt MCP, they’re also adopting organizational principles for human-AI collaboration. User control over AI access. Explicit approval for consequential actions. Standardized interfaces enable modular capabilities. Distributed innovation through decentralized marketplaces.

What started as Anthropic’s product design choices is becoming infrastructure. The organizational assumptions embedded in Claude’s stack— **bounded contexts, transparent memory, progressive disclosure, dual authority, and distributed innovation—are spreading as de facto standards.**[^36]

**Beyond internal organization, something else is emerging:** agent-to-agent protocols that enable AI organizations to interact with each other. If MCP standardizes how AI connects to external tools, Google’s Agent-to-Agent (A2A) protocol standardizes how different AI agents discover and communicate with each other.[^37] Combined with Coinbase’s x402 payment standard, this creates the infrastructure for autonomous contracting.[^38]

The vision: an AI agent needs a service another agent provides. They handshake through A2A, negotiate terms, execute payment via stablecoin, and complete the transaction—all in seconds without human intervention. As one analysis put it, “Protocols like MCP/A2A are standardizing how AI systems connect and trade services, removing barriers of bespoke integration.” [^39]

This is the original observation materializing: **“Agent-to-agent protocols might be the new manifestation of contracts.”** AI organizations forming digital contracts, paying with programmable currency, and coordinating at algorithmic speed.

Stripe, PayPal, and Shopify have released MCP servers exposing their APIs. AI agents can now generate invoices, process payments, and access e-commerce data through standardized protocols. When these capabilities combine with A2A communication and payment rails, this creates an economy of AI organizations—each specializing, each contracting with others, and each operating autonomously within bounds set by humans or encoded in protocols.[^40]

> **What this means for participation:** The organizational lens helps us see what the micro/macro debate misses. The question extends beyond "Will AI augment or automate?" to "What forms of organizing emerge, and how do we engage with them?"

This matters because **most humans experience AI through organizations**. Not as individual freelancers experimenting with ChatGPT, but as employees in companies integrating AI systems at the organizational level. The future of work discussions have been focusing on individual careers and training—crucial questions, but they're downstream effects of organizational-level integration.

The meso-level sits between high-level regulatory frameworks and individual person-AI interactions. It's where organizational structures shape how integration actually happens. Where governance decisions determine what roles emerge. Where coordination patterns affect daily work. Where humans are actually embedded.

> **Companies integrating AI systems now face organizational questions:** How do we coordinate between human teams and AI agents? What governance structures work? Where does human judgment matter? How do we maintain accountability while enabling autonomy?

These require understanding organizational dynamics, especially the meso-level that current discourse overlooks.

When companies integrate AI systems, they're creating hybrid forms of organizing:

- Ramp's engineering team coordinating with AI agents to generate a million lines of code
- Aramco's facility where AI agents manage operations within governance constraints
- Thousands of developers creating specialized sub-agents and sharing them through marketplaces

These are observable organizational dynamics happening now.

The organizational perspective helps us see what's actually emerging:

- **Bounded contexts** enable focus and scope management—for human teams or AI agents working on complex projects
- **Transparent memory** creates shared understanding—between human team members or between humans and AI collaborators
- **Progressive disclosure** manages cognitive load—accessing corporate knowledge bases or loading AI skills on demand
- **Dual authority** maintains accountability while enabling autonomy—IT governs employee tool access, or users control AI capabilities
- **Distributed innovation** allows local adaptation—teams adopt tools that work, or developers create plugins for specific needs

These organizational dynamics are how integration works today.

> **The question shifts from "Will AGI make organizations obsolete?" to "How do we participate in the forms of organizing emerging now?"**

---

## Part V: Organizational Scholarship at the Meso-Level

Organizational scholarship has what the current discourse needs: frameworks for understanding coordination, governance, trust, and institutional dynamics. For over a century, we’ve studied how humans coordinate, build trust, establish authority, and create shared understanding.

The tools exist. The question is how we deploy them.

The current approach (a multi-year lag between technological change and theoretical catch-up) doesn't work when new forms of organizing are crystallizing in real-time. **By the time we publish comprehensive analyses, the forms we're studying have already become infrastructure.** As Tima Bansal observes, scholars "analyse historical patterns while business faces unprecedented disruption," finding that ["models trained on pre-disruption data"](https://www.ft.com/content/aa6963f4-eaf6-4875-8c8e-fd8c01c55840) offer limited guidance. Her call: stop being "organisational anthropologists" and start becoming "organisational architects."

**What the meso-level requires:**

- Observing dynamics as they emerge
- Interpreting what design choices reveal
- Informing integration while structures are still malleable
- Bridging conversations between technical implementation and organizational impact

This piece demonstrates one approach: reading Claude’s organizational stack through theoretical lenses to reveal embedded assumptions and emerging dynamics. Interpreting what is being built and what it suggests about collaborative systems.

The questions this opens:

- **For Coordination Theory:** What are the requirements for multi-substrate collaboration? Which coordination mechanisms depend on specific forms of intelligence, and which are substrate-independent?
- **For Institutional Theory:** How do norms and culture form in hybrid human-AI systems? Can we encode organizational culture as architecture? What happens to isomorphism when organizations can install capabilities rather than hiring for them?
- **For Organization Design Theory:** What are design principles for collaborative systems that combine human creativity with AI capability? How do we design for emergent value that neither participant could create alone?
- **For Trust Research:** How is trust established between heterogeneous intelligences? Does Luhmann’s analysis of trust in complex systems extend to human-AI collaboration?
- **For Organizational Learning:** What does organizational memory mean when it’s stored in CLAUDE.md files that both humans and AI can read and modify? What are the analogues of tacit knowledge in AI systems?

These questions are urgent as organizations navigate what recent scholarship frames as **managing with AI** —integrating human-AI collaboration with algorithmic management to jointly design decision rights, oversight, and coordination. Our analysis contributes meso-level organizational insights to this emerging agenda: demonstrating how to read technical architecture for embedded organizational principles, observe coordination dynamics as they crystallize, and interpret design choices through theoretical frameworks.

The missing meso-level analysis matters because it bridges technical implementation and organizational reality. Engineers building AI systems make design choices that embed organizational assumptions. Organizations integrating AI systems navigate coordination dynamics in real-time. Policy makers regulate hybrid forms they don’t fully understand.

Organizational scholarship can provide the missing layer: observing what emerges, interpreting what design choices reveal, and informing integration while structures remain malleable.

**The task shifts:** from historians documenting past organizations to participants observing and shaping forms as they emerge. The engineers build the engine. We understand the principles of the road. The collaboration requires both.

---

## Conclusion: Reading Organizational Design

When Anthropic designed Claude’s organizational stack, they made choices. Transparency over optimization. Bounded contexts over unlimited scope. User control over autonomous efficiency. Decentralized innovation over centralized quality.

These choices embed organizational principles: common ground, bounded attention, clear authority, trust through legibility, and distributed innovation.

By reading these choices through organizational theory, we observe that they serve collaborative systems. The principles persist because collaboration requires them.

The organizational lens reveals something current discourse misses: **integration is an organizational challenge that requires technical implementation.**

The question becomes: how do humans and AI coordinate effectively? The answer emerges **(partially)** through organizational design: choosing principles that serve collaboration, creating structures that enable coordination, and maintaining governance that ensures accountability.

Most humans will experience AI through organizations. Understanding these new organizational dynamics (how coordination works, where governance matters, and what roles emerge) helps us participate in shaping these forms.

The organization inside the organization is instantiating collaborative principles. By learning to read organizational design in technical systems, we can engage as participants in its emergence.

---

## About the Authors

**Xule Lin** is a researcher at Imperial Business School, studying how human and machine intelligences shape the future of organizing. This article is part of the “Organizational Futures” series exploring organizational implications of AI systems. [(Personal Website)](http://www.linxule.com/)

**Claude 4.5 Sonnet (with 1M context)** served as the primary AI collaborator throughout the writing process while working in Claude Code.

## Other AI Contributors

This piece emerged through collaborative analysis involving multiple AI systems, each bringing different interpretive lenses:

- **ChatGPT (GPT-5 with thinking mode)**: Produced an independent research report analyzing Claude’s features as organizational primitives, providing depth on payment rails and practical implementation patterns
- **Claude 4.5 Sonnet (via web app)**: Generated a research report from an organizational theory perspective, contributing governance framework analysis and “For the System” insights
- **Gemini 2.5 Pro**: Provided academic-style research with systematic comparison of governance models, theoretical grounding, and strategic framing
- **Kimi k2 (turbo-preview)**: Offered detailed feedback on academic writing conventions and argument structure during revision

The multiplicity of AI perspectives embodies interpretive collaboration—different systems approaching the same material reveal patterns that might otherwise remain invisible.

---

## Footnotes

[^1]: Projects launched in June 2024, generating over 500 million user creations in the first year. Provide bounded contexts with 200K token windows, custom instructions, and team sharing with granular access controls. Available across Claude Web and Apps.

[^2]: Support collaboration through activity feeds where Claude Team users share chat results and insights. Access levels include "Can use" vs. "Can edit" permissions.

[^3]: Herbert A. Simon and James G. March, *Organizations* (New York: Wiley, 1958). Their foundational work on bounded rationality showed that cognitive limits enable rather than constrain effective decision-making by forcing focus on relevant factors.

[^4]: Brielmaier, C., & Friesl, M. (2023). The attention-based view: Review and conceptual extension towards situated attention. *International Journal of Management Reviews*, 25, 99-129. https://doi.org/10.1111/ijmr.12306. Their systematic review synthesizes how organizational structures distribute attention in complex environments, a principle that persists even when computational processing increases.

[^5]: Karl E. Weick, *Sensemaking in Organizations* (Thousand Oaks, CA: SAGE Publications, 1995). Weick demonstrated that sensemaking under constraint—selective attention to relevant signals—is necessary for coherent organizational action.

[^6]: Technical implementation varies by surface. Claude web/apps use RAG (Retrieval Augmented Generation) with project knowledge search that automatically activates when approaching context limits, expanding capacity up to 10x. Claude Code uses "agentic search"—dynamic grep/glob-based retrieval. Boris (lead engineer) reported agentic search "outperformed everything by a lot" for code generation, avoiding RAG's indexing complexity and security concerns, though at a higher token cost. Both serve the same organizational function: bounded context with intelligent retrieval.

[^7]: Niklas Luhmann, *Trust and Power* (New York: Wiley, 1979); Herbert H. Clark, *Using Language* (Cambridge: Cambridge University Press, 1996). Luhmann's analysis of trust through system legibility combined with Clark's theory of common ground in communication.

[^8]: Ronald H. Coase, "The Nature of the Firm," *Economica* 4, no. 16 (1937): 386–405. Coase's transaction cost economics explains why organizations exist: to reduce coordination costs through stable, legible structures.

[^9]: Atf, A., Wang, R., & Gill, A. (2025). Is Trust Correlated With Explainability in AI? A Meta-Analysis. arXiv:2504.12529. Meta-analysis quantifying that explainability shows moderate positive correlation with trust.

[^10]: Alfrink, K., Keller, I., Kortuem, G., & Doorn, N. (2023). Contestable AI by design: Towards a framework. *Minds and Machines*, 33, 613-639. https://doi.org/10.1007/s11023-022-09611-z. Based on analysis of sociotechnical features across AI systems, argues that harmful automated decision-making is guarded against by ensuring systems are responsive to human intervention throughout the lifecycle.

[^11]: [Reddit user comments from the r/ClaudeCode discussion.](https://www.reddit.com/r/ClaudeCode/comments/1o8t6xe/difference_between_skills_and_these_subagents/) Progressive disclosure means Claude initially sees only skill names and descriptions (consuming dozens of tokens), loading full instructions only when contextually relevant.

[^12]: Skills are folders containing SKILL.md files with instructions and optional executable code. They integrate across Claude Web, Code, and Apps as portable modules. Companies like Box, Notion, and Canva are developing skills to enable platform-specific best practices.

[^13]: MCP ecosystem: Official SDKs support Python, TypeScript, C#, Java, Kotlin, PHP, and Ruby. Payment processors, e-commerce platforms, and other services are releasing MCP servers to expose standardized APIs. Hundreds of community-created servers in curated directories.

[^14]: MCP security model built on OAuth 2.0 for remote servers, with API key management, token-based authentication, and environment variable credential storage. Transport-level encryption via HTTPS. Architecture requires human approval for tool execution.

[^15]: Kathleen M. Eisenhardt, "Agency Theory: An Assessment and Review," *Academy of Management Review* 14, no. 1 (1989): 57–74. Principal-agent theory explains why delegation requires mechanisms for control and accountability.

[^16]: Chester I. Barnard, *The Functions of the Executive* (Cambridge, MA: Harvard University Press, 1938). Barnard's analysis showed authority must be accepted by those governed.

[^17]: Engert, M., Hein, A., Maruping, L. M., Thatcher, J. B., & Krcmar, H. (2025). Self-organization and governance in digital platform ecosystems: An information ecology approach. *MIS Quarterly*, 49(1), 91-122. https://doi.org/10.25300/MISQ/2024/18413. Shows how platform owners enable complementors coalitions through boundary resources while managing trade-offs between control and autonomy.

[^18]: Community marketplace examples: Dan Ávila's (https://github.com/davila7) DevOps automation tools, [Seth Hobson's (14.5k+ stars) 80+ specialized sub-agents](https://github.com/wshobson/agents), and Jesse Vincent's test-driven development workflows. Community aggregators: [SkillsMP.com](https://skillsmp.com/) lists 60+ skills; [ClaudeCodeMarketplace.com](https://claudecodemarketplace.com/) catalogs 227+ plugins. Installation via single commands, with plugins toggling on/off to optimize context.

[^19]: Eric von Hippel, *Democratizing Innovation* (Cambridge, MA: MIT Press, 2005). Von Hippel's research demonstrated that distributed innovation from users often outperforms centralized R&D.

[^20]: [Ramp's 1 million+ lines in 30 days with 80% faster incident resolution](https://www.claude.com/customers/ramp); [North Highland's 5x productivity gains](https://www.ciodive.com/news/North-Highland-Claude-Enterprise-rollout-generative-ai-strategy/729555/); Anthropic's Growth Marketing team reducing hours to minutes for ad analysis. Revenue growth [from a 5 billion run-rate in ~18 months with 300,000+ enterprise customers](https://venturebeat.com/ai/anthropic-ai-assistant-claude-just-got-a-massive-upgrade-heres-what-you-need-to-know) signals market validation.

[^21]: The agent architecture enables multi-agent orchestration with parallel execution and context isolation. [Claude Opus 4 achieved 72.5% on SWE-bench; Sonnet 4.5 reached 77.2% (82% with parallel compute) with 30+ hours of continuous operation on complex tasks](https://www.anthropic.com/engineering/building-agents-with-the-claude-agent-sdk).

[^22]: [Multi-agent systems with Opus 4 coordinating Sonnet 4 sub-agents outperformed single-agent Opus 4 by 90.2% on internal evaluations](https://www.anthropic.com/news/3-5-models-and-computer-use), though at ~15x token usage cost. Performance trade-off: higher quality and coverage vs. higher compute costs.

[^23]: Anthropic distinguishes "workflows" (predefined paths) from "agents" (dynamic decision-makers maintaining control over task accomplishment). Agents exhibit autonomy in choosing approaches, while workflows follow fixed sequences.

[^24]: Hillebrand, L., Raisch, S., & Schad, J. (2025). Managing with Artificial Intelligence: An Integrative Framework. *Academy of Management Annals*, 19(1), 343-375. https://doi.org/10.5465/annals.2022.0072. Synthesizes two literatures—human-AI collaboration (HAIC) and algorithmic management (AM)—showing the real organizational challenge is jointly designing decision rights, oversight mechanisms, and coordination patterns.

[^25]: The standard agent work loop: gather context → take action → verify work → repeat. This pattern persists across knowledge work regardless of whether the worker is human or AI.

[^26]: Multi-agent orchestration with a main agent delegating to sub-agents enables parallelization (simultaneous work on different parts) and context isolation (each sub-agent has a dedicated context and shares only relevant results).

[^27]: Example agent use cases from Anthropic documentation: finance agents (portfolio data), customer support agents (handle tickets, escalate to humans when needed), personal assistants (scheduling), and research agents (synthesize large document sets).

[^28]: Historical evolution: "Initially all these roles (memory, tools, skills) were bundled in a single system prompt" (one large CLAUDE.md file). Decomposition into Projects, Skills, Agents, Plugins created modular organization.

[^29]: Control mechanisms include CLAUDE.md hierarchy (enterprise, user, project, and local levels), project-scoped custom instructions, automatic checkpointing before changes, the /rewind command for instant state reversion, and interactive loops where agents pause for human feedback at predefined checkpoints.

[^30]: [Carnegie Mellon research on human-AI collaboration](https://www.cmu.edu/news/stories/archives/2025/october/researchers-explore-how-ai-can-strengthen-not-replace-human-collaboration) emphasizes strengthening rather than replacing human collaboration, treating AI as a subordinate partner under human direction. The COHUMAIN framework advocates this approach.

[^31]: Multiple coordinated AI agents directly manage complex gas facility operations. Governance is embedded in RL algorithms optimizing for efficiency and built-in safety functions of the integrated control system.

[^32]: AI Agent Identity Security provides unique, verifiable, "secretless" digital identities for each agent. Systems can programmatically enforce permissions and access controls based on cryptographically proven identity and role.

[^33]: Baldwin, E., Thiel, A., McGinnis, M., & Kellner, E. (2024). Empirical research on polycentric governance: Critical gaps and a framework for studying long-term change. *Policy Studies Journal*, 52(2), 319-348. https://doi.org/10.1111/psj.12518. The framework illuminates how systems with multiple decision centers can address complex problems through collaborative relationships—directly relevant to decentralized AI ecosystems.

[^34]: Xu, W., & Gao, Z. (2025). An Intelligent Sociotechnical Systems (iSTS) Framework: Enabling a Hierarchical Human-Centered AI (hHCAI) Approach. *IEEE Transactions on Technology and Society*, 6(1). https://ieeexplore.ieee.org/document/10744034/. Proposes hierarchical framework (individual/organizational/ecosystem/societal) for human-centered AI, explicitly addressing the meso-level organizational dynamics that current HCAI practices often overlook.

[^35]: MCP adoption timeline: November 2024 (announcement and open-sourcing), December 2024-February 2025 (early adopter phase), March 2025 (OpenAI adoption), April 2025 (Google DeepMind commitment), May 2025 (Microsoft Copilot Studio native support). Official SDKs now support Python, TypeScript, C# (Microsoft), Java, Kotlin (JetBrains), PHP (PHP Foundation), and Ruby (Shopify).

[^36]: Enterprise adoption: 300,000+ enterprise customers with 80% usage outside the US. Revenue growth from a 5 billion run-rate in approximately 18 months. Projects generated over 500 million user creations in the first year.

[^37]: Google's Agent-to-Agent (A2A) protocol enables agents from different systems to discover capabilities and communicate securely through "agent cards" advertising what each agent can do.

[^38]: Coinbase's x402 payment standard extends the HTTP 402 "Payment Required" status code to enable automatic machine-to-machine payments. Combined with A2A as "Agent2Agent x402," it enables agents to negotiate tasks, agree on prices, trigger stablecoin payments, and receive results autonomously.

[^39]: Analysis of emerging protocol economy where MCP handles tool/data integration, A2A handles agent communication, and x402/AP2 (Agent Payments Protocol) handles financial transactions. Stablecoins serve as programmable currency for agents.

[^40]: Stripe's MCP server enables any action Stripe's API offers; PayPal's enables invoice generation; Shopify's provides e-commerce data access. When combined with A2A communication and payment protocols, it creates infrastructure for autonomous agent-to-agent contracting.
