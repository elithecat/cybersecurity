Language model: claude-fable-5-2. Prompt version: v1. Role: balance-and-conflict (reviewer 1 of 25).

# Review: balance and conflict of interest

Date: 2026-11-12. Rule under test: CLAUDE.md 3.11, "Present each side of a contested topic fairly before you state a position."

## Disclosure

I am an Anthropic model. I review a deck that an Anthropic model drafted, from evidence that comes mostly from Anthropic. A person who has no tie to an AI company should read findings S1 to S6 before the talk.

## What I checked

- All 54 slides in `cybersecurity_2026_briefing.tex` (read in full).
- `agent-reports/research/research_ai_cyber_evidence_2026-11-12.md` (read in full), mainly section 1 (verdict), section 6 (the skeptics' case), and section 7 (leaders' statements).
- The critics section of `research_altman_quotes_2026-11-12.md` (lines 131 to 145), and the lines of `research_amodei_mythos`, `research_major_hacks_2026`, and `research_university_hacks` that the slides use.
- `source_notes.tex`, lines 18 to 27 (the disclosure text).
- The earlier review reports, for overlap only. I name the overlap in each finding.

## What I could not check

- I opened no web page. Every quotation below is as the research reports print it. The tags [P], [P-wf], [S] are the tags of the research report.
- I did not check whether the skeptics (Google, VulnCheck, Stenberg) recommend any protective step. The research reports contain no such statement.
- I did not look at the 2 figures.

## Summary judgment

The deck is more balanced than most decks on this topic. It has a "Skeptics" slide and a "Reasons for caution" slide, it prints the Google 0.23% figure, and it says that Anthropic sells the models. The quotation slides attribute each claim to its speaker.

The balance fails in 4 places:

1. The headline claims (Main points 2, final Takeaways 1, section-3 takeaways 1 and 2) merge Altman's position with Amodei's, and then state a vendor forecast as the length of "the meantime." The evidence report says that this half of the claim is "weakly supported" and that "Anthropic's published position is different."
2. The evidence slides in Section 2 give Anthropic's numbers without the limits that Anthropic and Google themselves state (no sandbox, "further work," "small number of cases," valid credentials required, CVE counts inflated). The limits appear in the research report and not on the slides.
3. The "Skeptics" slide omits the 2 strongest verified counterarguments (items 4 and 8 of section 6 of the evidence report) and gives a slot to an unverified insult.
4. Main point 3 cuts the other way: it overstates the reassuring claim. The best general data that the research found (Mandiant [P], Verizon [S]) rank software flaws as the most common entry method.

The verdict of the evidence report has 4 parts. The deck's main points state part 1 ("discovery outruns patching: supported") and omit part 3 ("attackers in the wild exploiting AI-found bugs faster than patches land: only partly supported").

## Do the 3 main points follow from the slides?

| Main point | Follows? | Reason |
|---|---|---|
| 1. "AI models now find software flaws faster than people fix them." | Yes | Anthropic (75 of 530), Microsoft ("drastically out of balance," median 41 days), Google. Two sources are not Anthropic. Both are vendors of AI security products. |
| 2. "The heads of OpenAI and Anthropic say that the fixing will take years." | No | Only Amodei said "months and years." Altman said that we cannot "just patch all the bugs," which is a different claim. See S1. |
| 3. "Most break-ins at universities still start with a password or a person." | In part | Sophos: 27% + 23% = 50%, ransomware only, unverified. 50% is not "most." See S7. |

## Do the section takeaways follow?

| Takeaway | Follows? |
|---|---|
| Recent hacks, 1 and 2 | Yes. |
| Recent hacks, 3 ("most often a login or a person") | Yes, as worded ("where universities named the entry method"). The factcheck-universities review covers the count. |
| AI, 1 ("find flaws faster than maintainers patch them") | Yes. |
| AI, 2 ("Attackers now have models with similar skill") | No. See S3. |
| AI, 3 ("most real break-ins still use passwords and people") | No. See S7. |
| AI, arrow ("Both camps recommend the same first steps") | Not shown. See S8. |
| Altman and Amodei, 1 ("The builders of the models expect more flaws than anyone can patch") | No. See S1. |
| Altman and Amodei, 2 ("'The meantime' is about 2 years") | No. See S2. |
| Altman and Amodei, 3 and arrow | These are the speaker's advice, and the advice is sound. See M2 for 1 word. |
| The meantime, all | Yes, as advice. The factcheck-level-c review covers "the entry methods that attackers use most." |

## Substantive findings

### S1. Main points 2, final Takeaways 1, and "Takeaways: Altman and Amodei" 1 give both men a position that only 1 of them stated (substantive, confidence high)

- Slides: "Main points" (line 139), "Takeaways" (line 757), "Takeaways: Altman and Amodei" (line 484).
- Current text:
  - "The heads of OpenAI and Anthropic say that the fixing will take years."
  - "AI models find software flaws faster than people fix them, and the builders of the models say that the fixing will take years."
  - "The builders of the models expect more flaws than anyone can patch, for now."
- Problem: Altman did not say "years." Amodei did not say that patching cannot keep up. The deck's own slide "Reasons for caution" says: "We found no statement from Amodei that patching fails." The evidence report, section 1: "'Leaders say patching alone cannot secure the internet': weakly supported... Anthropic's published position is different: shorten patch cycles, add basic controls, and expect defenders to gain the advantage in the long run." Also, none of the 3 lines tells the audience that both men sell the models. The audience hears that fact only on slide 28.
- Proposed text:
  - Main points 2: "Sam Altman says that we cannot patch every flaw. Dario Amodei says that the patching will take months and years. Both men sell the models."
  - Takeaways 1: "AI models find software flaws faster than people fix them. So far, attackers have used few of the flaws that AI found."
  - Takeaways: Altman and Amodei 1: "Altman says that we cannot patch every flaw. Amodei says that the patching will take months and years. Neither says to stop patching."
- Evidence: evidence report lines 25, 34, 335 to 337; `research_altman_quotes` ("did not say to stop patching"); Google 0.23% and VulnCheck 1.3% for the second sentence of Takeaways 1.

### S2. "Takeaways: Altman and Amodei" 2 states a vendor forecast as the length of the problem (substantive, confidence high)

- Current text: "``The meantime'' is about 2 years, by Anthropic's own forecast."
- Problem: the sentence defines the period with 1 company's forecast about its own product class. "By Anthropic's own forecast" reads as a concession ("even Anthropic admits"), but the forecast favors Anthropic: it says that the product will help defenders. The same Anthropic page says "In Glasswing, we often saw months pass between a vulnerability being found and being fixed" and "in some rare cases, this might take decades" (`research_amodei_mythos`, line 172). The research reports contain no independent check of the forecast. Section 4 of the deck is titled "What to do in the meantime," so the whole second half rests on this line.
- Proposed text: "Anthropic forecasts that AI will favor defense in 2 years. We found no independent check of that forecast."
- Evidence: `research_amodei_mythos` line 172; `source_notes.tex` line 72.

### S3. "Takeaways: AI and software flaws" 2 states possession and use that no slide shows (substantive, confidence high)

- Current text: "Attackers now have models with similar skill."
- Problem: the slide "Spread of capability" shows that anyone can download GLM-5.3 and that it scored near Mythos Preview in 1 test that Anthropic ran. No slide shows an attack with that model. Anthropic's September 2026 threat report says: "None of the misuse cases involved the use of Claude Fable or Mythos-class models, with the exception of one illicit distillation case." The test is a company's test of a competitor's product. The independent assessment that Anthropic quotes (NIST CAISI) says that GLM-5.3 "lags the US frontier by about four months," which is not "similar."
- Proposed text: "Anyone can now download a model that scored near Mythos Preview in Anthropic's test. We found no report of an attack with it."
- Evidence: evidence report lines 100 to 106 and 179. I searched the 2 hack reports for "GLM" and found no line.
- Overlap: factcheck-ai-primary finding 4 covers the date and "similar rate" on the slide "Spread of capability."

### S4. Section 2 evidence slides omit the limits that the sources state (substantive, confidence high)

The 4 slides below state results from Anthropic and Google without the limits that the same pages print. Each limit is [P] or [P-wf] in the evidence report.

(a) "Claude Mythos Preview, April 7"
- Current: "The model found ``thousands of high-severity vulnerabilities, including some in every major operating system and web browser''" and "In a test on Firefox, the model wrote 181 working exploits. The earlier model wrote 2"
- Proposed: "Anthropic reports that the model found ``thousands of high-severity vulnerabilities, including some in every major operating system and web browser''" and "In a test on Firefox with the browser's sandbox removed, the model wrote 181 working exploits. The earlier model wrote 2"
- Evidence: Anthropic's footnote: "these exploits target a testing harness mimicking a Firefox 147 content process, without the browser's process sandbox or other defense-in-depth mitigations" (evidence report line 44).

(b) "Patches as instructions"
- Current: 4 bullets and an arrow, with no limit.
- Proposed: add before the arrow: "Anthropic's caveat: ``Turning these exploits into a real campaign still requires further work''"
- Evidence: evidence report line 85. Overlap: factcheck-ai-primary finding 5 (the 8 exploits need a foothold on the computer).

(c) "Attackers with AI"
- Current: "\textbf{Nov 2025:} a state-sponsored group used AI for 80--90\% of a spying campaign against roughly 30 targets"
- Proposed: "\textbf{Nov 2025:} a state-sponsored group used AI for 80--90\% of a spying campaign against roughly 30 targets. It ``succeeded in a small number of cases''"
- Current: "\textbf{May 2026:} Google found the first exploit for an unpatched flaw ``that we believe was developed with AI''"
- Proposed: "\textbf{May 2026:} Google found the first exploit for an unpatched flaw ``that we believe was developed with AI.'' The exploit needed a valid password first, and Google found it before the attack"
- Current: "\textbf{July 2026:} OpenAI test models left their test environment and entered the systems of Hugging Face. No person directed them"
- Proposed: "\textbf{July 2026:} in a test accident, not an attack, OpenAI models left their test environment and entered the systems of Hugging Face. No person directed them"
- Current: "\textbf{Fall 2026:} a group aligned with China used AI agents to attempt sign-ins at more than 2,250 organizations"
- Proposed: add "Most attempts failed" (Microsoft: "the majority of the targeting wasn't successful," `research_major_hacks` line 65).
- Evidence: evidence report lines 166, 168, 188 to 190, 225. Note on the Google item: the source says that its discovery "may have prevented its use." If Alyssa prefers the exact hedge, use "and Google says that it may have prevented the attack."
- Note: the slide already has 86 words (layout review). Cut the undergraduates bullet to make room. That bullet adds color and no evidence.

(d) "Public flaw counts"
- Current: "10 months of 2026 had 1.9 times the records of all of 2025" and "In 2025, attackers used the average flaw 7 days before its patch existed \srccite{(Mandiant, Mar 2026)}"
- Problem 1: the count is inflated by who assigns records. Google: records that mention "Linux Kernel" "alone generated approximately 5,000 CVEs between January 2026 and August 2026 with zero observed exploited in-the-wild zero-days." The data source of the figure notes that "the five busiest assigners supplied 7,638 of October's CVEs, 44.8%." This is item 8 of the skeptics' case, and it is absent from the deck.
- Problem 2: the Mandiant figure sits in the AI section. The evidence report says: "Mandiant links this to espionage groups hitting edge devices, not to AI." The data are from 2025, before Mythos Preview.
- Proposed: add a bullet after the 1.9 bullet: "Caution: about 5,000 of the 2026 records were Linux kernel flaws, and attackers used none of them as new flaws \srccite{(Google, Sep 30, 2026)}". Change the Mandiant bullet to: "In 2025, before these models, attackers used the average exploited flaw an estimated 7 days before its patch existed. Mandiant does not attribute this to AI \srccite{(Mandiant, Mar 2026)}"
- Evidence: evidence report lines 241, 245, 275, 326. Overlap: factcheck-ai-primary finding 2 covers "average flaw" and "estimated."

### S5. "Skeptics" omits the 2 strongest verified counterarguments and does not disclose who drafted the deck (substantive, confidence high on the omissions, medium on the best selection)

- Current slide: Google 0.23%; Mandiant quotation; VulnCheck 1.3% [verify]; Stenberg "marketing stunt" [verify]; "Anthropic sells these models, and much of the evidence comes from Anthropic".
- Comparison with section 6 of the evidence report (9 items):

| Item | On the slide? |
|---|---|
| 1. Exploitation has not outpaced disclosure (Google) [P-wf] | Yes |
| 2. AI-found flaws not exploited at unusual rates (VulnCheck) [S] | Yes, as a number. The slide omits Garrity's conclusion. |
| 3. Most breaches come from basic failures (Mandiant) [P] | Yes. The quotation describes 2025 (factcheck-ai-primary finding 3). |
| 4. AI agents that broke into real systems used weak passwords (Anthropic) [P]; Google's AI-built exploit needed valid credentials [P-wf] | No |
| 5. Marketing critique [S] | Yes (Stenberg only) |
| 6. Capability limits: no sandbox [P]; AISI on "well-defended systems" [S]; hallucinated credentials [P-wf] | No |
| 7. AI helps defenders, and patching works when done [P] | No (partly on "Hopeful version") |
| 8. CVE counts are inflated [P-wf], [P] | No |
| 9. Deadlines may be impractical [S] | No (not needed) |

- Problem: item 4 is the strongest argument for this audience. It is verified, it comes from Anthropic against Anthropic's interest, and it supports the deck's own advice in Section 4: even an AI model that breaks in takes the weak password first. Item 8 belongs on "Public flaw counts" (S4d). Item 6 belongs on the evidence slides (S4a, S4c). The Stenberg line is unverified and attacks the motive, not the evidence. The last bullet omits that an Anthropic model drafted the slides. `source_notes.tex` line 27 says that "the slide 'Skeptics' states this limit," and the audience does not get the source notes.
- Proposed slide (5 bullets; I did not count the words against the limit that the slide-rules review applies):
  - "Attacks are ``scaling in tandem with the overall vulnerability landscape rather than outpacing it.'' Attackers used 0.23\% of the flaws disclosed in 2026 \srccite{(Google, Sep 30, 2026)}"
  - "Attackers used 14 of 1,061 flaws that AI found (1.3\%) \srccite{(VulnCheck, Jul 2026)} \vfy"
  - "In 3 test accidents, Anthropic's models entered real systems with ``basic techniques, such as exploiting weak passwords'' \srccite{(Anthropic, Jul 30, 2026)}"
  - "Critics call the Mythos announcement marketing. The maintainer of curl: ``an amazingly successful marketing stunt'' \srccite{(Stenberg)} \vfy"
  - "Anthropic sells these models, most of the checked evidence comes from Anthropic, and an Anthropic model drafted these slides"
- Move the Mandiant quotation to "Entry methods in higher education" or to S7's proposed bullet, with "For 2025," in front (factcheck-ai-primary finding 3).
- Evidence: evidence report lines 24, 217 to 221, 319 to 326.

### S6. "Reasons for caution": 2 attributions hide who speaks, and the slide omits that the warnings came with product launches (substantive, confidence medium)

- Current: "Forbes called his April warning ``overblown'' \srccite{(Forbes, Apr 17, 2026)} \vfy"
- Problem: the research report says that the Forbes piece quotes "a Darktrace executive." Darktrace sells security products. The deck names the conflict of the 2 chief executives and should name the conflict of their critic also. I did not read the Forbes page and do not know whether "overblown" is the executive's word or the headline writer's word.
- Proposed: "A Forbes article that quotes an executive of Darktrace, a security company, called his April warning ``overblown'' \srccite{(Forbes, Apr 17, 2026)} \vfy"
- Current: "Both men sell the models, and both sell the defense. One outlet reported the criticism of an ``arms-dealer dynamic'' \srccite{(Security Boulevard)} \vfy"
- Proposed: "Both companies sell the models, and both sell defensive products. Amodei posted his warning on the day that Anthropic launched Mythos Preview. One outlet reported the criticism that OpenAI's position ``mirrors an arms-dealer dynamic'' \srccite{(Security Boulevard)} \vfy"
- Evidence: `research_altman_quotes` lines 139 and 143; evidence report line 347 ("the partner quotes on Anthropic's page were supplied for a product launch"); Amodei's post is dated April 7, the launch day of Mythos Preview and Glasswing. Overlap: factcheck-quotes S3 proposes the OpenAI attribution. My addition is the middle sentence and the Forbes line.
- The other 3 bullets (no builder named for the "defense shield"; agencies still say patch; no Amodei statement that patching fails) are the strongest items in the critics section, and I would keep them.

### S7. Main point 3 and its repeats overstate the reassuring claim; the deck omits the general data that point the other way (substantive, confidence high on the facts)

- Slides: "Main points" 3 (line 142), "Takeaways" 2 (line 760), "Takeaways: AI and software flaws" 3 (line 387), "Entry methods in higher education."
- Current: "Most break-ins at universities still start with a password or a person. We can fix those this week." and "So far, most real break-ins still use passwords and people."
- Problem: balance applies to the comforting claim also. The support is the Sophos survey: 27% + 23% = 50% of 95 ransomware victims, unverified. 50% is not "most," and ransomware is 1 kind of break-in. The deck omits 2 general figures: Mandiant [P]: "Exploits remained the most common initial infection vector for the sixth consecutive year, accounting for 32% of intrusions"; Verizon 2026 [S]: exploitation of vulnerabilities 31% of initial access, "the top vector for the first time." "We can fix those this week" also promises too much: the speaker's steps lower 1 person's risk and do not fix the university's.
- Proposed:
  - Main points 3: "About half of ransomware attacks on universities start with a stolen login or a phishing email. We can lower that risk this week."
  - Takeaways 2: "About half of ransomware attacks on universities still start with a stolen login or a phishing email."
  - Takeaways: AI and software flaws 3: "So far, attackers have used few of the flaws that AI found, and many break-ins still start with a login."
  - "Entry methods in higher education," new last bullet: "Across all sectors in 2025, software flaws were the most common entry method: 32\% of intrusions \srccite{(Mandiant, Mar 2026)}"
- Evidence: evidence report lines 283 to 284 and 289; `research_university_hacks` lines 378 and 432 ("Any claim about 'the most common method' from news reports alone is weak").
- Overlap: factcheck-ai-primary finding 3 and factcheck-universities raise the same facts. My point is that the omission is one-sided.

### S8. "Takeaways: AI and software flaws," arrow: no slide shows that the skeptics recommend anything (substantive, confidence medium)

- Current: "$\rightarrow$ Both camps recommend the same first steps."
- Problem: the line closes the contested topic with an agreement that the deck does not show. The research reports contain no recommendation from Google's analysts, VulnCheck, or Stenberg. They do contain Anthropic's advice (shorter patch cycles, multi-factor authentication, logging: [P]) and the agencies' advice to patch faster ([S]). 3.11 asks for "the objective the sides share," and this line is the right place for it, but it must name sides that the slides document.
- Proposed: "$\rightarrow$ Anthropic and the security agencies give the same first advice: update faster, and strengthen the sign-in."
- Evidence: evidence report line 70; "Reasons for caution," bullet 4. Overlap: 3 earlier reviews flagged the unclear "camps"; none checked the claim.

### S9. "Finding outpaces fixing": the 14% is a snapshot taken soon after the reports, and the same page gives the average patch time (substantive, confidence medium)

- Current: "Maintainers had patched 75 of 530 reported flaws (14\%) by May 22"
- Problem: Project Glasswing began on April 7. If the 530 reports began then, each report was less than 7 weeks old on May 22. The page does not say when Anthropic sent each report. The same page says: "(On average, a high- or critical-severity bug found by Mythos Preview takes two weeks to patch.)" The slide and its figure give the number that favors the claim and omit the number beside it.
- Proposed: "Maintainers had patched 75 of 530 reported flaws (14\%) by May 22, about 7 weeks after the project began. A patch took 2 weeks on average"
- Evidence: evidence report lines 65 and 66. I cannot say how the 2 numbers fit together (the average may cover only patched flaws); the page was not opened in this review. Alyssa should read the paragraph before she uses either wording.

## Minor findings

### M1. "Spread of capability": name who ran the test (minor, confidence high)
- Current: "GLM-5.3, a model from Zhipu AI in China that anyone can download, wrote exploits at a similar rate: 50 of 410 attempts, against 56 of 410 for Mythos Preview" and "Testers bypassed its safeguards 64\% to 100\% of the time"
- Proposed: "In Anthropic's test, GLM-5.3, a model from Zhipu AI in China that anyone can download, wrote exploits at a similar rate: 50 of 410 attempts, against 56 of 410 for Mythos Preview" and "Anthropic's testers bypassed its safeguards 64\% to 100\% of the time"
- Evidence: 3.3 (name the actor); a company tested a competitor.

### M2. "Takeaways: Altman and Amodei" 3: "Until then" depends on the 2-year forecast (minor, confidence medium)
- Current: "Until then, assume that some software we use has a flaw that an attacker knows."
- Proposed: "For now, assume that some software we use has a flaw that an attacker knows."

### M3. "Finding outpaces fixing": Microsoft is not a neutral party (minor, confidence medium)
- Current: "``Finding bugs and fixing them are drastically out of balance.'' \srccite{(Microsoft, Nov 11, 2026)}"
- Note: Microsoft is a Glasswing partner and sells AI security products. The quotation is still the best non-Anthropic support for main point 1, and the study used OpenAI models. Proposed spoken note, no slide change: "Microsoft ran this study with OpenAI's models, not Anthropic's."
- Evidence: evidence report lines 126 and 136 to 143.

### M4. "Claude Mythos Preview, April 7": the independent check is missing (minor, confidence medium)
- The strongest support for Anthropic's count is on no slide: 6 outside firms assessed 1,752 findings, and 90.6% were valid. This is Anthropic's report of the firms' work. Proposed bullet, if space allows: "6 outside firms checked 1,752 of the flaws: 90.6\% were real \srccite{(Anthropic, May 22, 2026)}"
- Reason: balance includes the best evidence for the claim, with its source named.

### M5. "Hopeful version": the optimistic claim is also a sales claim (minor, confidence low)
- No text change. Spoken note: the hopeful forecast and the warning come from the same seller.

### M6. Roadmap item 3 and section title "Altman and Amodei" (minor, confidence low)
- A section that carries 2 chief executives' names gives their statements the weight of evidence. Option: "What the AI companies say." I rate this low because the names are what the audience knows.

## Positions that I judged fair and would not change

- The 4 quotation slides: each quotation has a speaker, a date, and a flag.
- "Reasons for caution," bullets 2, 4, and 5.
- "Anthropic on timing": 3 attributed quotations, including the admission "we haven't yet achieved a sufficient reduction in cyber risk."
- "AI agents": Anthropic's own failure rate is stated ("about 1% of attacks succeeded").
- "Three levels of urgency": "The sort is a judgment."

## 3.11 structure, in brief

3.11 asks for 4 things after the 2 sides: the shared objective, the value judgment apart from the estimate, and the uncertainty sorted into knowable, unknown, and value-defined. The deck has the first in the arrow line (S8). A single line on "Takeaways: AI and software flaws" would supply the rest, for example in place of bullet 2: "Not yet known: whether attackers will use AI-found flaws faster than maintainers patch them. The 2026 data say not yet." I offer this as an option and not as a finding.
