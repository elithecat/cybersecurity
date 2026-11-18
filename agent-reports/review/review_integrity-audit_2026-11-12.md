# Review: integrity audit

- Language model: claude-fable-5-2
- Prompt version: v1
- Role: integrity-audit (CLAUDE.md section 1.1, "never invent or change facts")
- Date: 2026-11-12

## Method

1. I read the slide source (`cybersecurity_2026_briefing.tex`), the checklist (`security_checklist.tex`), `source_notes.tex`, and all 7 research reports in `agent-reports/research/` in full.
2. I traced each factual claim on the slides and the checklist to a line of a research report.
3. I downloaded 20 source pages from the 3 reachable hosts (www.anthropic.com, cloud.google.com, www.microsoft.com) and searched their text for the quoted words and numbers. The pages are in the session scratchpad, not in the project.
4. I did not edit any project file except this report.

## What I confirmed on the source pages today

Every row of Table 1 in `source_notes.tex` matches its page: the Glasswing quote and the 27-year and 16-year flaws; 181 exploits against 2; 75 of 530 and "slow down"; "approximately 50 partners"; 129,000 and "fewer than 50% of partners disclosed patched numbers"; the Microsoft "drastically out of balance" sentence; Mandiant "-7 days" and the "vast majority" sentence; 21 Windows patches, 8 exploits, about $2,000, and the "would have finished" sentence; Fable 5 (Jun 9, cybersecurity requests go to another model); GLM-5.3 (50 and 56 of 410, 64% to 100%, "But those models have now arrived."); 80-90% and "roughly thirty"; "that we believe was developed with AI"; the Hugging Face sentence; "more than 2,250 tenants"; the 2 undergraduates in an "espionage operation"; "scaling in tandem" and 0.23%; all 3 quotes on "Anthropic on timing"; "A 1% attack success rate" and "No browser agent is immune to prompt injection".

I also confirmed 3 claims that Table 1 does not list:
- 99.22% (A3): "MFA reduces the risk of compromise by 99.22% across the entire population" (https://www.microsoft.com/en-us/research/publication/how-effective-is-multifactor-authentication-at-deterring-cyberattacks/).
- ClickFix (A5): "campaigns targeting thousands of enterprise and end-user devices globally every day" (Microsoft, Aug 21, 2025).
- Payroll pirate (slide "Paycheck theft"): the page opens at https://www.microsoft.com/en-us/security/blog/2025/10/09/investigating-targeted-payroll-pirate-attacks-affecting-us-universities/ (published Oct 9, 2025).

## What I could not check

- Every claim that rests on a blocked site (news outlets, CISA, NCSC, NIST, FBI, FTC, Apple, Google support, x.com, YouTube). For these I compared the slide only with the research report.
- The chart values on Anthropic's prompt-injection page (the report gives 1.4%; the page text gives "A 1% attack success rate").
- Whether github.com/elithecat/claude_resources is public (the audience needs it for the slide "Coding agents").
- The CVE counts (the research agent downloaded them; I did not).

## Substantive findings

### S1. Slide "Monday, November 9, 2026": wrong month for the Michigan State claim
- Current: "The same group claimed Michigan State University in October (The Record) [verify]"
- Proposed: "The same group listed Michigan State University on its leak site in November (The Record) [verify]"
- Evidence: research_university_hacks, entry 3: "On 1 October MSU emailed all users ... In November the BYOD gang listed MSU on its leak site." The incident was in October. The claim was in November.
- Confidence: high.

### S2. Slides "Main points" (point 3), "Takeaways" (point 2), "Takeaways: recent hacks" (bullet 3): "most" has no support
- Current: "Most break-ins at universities still start with a password or a person."
- Proposed (both slides): "Half of ransomware attacks on universities start with a stolen login or a phishing email."
- Current (Takeaways: recent hacks): "Where universities named the entry method, the method was most often a login or a person."
- Proposed: "In 7 of the 14 cases with a named entry method, the method was a login or a person."
- Evidence: Sophos gives 27% + 23% = 50% of 95 organizations, which is half. The news count in research_university_hacks, Part 6(b), is 7 of 14 named methods (7 of 27 in all), and the report says: "Any claim about 'the most common method' from news reports alone is weak."
- Confidence: high.

### S3. Slide "Takeaways: AI and software flaws": bullet contradicts the cited source
- Current: "So far, most real break-ins still use passwords and people."
- Proposed: "So far, Mandiant ties most break-ins to 'fundamental human and systemic failures,' not to AI."
- Evidence: the same Mandiant page (downloaded today) says "Exploits remained the most common initial infection vector for the sixth consecutive year, accounting for 32% of intrusions", with voice phishing at 11% and email phishing at 6%. research_ai_cyber_evidence, section 4.4, adds Verizon 2026: exploitation 31%, "the top vector for the first time" (search summary).
- Confidence: high.

### S4. Slides "Main points" (point 2) and "Takeaways" (point 1): Altman did not say "years"
- Current: "The heads of OpenAI and Anthropic say that the fixing will take years."
- Proposed: "The head of Anthropic says that the fixing will take 'months and years.' The head of OpenAI says that patching will not be enough."
- Current (Takeaways 1): "... and the builders of the models say that the fixing will take years."
- Proposed: "... and the head of Anthropic says that the fixing will take 'months and years.'"
- Evidence: research_altman_quotes has no Altman statement about years. His reported words are "I no longer think we're going to be able to just patch all the bugs." Amodei's reported words are "the work of months and years" (research_amodei_mythos, 1.1, post 4). The slide also drops "months."
- Confidence: high.

### S5. Slide "B3. Phone number lock": a number that a report marks "do not cite"; an unlabeled estimate; conflict with the checklist
- Current: "This attack is rare (971 complaints to the FBI in 2025), and the lock takes about 2 minutes [verify]"
- Proposed: "FBI complaint counts for this attack are low [971 in 2025: confirm in the IC3 report], and the lock takes about 5 minutes (our estimate)"
- Evidence: research_protective_guidance, section 7: "the search returned 971, 982 and 1,075 complaints ... without clear year labels. [unconfirmed]; do not cite until checked against the PDF." research_account_hardening gives 971 for 2025 from secondary summaries. "2 minutes" is that report's own judgment (section 12, item 5). The checklist gives 5 minutes for the same step.
- Confidence: high.

### S6. Slide "C3. Private Relay and VPNs": quotation differs from the report
- Current: CISA's guidance for phones: "Do not use a personal VPN"
- Proposed: CISA's guidance for phones: "Do not use a personal virtual private network (VPN)."
- Evidence: research_protective_guidance, section 9, and research_account_hardening, section 8, both give the longer wording. I could not open cisa.gov.
- Confidence: high for the mismatch with the reports.

### S7. Slide "Reasons for caution": the criticism was of OpenAI only, and the quoted phrase is cut
- Current: "Both men sell the models, and both sell the defense. One outlet reported the criticism of an 'arms-dealer dynamic' (Security Boulevard) [verify]"
- Proposed: "Both companies sell the models, and both sell defensive tools. One outlet reported that, in the view of observers, OpenAI's position 'mirrors an arms-dealer dynamic' (Security Boulevard) [verify]"
- Evidence: research_altman_quotes, critics item 2: observers caution that "OpenAI being both the source ... and the provider of automated defence 'mirrors an arms-dealer dynamic' (phrase as reported in search summary)." No report records this criticism of Amodei. The same report says that Security Boulevard may be aggregator or machine-written coverage.
- Confidence: medium to high.

### S8. Slide "C1. Strictest settings": the lock-out sentence overstates the Google case and has no flag
- Current: "Cost: if you lose your keys and your devices, Google and Apple cannot let you back in"
- Proposed: "Cost: if you lose your devices and your recovery methods, Apple cannot recover the data. Google's recovery is slower [verify]"
- Evidence: research_account_hardening, section 2: at Google "a lost key can only be replaced with a backup key or a slower recovery path." Section 4: "Apple cannot help recover the data if you lose the devices and the recovery methods."
- Confidence: medium to high.

### S9. Slide "Canvas during finals": 2 statements are stronger than the report
- Current: "Instructure gave no count"
- Proposed: "We found no count from Instructure"
- Evidence: research_major_hacks, record 1: "I found no count confirmed by Instructure." The agent did not read Instructure's page.
- Current: "Brown was among the Canvas customers with exposed data [verify]"
- Proposed: "Brown's chief information officer said that the exposed data may include names, emails, student ID numbers, and Canvas messages (Brown Daily Herald) [verify]"
- Evidence: research_university_hacks, entry 20: "exposed data may include."
- Also: the 2 reports disagree on the unit of the attacker's claim ("275 million records" in research_university_hacks; "275 million people" in research_major_hacks). Check the unit when the pages open.
- Confidence: medium.

### S10. Slide "Ivy League, 2025": the Oracle bullet picks 1 of 2 options in the report, and the count line does not match the bullets
- Current: "a flaw in Oracle business software that Oracle had not yet fixed (SecurityWeek) [verify]"
- Proposed: "a flaw in Oracle business software (CVE-2025-61882) (SecurityWeek) [verify]"
- Evidence: research_university_hacks, entry 23: "Unpatched or zero-day vendor software." The report does not say which.
- Current: "2 of these 4 cases started with a person. 1 started with a software flaw. Columbia did not disclose the entry method"
- Proposed: "3 of these 5 cases started with a person. 1 started with a software flaw. Columbia did not disclose the entry method"
- Evidence: Princeton (entry 24) and Harvard (entry 25) are separate incidents. The report's own table counts 3 cases of deception (Princeton, Harvard, Penn).
- Also: the bullet cites the Harvard Crimson for Princeton. The report's source for Princeton is eSecurity Planet.
- Confidence: medium to high.

### S11. Slide "Paycheck theft": the flag is not needed, and the text differs from the page
- Current: "(Microsoft, October 2025) [verify]" and "They compromised 11 accounts at 3 universities, and they targeted about 6,000 addresses at 25 universities" and "A code from a text message or an app did not stop this attack"
- Proposed: "(Microsoft, Oct 9, 2025)" with no flag; "They used 11 compromised accounts at 3 universities to send phishing emails to nearly 6,000 addresses at 25 universities"; "Some accounts had no second sign-in step. For the others, a code from a text message or an app did not stop the attack"
- Evidence: the page (downloaded today): "Since March 2025, we've observed 11 successfully compromised accounts at three universities that were used to send phishing emails to nearly 6,000 email accounts across 25 universities ... In multiple instances, compromised accounts did not have MFA enabled. In other cases, users were tricked into disclosing MFA codes via AiTM phishing links."
- Then move the row from Table 2 to Table 1 of `source_notes.tex`.
- Confidence: high.

### S12. Slide "Attackers with AI": 1 sentence is not on the cited page and has no flag
- Current: "No person directed them (Anthropic, Jul 30, 2026)"
- Proposed: "OpenAI said that no person directed them [verify]"
- Evidence: Anthropic's page says only that the models "had broken out of an isolated test environment" and went on "to access the production infrastructure of Hugging Face." The statement about no human attacker comes from research_major_hacks, record 4 ("according to OpenAI"), which is a search summary.
- Confidence: medium.

### S13. Slide "Public flaw counts": the Mandiant bullet changes the meaning, and the figure's source line names the wrong source with no flag
- Current: "In 2025, attackers used the average flaw 7 days before its patch existed (Mandiant, Mar 2026)"
- Proposed: "In 2025, the mean time to exploit was an estimated 7 days before the patch (Mandiant, Mar 2026)"
- Evidence: the page: "the mean time to exploit vulnerabilities dropped to an estimated -7 days." The mean covers exploited flaws, not all flaws, and the page says "estimated."
- Current: "(National Vulnerability Database, Nov 1, 2026)"
- Proposed: "(NVD counts, tabulated by J. Gamblin, Nov 1, 2026) [verify]"
- Evidence: research_ai_cyber_evidence, section 4.1, and `source_notes.tex` ("we did not download them again"; the counts are in Table 2, unchecked). By the rule in Figure 1 of the source notes, an unchecked claim carries the flag. The bullet "10 months of 2026 had 1.9 times the records" needs the same flag.
- Confidence: medium to high.

### S14. Slide "Takeaways: AI and software flaws": 2 lines are the drafter's synthesis
- Current: "Attackers now have models with similar skill."
- Proposed: "A model with similar skill is now free for anyone to download."
- Evidence: the reports show that GLM-5.3 is open-weight. No report shows an attacker who used it. Anthropic's September report (research_ai_cyber_evidence, 3.3): "None of the misuse cases involved the use of Claude Fable or Mythos-class models, with the exception of one illicit distillation case."
- Current: "Both camps recommend the same first steps."
- Proposed: "Our reading: both views lead to the same first steps."
- Evidence: no report records what the skeptics recommend.
- Confidence: medium.

### S15. Slide "Reasons for caution": an unchecked negative claim has no source and no flag
- Current: "Altman did not say who builds the 'defense shield'"
- Proposed: "One outlet noted that Altman did not say who builds the 'defense shield' (Gear Live) [verify]"
- Evidence: research_altman_quotes, critics item 3 (paraphrase of Gear Live). No one in this project has seen the video.
- Confidence: medium.

## Minor findings

1. "Monday, November 9, 2026", bullet 2. Current: "Campus computers played the ransom threat aloud". Proposed: "Campus computers reportedly played the gang's audio message". Evidence: the report says "reportedly ... (The Register, citing the student paper)". Confidence: high.
2. Same slide, bullet 4, "Vanderbilt has not confirmed that claim": add "[verify]" (search summary only). Confidence: high.
3. "Universities, fall 2026", Munich. Current: "reports reuse of stolen portal passwords (TUM)". Proposed: "attackers stole portal passwords and used them against the campus management system (TUM) [verify]". "Reuse" reads as password reuse by users. The Nov 9 date comes from The Register's URL. Confidence: medium.
4. Same slide, Copenhagen: Oct 20 is the detection date (disclosure Oct 23). The "configuration error" is "per secondary reporting" that the report does not name, so the BleepingComputer citation is not established. Confidence: medium.
5. Same slide, Michigan State: the quote "potential credential compromise" is MSU's wording. The report does not say that The Record printed it. Proposed citation: "(MSU, via The Record)". Confidence: medium.
6. Same slide, Technical University of Denmark: the report says "potentially affected" and gives the guest account "as relayed by NordiskPost". Proposed: "up to about 200,000 people, through a guest account (DTU, via NordiskPost)". Confidence: medium.
7. "Canvas during finals", bullet 1: "April 29 to May 12" comes only from the table in research_major_hacks. The record gives detection on April 29, defacement on May 7, and the agreement on May 11. Proposed: "From April 29, 2026: a group called ShinyHunters stole data from Instructure ...". Confidence: medium.
8. "Outside universities, 2026", Oracle Health: the break-in was January to April 2025, and the total was reported on Oct 2, 2026. The report says "people". Proposed: "records of 19.9 million people, copied in 2025 with a stolen login (total reported Oct 2026)". Confidence: high.
9. Same slide, Stryker: the report says "Some employees reported that personal devices ... were wiped". Proposed: "and, by employee reports, some personal phones". Confidence: medium.
10. "Finding outpaces fixing". Current: "Anthropic has no total for patches". Proposed: "Anthropic gave no total for patches". The page gives none; it does not say that Anthropic has none. Confidence: high.
11. "Spread of capability": September 29 is the date of Anthropic's analysis, not of the model's release (CAISI assessed the model on Sept 17). Proposed start: "September: GLM-5.3 ...". Confidence: high.
12. "Attackers with AI": Microsoft says "more than 2,250 tenants". Proposed: "at more than 2,250 customer environments". Confidence: medium.
13. "Skeptics": VulnCheck counted "publicly attributed AI-assisted discoveries". Proposed: "14 of 1,061 flaws that AI helped to find". The Stenberg quote is "reportedly" in the report, with no URL of his own. Proposed citation: "(Stenberg, as reported)". Confidence: medium.
14. "Reasons for caution", Forbes: the report cites a contributor article's headline. Proposed: "A Forbes contributor called his April warning 'overblown'". Confidence: medium.
15. "Altman's remedy": the report records a second wording ("to sort of using the same technology for sort of a new kind of defense shield"). The first quote slide notes its variant; this slide does not. Proposed small line: "Another version adds 'sort of' twice." Confidence: medium.
16. "A2. Password manager": the Wirecutter picks come from podcast show notes only. B1 and C3 use a blue bracket for Wirecutter picks; A2 uses "[verify]". Proposed: "Wirecutter picks [confirm: 1Password, and Bitwarden as the free option]". Confidence: medium.
17. "A3. Passkeys", Apple line: the report gives this setup for passkeys on other sites. For the Apple Account itself the report says that Apple assigns a passkey automatically, "[unconfirmed for 2026]". The slide reads as a step for the Apple Account. Proposed: "Apple devices: turn on two-factor authentication and iCloud Keychain to save passkeys ...". Confidence: medium.
18. "A4. Phone passcode": "Use at least 6 digits ... (Apple)". The 6-digit recommendation is Google's; Apple says that 6 digits is the default and that a custom alphanumeric code is the most secure. Proposed citation: "(Apple, Google)". Confidence: medium.
19. "A5. Three habits". Current: "This attack reaches thousands of devices per day". Proposed: "These campaigns target thousands of devices per day". Evidence: the page, as quoted above. Confidence: high.
20. "B1. Security keys": "Wirecutter has a 2026 guide" rests on show notes; add "[verify]". Confidence: medium.
21. "B5", backups: CISA supports "offline" and "test". The option "university storage that keeps versions" comes from NCSC and the agent ("[unconfirmed as a quoted recommendation]"). Proposed citation: "(CISA, NCSC)". Confidence: medium.
22. Unlabeled advice from the drafter or the agents ("general practice; no source fetched"): "Relaunch the browser when it shows an update button" (A1); "Cover the screen" (A4); "After the breaches in Section 1, assume that your Social Security number is public" (B5); the 4 advice bullets on "Lab data"; "out of prompts" on "Coding agents" (the report says "code and notebooks"). Proposed: add a Table 4 to `source_notes.tex`, "Advice that is ours, with no single source", and list these. For B5, proposed text: "Many of the breaches in Section 1 included Social Security numbers. Treat yours as exposed." Confidence: medium.
23. "AI agents": the report gives 1.4% (Opus 4.5, adaptive attacker, 100 attempts per environment); the page text gives "A 1% attack success rate". "About 1%" is acceptable. Record the 1.4% in the source notes. Confidence: medium.
24. Checklist: 6 items carry no "[verify]" although the matching slide bullet does: phone passcode "at least 6 digits"; Verizon and T-Mobile lock names (the flag follows AT&T only); backups; credit freeze; old devices; "A commercial VPN moves your trust to the VPN company". Proposed: add the flag to each. Confidence: high.
25. `source_notes.tex`, Table 1: add rows for the 99.22% study and the ClickFix count, which the slides show without a flag (both confirmed today, URLs above). research_account_hardening says of the "99.2%" figure "do not print"; the page confirms 99.22%, so no flag is needed. Confidence: high.

## Flags that are not needed

- "Paycheck theft" (S11): the Microsoft page opens.
- No other "[verify]" flag can be removed today; the other sources are blocked.
