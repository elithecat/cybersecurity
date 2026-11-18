language model claude-fable-5-2, prompt version v2, role: round2-writing-slides (round 2 check of the writing and slide rules, after the revision at commit b844915)

# Round 2 review: writing rules and slide rules

## Summary

- The revision resolves 29 of the 37 substantive findings in the 3 writing reports, the slide-rules report, and the checklist report. It resolves about half of the 24 substantive findings of the non-technical reader fully, and most of the others in part (see the table in Part 1).
- New or unresolved problems: 12 substantive, 14 minor.
- The searches for em dashes, causal ", so", causal "since", "percent" in words, and every entry of 3.6 found no error outside quotations.

## What I checked

- Rendered text: `pdftotext -layout` on `cybersecurity_2026_briefing_handout.pdf` (56 pages), `security_checklist.pdf`, and `source_notes.pdf`. I also read `README.md`.
- Rules: CLAUDE.md 3.2, 3.3, 3.6, 3.7, 3.8, 3.12, and Part 8.
- Pauses: a script counted `\item` and `\pause` in each of the 51 frames of `cybersecurity_2026_briefing.tex`. Every list has 1 pause before its first item and 1 after each item except the last. I found no error.
- Words per slide: a script counted the words in the rendered body of each slide, without the title, the footer, the citations, and the flags. The counts are approximate (about 3 words in either direction).
- README timing table: the slide counts (4, 8, 9, 9, 20, 4, 1, 1) match the deck and sum to 56. The minutes sum to 60.
- Labels: every slide label from A1 to C3 appears on the checklist with the same name. The section counts on the slides agree (6 universities on slide 12; 5 incidents on slide 8; 4 outside cases on slide 10).

## What I did not check

- I did not look at slide images. Another reviewer has the layout.
- I checked no fact against an outside source. Where a proposed text adds words, the evidence line names the research report that supports them.
- I do not know whether Brown's security office is part of OIT (finding 4).

## Part 1. Status of the round-1 substantive findings

### review_writing-hidden-actors (4 findings)

| Finding | Status |
|---|---|
| 1. "fake job interview that put malware" | Resolved (slide 10) |
| 2. "break-ins still use passwords and people" | Resolved (slide 30, new sentence) |
| 3. "an email, a call, or a video asks" | Resolved (slide 38 and checklist) |
| 4. "Restart when the device asks" | Resolved (slide 33) |

Table: status of the 4 substantive findings of the hidden-actors review.

### review_writing-mannered-prose (7 findings)

| Finding | Status |
|---|---|
| 1. "A vendor's breach can become our breach" | Resolved (slide 12) |
| 2. "Attackers hit at least 6 universities" | Resolved. The related minor item is not: slide 11 has "organizations that ransomware hit" (minor M1) |
| 3. Titles "Hopeful version," "Overrated advice" | Resolved on the slides. `source_notes.tex` line 100 still has "Hopeful version" (finding 2) |
| 4. Titles "Finding outpaces fixing," "Patches as instructions" | Resolved, also in the source notes |
| 5. "We can fix those this week" | Resolved (slide 3) |
| 6. "real break-ins," "Both camps" | Resolved (slide 30) |
| 7. "moves your trust" | Resolved (slide 47 and checklist) |

Table: status of the 7 substantive findings of the mannered-prose review.

### review_writing-banned-words (6 findings)

| Finding | Status |
|---|---|
| S1. 2 meanings of "patch" | Resolved. Slides 20 and 14 now say "install patches" and "after you install it." The verb "patch" has 1 meaning (the maintainer writes the repair) |
| S2. "attacks" for "exploits" | Resolved (slide 26; source notes) |
| S3. hack, break-in, breach, attack | Partly resolved. "Recent hacks" is settled. "Breach" remains on slides 46 and 48 (finding 5) |
| S4. login, sign-in, password | Resolved on the slides. The source notes keep "Stolen logins" (finding 2) |
| S5. "bugs" not defined | Resolved (slide 14) |
| S6. "fix those" | Resolved (slide 3) |

Table: status of the 6 substantive findings of the banned-words review.

### review_slide-rules (13 findings)

| Finding | Status |
|---|---|
| 1. Claude Mythos Preview, 79 words | Partly resolved: about 70 words (minor M2) |
| 2. Attackers with AI, 81 words | Not resolved: about 90 words (finding 10) |
| 3. Skeptics, 70 words | Not resolved: about 78 words (finding 10) |
| 4. Reasons for caution, 70 words | Not resolved: about 67 words and 6 bullets (finding 10) |
| 5. Three levels of urgency | Partly resolved. The slide has about 83 words. Section 4 density is settled. The names still differ from the slide titles (minor M3) |
| 6. A3. Passkeys, 2 ideas | Resolved (2 frames) |
| 7. A5, losses bullet | Resolved |
| 8. B1, note to the speaker | Resolved |
| 9. C1, 73 words | Settled (Section 4 density) |
| 10. C3, note to the speaker | Resolved for the note. See finding 9 for the pick |
| 11. AI agents, 74 words | Not resolved: about 89 words. Section 5 is outside the settled exception (minor M4) |
| 12. Universities, fall 2026, 6 bullets | Resolved (5 bullets) |
| 13. Questions?, file name | Resolved (blue placeholder) |

Table: status of the 13 substantive findings of the slide-rules review.

### review_checklist-handout (7 findings)

| Finding | Status |
|---|---|
| S1. "Old devices" in 2 levels | Resolved (B6 in both) |
| S2. 5 minutes against 2 minutes | Resolved (5 minutes in both, marked as our estimate) |
| S3. Flags differ | Resolved, except 1 flag: slide 44 flags "Lift the freeze a few days before," and the checklist does not (minor M5) |
| S4. Lock-out warning in level C | Resolved |
| S5. Missing verbs and definitions | Resolved |
| S6. Labels, order, total for level B | Resolved. 1 item has no label (finding 3) |
| S7. Order in "Account recovery" | Resolved (slide 40 and checklist) |

Table: status of the 7 substantive findings of the checklist review.

### review_audience-nontechnical (24 substantive findings)

| Finding | Status |
|---|---|
| 1.1 ransomware | Resolved |
| 1.3 phishing | Resolved |
| 1.5 slide "Other universities, fall 2026" | Partly resolved. The Denmark bullet still has no verb (finding 11) |
| 1.10 maintainers, open-source, partners | Mostly resolved. "Open-source" has no definition (minor M6) |
| 1.11 CISA, Mandiant, 2 hard sentences | Partly resolved. The sentences are clear now. CISA and Mandiant have no gloss (finding 6) |
| 1.13 Spread of capability | Not resolved (finding 7) |
| 1.14 Attackers with AI | Resolved, except "state-sponsored" (minor M6) |
| 1.18 Levels of urgency lists undefined terms | Not changed. I accept the slide as an agenda (8.2), because each term has its own slide |
| 1.19 two-factor, second step, only factor, NIST | Partly resolved (finding 6) |
| 1.21 NFC, register, FIDO | Resolved |
| 1.22 HTTPS, content blocker, extension | Partly resolved (finding 8) |
| 1.23 encryption, credit freeze, offline | Partly resolved. "Offline" and "encryption" have no gloss on slide 43 (minor M6) |
| 1.24 end-to-end encryption, iCloud+, VPN | Resolved |
| 1.25 AI agent, prompt injection | Resolved |
| 1.26 Coding agents | Partly resolved. "Container" and "API keys" have a gloss. "Open-source packages" does not (minor M6) |
| 2.1 Spread of capability, no conclusion | Partly resolved. Slide 30 states the conclusion. See finding 7 |
| 2.3 "Both camps" | Resolved |
| 2.6 C3, the VPN pick | Not resolved (finding 9) |
| 2.7 B2, 76% against "remove" | Resolved |
| 3.1 A1, no menu path | Not changed. Section 4 density is settled, and the checklist says "Menu names change with each software version" |
| 3.2 A2, main password | Resolved |
| 3.3 A3, Apple line | Resolved |
| 3.5 A5, habit 2 | Not resolved, and the revision added a new problem (finding 1) |
| 3.7 B1, no Google path | Not resolved (minor M7) |
| 3.8 B2 and B3, locations | Partly resolved. B3 has the location. B2 has no location for the backup codes (minor M7) |
| 3.9 B4 | Partly resolved (finding 8) |
| 3.10 B5 | Mostly resolved |
| 3.11 C1 and C2 | Resolved |
| 3.12 First hour | Partly resolved (finding 12) |

Table: status of the substantive findings of the non-technical reader. The table has more than 24 rows because it splits 2 findings.

## Part 2. New or unresolved substantive findings

### 1. A5. Habits, habit 2 (slide 38; checklist A5 Habit 2). New, and round-1 finding 3.5 unresolved. Confidence: high.

- Current: "Never paste a command, and never type a code, that a web page or an email gives you."
- Problem 1 (new): many sites send a sign-in code by email, and the user must type it. The rule forbids that correct action. The revision added "never type a code" for device-code phishing (review_urgency-sort-coverage, S7), in which the attacker's page shows a code that the victim did not request.
- Problem 2 (round 1, 3.5): a professor without a technical background does not know what "a command" is or where a person pastes it.
- Proposed (slide and checklist): "Never paste text that a web page tells you to copy into the Windows Run box or a terminal. Never enter a sign-in code that you did not request."
- Evidence: `research_protective_guidance_2026-11-12.md` line 82 ("paste a command into the Windows Run box or a terminal") and line 81 (the page shows a device code and asks the victim to type it). 3.12, one instruction in each sentence.

### 2. `source_notes.tex`: 4 slide names and 3 claims are from the first draft. Unresolved (mannered-prose finding 4 asked for this sync). Confidence: high.

- Line 92. Current: "Monday, November 9, 2026; Universities, fall 2026". Proposed: "Monday, November 9, 2026; Other universities, fall 2026".
- Line 96. Current: "Entry methods in higher education". Proposed: "Entry methods".
- Line 100. Current: "Amodei, April 7, 2026; Hopeful version". Proposed: "Amodei, April 7, 2026; Amodei on the opportunity".
- Line 103. Current: "B1 to B5". Proposed: "B1 to B6".
- Line 102. Current: "...Wall Street Journal 2023; FBI 2025 totals". Proposed: delete "; FBI 2025 totals". No slide from A1 to A5 has an FBI number now.
- Line 103. Current: "...carrier lock names; FBI SIM-swap count; browser setting names". Proposed: delete "FBI SIM-swap count;". Slide 41 has no count.
- Line 105. Current: "Hawaii Cancer Center counts; NCSC on prompt injection; CISA and NSA agent guide". Proposed: delete "NCSC on prompt injection;". Slide 53 has no NCSC statement.
- Line 131. Current: "Stolen logins on the Sophos slide: the source term is..." Proposed: "Stolen passwords on the slide ``Entry methods'': the source term is...".
- Add to Table 2 or to the "A1 to A5" row: "FBI advice on a code word (checklist only)", because the checklist flags that item with "[verify]".
- Evidence: the rendered slide titles on handout pages 7, 11, 19, and 44; `grep FBI cybersecurity_2026_briefing.tex` returns only the 2022 ad-blocker quote.

### 3. Checklist: the item "Code word" has no label and no slide. New. Confidence: medium.

- Current (level B, last item): "Code word. Agree on a code word with your family and your lab for urgent requests [verify]. 15 min". The introduction says: "The labels (A1, B2) match the slides."
- Proposed, option 1 (checklist only): "Code word (not on a slide). Agree on a code word with your family and your lab for urgent requests (FBI, Dec 2024) [verify]."
- Proposed, option 2: add to slide 38 under habit 3, "Agree on a code word with your family and your lab for urgent requests (FBI, Dec 2024) [verify]", and label the checklist item "A5. Code word." Level A then sums to 130 minutes, which is still about 2 hours.
- Evidence: `research_protective_guidance_2026-11-12.md` line 88 gives the FBI source.

### 4. "The IT security office" against "OIT" (slide 49; checklist; `source_notes.tex` line 123). Unresolved minor item of 2 round-1 reviews, in my assignment. Confidence: medium.

- Current (slide 49 and checklist): "Call the IT security office first, from another phone: [number]". Every other slide says "OIT" (slides 32, 33, 34, 43, 44, 52, 53).
- Proposed: "Call OIT first, from another phone: [security number]". Source notes line 123: "Brown's IT security phone number" → "the OIT phone number for security incidents".
- Evidence: 3.12, one word for each concept. A reader cannot tell whether the office is OIT. I do not know Brown's structure. If the security office is separate from OIT, name it once in a blue bracket instead.

### 5. "Breach" for "break-in" (slides 46 and 48). Unresolved part of banned-words S3. Confidence: medium.

- Slide 46. Current: "Benefit: a breach at 1 site exposes 1 alias". Proposed: "Benefit: a break-in at 1 site exposes 1 alias".
- Slide 48. Current: "Still change a password when Brown asks, and at once after a breach". Proposed: "Still change a password when Brown asks, and at once after a break-in at that site".
- Evidence: 3.12. The revision changed the other 3 uses of "breach."

### 6. Terms without a definition at first use: second sign-in step, the only factor, NIST, CISA, Mandiant. Unresolved parts of 1.11 and 1.19. Confidence: high for the gap, medium for the wording.

- Slide 9. Current: "Some accounts had no second sign-in step." Proposed: "Some accounts had no second sign-in step (a code or a prompt after the password)." The first draft had these words in the arrow line, and the revision removed them. Slide 35 names the step 26 slides later.
- Slide 34. Current: "NIST: at least 15 characters when the password is the only factor". Proposed: "NIST, the US standards agency: at least 15 characters when a password alone opens the account".
- Slide 11. Current: "(Mandiant, Mar 2026)". Proposed: "(Mandiant, Google's security firm, Mar 2026)". Slide 30 then has a known subject in "Mandiant ties most break-ins to basic failures."
- Slide 40, the first use of CISA. Current: "(CISA, Dec 2024)". Proposed: "(CISA, the US cybersecurity agency, Dec 2024)". Slide 53. Current: "CISA and NSA: use agents only for..." Proposed: "CISA and NSA (US security agencies): use agents only for...".
- Evidence: 3.10 rules 3 and 32 (cited in round 1). CISA is on 6 slides (40, 43, 44, 47, 53, 54), and 3 of them use it as the subject of a sentence.

### 7. Spread of capability (slide 27): the quote has no referent, and the slide has 2 words for 1 concept. Unresolved 1.13. Confidence: medium.

- Current: "“But those models have now arrived.” (Anthropic, Sep 29, 2026)". Proposed: "Anthropic, on capable models that anyone can download: “But those models have now arrived.” (Anthropic, Sep 29, 2026)".
- Current: "with filters on cybersecurity requests" (bullet 1) and "bypassed the safeguards of GLM-5.3" (bullet 4). Proposed bullet 1: "with safeguards on cybersecurity requests".
- Evidence: `research_amodei_mythos_2026-11-12.md` line 23 and line 159 (the sentence is about the open-weight model). `source_notes.tex` Table 1 says "safeguards" for both. I did not open the Anthropic page. The lead-in must match the sentence before the quote there.

### 8. B4. Browser (slide 42; checklist B4): "add-on" and "extension" name 1 object, and 1 sentence is a contrast for effect. Unresolved 3.9, and new. Confidence: medium.

- Current (slide): "One content blocker (blocks ads and trackers)." / "Privacy add-ons. Privacy Badger. Wirecutter's list: [confirm picks]" / "Few extensions." Proposed: "1 content blocker (an extension, or add-on, that blocks ads and trackers)." / "Optional privacy extension: Privacy Badger. Wirecutter's list: [picks]" / "Few extensions."
- Current (checklist): "Privacy add-on: Privacy Badger." Proposed: "Optional privacy extension: Privacy Badger."
- Current (slide): "Fake sites use HTTPS too. The setting protects the connection, not your judgment of the site". Proposed: "Fake sites use HTTPS too. Still check the address of the site before you sign in".
- Evidence: 3.12 (one word for each concept; the FBI quote on the slide says "extension"). 3.2: a setting cannot protect a judgment, and the sentence gives the reader no action. The proposed last sentence is general advice of mine, with no source in the research reports. Alyssa decides.

### 9. C3. Private Relay and VPNs (slide 47; checklist C3): the slide quotes "Do not use a personal ... VPN" and then gives a VPN pick. Unresolved 2.6. Confidence: high.

- Current (slide): "Use the Brown VPN for Brown resources. Wirecutter's VPN pick: [pick]". Current (checklist): "Wirecutter's pick: [pick]."
- Proposed (slide): "Use the Brown VPN for Brown resources. If you still want a commercial VPN for privacy, Wirecutter's pick: [pick]". Proposed (checklist): "If you still want a commercial VPN for privacy, Wirecutter's pick: [pick]."
- Evidence: slide 48 lists "A commercial VPN as protection from break-ins" under "Advice to drop." The proposed words add no fact.

### 10. Density in Sections 2 and 3 (slides 20, 28, 29). Unresolved slide-rules findings 2, 3, and 4. The settled exception covers Section 4 only. Confidence: medium.

- Slide 28 "Attackers with AI": about 90 words. Proposed: delete the bullet "July 2026: in a test, OpenAI models broke out of a sealed test environment ... This was a test accident, not an attack". The slide then has 1 idea (attackers) and about 62 words. The bullet itself says that the event is not an attack, and slide 29 already reports test accidents from the same source. Alternative: give the bullet its own frame, "Test accident, July 2026".
- Slide 29 "Skeptics": about 78 words. Proposed: delete the bullet "In 3 test accidents, Anthropic's own models entered real systems with “basic techniques, such as exploiting weak passwords”" if the July bullet stays on slide 28, or move the July bullet here in its place. Result: about 56 words.
- Slide 20 "Reasons for caution": 6 bullets and about 67 words. Proposed: join bullets 2 and 4 as "Critics: OpenAI's position “mirrors an arms-dealer dynamic” (Security Boulevard) [verify]. Altman did not say who builds the “defense shield” (Gear Live) [verify]". Result: 5 bullets and about 58 words.
- Evidence: 8.2 ("about 10 to 60 words"); 8.1 ("about 5 short bullets").

### 11. Counts of people without a verb (slides 52, 7, 8). Unresolved part of 1.5, and new for slide 52. Confidence: medium.

- Slide 52. Current: "University of Hawaii Cancer Center: about 1.2 million people, including 87,493 study participants". The bullet opens the slide "Lab data" and gives no year and no event. Proposed: "University of Hawaii Cancer Center, 2025: attackers stole files on about 1.2 million people, including 87,493 study participants".
- Slide 7. Current: "September: Technical University of Denmark, up to about 200,000 people, through a guest account". Proposed: "September: at Technical University of Denmark, attackers entered through a guest account. About 200,000 people may be affected".
- Slide 8. Current: "Columbia: 868,969 people". Proposed: "Columbia: an outsider reached data on 868,969 people".
- Evidence: 3.8 ("Give the unit and the denominator with every number"); `research_university_hacks_2026-11-12.md` lines 229 and 231 (Hawaii: files stolen, 31 August 2025), lines 95 to 97 (Denmark), lines 256 to 258 (Columbia). Keep the existing citations and flags.

### 12. First hour (slide 49; checklist): 1 step does not name the account or the action. Unresolved part of 3.12. Confidence: medium.

- Current: "On a different device, change the password, and sign out of all other sessions".
- Proposed: "On a different device, change the password of the affected account. Then sign out of all other devices in the security settings of that account".
- Evidence: 3.12 (one instruction in each sentence; no jargon word "sessions"). The blue bracket already asks Brown OIT to confirm the steps.

## Part 3. Minor findings (new or unresolved)

- M1. Slide 11. "Survey of 95 higher-education organizations that ransomware hit" → "Survey of 95 higher-education organizations that had a ransomware attack" (3.2, combat word; 3.3).
- M2. Slide 23, about 70 words. "Anthropic built an AI model and did not release it to the public" → "Anthropic did not release this model to the public".
- M3. Slide 32 against the titles and the takeaways: "Three habits" (slide 32), "A5. Habits" (title), "3 habits" (slides 50 and 55); "Two security keys" against "B1. Security keys"; "Browser settings" against "B4. Browser". Proposed for slide 32: "3 habits," "Security keys," "Browser."
- M4. Slides outside Section 4 with more than 75 words: 9 (about 83), 10 (about 76), 52 (about 88), 53 (about 89), 54 (about 90). Much of the added text is cautions that round 1 required. Alyssa decides whether the settled exception for Section 4 also covers Sections 1 and 5.
- M5. Checklist B6: add "[verify]" after "Lift it a few days before you apply for a loan or a card", as on slide 44.
- M6. No gloss: "malware" (slides 10, 36, 54; proposed on slide 10: "malware (malicious software)"), "open-source" (slides 24, 29, 54), "state-sponsored" (slide 28), "offline" (slide 43), "Sophos" (slide 11), "CVE" not spelled out (slide 25).
- M7. Slide 39 and checklist B1 say "register both at Apple and at Google" and give a path for Apple only. Slide 40 gives no location for the backup codes. I have no checked path to propose.
- M8. Numerals (3.8): "Three terms" (slide 14 title) → "Terms"; "one group has sent" (slide 9) → "1 group sent" (this also removes the present perfect, 3.12); "One content blocker" (slide 42) against "Install 1 content blocker" (checklist); README lines 7 to 9, "one page per click," "one page per slide," "one-page handout," against "1-page checklist" on slide 32.
- M9. Semicolons in slide citations (8.1): "(Apple; Google)" on slide 37 → "(Apple and Google)"; "(UK NCSC; CISA)" on slide 44 → "(UK NCSC and CISA)".
- M10. Slide 30. "Mandiant ties most break-ins to basic failures" → "Mandiant attributes most break-ins to basic failures" (slide 25 uses "attribute").
- M11. Slide 21. "say that the fixing takes months and might take years" → "say that the patching takes months and might take years" (slides 3 and 55 say "the patching").
- M12. Slide 2. "claims more than 1 million Social Security numbers" → "says that it stole more than 1 million Social Security numbers" (round-1 item 1.2, not changed).
- M13. Slide 16 title "Altman's remedy": "remedy" is a medical word (3.2). Proposed: "Altman's proposal" (round-1 minor item 8, not changed).
- M14. Slide 12. "The next 2 sections explain why that share may grow" is a comment about the text with a non-human subject (3.2, 3.3). Proposed: "AI may raise that share (Sections 2 and 3)."

## Reasoning

I ranked a finding as substantive when a reader can act wrongly (findings 1, 9, 12), cannot find the slide or the source that a document names (findings 2, 3), or cannot understand a sentence without the talk (findings 6, 7, 11). Findings 4, 5, and 8 are in the list of terms that the assignment names. Finding 10 repeats 3 round-1 findings that the settled decisions do not cover. I did not repeat findings on the settled items: "Recent hacks," the 3 slides C1 to C3, Section 4 density, and the 8pt checklist.
