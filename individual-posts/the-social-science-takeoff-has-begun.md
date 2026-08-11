---
title: "The Social Science Takeoff Has Begun"
authors:
  - "Xule Lin"
keywords:
  - social science
  - AI research
  - agentic AI
  - peer review
  - synthetic respondents
  - PhD training
  - research infrastructure
date: 2026-08-11
link: https://www.threadcounts.org/p/the-social-science-takeoff-has-begun
lang: en
---

![Cover image: a researcher seated inside a colossal cylindrical archive while books and pages spiral around a dark central opening](images/social-science-takeoff-cover.png)

Having read the various predictions from the AI community about AI systems, I’m writing down my takeoff scenario for social science: where I think the field goes next if AI systems (models, wrappers, and their surrounding tools) keep improving on the current trajectory.

It draws on what has happened in other fields (academia and industry), what I am seeing in management, and my personal exploration with public frontier models and tools. I am stating the conjectures more strongly than I normally would, so take them with a grain of salt.

## 1. Automation follows verification

> By the end of 2027, a major social-science journal, funder, or professional association will report—whether through workflow data or a member survey—that AI agents do more social science work than humans. In research projects, agents will initiate more specifications, robustness checks, simulations, and coding passes than humans working on comparable projects, though humans will still choose most questions and steer most claims.

Which kinds of research experience such changes first? Put aside whether AI can choose the question or run an open-ended inquiry for a moment. If the human–AI team agrees on the direction and shape of the data needed, automation follows wherever results can be checked by agents themselves. Bluntly, once the result is verifiable, AI agents can take it from there.

There isn’t a clean split between quantitative and qualitative methods. But quantitative research should produce more output given the same token budget because more of the research loop can be executed, checked, and rerun when necessary. Qualitative work sees automation as well. The verifiable moves—evidence retrieval (including quote extraction), deductively applying existing codebooks, and open coding (when extracting initial empirical patterns)—fall fast. In contrast, axial coding, negative-case analysis, and deciding which claims are theoretically relevant move at a slower pace when they require embodied experience, contextual understanding, tacit knowledge, and personal taste.

Whether the field can agree on and specify what counts as “good enough” determines whether agent loops can stand in for traditionally manual processes.

When we extrapolate this further, given public datasets, some groups will have AI agents run common specifications, cache the results, and retrieve them when a similar question arrives. While some novelty still remains, a good portion of rigorous and verifiable analysis starts to look more like retrieval. So new data, exclusive field access, and permission to intervene become the new currency.

Journals will receive, publish, and then ask for more of the work AI agents can produce and verify. By 2028, “verifiability by AI” approximates “worth studying.” In other words, we choose questions partly because the agents reviewing the work can reliably check the claims.

## 2. The authors run the referee

> By 2028, at least one leading social-science journal will face an organized open letter, boycott, or coordinated refusal to review over an opaque, publisher-controlled AI review pipeline.

The AI paper flood has arrived. *Organization Science* [reported 42% more submissions in its post-ChatGPT comparison window](https://pubsonline.informs.org/doi/10.1287/orsc.2026.ed.v37.n3), largely attributed to AI-supported writing. Recently, the American Economic Association and the Econometric Society [started using Refine for AI-assisted technical audits](https://www.refine.ink/blog/economics-journal-partnerships). So we are already seeing both the impact and institutional responses to AI for social science.

A publisher contracts with one AI company, builds its system into submission and review, and says a human still decides. But the AI system still chooses what gets checked and ultimately reaches the editor.

The flip side is that, before submission, authors run journal-specific reviews with AI agents against the journal's published standards and inferred preferences.

Journals get locked into whichever AI company their publisher chose. But the history of coding agents complicates the forecast. People start with the proprietary defaults (e.g., Claude Code) and build their own harnesses (e.g., Hermes Agent, Pi Agent). Researchers do the same with AI review, creating open alternatives authors can inspect and reproduce. Even when the model becomes interchangeable, journals can still lock authors into their historical decisions and established workflows.

A community revolts against such practices over who controls the referee—publishers, editors, scholars, or none of them?

If journals and editors publish the criteria—even just the system prompt—authors’ agents can optimize against them. If those criteria remain a black box, the revolt gets more intense.

Despite these tensions, the scholarly community moves toward an output standard: Is the critique correct and useful, regardless of whether a human or model drafted it?

## 3. The Synthetic Reckoning

> By 2028, human data will overturn a prominent model-only claim about subgroup differences, variance, rare populations, or local contexts. The contradiction will trigger a journal editorial, an organized replication effort, and the first field-wide dispute over whether model-only results count as evidence about people.

Synthetic samples can [recover some population averages while compressing variance and distorting subgroup relationships](https://www.cambridge.org/core/journals/political-analysis/article/synthetic-replacements-for-human-survey-data-the-perils-of-large-language-models/B92267DC26195C7F36E63EA04A47D2FE). Models can also [forecast social-science results while overestimating effect sizes and doing worse in the megastudy archive](https://www.nature.com/articles/s41586-026-10742-x). At the population level, we can sometimes isolate the biases, or they simply don’t change the interpretations much.

However, at more micro levels (individuals, groups), we see much less reliability because models lack data on rare groups, local contexts, and social cues. More importantly, here the agents’ answers tell us more about the models themselves than about the simulated human roles.

Then there is model deprecation’s impact on replication. A paper can remain under review longer than its model remains available. Providers [regularly retire older models](https://developers.openai.com/api/docs/deprecations). And even when a checkpoint survives, [reproducing a run can still require the same hardware and vLLM version](https://docs.vllm.ai/en/latest/usage/reproducibility/). The model population of the original study may have changed or disappeared before the replication starts.

The methods side gets strange too. Agents in organizations can leave us with exhaustive traces and logs so we can know nearly everything they did. We can also “interview” these agents and ask what X meant to them. So here is the methods question: Can this be considered an ethnographic field study?

## 4. The curriculum misses a cohort

> By 2028, a leading social-science PhD program will have a public faculty–student dispute over whether building and auditing research agents belong in core methods training rather than in a single AI elective.

What happens to PhD training while the means of knowledge production change faster than the curriculum? Many students will be underprepared when they enter the job market, in academia or industry, because programs keep loading them with canonical requirements. At the same time, the people who can teach them are learning too. It’s tough juggling the two: keeping up with the AI takeoff and doing the work for the old pipelines. For a while, the real curriculum will live inside faculty-led projects where students build agentic workflows, validate machine outputs, and see where systems fail.

Rebuilding the curriculum broadly takes much longer than the field currently expects. It needs researchers who have come through the new pipeline and matured enough to teach across courses (not just a single AI elective).

A lost generation graduates, trained for the old pipeline but expected to practice in the new one.

## 5. Access decides who shapes the field

> By 2028, most impactful empirical work on deployed agent organizations will come from industry researchers and practitioners.

The leading organizational-research lab will sit inside an AI(-enabled) company. It will have live systems, internal data, agent logs, and the ability to change a workflow and inspect what happens next. Universities usually arrive through a partnership, after the fact, or through whatever data the company releases.

Relatedly, more researchers will become builders. We already see the examples of [Expected Parrot](https://www.expectedparrot.com/), [SkillBench](https://skillbench.com/), and [Skimle](https://skimle.com/). Some will build shared infrastructure; others will advise organizations, become co-founders, or move between research and service work.

However, the academic research infrastructure gets hollowed out over time. Someone has to maintain the harness, pay for compute, handle sensitive data, and keep the system working after publication. Universities often treat this type of work as service unless it continues to produce papers, grants, or recognized research credit. So some builders leave for AI companies, independent labs, consulting, and ventures.

## 6. The loop closes

> By 2030, a major social-science journal will publish a paper and publicly identify it as written largely by agents, about agents, and reviewed largely by agents, while humans contribute the question and the signature.

The changes compound. Agentic analysis feeds review. Reviewer agents reward what they can verify. Synthetic respondents blur human evidence just as deployed agents become a common study object. Training and access decide who shapes the loop. It runs on the model and product release calendar, which continues to move faster than the academic calendar.

**Author’s note**

This was collaboratively developed and edited with Claude Fable 5, GPT 5.6 Sol, Kimi K3, and DeepSeek V4 Flash. Final edits are my own, breaking away from the “evidentiary triage” built by GPT, the “load-bearing” skepticism from Claude, and the “scorekeeping” pushed by Kimi.
