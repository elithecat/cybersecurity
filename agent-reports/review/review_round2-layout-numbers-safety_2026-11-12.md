Language model claude-fable-5-2, prompt version v2, role: round2-layout-numbers-safety (round 2 review of layout, numbers, and safety cautions).

# Round 2 review: layout, numbers, and safety cautions, 2026-11-12

Reviewed: commit b844915 of /home/user/setup, folder cybersecurity_briefing/ (56 slides).

## Result

10 substantive findings (3 new layout or consistency problems, 2 new safety or accuracy problems, 5 round-1 findings that the revision left open). 8 minor points are listed at the end without detail. All 4 targets compile with 0 errors and 0 overfull or underfull boxes. The R script reproduces both committed figures pixel for pixel. Every number that I recomputed holds.

## What I checked, and how

- Read the "Substantive" sections of the 8 round-1 reports named in the assignment, and compared each finding with the revised .tex files.
- Copied the folder to a scratch folder (/tmp/claude-0/-home-user-Claude-Resources/a1d93863-c675-507d-bc75-982ff8361d3f/scratchpad/r2lns/b) and ran the 5 README commands there. Nothing in the repository was changed.
- Rendered all 56 handout pages, the 1 checklist page, and the 5 source-notes pages to PNG and looked at each (contact sheets at 60 dpi, plus pages 25, 42, and 54 and both figures at higher resolution).
- Measured the lowest text on each slide with `pdftotext -bbox-layout`, and searched every page for a split citation or a lone "[verify]".
- Recomputed the numbers listed under "Recomputations."
- Downloaded 3 pages to check 3 claims: `ytd_summary.json` and `post.txt` from raw.githubusercontent.com/jgamblin/monthlyCVEStats, and www.anthropic.com/research/mythos-preview.

## What I could not check

- Any "[verify]" claim whose source is on a blocked site (Apple, Google support, CISA, FTC, news sites).
- Speaking time. Finding 2 scales a round-1 model estimate by word counts; nobody has rehearsed the talk.
- Brown OIT practice (instrument computers, first-hour steps). These rest on general practice.

## Build and render results

| Target | Errors | Overfull or underfull boxes | Pages |
|---|---|---|---|
| cybersecurity_2026_briefing.pdf | 0 | 0 | 267 |
| cybersecurity_2026_briefing_handout.pdf | 0 | 0 | 56 |
| security_checklist.pdf | 0 | 0 | 1 |
| source_notes.pdf | 0 | 0 | 5 |

Table: results of the README build commands in the scratch copy. The text of each rebuilt PDF is identical to the committed PDF. The only warning is hyperref's "Option pdfauthor has already been used" in the 2 beamer builds, which has no visible effect.

- `Rscript code/briefing_figures.R` prints "Patched share, Figure 1: 14 %" and "Ratio, Figure 2: 2.27". Both regenerated PDFs render to the same pixels as the committed PDFs (150 dpi comparison). Both embed Libertinus Sans.
- No citation is split across lines, and no "[verify]" stands alone on a line. A complete citation on its own line occurs on 20 slides, which round 1 accepted.
- No text reaches the footline. The lowest body text is at y = 247 of 272 pt (B4. Browser), 246 (Skeptics), and 245 (Coding agents); the footline starts near y = 260.
- The checklist fills about 5/6 of its page. The source notes have no overflow.

The 5 most crowded slides (rendered lines, counting a citation on its own line; words without "[verify]" flags):

| Slide | Lines | Words |
|---|---|---|
| Coding agents (54) | 13 | 99 |
| B4. Browser (42) | 13 | 92 |
| Skeptics (29) | 13 | 90 |
| C1. Strictest settings (45) | 13 | 86 |
| Attackers with AI (28) | 12 | 107 |

Table: the 5 most crowded slides of the handout, with page numbers in parentheses. B4 and C1 are in Section 4, where the density is a settled decision. Finding 10 covers "Attackers with AI."

## Recomputations (all hold)

- README table: slides 4 + 8 + 9 + 9 + 20 + 4 + 1 + 1 = 56; minutes 4 + 9 + 8 + 10 + 17 + 4 + 1 + 7 = 60. I counted the frames of each section in the .tex and the counts match (Section 4: section slide, Levels, A1, A2, A3, A3 setup, A4, A5, B1 to B6, C1 to C3, Advice to drop, First hour, takeaways = 20).
- "3 of these 5 incidents": Columbia, Penn, Princeton, Harvard alumni office, Oracle software = 5; person = Penn, Princeton, Harvard = 3; flaw = 1; not disclosed = 1.
- 75 / 530 = 14.2%, shown as 14%.
- 89,859 / 39,639 = 2.27, shown as 2.3. Both counts match `ytd_summary.json` as downloaded today (generated 2026-11-01).
- "About half": 27% + 23% = 50%.
- Level A on the checklist: 15 + 60 + 30 + 10 = 115 minutes ("about 2 hours"). Level B: 45 + 30 + 5 + 15 + 60 + 20 + 30 + 15 = 220 minutes, or 3 hours 40 minutes ("about 4 hours").
- "At least 6 universities" between September and November 2026: Vanderbilt, Munich, New Mexico, Copenhagen, Michigan State, Technical University of Denmark = 6.
- "4 cases outside universities": Binance, Oracle Health, Stryker, Denmark = 4.
- Levels of urgency slide: 5 items in A, 6 in B, 3 in C, which match A1 to A5, B1 to B6, and C1 to C3. The B3 time is 5 minutes on both the slide and the checklist.
- November 9, 2026 is a Monday.

## Status of the round-1 substantive findings

"Resolved" means that the revision removes the problem, though not always with the proposed words. Settled decisions are marked "settled."

| Report | Finding | Status |
|---|---|---|
| layout-visual | 1 figure text size | Resolved, but see finding 1 (new clipping) |
| layout-visual | 2 split citations, lone flags | Resolved |
| layout-visual | 3 crowded slides | Mythos slide resolved (9 lines). "Attackers with AI" unresolved: finding 10 |
| figures-code | S1 text size, font | Resolved |
| figures-code | S2 12 months against 10 | Resolved |
| figures-code | S3 source line | Resolved |
| figures-code | S4 assigner caveat | Unresolved: finding 4 |
| numbers-consistency | S1 "most" | Resolved |
| numbers-consistency | S2 "2 of these 4" | Resolved |
| numbers-consistency | S3 2 or 5 minutes | Resolved |
| numbers-consistency | S4 README slide count | Resolved |
| numbers-consistency | S5 period change | Resolved |
| harm-and-copyedit | R1 text codes before backups | Resolved |
| harm-and-copyedit | R2 Apple key lock-out | Resolved (slide and checklist) |
| harm-and-copyedit | R3 C1 recovery set-up | Resolved for Apple. The conflict between Advanced Protection and Recovery Contacts is not stated (minor) |
| harm-and-copyedit | R4 lift the freeze | Resolved |
| harm-and-copyedit | R5 recovery key, study data | Resolved |
| harm-and-copyedit | R6 retention rules | Resolved |
| harm-and-copyedit | R7 instrument computers | Lab data slide and checklist resolved. A1 unresolved: finding 6 |
| harm-and-copyedit | R8 first hour | Resolved |
| harm-and-copyedit | R9 habit 1 exception | Resolved |
| harm-and-copyedit | R10 main password | Resolved |
| harm-and-copyedit | R11 "wait 7 days" | Resolved |
| harm-and-copyedit | F1 Michigan State | Resolved |
| harm-and-copyedit | F2 Brown | Resolved |
| harm-and-copyedit | F3 "reached an agreement" | Resolved in the way that factcheck-universities S4 proposed (the words are Instructure's). The flag stays |
| harm-and-copyedit | F4 Vanderbilt, "hit" | Takeaway resolved. Slide 2 still limits the non-confirmation to "the claim" (minor) |
| audience-university-it | S1 scope | Resolved |
| audience-university-it | S2 Brown password | Resolved |
| audience-university-it | S3 scheduled changes | Resolved |
| audience-university-it | S4 managed updates, old devices | Resolved |
| audience-university-it | S5 extensions | Covered only by the scope sentence; "One content blocker" is still followed by a second add-on (minor) |
| audience-university-it | S6 encryption on managed computer | Resolved |
| audience-university-it | S7 offline copy of research data | Resolved |
| audience-university-it | S8 C1 on university accounts | Resolved ("For personal accounts") |
| audience-university-it | S9 fallbacks on Brown account | Covered by the scope sentence |
| audience-university-it | S10 report | Resolved |
| audience-university-it | S11 first hour | Resolved (call first; the notification bullet is gone) |
| audience-university-it | S12 data levels, AI tools | Resolved |
| audience-security-expert | S1 7 days population | Resolved |
| audience-security-expert | S2 "most," Mandiant 32% | Resolved |
| audience-security-expert | S3 exploit definition | Resolved ("zero-day" was not added; the deck no longer needs it) |
| audience-security-expert | S4 181 exploits, sandbox | Unresolved: finding 3 |
| audience-security-expert | S5 "8 complete attacks" | Resolved |
| audience-security-expert | S6 14% snapshot | Slide resolved. "Main points" 1 and final "Takeaways" 1 lack the qualifier that "Section 3 takeaways" has (minor) |
| audience-security-expert | S7 GLM-5.3 | Resolved |
| audience-security-expert | S8 attackers' conditions | (b) resolved. (a) "a small number succeeded" not added (minor) |
| audience-security-expert | S9 passkey definition, 99.22% | Resolved |
| audience-security-expert | S10 limits of passkeys | Resolved |
| audience-security-expert | S11 habit 1 and the fake page | Partly: the passkey slide covers the fake page; no habit does (minor) |
| audience-security-expert | S12 recovery order | Resolved within B2. See finding 5 for the order of B1 and B2 |
| audience-security-expert | S13 Private Relay, CISA audience | Resolved |
| audience-security-expert | S14 HTTPS limit | Resolved |
| audience-security-expert | S15 agents, 1%, container | Resolved |
| structure-timing | S1 order of sections | Settled |
| structure-timing | S2 README counts, question time | Counts resolved. Time unresolved: finding 2 |
| structure-timing | S3 2 skeptic slides | Not merged; a content decision (not reported) |
| structure-timing | S4 level C slides | Settled |
| structure-timing | S5 checklist announced early | Resolved |
| structure-timing | S6 bridge to flaws | Resolved |
| structure-timing | S7 opening order | Resolved |
| structure-timing | S8 First hour placement | Resolved |
| urgency-sort-coverage | S1 old devices level | Resolved |
| urgency-sort-coverage | S2 no-passkey step | Resolved |
| urgency-sort-coverage | S3 carrier lock level | Settled |
| urgency-sort-coverage | S4 steps for strictest settings | Lockdown Mode path added. Advanced Protection has no step: finding 9 |
| urgency-sort-coverage | S5 Private Relay path | Resolved |
| urgency-sort-coverage | S6 Wirecutter placeholder, Safari | Placeholder resolved; Safari not named (minor) |
| urgency-sort-coverage | S7 device codes, passkey lures | Device codes resolved; lure caution not added (minor) |
| urgency-sort-coverage | S8 code word | Resolved on the checklist only |

Table: status of each substantive finding in the 8 round-1 reports after commit b844915.

## Substantive findings (new or unresolved)

### 1. "Public flaw counts": the subtitle of the figure is cut off (new; confidence high)

- Where: `figures/cve_counts.pdf`; `code/briefing_figures.R` line 53.
- Current: the figure prints "U.S. National Vulnerability Data". The word "Database" loses its last 4 letters at the right edge. `pdftotext` on the figure returns the same clipped text, and handout page 25 shows it. The cause is the round-1 change to a 2.6-inch figure with a 10pt subtitle.
- Proposed (tested in a scratch copy; the full text shows on 2 lines and nothing else moves): `subtitle = "U.S. National\nVulnerability Database") +`
- Evidence: render of the committed figure and of handout page 25; CLAUDE.md Part 4 (check each rendered figure).

### 2. README timing plan: Section 4 grew by 37% in words and 3 slides, and its 17 minutes did not change (new; confidence medium)

- Where: README.md, "Timing plan."
- Current: "| 4. What to do in the meantime | 20 | 17 |" and "| Questions | 1 | 7 |".
- Evidence: words in the .tex without citations and flags, first draft (commit 18ddfc0) against this draft: whole deck 2,645 against 3,215 (+22%); Section 4, 937 against 1,284 (+37%). The structure-timing reviewer's middle estimate for the first draft was 47.3 minutes in total and 16.4 minutes for Section 4. Scaled by words, the middle estimate is now about 57 minutes of speaking and about 22 minutes for Section 4. The plan allows 53 minutes of speaking. The high case in round 1 was 65 minutes, before the growth.
- Proposed table rows (sum 60): Opening 3; Section 1, 8; Section 2, 7; Section 3, 9; Section 4, 22; Section 5, 4; Takeaways 1; Questions 6.
- Proposed last sentences of the caption, in place of "One reviewer estimated 34 to 65 minutes of speaking time for the first draft, which had 54 slides.": "One reviewer estimated 34 to 65 minutes of speaking time for the first draft (54 slides, about 2,600 words). This draft has about 3,200 words, so the middle estimate is about 57 minutes. Rehearse with a timer. If Section 4 runs past 22 minutes, show C1 to C3 for 20 seconds each and refer the audience to the checklist."
- This keeps the settled decisions (3 level C slides, dense Section 4) and changes only the plan.

### 3. "Claude Mythos Preview, April 7": the 181 exploits ran without the browser's sandbox (unresolved, security-expert S4; confidence high)

- Current: "In a test on Firefox, the model wrote 181 working exploits. The earlier model wrote 2"
- Proposed: "In a test on Firefox's JavaScript engine, with the browser's sandbox removed, the model wrote 181 working exploits. The earlier model wrote 2"
- Evidence: I downloaded www.anthropic.com/research/mythos-preview today. Footnote 1: "these exploits target a testing harness mimicking a Firefox 147 content process, without the browser's process sandbox or other defense-in-depth mitigations." The slide has 9 lines, so the added words fit.

### 4. "Public flaw counts": no caveat that a few filers produce much of the rise (unresolved, figures-code S4; confidence medium to high)

- Current: "January to October 2026 had 2.3 times the records of the same months of 2025". The last bullet ("Mandiant does not attribute that number to AI") covers only the 7-day number.
- Proposed (same bullet, 2 sentences): "January to October 2026 had 2.3 times the records of the same months of 2025. In October, 5 organizations filed 45\% of the records"
- Proposed row for Table 1 of `source_notes.tex` (append to the "Public flaw counts" row): "the five busiest assigners supplied 7,638 of October's 17,060 records (44.8\%); file outputs/2026/post.txt".
- Evidence: `post.txt` in the same tabulation, downloaded today: "Some of that is who is publishing rather than what is breaking: the five busiest assigners supplied 7,638 of October's CVEs, 44.8%". 7,638 / 17,060 = 44.8%. The right column has 11 lines now and would have 13; if that is too many, drop "on average" and the word "estimated" cannot go, so cut the first bullet to "A CVE record: the public catalog entry for 1 flaw".

### 5. B1 and B2: the checklist tells the reader to register security keys before the recovery set-up (new; confidence medium)

- Where: `security_checklist.tex` lines 26 and 39 to 40; slides "B1. Security keys" and "B2. Account recovery."
- Current (checklist introduction): "do the steps of each level from top to bottom". B1 then says "If you lose every key and every trusted device, Apple cannot let you back in", and the recovery step ("First, print the backup codes, and add a recovery contact") comes in B2.
- Harm: a reader who follows the order adds keys at Apple, where the keys replace the 6-digit codes, before any recovery method exists. Round 1 fixed the order inside B2 but not between B1 and B2. The slide "C1. Strictest settings" already uses the right pattern ("Set a recovery contact or a recovery key first").
- Proposed (checklist B1, new first sentence after the label): "Do the first sentence of B2 before this step."
- Proposed (slide B1, bullet 2): "First set up account recovery (next slide). Then buy 2 keys, register both, and keep 1 at home"
- Alternative with the same effect: exchange the labels, so that B1 is "Account recovery" (backup codes and recovery contact), B2 is "Two security keys," and the sentence "Then remove text-message codes, once 2 other methods work" moves to the end of the keys step. This also changes the "Levels of urgency" slide.
- Evidence: internal order of the 2 documents; research_account_hardening line 73 (permanent lock-out at Apple). I could not open Apple's page to check whether a recovery contact works for an account with security keys, so the claim keeps "[verify]".

### 6. "A1. Updates": "Do not postpone them" contradicts "Lab data" for instrument computers (partly unresolved, harm-and-copyedit R7; confidence medium)

- Current (A1): "On a Brown-owned computer, OIT sends the updates. Do not postpone them". Current (Lab data): "Tell OIT about instrument computers that run old systems. Do not update or disconnect them yourself".
- Problem: an instrument computer is a Brown-owned computer, and slide A1 comes 19 slides before the exception.
- Proposed (A1, bullet 4): "On a Brown-owned computer, OIT sends the updates. Do not postpone them. Exception: a computer that runs a lab instrument (ask OIT first)"
- Proposed (checklist A1): "Turn on automatic updates on the laptop, the phone, and the browser. Restart today. Exception: a computer that runs a lab instrument (see the lab section)."
- Evidence: internal conflict. No research report covers instrument computers; Brown OIT must confirm.

### 7. `source_notes.tex`, Table 2: 3 slide titles, 1 label, and 3 claims do not match the revised deck, and 3 flagged claims have no row (new; confidence high)

- Current line 92: "Monday, November 9, 2026; Universities, fall 2026". Proposed: "Monday, November 9, 2026; Other universities, fall 2026".
- Current line 96: "Entry methods in higher education". Proposed: "Entry methods".
- Current line 100: "Amodei, April 7, 2026; Hopeful version". Proposed: "Amodei, April 7, 2026; Amodei on the opportunity".
- Current line 102: "... Wall Street Journal 2023; FBI 2025 totals". The deck has no FBI totals. Proposed: "NCSC update advice; Wirecutter password manager picks (third-party show notes only); NIST length of 15 characters; Google and Apple menu paths; passcode length (Apple; Google); Wall Street Journal 2023".
- Current line 103: "B1 to B5 & ... carrier lock names; FBI SIM-swap count; ... CISA backups; FTC credit freeze". The deck has slide B6 and no SIM-swap count. Proposed: "B1 to B6 & Apple security key path and lock-out; Google statement on recovery factors; backup codes and recovery contacts; CISA advice on text messages; Google 2019 percentages; carrier lock names; browser setting names; FBI ad-blocker advice; extension takeover counts; CISA backups; FileVault and BitLocker; FTC credit freeze; NCSC and CISA on old devices".
- Current line 104: add "NIST on scheduled password changes" before "FTC on public Wi-Fi".
- Current line 105: "Hawaii Cancer Center counts; NCSC on prompt injection; ...". The deck has no NCSC claim on prompt injection. Proposed: "Hawaii Cancer Center counts; CISA and NSA agent guide; package malware (about 170 packages); CISA 7-day advice".
- Proposed new last row: "Checklist only & FBI advice to agree on a code word & \texttt{research\_\allowbreak protective\_\allowbreak guidance}".
- Evidence: frame titles in the .tex; the checklist states that the source notes list the status of each claim.

### 8. "Section 1 takeaways": "A break-in at a vendor" does not describe the Oracle cases (new; confidence medium)

- Current: "A break-in at a vendor exposed university data (Canvas, Oracle software)."
- Problem: the slide "Ivy League, 2025" says "a flaw in Oracle business software," and research_university_hacks entry 23 says that a group exploited a flaw in Oracle's E-Business Suite and stole data from the organizations that ran it. No report describes a break-in at Oracle for these 3 universities. (Oracle Health on "Outside universities" was a break-in at a vendor, but that case is not a university.)
- Proposed: "Vendors exposed university data: a break-in at the company behind Canvas, and a flaw in Oracle software."
- Evidence: research_university_hacks lines 275 to 277.

### 9. "C1. Strictest settings" and checklist C1: Google Advanced Protection has no step (unresolved, urgency-sort-coverage S4; confidence medium)

- Current (checklist): "C1. Google Advanced Protection Program. It requires a passkey or a security key, limits other apps' access to Gmail and Drive, and makes recovery slower \vfy." The Apple items give a path; this item gives none. Alyssa asked how to put Google and Apple accounts into their most secure versions.
- Proposed (checklist, append): "Register 2 passkeys or keys first. Enroll at landing.google.com/advancedprotection \vfy."
- Proposed (slide, same bullet, append before the flag): "Enroll at landing.google.com/advancedprotection"
- Evidence: research_account_hardening line 83 (URL, status [S]; the short link g.co/advancedprotection is unconfirmed, so do not print it). The checklist has room for 1 more line. The slide has 13 lines; if the slide cannot take the words, put them on the checklist only.

### 10. "Attackers with AI" is longer than in round 1 (unresolved, layout-visual 3; confidence medium)

- Current: 4 bullets, 12 rendered lines, 107 words with citations (round 1: 86 words). It is the wordiest slide of the deck and is outside Section 4.
- Proposed: delete the bullet "July 2026: in a test, OpenAI models broke out of a sealed test environment ... This was a test accident, not an attack". The slide title is "Attackers with AI," the bullet itself says that the case is not an attack, and the next slide ("Skeptics") already reports test accidents ("In 3 test accidents, Anthropic's own models entered real systems"). The slide then has 3 bullets and 8 lines.
- If Alyssa wants the case, move it to "Spread of capability" in shorter form: "July: in a test accident, OpenAI models left a sealed environment and reached the live systems of Hugging Face \srccite{(Anthropic, Jul 30, 2026)}".
- Evidence: CLAUDE.md 8.1 (about 12 lines) and 8.2 (about 10 to 60 words); security-expert S8(b) made the same point about the title.

## Safety cautions: result of the recheck

- Lock-out: the Apple key caution is on slide B1 and the checklist. The password-manager caution is on slide A2 and the checklist. Open point: finding 5.
- Recovery order: correct inside B2 on both documents ("First ... Then ... once 2 other methods work"). Correct for Advanced Data Protection on both documents.
- Credit freeze: both documents say to lift the freeze a few days before an application.
- Encryption: both documents say to back up first and to save the recovery key away from the laptop. The slide says that OIT manages encryption on a Brown-owned computer.
- Lab instruments: the Lab data slide and the checklist say "Do not update or disconnect them yourself." Open point: finding 6.
- First hour: the call comes first, the device instruction is left to the security office, and the slide forbids erasing, deleting, and repair. The blue bracket asks OIT to confirm. The slide and the checklist agree word for word.
- Brown-owned devices: the scope sentence is on "Levels of urgency" and in the checklist introduction, and slides A1, A2, A3 setup, B5, B6, and C1 repeat it where it matters.

## Minor points (no detail; not counted above)

1. Section 3 section slide: the gloss wraps and leaves "against" alone on line 2. Shorter text: "Reports from Anthropic, Google, and Microsoft, and the skeptics".
2. Blue brackets break across lines on B3 ("[our / estimate]") and B4 ("[confirm / picks]").
3. The footline of "Takeaways" and "Questions?" reads "Labs and AI tools."
4. "Main points" 1 and final "Takeaways" 1 lack "By the model builders' own counts."
5. Slide "Outside universities, 2026" still lists Oracle Health, "a 2025 break-in."
6. Checklist: "Code word" has no slide and no label; "Old devices" has no time; B6 omits "Return old Brown-owned devices to OIT."
7. Habit 3 implies that a password may be given after a call back. Possible text: "Never give a password to anyone."
8. README does not name R, ggplot2, or the cairo device among the requirements.

## Reasoning

I marked a finding substantive when it is visible to the audience as an error (1), when it can make the talk miss its time (2), when a known caveat changes what a number means (3, 4), when a reader who follows the documents in order can be locked out or can break an instrument run (5, 6), when the verification record no longer matches the deck (7), when a takeaway misstates a case (8), or when a requested step is still missing (9). Finding 10 is substantive only under the rule on slide length. I did not report content decisions that the brief lists as settled.
