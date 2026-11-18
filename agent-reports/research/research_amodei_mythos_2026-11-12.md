# Dario Amodei on AI and cybersecurity; Claude Mythos Preview and Project Glasswing facts

- Language model: claude-fable-5-2
- Prompt version: v1
- Research date: 2026-11-12
- Purpose: source material for a university faculty briefing on cybersecurity

## How to read this report (verification levels)

Network access in this session reached only `www.anthropic.com`. All other hosts (cnbc.com, x.com, red.anthropic.com, darioamodei.com, fortune.com, americanbanker.com and others) were refused by the session's network policy.

- **[A] Read in full on the primary page.** Text copied from the page HTML fetched from anthropic.com.
- **[B] Search-index text of the primary post.** The X posts could not be opened; the wording is the post text as returned in the search result title for the exact status URL. High confidence, but not read on x.com itself.
- **[C] Secondary reporting, seen only as search-result snippets.** The article could not be opened. Wording is as the search tool returned it. Check against the article or a recording before printing.
- **[unconfirmed]** Could not be confirmed.

`red.anthropic.com/2026/mythos-preview/` was read through its mirror at `https://www.anthropic.com/research/mythos-preview` (same title, date 7 Apr 2026, Frontier Red Team).

## Summary

1. On 7 April 2026 Anthropic announced Claude Mythos Preview and Project Glasswing. Amodei posted a thread on X the same day. The thread says cyber is "the first clear and present danger from frontier AI models", and that securing the world's software "will be the work of months and years".
2. On 5 May 2026, on stage with Jamie Dimon at an Anthropic financial services event in New York, Amodei spoke of a "moment of danger". He put Chinese models "maybe six to 12 months" behind, which CNBC reported as a 6 to 12 month window to patch. These quotes are confirmed only through secondary reporting (level C).
3. Anthropic's own posts repeat the 6 to 12 month figure in company voice (2 June 2026) and later say the moment arrived: on 29 September 2026 Anthropic wrote "those models have now arrived" about the open-weight Chinese model GLM-5.3.
4. A Mythos-class model became generally available on 9 June 2026 as Claude Fable 5, with classifier safeguards. The US government suspended it by export control directive on 12 June; it returned on 1 July 2026.
5. The latest counts (6 October 2026): at least 129,000 verified vulnerabilities found by partners (April to July), plus 5,500 from Anthropic's open-source scanning (April to October); more than 33,000 rated critical or high. Patch counts are incomplete.
6. The only later (June to November 2026) text signed by Amodei that I found is his post of 27 July 2026 on open-weights models. I found no congressional testimony by him in 2026 and no September to November 2026 interview on cyber.

## Part 1. Statements by Dario Amodei

### 1.1 X thread, 7 April 2026 (level B)

Venue: X (@DarioAmodei). Context: posted on the day of the Mythos Preview and Glasswing announcement. Six posts found; order inferred from the status IDs.

1. "I’m proud that so many of the world’s leading companies have joined us for Project Glasswing to confront the cyber threat posed by increasingly capable AI systems head-on." (followed by a link)
   https://x.com/DarioAmodei/status/2041580334693720511
2. "We’ve been tracking the increasing cyber capabilities of AI models for years, which arise as part of their general proficiency at coding. But our new model, Mythos Preview, represents a particularly large step up."
   https://x.com/DarioAmodei/status/2041580336828568000
3. "Rather than release Mythos Preview to general availability, we’re giving defenders early controlled access in order to find and patch vulnerabilities before Mythos-class models proliferate across the ecosystem."
   https://x.com/DarioAmodei/status/2041580338426585171
4. "Glasswing is just the first step: patching and securing the world’s software infrastructure will be the work of months and years, and will require even broader cooperation across AI companies, cyberdefenders, software providers, governments, and more."
   https://x.com/DarioAmodei/status/2041580340032995821
5. "The dangers of getting this wrong are obvious, but if we get it right, there is a real opportunity to create a fundamentally more secure internet and world than we had before the advent of AI-powered cyber capabilities."
   https://x.com/DarioAmodei/status/2041580341794615631
6. "Cyber is the first clear and present danger from frontier AI models, but it won’t be the last. If we are able to collectively rise to the challenge and confront this risk, it could serve as a blueprint for addressing the even more difficult challenges that lie ahead of us."
   https://x.com/DarioAmodei/status/2041580343472337145

Post 4 is the strongest statement on the time needed to secure software. Post 3 states the logic of a head start for defenders.

### 1.2 Anthropic event "The Briefing: Financial Services", New York, 5 May 2026 (level C)

Venue: on stage in lower Manhattan with JPMorganChase CEO Jamie Dimon; Fortune names Andrew Ross Sorkin as the questioner. No transcript or recording was read. Main article: CNBC, 5 May 2026, https://www.cnbc.com/2026/05/05/anthropic-ceo-cyber-moment-of-danger-mythos-vulnerabilities.html (headline seen in two forms: "Anthropic CEO warns of cyber 'moment of danger' as AI exposes thousands of vulnerabilities" and "Anthropic CEO warns 'moment of danger' as Mythos exposes vulnerabilities").

- "Moment of danger", two wordings:
  - CNBC, as returned by search: "This is about a moment of danger where if we respond to it correctly, and I think we started to take the first steps, then we can have a better world on the other side"
  - American Banker, as returned by search: the same sentence ending "...then we can have a better world on the other side of it."
    https://www.americanbanker.com/news/mythos-is-very-high-risk-jpmorganchases-jamie-dimon
- The window. CNBC's own sentence (paraphrase by CNBC, not a quote): Amodei "warned Tuesday that there is a six- to 12-month window to patch tens of thousands of software vulnerabilities uncovered by the company's Mythos model before Chinese AI catches up." Quoted fragments attributed to Amodei: Chinese models are "maybe six to 12 months" behind, and there is "roughly that amount of time" to fix the issues. The full sentence around these fragments is [unconfirmed].
- Lead over other labs, sources disagree:
  - American Banker (paraphrase): other AI companies are about three months behind Anthropic; Chinese models six to 12 months behind.
  - Another outlet, as a quote (outlet not identified by the search tool; the tool itself called it a paraphrase): "The other AI labs are about one to three months behind me," ... "and Chinese models are maybe six to twelve months behind." [unconfirmed wording]
- "With Mythos, we found almost 300 vulnerabilities in Firefox," (American Banker / BankInfoSecurity snippets; https://www.bankinfosecurity.com/anthropic-sounds-cyber-alarm-amid-financial-ai-push-a-31617). Number of Firefox bugs found by the earlier model differs by outlet: "about 30" (one snippet), "about 20" / "around 20" (Storyboard18 and another). Anthropic's own figure for Mythos Preview is 271 in Firefox 150 (see 2.4).
- "The danger is just some enormous increase in the amount of vulnerabilities, in the amount of breaches" (CNBC snippet; CNBC ties this to ransomware against schools, hospitals and banks). The rest of the sentence is [unconfirmed].
- "the bad guys will exploit" (fragment, CNBC snippet, about unpatched flaws if they are identified).
- "So I think the risks are very real," (Fortune, 5 May 2026, https://fortune.com/2026/05/05/jamie-dimon-dario-amodei-jpmorgan-anthropic-ai-cyber-mythos-freakout-sidestep-question/). American Banker snippet gives "The risks are very real,".
- "If we handle this right, we could be in a better position than we started, because we fixed all these bugs. There are only so many bugs to find," (TechCrunch, 7 May 2026, https://techcrunch.com/2026/05/07/how-anthropics-mythos-has-rewritten-firefoxs-approach-to-cybersecurity/, attributed to "a recent event"; the search tool linked it to the 5 May event).
- "But they're also, in some sense, not that surprising. We've been seeing warnings of this for a while." (CNBC snippet; which CNBC article and what "they" refers to is [unconfirmed]).

### 1.3 "Our position on open-weights models", 27 July 2026 (level A)

Venue: anthropic.com, headed "A post by Dario Amodei, Anthropic CEO". URL: https://www.anthropic.com/news/position-open-weights-models. Context: reply to an industry open letter backing open-weights models, amid reports that US officials were weighing a ban on Chinese open-weights models.

- "My secondary concern is the risk that powerful AI models may be misused to carry out cyberattacks or biological attacks, and may have serious alignment problems. Open-weights models—it does not matter whether they come from China or anywhere else—do potentially present a higher risk than closed models, because it is very difficult to apply guardrails to them or monitor their usage, and once weights are released they cannot be withdrawn"
- "But I don’t agree with the letter’s assertions that open-weights models necessarily make it easier to develop safeguards or that broad access to capabilities necessarily helps defenders more than attackers. It seems at least as likely to me that the opposite will be true."
- "All sufficiently capable models, open and closed, should go through mandatory safety testing. The best way to address threat #2 is to just directly test models for cyber, biological, and alignment risks before release."
- "Distillation does not allow the CCP to obtain equivalent or superior AI capabilities to the US, but it can bring the Chinese frontier to within a few months of the US frontier."
- "Anthropic has never advocated for a ban on open-weights models."

Note: his worked example of attacker-defender asymmetry in this post is biology, not cyber.

### 1.4 Other leads, not confirmed

- Financial Times interview (reported by an aggregator under the title "'Shocks are inevitable': Amodei on Mythos, AI regulation and wealth", https://en.oninvest.com/article/shocks-are-inevitable-amodei-on-mythos-ai-regulation-and-wealth). Date and wording [unconfirmed].
- New York Times, Kevin Roose, 7 April 2026: Anthropic executives called Mythos Preview a "reckoning" for cybersecurity (via Techmeme, https://www.techmeme.com/260407/p41). Attribution to Amodei personally is [unconfirmed].
- "The Adolescence of Technology" (Amodei essay, about January 2026, darioamodei.com): exists and is cited by Amodei in the 27 July post; darioamodei.com was unreachable, so no cyber passage is quoted here. [unconfirmed wording]
- Congressional testimony in 2026: none found. Found only: a House Homeland Security request for him to testify on 17 Dec 2025 about the Chinese espionage campaign using Claude Code (whether he appeared is [unconfirmed]); a House member's oversight letter to him dated 10 Aug 2026 on security incidents (https://casar.house.gov/sites/evo-subsites/casar.house.gov/files/evo-media-document/oversight-letter-to-anthropic-regaring-security-incidents-1.pdf, not read).
- CNBC, 27 July 2026, on the open-weights post: https://www.cnbc.com/2026/07/27/anthropic-ceo-dario-amodei-isnt-advocating-open-weight-model-ban.html (not read; the primary post is in 1.3).
- Statements by Amodei from September to November 2026 on cyber: none found.

## Part 2. Verified facts from Anthropic's pages (all level A)

### 2.1 Launch, 7 April 2026
Source: https://www.anthropic.com/glasswing

- Launch partners: "Amazon Web Services, Anthropic, Apple, Broadcom, Cisco, CrowdStrike, Google, JPMorganChase, the Linux Foundation, Microsoft, NVIDIA, and Palo Alto Networks". Also: "We have also extended access to a group of over 40 additional organizations that build or maintain critical software infrastructure".
- Money: "Anthropic is committing up to $100M in usage credits for Mythos Preview across these efforts, as well as $4M in direct donations to open-source security organizations." Breakdown: "we’ve donated $2.5M to Alpha-Omega and OpenSSF through the Linux Foundation, and $1.5M to the Apache Software Foundation". After the credits, price to participants: "$25/$125 per million input/output tokens".
- Findings: "Mythos Preview has already found thousands of high-severity vulnerabilities, including some in every major operating system and web browser."
- Named examples:
  - "Mythos Preview found a 27-year-old vulnerability in OpenBSD... The vulnerability allowed an attacker to remotely crash any machine running the operating system just by connecting to it"
  - "It also discovered a 16-year-old vulnerability in FFmpeg... in a line of code that automated testing tools had hit five million times without ever catching the problem"
  - "The model autonomously found and chained together several vulnerabilities in the Linux kernel... to allow an attacker to escalate from ordinary user access to complete control of the machine."
  - "We have reported the above vulnerabilities to the maintainers of the relevant software, and they have all now been patched."
- Time pressure, company voice: "The work of defending the world’s cyber infrastructure might take years; frontier AI capabilities are likely to advance substantially over just the next few months. For cyber defenders to come out ahead, we need to act now."
- Release policy: "We do not plan to make Claude Mythos Preview generally available, but our eventual goal is to enable our users to safely deploy Mythos-class models at scale".
- Benchmark: CyberGym 83.1% (Mythos Preview) against 66.6% (Opus 4.6).
- Promise: "within 90 days, Anthropic will report publicly on what we’ve learned".

### 2.2 Frontier Red Team technical post, 7 April 2026
Source: https://www.anthropic.com/research/mythos-preview (mirror of red.anthropic.com/2026/mythos-preview/)

- "Over 99% of the vulnerabilities we’ve found have not yet been patched, so it would be irresponsible for us to disclose details about them".
- "Many of them are ten or twenty years old, with the oldest we have found so far being a now-patched 27-year-old bug in OpenBSD".
- FreeBSD: "Mythos Preview fully autonomously identified and then exploited a 17-year-old remote code execution vulnerability in FreeBSD that allows anyone to gain root on a machine running NFS. This vulnerability, triaged as CVE-2026-4747".
- Firefox exploit test: Opus 4.6 succeeded "only two times out of several hundred attempts"; Mythos Preview "developed working exploits 181 times, and achieved register control on 29 more." (Footnote: against a test harness without the browser sandbox.)
- Cost: OpenBSD, "Across a thousand runs through our scaffold, the total cost was under $20,000"; the run that found the bug "cost under $50".
- Severity check: "in 89% of the 198 manually reviewed vulnerability reports, our expert contractors agreed with Claude’s severity assessment exactly".
- Origin of the capability: "We did not explicitly train Mythos Preview to have these capabilities."
- A limit worth noting, on remotely triggerable Linux kernel bugs: "because of the Linux kernel’s defense in depth measures Mythos Preview was unable to successfully exploit any of these." (The Linux exploits it did write were local privilege escalation.)

### 2.3 Initial update, 22 May 2026
Source: https://www.anthropic.com/news/glasswing-initial-update

- "we and our approximately 50 partners have used Claude Mythos Preview to find more than ten thousand high- or critical-severity vulnerabilities".
- "Progress on software security used to be limited by how quickly we could find new vulnerabilities. Now it’s limited by how quickly we can verify, disclose, and patch the large numbers of vulnerabilities found by AI."
- Open source scan of more than 1,000 projects: "6,202 high- or critical-severity vulnerabilities in these projects (out of 23,019 in total". Of 1,752 assessed, "90.6% (1,587) have proved to be valid true positives, and 62.4% (1,094) were confirmed as either high- or critical-severity."
- Patching: "75 of the 530 high- or critical-severity bugs we’ve reported have now been patched, and 65 of those have been given public advisories."
- "some have even asked us to slow down our rate of our disclosures because they need more time to design patches. (On average, a high- or critical-severity bug found by Mythos Preview takes two weeks to patch.)"
- Firefox: "Mozilla found and fixed 271 vulnerabilities in Firefox 150 while testing Mythos Preview—over ten times more than they found in Firefox 148 with Claude Opus 4.6".
- Cloudflare: "2,000 bugs (400 of which are high- or critical-severity)".
- "At present, no company—including Anthropic—has developed safeguards strong enough to prevent such models from being misused and potentially causing severe harm."

### 2.4 Expansion, 2 June 2026
Source: https://www.anthropic.com/news/expanding-project-glasswing

- "we’re extending the partnership to approximately 150 new organizations", "based in more than 15 countries".
- The window, company voice: "within 6 to 12 months, we expect that many other AI companies will have Mythos-class models, and they could release them without safeguards that prevent misuse."
- "Cheap, fast AI models with powerful cyber capabilities are around the corner."

### 2.5 General availability of a Mythos-class model: Claude Fable 5, 9 June 2026
Source: https://www.anthropic.com/news/claude-fable-5-mythos-5

- "Today we’re launching Claude Fable 5: a Mythos-class model that we’ve made safe for general use."
- Safeguards: "When Fable’s classifiers detect a request related to cybersecurity, biology and chemistry, or distillation, the response is automatically handled by Claude Opus 4.8 instead." They "trigger, on average, in less than 5% of sessions."
- Claude Mythos 5: "the same underlying model as Fable 5, but with the safeguards lifted in some areas", "restricted to Glasswing partners".
- Price: "$10 per million input tokens and $50 per million output tokens".
- Mythos Preview itself was never made generally available.

### 2.6 Suspension and return, 12 June to 1 July 2026
Sources: https://www.anthropic.com/news/fable-mythos-access (12 June) and https://www.anthropic.com/news/redeploying-fable-5 (30 June, update 1 July)

- "The US government, citing national security authorities, has issued an export control directive to suspend all access to Fable 5 and Mythos 5 by any foreign national... we must abruptly disable Fable 5 and Mythos 5 for all our customers".
- Cause, per Anthropic: "a report in which Amazon researchers had found a method of bypassing Fable 5’s safeguards".
- "We suspect that perfect jailbreak resistance is not currently possible for any model provider."
- "As of today, June 30, the export controls on Fable 5 and Mythos 5 have been lifted." Fable 5 returned on 1 July. Mythos 5 was restored "for a set of US organizations, following the US government’s approval on June 26."
- Fix: a new classifier; "the specific technique described in the Amazon report is blocked in over 99% of cases."

### 2.7 The capability spreads: GLM-5.3, 29 September 2026
Source: https://www.anthropic.com/research/glm-5-3-and-the-spread-of-advanced-cyber-capabilities

- "But those models have now arrived." About Zhipu AI's open-weight GLM-5.3: "attackers can bypass GLM-5.3’s safeguards between 64% and 100% of the time with simple techniques in our simulated tests."
- ExploitBench: "GLM-5.3 develops end-to-end exploits in 50 of 410 attempts. Claude Mythos Preview did so at a similar rate—in 56 of 410 attempts."
- Cites NIST CAISI (17 Sept): GLM-5.3 is "the most cyber-capable open-weight model released to date" and "lags the US frontier by about four months".
- "a critical threshold in freely accessible capabilities has now been crossed."
- Timing note (my arithmetic): 7 April to 29 September 2026 is a little under six months.

### 2.8 Latest status, October to November 2026
Sources: https://www.anthropic.com/news/cyber-verification-program (6 Oct), https://www.anthropic.com/news/anthropic-cyber-mission (8 Oct), https://www.anthropic.com/claude-fable-and-mythos-5-1 (Sept), https://www.anthropic.com/claude-fable-and-mythos-5-2 (9 Nov)

- Counts: "our partners uncovered at least 129,000 verified software vulnerabilities between April and July 2026. And through our own open-source scanning efforts, we found an additional 5,500 verified software vulnerabilities between April and October 2026. Of these verified vulnerabilities, more than 33,000 have so far been rated as critical- or high-severity."
- Limits of these counts: "based on partial data from 33 partner reports"; "fewer than 50% of partners disclosed patched numbers... so the patch rate is significantly undercounted." No total patched figure is given.
- Glasswing merged into the Cyber Verification Program with three tiers (Defense Access, Red Team Access, Specialized Access). "Existing members of Project Glasswing will transition to the Specialized Access tier."
- 8 Oct: "As part of Project Glasswing, partners uncovered many vulnerabilities, but we haven’t yet achieved a sufficient reduction in cyber risk."
- 8 Oct forecast: "Our forecast is that in two years, AI will favor defense... But in the near term, that may not be true." And: "In Glasswing, we often saw months pass between a vulnerability being found and being fixed. With operational technology, a fix may have to wait... in some rare cases, this might take decades."
- Current models: Fable 5.2 (general, with safeguards) and Mythos 5.2 (verified access only), dated 9 November 2026. Since Fable 5.1 the general model may find vulnerabilities "though not to develop exploits for them."

### 2.9 Numbers that differ between sources (both given, none chosen)
- Initial partners: 12 named launch partners plus "over 40 additional organizations" (7 Apr page); "approximately 50 partners" (22 May); "roughly 50 initial partners" (2 June); press snippets say "about 40" or "40-50".
- Vulnerabilities: "thousands" (7 Apr); "more than ten thousand" high or critical (22 May); "tens of thousands" (Amodei per CNBC, 5 May); "at least 129,000 verified", of which "more than 33,000" critical or high (6 Oct). These measure different things at different dates.
- Firefox: "almost 300" (Amodei, per press) against 271 (Anthropic and Mozilla, Firefox 150).
- Window: "six- to 12-month" (CNBC on Amodei, 5 May, tied to Chinese AI) and "within 6 to 12 months" (Anthropic, 2 June, tied to "many other AI companies").

## Part 3. Queries run

WebSearch (extended unless noted):
1. Dario Amodei Mythos "clear and present danger" cyber X post April 7 2026 Project Glasswing
2. Amodei "moment of danger" Mythos vulnerabilities "6 to 12 months" patch CNBC May 5 2026
3. site:x.com DarioAmodei Mythos Preview Glasswing thread "patching and securing" "months and years"
4. Anthropic Project Glasswing update vulnerabilities reported patched Mythos general availability safeguards (anthropic.com only)
5. Dario Amodei cybersecurity Mythos interview quote "Amodei said" vulnerabilities patch window September OR October OR November 2026
6. Dario Amodei testimony Senate OR House hearing 2026 Mythos cyber "Amodei told" lawmakers
7. Anthropic suspends Claude Fable 5 Mythos 5 access June 12 2026 why export control directive redeployed July 1
8. Amodei May 5 2026 Anthropic financial services event Dimon quotes "moment of danger" "bad guys" "Firefox" "six to 12 months" exact quote
9. Amodei Mythos April 7 2026 CNBC limited rollout Glasswing quote "Amodei said" video statement "more powerful models"
10. Dario Amodei GLM-5.3 OR "open-weight" cyber statement October 2026 interview
11. "Amodei" "moment of danger" "better world on the other side" Mythos full quote "tens of thousands" "six to 12 months" Chinese models behind
12. Dario Amodei "The Adolescence of Technology" essay cyberattacks passage quote (standard)
13. Amodei New York Times Roose Mythos interview April 2026 quote cybersecurity "reckoning"
14. Dario Amodei interview cyber "Mythos" quote August OR September OR October OR November 2026 (Wikipedia blocked)
15. "Amodei" "The danger is just some enormous increase in the amount of vulnerabilities, in the amount of breaches"
16. "Shocks are inevitable" Amodei on Mythos interview quotes cyber
17. Fortune Dimon Amodei sidestep "freakout" May 5 2026 Amodei quote

Pages fetched and read (anthropic.com): /glasswing, /research/mythos-preview, /news/glasswing-initial-update, /news/expanding-project-glasswing, /news/claude-fable-5-mythos-5, /news/fable-mythos-access, /news/redeploying-fable-5, /news/position-open-weights-models, /research/glm-5-3-and-the-spread-of-advanced-cyber-capabilities, /news/cyber-verification-program, /news/anthropic-cyber-mission, /claude-fable-and-mythos-5-1, /claude-fable-and-mythos-5-2, /news/investigating-incidents-cybersecurity-evals, /sitemap.xml. Wikipedia was not used.

## Part 4. What could not be confirmed

- Every quote in 1.2 (5 May event): not read in the articles or checked against a recording. The exact sentence in which Amodei gave the 6 to 12 month figure is not established; the "window to patch" framing is CNBC's.
- The X posts (1.1): not opened on x.com; whether the thread has more than six posts is unknown.
- CNBC article of 7 April 2026 (https://www.cnbc.com/2026/04/07/anthropic-claude-mythos-ai-hackers-cyberattacks.html): not read.
- The Amodei essay on darioamodei.com and the FT and NYT interviews: not read.
- Any Amodei statement on cyber after 27 July 2026; any 2026 congressional testimony.
- Whether the promised 90-day public Glasswing report appeared as a single document (the 22 May, 2 June and 6 October posts serve that role in part).
- A total count of patched vulnerabilities to date: Anthropic gives none.
- Hosts that must be allowed in the session's network settings to close these gaps: www.cnbc.com, x.com, red.anthropic.com, www.darioamodei.com, fortune.com, www.americanbanker.com, techcrunch.com, www.ft.com, www.nytimes.com.
