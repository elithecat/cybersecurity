# Review: numbers and arithmetic

Language model claude-fable-5-2, prompt version v1, role: numbers-consistency (reviewer of every number and every piece of arithmetic across the slides, the checklist, the source notes, the README, and code/briefing_figures.R).

Date: 2026-11-12.

## What I checked

I read cybersecurity_2026_briefing.tex (all 54 frames), security_checklist.tex and its PDF text, source_notes.tex, README.md, code/briefing_figures.R, and CLAUDE.md section 3.8. I recomputed every sum, percentage, ratio, and count. I compared each number on the slides with the research reports in agent-reports/research/. I counted frames and clicks from cybersecurity_2026_briefing.nav.

I could not check any number against its original source page (network limits; settled). All comparisons below are internal: slide against checklist, source notes, README, R script, and research reports.

## Recomputations that hold

| Item | Recomputation | Result |
|---|---|---|
| "75 of 530 reported flaws (14%)" | 75 / 530 = 14.15% | holds; the R script prints 14 |
| "1.9 times the records" | 89,859 / 48,151 = 1.866 | holds as rounded (R script prints 1.87) |
| "50% of these attacks" (Sophos) | 27% + 23% = 50% | holds |
| "14 of 1,061 (1.3%)" | 14 / 1,061 = 1.32% | holds |
| GLM-5.3 "similar rate" | 50 / 410 = 12.2%; 56 / 410 = 13.7% | holds |
| Google 0.23% | 141 exploited (January to August 2026) / 0.0023 = about 61,300 disclosed; consistent with the monthly counts in the research report | consistent |
| "at least 6 universities between September and November 2026" | Vanderbilt, Munich, New Mexico, Copenhagen, Michigan State, Technical University of Denmark = 6; the research report lists more (Aarhus, UiT, Osaka, Bremen) | holds |
| "4 cases outside universities" | Binance, Oracle Health, Stryker, Denmark = 4 | holds |
| "3 habits" | A5 has 3 habit bullets and 1 statistic; checklist has Habit 1 to 3 | holds |
| Level A "about 2 hours" | 15 + 60 + 30 + 10 = 115 minutes | holds; matches source notes Table 3 |
| Roadmap, sections, main points | 5 roadmap items = 5 sections; 3 main points = 3 final takeaways | holds |
| Levels | A1 to A5, B1 to B5, C1 to C3 match the lists on "Three levels of urgency" | holds |
| Handout pages | 54 frames in the .nav file = 54 pages | holds |
| README minutes | 4 + 11 + 12 + 8 + 17 + 5 + 3 = 60 | holds |
| "Monday, November 9, 2026" | November 12, 2026 is a Thursday, so November 9 is a Monday | holds |
| Hawaii "about 1.2 million, including 87,493" | 87,493 + about 1.15 million = about 1.24 million | holds |
| FBI, Google 2019 (76%, 90%), NIST 15 characters, 99.22%, 971 complaints, 35 extensions and 2.6 million users, 8 of 21 patches, 181 against 2, 129,000, 2,250, 80 to 90% and 30 targets, 868,969, 525,000, 200,000, 19.9 million, 8.8 million, $6.3 billion, 11 accounts at 3 universities and about 6,000 addresses at 25 universities, about 170 packages, 7 days | each matches the research reports | consistent |
| Source notes against slides | every number in Table 1 and Table 2 matches the slide text; figure counts match the R script | consistent |

## Substantive findings

### S1. "Main points" (point 3), "Takeaways" (point 2): "Most" does not follow from 50%
- Current: "Most break-ins at universities still start with a password or a person." (Main points and final Takeaways)
- Problem: The deck's own evidence gives exactly half, not a majority. Sophos: 27% + 23% = 50% (slide "Entry methods in higher education"). Research tally: 7 of the 14 incidents with a stated method (research_university_hacks, Part 6(b)), and 7 of all 27. "Most" means more than 50%.
- Proposed: "About half of break-ins at universities still start with a password or a person." (Both slides. Main points keeps its second sentence, "We can fix those this week.")
- Evidence: slide arithmetic; research_university_hacks lines 417 to 432; CLAUDE.md 3.8 (denominator with every number).
- Confidence: high that 50% is not "most"; medium on the wording.

### S2. "Ivy League, 2025": "2 of these 4 cases"
- Current: "2 of these 4 cases started with a person. 1 started with a software flaw. Columbia did not disclose the entry method"
- Problem: The count uses bullets as the unit. Bullet 3 holds 2 separate incidents (Princeton, November 10; Harvard alumni office, November 18). By incident: Columbia, Penn, Princeton, Harvard alumni office, Oracle campaign = 5; person = 3 (Penn, Princeton, Harvard); flaw = 1; not disclosed = 1; 3 + 1 + 1 = 5.
- Proposed: "3 of these 5 cases started with a person. 1 started with a software flaw. Columbia did not disclose the entry method"
- Evidence: research_university_hacks entries 21 to 25 and Part 6(b) ("Deceiving a staff member by phone or impersonation | 3 | Princeton, Harvard alumni office, Penn"). The reviewer factcheck-universities reached the same count independently.
- Confidence: high.

### S3. "B3. Phone number lock" against the checklist: 2 minutes or 5 minutes
- Current (slide): "the lock takes about 2 minutes". Current (security_checklist.tex, line 41): "\mins{5 min}".
- Problem: The audience holds both documents. The 2 times differ by a factor of 2.5.
- Proposed (slide): "This attack is rare (971 complaints to the FBI in 2025), and the lock takes about 5 minutes". The checklist stays. (The level B sum on the checklist stays at 195 minutes.)
- Evidence: the 2 files; research_account_hardening line 308 gives "2 minutes" as the agent's own estimate, not a sourced number.
- Confidence: high on the conflict; either value can be the one that is kept.

### S4. README timing table: part 4 has 17 slides, not 16
- Current: "| 4. What to do in the meantime | 16 | 17 |"
- Problem: Section 4 has 17 frames: section slide, Three levels of urgency, A1 to A5, B1 to B5, C1 to C3, Overrated advice, Takeaways (1 + 1 + 5 + 5 + 3 + 1 + 1). The table's slide column sums to 53; the handout has 54 pages.
- Proposed: "| 4. What to do in the meantime | 17 | 17 |"
- Evidence: frame count in the .tex and in cybersecurity_2026_briefing.nav (54 frames; 4 + 8 + 10 + 8 + 17 + 5 + 2 = 54).
- Confidence: high.

### S5. "Public flaw counts": the comparison changes the period
- Current: "10 months of 2026 had 1.9 times the records of all of 2025"
- Problem: The arithmetic holds (1.87), but the comparison sets 10 months against 12 (CLAUDE.md 3.8: "Do not change the denominator within a comparison"). The research report holds the same-period number: "+126.7% on the same period of 2025", which is 2.3 times (January to October 2025 = about 39,600 records, back-computed; I did not see that count itself). Per month: 8,986 in 2026 against 4,013 in 2025 = 2.2 times.
- Proposed: "January to October 2026 had 2.3 times the records of the same months of 2025". The figure can keep its 2 bars, since their labels state the periods; or the script can replace the 2025 bar with January to October 2025 once someone reads that count from the tabulation.
- Evidence: research_ai_cyber_evidence line 238.
- Confidence: medium (the current sentence is true and states both periods; the change is for the rule and gives a stronger, like-for-like number).

## Minor findings

### M1. "Canvas during finals": date range
- Current: "April 29 to May 12, 2026: a group called ShinyHunters stole data from Instructure"
- Problem: The research records give April 29 (first detection), May 7 (defacement), and May 11 (agreement). May 12 appears only in a summary table (research_major_hacks line 25), with no event. The range describes the incident, not the theft. The agreement (May 11) precedes the stated end.
- Proposed: "Starting April 29, 2026, a group called ShinyHunters stole data from Instructure, the company that runs Canvas"
- Confidence: medium.

### M2. "Canvas during finals": unit of the 275 million
- Current: "275 million records". research_university_hacks line 189 says "records"; research_major_hacks lines 25 and 46 say "275 million people".
- Proposed: keep "[verify]"; confirm the unit at the source. No text change until then.
- Confidence: low (which unit is correct is unknown).

### M3. "Public flaw counts": no period on the federal deadline
- Current: "the median federal deadline to patch fell from 21 days to 3"
- Proposed: "the median federal deadline to patch fell from 21 days in 2025 to 3 days in 2026"
- Evidence: research_ai_cyber_evidence lines 258 to 263 (2024: 21; 2025: 21; 2026 to November 10: 3; 295 entries); CLAUDE.md 3.8 (period with every rate).
- Confidence: high.

### M4. "Skeptics": period of the 0.23%
- Current: "Attackers used 0.23% of the flaws disclosed in 2026 (Google, Sep 30, 2026)"
- Problem: The report covers January to August 2026.
- Proposed: "Attackers used 0.23% of the flaws disclosed from January to August 2026"
- Confidence: medium (Google's sentence itself says "in 2026").

### M5. "Entry methods in higher education": period of the survey
- Current: "(Sophos, State of Ransomware in Education 2026: 95 higher-education organizations hit by ransomware)"
- Proposed: "(Sophos, State of Ransomware in Education 2026: 95 higher-education organizations hit by ransomware in the 12 months before early 2026)"
- Evidence: research_university_hacks line 378 (survey January to March 2026; prior 12 months).
- Confidence: medium.

### M6. "Outside universities, 2026": Oracle Health intrusion was in 2025
- Current: title "Outside universities, 2026"; bullet "Oracle Health: records of 19.9 million patients"
- Problem: research_major_hacks line 29: intrusion January to April 2025; the 19.9 million total was reported October 2 (2026).
- Proposed: "Oracle Health (2025 break-in, total reported Oct 2, 2026): records of 19.9 million patients, copied with a stolen login"
- Confidence: medium.

### M7. source_notes.tex: "2 steps" with 3 boxes
- Current: "The process has 2 steps. Figure 1 shows them." The figure has 3 boxes (record, download and search, result).
- Proposed: "The process has 2 steps and 1 result. Figure 1 shows them."
- Confidence: medium.

### M8. source_notes.tex: 2 unflagged numbers are in neither table
- "A3. Passkeys": 99.22% (Microsoft Research, 2023) and "A5. Three habits": "thousands of devices per day" (Microsoft, Aug 2025) carry no "[verify]" on the slides, but Table 1 has no row for them. The research report marks both "[fetched]" (research_protective_guidance lines 53 and 82).
- Proposed: add 2 rows to Table 1, after someone repeats the match on www.microsoft.com (the host opens).
- Confidence: high on the gap.

### M9. Level of "old devices" differs between slide and checklist
- Slide "A1. Updates" (level A): "Replace devices that no longer receive updates". Checklist: the item "Old devices" is in level B.
- Proposed: move the checklist item to level A, without a time, or move the slide bullet to a level B slide.
- Confidence: medium (level, not a number; reported because the level lists otherwise match).

### M10. Spelled-out counts (CLAUDE.md 3.8)
- Titles and labels: "Three terms", "Three levels of urgency", "A5. Three habits", "Three habits." and "Two security keys." (on "Three levels of urgency"), "Two security keys." (checklist). Elsewhere the deck writes "3 levels", "3 habits", "Buy 2 keys".
- Proposed: "3 terms", "3 levels of urgency", "A5. 3 habits", "2 security keys".
- Confidence: medium (titles can be an exception; Alyssa decides).

### M11. README minutes against clicks
- Clicks per part from the .nav file: 12, 42, 50, 29, 89, 24, 5 (total 251). Seconds per click under the plan: 20.0, 15.7, 14.4, 16.6, 11.5, 12.5, 36.0. Part 4 is the tightest: 89 clicks in 17 minutes.
- Proposed: no text change; a note for rehearsal. The README already says that the minutes are a plan.
- Confidence: high on the counts.

## Reasoning and limits

- I treated a number as correct if it matched the research reports and its arithmetic held. I did not open any source page.
- S1 is the finding with the most weight, because the sentence is the third main point and the second final takeaway, and the deck's only quantitative basis for it is 50%.
- I did not recheck the research agents' own computations (the CISA medians, the "+126.7%").
- I did not edit any file except this report.
