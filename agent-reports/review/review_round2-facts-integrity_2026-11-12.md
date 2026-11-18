# Review, round 2: facts and integrity

- Language model: claude-fable-5-2
- Prompt version: v2
- Role: round2-facts-integrity
- Date: 2026-11-12
- Deck state reviewed: commit b844915 (56 slides)

## 1. Method

1. I read the "Substantive" sections of 8 round-1 reports: integrity-audit, factcheck-universities, factcheck-ai-primary, factcheck-quotes, factcheck-level-b, factcheck-level-c, source-notes-audit, balance-and-conflict.
2. I read the full revised slide source, `security_checklist.tex`, and `source_notes.tex`.
3. I downloaded today all 20 pages in Table 1 of `source_notes.tex` (anthropic.com, cloud.google.com, microsoft.com, raw.githubusercontent.com). I searched each page for the exact quoted words and numbers on the slides, and I read the surrounding text.
4. For claims with "[verify]", I compared the slide with the lines of the research reports.
5. I compared the checklist with the slides item by item, and Tables 1 to 3 of the source notes with the slides.

### What I confirmed today (no change needed)

- Every quotation and number in Table 1 is on its page word for word. This includes the new or changed items: Mandiant "32% of intrusions" and "estimated -7 days"; Microsoft payroll ("11 ... three universities ... nearly 6,000 ... 25 universities", "did not have MFA enabled", phishing-resistant methods such as passkeys); Microsoft Research "99.22%"; ClickFix "campaigns targeting thousands of enterprise and end-user devices globally every day"; Anthropic "basic techniques, such as exploiting weak passwords" (3 incidents); "still requires further work"; GLM-5.3 50 of 410 and 56 of 410, 64% to 100%.
- CVE counts: `ytd_summary.json` (generated 2026-11-01) gives 89,859 and 39,639. 89,859 / 39,639 = 2.27, so "2.3 times" is correct.
- All publication dates in the slide citations match the pages.
- The Altman and Amodei quotations match the research reports word for word (altman_quotes lines 41 and 52; amodei_mythos lines 40, 42, 44).
- Checklist times: level A sums to 115 minutes ("about 2 hours"), level B to 220 minutes ("about 4 hours"). The 5-minute figure on B3 now matches the checklist.

### What I could not check

- Every page behind a "[verify]" flag (news sites, cisa.gov, nist.gov, ftc.gov, x.com, youtube.com, apple.com, google.com support pages, sophos.com).
- Whether the tabulation by J. Gamblin matches the National Vulnerability Database. The source notes state this limit.

## 2. Status of the round-1 substantive findings

No file records a decision to decline a finding, so I found no finding "declined with a visible reason."

### integrity-audit
| Finding | Status |
|---|---|
| S1 Michigan State month | Resolved |
| S2 "most" (main point 3, takeaways) | Resolved ("about half") |
| S3 "most real break-ins still use passwords and people" | Partly. See finding 4 below ("So far") |
| S4 Altman and "years" | Resolved |
| S5 B3: 971, 2 minutes | Partly. The number is gone and the estimate has a bracket. "This attack is rare" has no flag. See finding 8 |
| S6 CISA VPN quotation | Resolved (matches the reports; still flagged) |
| S7 "arms-dealer dynamic" | Resolved |
| S8 C1 lock-out sentence | Resolved |
| S9 Canvas: "no count", Brown | Resolved |
| S10 Ivy: Oracle bullet, count | Resolved. The Princeton citation still names the Harvard Crimson (minor) |
| S11 Paycheck theft | Resolved; I confirmed the page |
| S12 "No person directed them" | Resolved (sentence removed) |
| S13 Mandiant bullet; figure source | Resolved; I confirmed the counts |
| S14 "Attackers now have models"; "Both camps" | Resolved |
| S15 "defense shield" claim | Resolved |

### factcheck-universities
| Finding | Status |
|---|---|
| S1 "2 of these 4" | Resolved |
| S2 Michigan State date | Resolved |
| S3 Canvas dates and attribution | Resolved. "(Instructure)" still follows the ShinyHunters sentence (minor) |
| S4 "reached an agreement" | Resolved |
| S5 Technical University of Denmark, 200,000 | Partly. "up to about" added. The citation still names only DTU for the guest account (minor) |
| S6 "most often a login or a person" | Resolved |

### factcheck-ai-primary
| Finding | Status |
|---|---|
| 1 "the average flaw" | Resolved |
| 2 Hugging Face item | Resolved |
| 3 Mandiant quotation and takeaway | Partly. "Skeptics" is fixed. The takeaway keeps "So far". See finding 4 |
| 4 "September 29"; "similar rate" | Resolved |
| 5 "8 complete attacks" | Resolved |

### factcheck-quotes
S1, S2, S3, S4: all resolved.

### factcheck-level-b
1 (order of B2 bullets): resolved. 2 (B5 backups and CISA): resolved.

### factcheck-level-c
S1 (C1): resolved. S2 (CISA quotation and audience): resolved. S3 ("entry methods that attackers use most"): resolved.

### source-notes-audit
| Finding | Status |
|---|---|
| S1 fourth kind of claim | Resolved in the overview and in Figure 1. The notes say "No table lists them" |
| S2 99.22% | Resolved |
| S3 "thousands of devices per day" | Resolved |
| S4 "No person directed them" | Resolved |
| S5 CVE counts | Resolved |
| S6 Paycheck theft | Resolved |
| S7 unflagged claims from blocked sources | Partly. Items 1, 2, 4, 5, 7, 8, 10, 11 are resolved. Items 3, 6, 9 remain. See finding 8 |
| S8 "Both camps" | Resolved |

### balance-and-conflict
| Finding | Status |
|---|---|
| S1 one position for both men | Resolved |
| S2 "about 2 years" | Resolved |
| S3 "Attackers now have models" | Resolved (the sentence "We found no report of an attack with it" was not added) |
| S4 limits on the evidence slides | Partly. (b) and the July item are resolved. The limits in (a), (c), and (d) are still absent. See findings 5 and 6 |
| S5 "Skeptics" | Partly. The weak-password item is in. The count-inflation item is not (finding 5). The slide does not say that an Anthropic model drafted the deck; Alyssa should decide |
| S6 "Reasons for caution" | Resolved, but 2 of the new bullets have no flag. See finding 1 |
| S7 main point 3 | Resolved |
| S8 arrow line | Resolved |
| S9 14% snapshot | Partly. "still early in the 90-day window" is in. The 2-week average is not. I accept this |

## 3. New or unresolved substantive findings

### 1. "Reasons for caution", bullets 1 and 3: 2 new claims rest partly on blocked sources and have no flag (new; confidence high)
- Current: "Both companies sell the models, and both sell defensive products" and "Amodei posted his warning on the day that Anthropic announced its new model"
- Problem: I confirmed Anthropic's half of bullet 1 today (anthropic.com/news/anthropic-cyber-mission names "Claude Security" among "defensive tools-including our own"). OpenAI's half comes from a secondary summary (research_ai_cyber_evidence line 124, label [S]). In bullet 3, the model's date (April 7) is checked, and the date of the post comes from a search index (the slide "Amodei, April 7, 2026" carries the flag for it). Neither bullet is in Table 1 or Table 2.
- Proposed: "Both companies sell the models, and both sell defensive products \vfy" and "Amodei posted his warning on the day that Anthropic announced its new model \vfy". In Table 2, row "Reasons for caution", add: "OpenAI's defensive product (Codex Security); the date of Amodei's post".
- Evidence: Figure 1 of the source notes ("A blocked page always leads to the flag").

### 2. "AI agents", bullet 3: "an attacker can try many times" is not on the page, and the page's test already gave the attacker many tries (new; confidence medium)
- Current: "Anthropic tested its own browser agent. About 1\% of attacks succeeded with safeguards on, and an attacker can try many times. ``No browser agent is immune''"
- Problem: the page (downloaded today) says: "An adaptive attacker is given 100 attempts per environment." and "A 1% attack success rate-while a significant improvement-still represents meaningful risk." The added clause tells the listener to multiply the 1% by the number of tries. The page does not say that, and its 1% comes from a test with 100 tries per environment. Table 1 does not list the clause.
- Proposed: "Anthropic tested its own browser agent against an attacker with 100 tries per test. About 1\% of attacks succeeded with safeguards on. ``No browser agent is immune''"
- Evidence: https://www.anthropic.com/research/prompt-injection-defenses

### 3. "Public flaw counts", bullet 4: a negative claim about Mandiant has no row in Table 1 (new; confidence medium)
- Current: "Mandiant does not attribute that number to AI"
- Problem: the slide shows no flag, so the claim counts as checked, but Table 1 has no row for it. The page gives no cause for the -7 days in terms of AI. On the same page, a separate passage says: "we do not consider 2025 to be the year where breaches were the direct result of AI."
- Proposed slide text: "On the same page: ``we do not consider 2025 to be the year where breaches were the direct result of AI''". Proposed addition to the Table 1 row for M-Trends: "``we do not consider 2025 to be the year where breaches were the direct result of AI''".
- Evidence: https://cloud.google.com/blog/topics/threat-intelligence/m-trends-2026

### 4. "Section 3 takeaways", bullet 3: "So far" extends a statement about 2025 to fall 2026 (unresolved: factcheck-ai-primary 3; integrity-audit S3; confidence high)
- Current: "So far, Mandiant ties most break-ins to basic failures, not to AI."
- Problem: the Mandiant report covers 2025 and appeared in March 2026, before Mythos Preview. The slide "Skeptics" now says "For 2025". The takeaway does not.
- Proposed: "For 2025, Mandiant tied most break-ins to basic failures, not to AI."

### 5. "Public flaw counts": Google's caution about the record count is still absent (unresolved: balance S4(d) and S5 item 8; confidence high)
- Current: "January to October 2026 had 2.3 times the records of the same months of 2025"
- Problem: the Google page that the deck cites on "Skeptics" says that record counts "can inflate baseline figures; for instance, vulnerabilities with a description containing "Linux Kernel" alone generated approximately 5,000 CVEs between January 2026 and August 2026 with zero observed exploited in-the-wild zero-days." The slide gives the count that supports the alarm and omits the checked caution.
- Proposed new bullet after the 2.3 bullet: "Google's caution: automatic record assignment inflates the count. About 5,000 records from January to August 2026 name the Linux kernel \srccite{(Google, Sep 30, 2026)}". Add the sentence to the Table 1 row for that page.
- Evidence: https://cloud.google.com/blog/topics/threat-intelligence/vulnerability-discovery-and-exploitation-trends-in-the-ai-era

### 6. "Claude Mythos Preview, April 7" and "Attackers with AI": 4 limits that the cited pages print are still absent (unresolved: balance S4(a) and S4(c); confidence high; I confirmed each sentence today)
- Current: "In a test on Firefox, the model wrote 181 working exploits."
  Proposed: "In a test on Firefox without the browser's sandbox, the model wrote 181 working exploits."
  Page: "these exploits target a testing harness mimicking a Firefox 147 content process, without the browser's process sandbox or other defense-in-depth mitigations."
- Current: "... used AI for 80--90\% of a spying campaign against roughly 30 targets"
  Proposed: "... against roughly 30 targets, and ``succeeded in a small number of cases''"
- Current: "Google found the first exploit for an unpatched flaw ``that we believe was developed with AI''"
  Proposed: add "The exploit needed a valid password first". Page: "it requires valid user credentials in the first place."
- Current: "... to attempt sign-ins at more than 2,250 organizations"
  Proposed: add "Most attempts failed". Page: "While the majority of the targeting wasn't successful, Storm-0940 achieved privileged cloud persistence at many organizations".
- If the slide has no room for all 4, keep the first and the last.

### 7. "Section 1 takeaways", bullet 2: the Oracle case was not a break-in at a vendor (unresolved: integrity-audit M11, now stated more strongly; confidence medium)
- Current: "A break-in at a vendor exposed university data (Canvas, Oracle software)."
- Problem: research_university_hacks, entry 23: an extortion group "exploited a flaw in Oracle's E-Business Suite" that the universities ran. No one broke in at Oracle. (The Oracle Health case on "Outside universities" is a different event.)
- Proposed: "A break-in at a vendor (Canvas) and a flaw in vendor software (Oracle) exposed university data."

### 8. Four statements of fact from blocked sources still have no flag (partly resolved: source-notes S7 items 3, 6, 9; integrity-audit S5; confidence medium)
- "Section 1 takeaways": "At least 6 universities reported security incidents between September and November 2026." Every one of the 6 is a flagged claim. Proposed: add "\vfy" before the period.
- "B3. Phone number lock": "This attack is rare, and ..." The only support is the FBI count that 1 report marks "do not cite until checked." Proposed: "This attack is rare \vfy, and the lock takes about 5 minutes \fillin{our estimate}". Table 2 already lists "FBI SIM-swap count."
- "A2. Password manager": "Built in: Apple Passwords, Google Password Manager". Proposed: add "\vfy" (slide and checklist).
- "B4. Browser": "Privacy Badger." Proposed: "Privacy Badger \vfy" (slide and checklist).
- Alternative for the last 2: name product recommendations as part of kind 4 ("our advice") in the overview of the source notes.

### 9. `source_notes.tex`, Table 2: the table no longer matches the slides (new; confidence high)
- Stale slide titles. "Universities, fall 2026" is now "Other universities, fall 2026". "Entry methods in higher education" is now "Entry methods". "Hopeful version" is now "Amodei on the opportunity". "B1 to B5" should be "B1 to B6".
- Claims that the slides no longer contain. Row "A1 to A5": "FBI 2025 totals". Row "Lab data; AI agents; Coding agents": "NCSC on prompt injection". Proposed: delete both. Keep "FBI SIM-swap count" only if finding 8 is accepted.
- Flagged claims that no row names. Proposed additions:
  - Row "Canvas during finals": "ShinyHunters' claim; the message on sign-in pages; rescheduled exams".
  - Row "Ivy League, 2025": "the count of 3 of 5 incidents".
  - Row "B1 to B6": "Apple lock-out with security keys; Google FIDO keys; recovery contacts and backup codes; Google Security Checkup; FileVault and BitLocker; the time to lift a credit freeze; NCSC and CISA on devices without updates".
  - Row "C1 to C3; Advice to drop": "NIST on scheduled password changes".
  - New row "Checklist only": "FBI advice on a code word (December 2024); the menu path for Advanced Data Protection" with reports `research_protective_guidance` and `research_account_hardening`.

## 4. Checklist against slides

- Every step on slides A1 to C3 appears on the checklist with the same wording and the same flags, except the items below.
- The checklist step "Code word" is not on any slide. Round 1 (urgency-sort-coverage S8) proposed this as an option, so I do not count it as a problem. It needs a Table 2 entry (finding 9).
- Not on the checklist (minor): "Return old Brown-owned devices to OIT" (B6); the bracket for the password manager that OIT approves (A2); "Relaunch the browser" (A1).

## 5. Minor items that remain (one line each; no new analysis)

- "Ivy League, 2025": the Princeton source is eSecurity Planet, not the Harvard Crimson.
- "Other universities": the guest-account detail came through NordiskPost.
- "Spread of capability": the page says "safeguards that mean queries on some topics" go to another model; the slide says "filters on cybersecurity requests". "Testers" were Anthropic.
- "B2" and "C1": Google's recovery contacts are not available to accounts in the Advanced Protection Program (research_account_hardening line 108).
- "B6": the report says that a freeze lifts within 1 hour online; the slide says "a few days before."

## 6. Reasoning notes

- I rated a finding substantive when a slide states a fact that a checked page or a research report does not support, when a checked page prints a limit that changes how a listener reads the number, or when the source notes misstate the status of a claim.
- I did not edit any file other than this report.
