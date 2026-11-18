# Review: structure and timing

Language model claude-fable-5-2, prompt version v1, role: structure-timing (1 of 25 independent reviewers). Date: 2026-11-12.

Assignment: review the structure and pacing of the 60-minute talk against CLAUDE.md 8.2 ("Occasion" and "Structure"), estimate the speaking time per slide, and check the order that Alyssa asked for (recent hacks, then the Altman and Amodei quotes, then what to do in the meantime).

## What I checked and what I could not check

Checked:

- `cybersecurity_2026_briefing.tex` (all 779 lines), the frame order, the `\pause` count of each frame, and the word count of each frame (a script that strips macros, source lines, and `[verify]` flags).
- Page counts with `pdfinfo`: 54 pages in the handout, 251 pages (clicks) in the click PDF.
- `README.md`, timing table.
- CLAUDE.md 8.2 (lines 926 to 1004), 3.2 (rhetorical questions), and 3.11 (openings and closings).
- The timing note of the slide-rules reviewer (same 251 clicks; that review proposes word cuts and names backup candidates but does not move slides).

Not checked:

- No rehearsal exists, so every time below is a model estimate, not a measurement.
- I do not know the format of the session (whether the 60 minutes include questions, and whether the audience interrupts). I assume that the 60 minutes include questions.
- I did not check any fact or quote. Other reviewers have that task.
- I did not look at rendered slides. The layout reviewer has that task.

## Timing estimate

Assumptions (all mine):

- Alyssa speaks at 150 words per minute.
- For each slide she speaks about 2 times the words on the slide (she says the bullet and adds 1 sentence). Low case: 1.5 times at 160 words per minute. High case: 2.5 times at 140 words per minute.
- Each click costs 2 seconds (1.5 low, 3 high). Each figure slide costs 20 more seconds to explain the axes.
- The title slide takes 20 seconds.
- A second model as a check: 197 reveals at 15 seconds each plus 5 seconds per slide gives about 54 minutes.

| Part | Slides (handout) | Slide words | Clicks | README plan (min) | Estimate, low / middle / high (min) |
|---|---|---|---|---|---|
| Opening, main points, roadmap | 1-4 (4) | 126 | 12 | 4 | 1.8 / 2.4 / 3.1 |
| 1. Recent hacks | 5-12 (8) | 429 | 42 | 11 | 5.1 / 7.1 / 9.8 |
| 2. AI and software flaws | 13-22 (10) | 562 | 50 | 12 | 6.9 / 9.8 / 13.5 |
| 3. Altman and Amodei | 23-30 (8) | 385 | 29 | 8 | 4.3 / 6.1 / 8.3 |
| 4. What to do in the meantime | 31-47 (17) | 1,006 | 89 | 17 | 11.7 / 16.4 / 22.4 |
| 5. Labs and AI tools | 48-52 (5) | 279 | 24 | 5 | 3.2 / 4.5 / 6.2 |
| Takeaways and questions | 53-54 (2) | 61 | 5 | 3 | 0.7 / 1.0 / 1.3 |
| Total | 54 | 2,848 | 251 | 60 | 33.6 / 47.3 / 64.7 |

Table: slide counts, words, clicks, the README plan, and my estimate of speaking time for each part. The estimates are model outputs under the assumptions above, not rehearsal times.

Per slide, middle estimate in seconds: 1 title 20; 2 Monday 54; 3 Main points 46; 4 Roadmap 22; 5 section slide 14; 6 Universities 68; 7 Canvas 63; 8 Ivy League 63; 9 Paycheck theft 65; 10 Outside universities 64; 11 Entry methods 50; 12 Takeaways 39; 13 section slide 18; 14 Three terms 30; 15 Mythos 79; 16 Finding outpaces fixing 69; 17 Public flaw counts 77; 18 Patches as instructions 61; 19 Spread of capability 64; 20 Attackers with AI 80; 21 Skeptics 70; 22 Takeaways 40; 23 section slide 14; 24 Altman at Stanford 38; 25 Altman's remedy 44; 26 Amodei 45; 27 Anthropic on timing 56; 28 Hopeful version 45; 29 Reasons for caution 70; 30 Takeaways 53; 31 section slide 15; 32 Three levels 72; 33 A1 51; 34 A2 57; 35 A3 72; 36 A4 59; 37 A5 68; 38 B1 67; 39 B2 58; 40 B3 57; 41 B4 62; 42 B5 56; 43 C1 71; 44 C2 56; 45 C3 71; 46 Overrated advice 46; 47 Takeaways 45; 48 section slide 17; 49 Lab data 65; 50 AI agents 74; 51 Coding agents 60; 52 First hour 56; 53 Takeaways 50; 54 Questions 9.

Reading of the estimate:

- The slides alone take about 47 to 54 minutes in the middle case and about 65 minutes in the high case. The README plan gives the slides 57 or more of the 60 minutes and gives questions under 3 minutes.
- Section 4 is the longest part in every case (16 to 22 minutes) and has 35% of the words of the deck. The plan gives it 17 minutes, 1 minute per slide, which is the middle case with no interruption. This section draws the most "which app?" questions, so it is the part most likely to run long.
- Sections 1 and 3 are likely to run short of the plan (7 against 11 minutes, 6 against 8).
- The first slide of advice (A1) is slide 33 of 54. By the README plan it arrives at minute 36. By my middle estimate it arrives at minute 27.

## Order check against Alyssa's request

Requested order: recent hacks, then the Altman and Amodei quotes on the difficulty of securing the internet, then what to do in the meantime.

Deck order: (1) Recent hacks, (2) AI and software flaws, (3) Altman and Amodei, (4) What to do in the meantime, (5) Labs and AI tools.

The 3 requested parts are present and in the requested relative order. However, a 10-slide section (planned at 12 minutes) stands between the hacks and the quotes, and the first quote appears on slide 24 (minute 24 to 28 by the plan). The opening story, the main points, and the roadmap follow 8.2. Finding 1 proposes a change.

## Findings

### Substantive

**S1. Sections 2 and 3: the quotes come 10 slides after the hacks. Merge the 2 sections and lead with the quotes.** Confidence: medium.

- Current: Roadmap items "2 AI and software flaws" and "3 Altman and Amodei" (5 items in total). Slide 13 gloss: "In 2026, AI models began to find flaws faster than people fix them". Slide 23 gloss: "Sam Altman leads OpenAI. Dario Amodei leads Anthropic."
- Proposed: 1 section of about 12 slides, with a 4-item roadmap:
  - Roadmap: "1 Recent hacks", "2 Altman and Amodei on AI and software flaws", "3 What to do in the meantime", "4 Labs and AI tools".
  - Section slide: title "Altman and Amodei", gloss "The heads of OpenAI and Anthropic say that securing software will take years."
  - Order inside the section: Altman at Stanford (24), Amodei, April 7 (26) with the "moment of danger" line from slide 28, Three terms (14), Claude Mythos Preview (15), Finding outpaces fixing (16), Patches as instructions (18), Spread of capability (19), Attackers with AI (20), Altman's remedy (25), Anthropic on timing (27), 1 slide "Skeptics" that merges slides 21 and 29 (S3), 1 takeaways slide that merges slides 22 and 30.
  - Move to backup (after "Questions?", 8.2): Public flaw counts (17) and Hopeful version (28).
- Why: this order matches the request. The quotes then pose the claim, and the Mythos slides serve as the evidence for it. The change removes 1 section slide, 1 takeaways slide, 1 caution slide, and 2 content slides (about 4 to 5 minutes by my estimate).
- Evidence: the request as quoted in my assignment; 8.2 "Show a roadmap of 3 to 5 items" (5 is the limit; 4 is inside it); slide order in the .tex, lines 259 to 490.
- If Alyssa keeps 5 sections, the smaller change is to put slide 24 (the Altman quote) directly after the section 2 slide as the question that section 2 answers, and to keep the other quotes in section 3.

**S2. README timing table: the plan leaves under 3 minutes for questions, and the slide counts are wrong.** Confidence: high for the counts, medium for the plan.

- Current: "| 4. What to do in the meantime | 16 | 17 |" and "| Takeaways and questions | 2 | 3 |"; "The minutes sum to 60".
- Facts: section 4 has 17 slides (handout pages 31 to 47), not 16. The table sums to 53 slides; the handout has 54.
- Proposed table (with the cuts in S1, S3, and S4):

  | Part | Slides | Minutes |
  |---|---|---|
  | Opening, main points, roadmap | 4 | 3 |
  | 1. Recent hacks | 7 | 8 |
  | 2. Altman and Amodei on AI and software flaws | 13 | 13 |
  | 3. What to do in the meantime | 15 | 16 |
  | 4. Labs and AI tools | 5 | 5 |
  | Takeaways | 1 | 1 |
  | Questions | 1 | 14 |

  Caption: "Table: planned minutes for each part of the talk. The slide counts include the section slide of each part. The minutes sum to 60, include 14 minutes for questions, and are a plan, not a measurement."
- Why: a faculty audience interrupts, and the high case of my estimate for the current deck is 65 minutes with no questions.
- Evidence: `pdfinfo` (54 pages); frame count in the .tex; README lines 29 to 43.

**S3. "Skeptics" (slide 21) and "Reasons for caution" (slide 29) make the same argument twice.** Confidence: high.

- Current, slide 21: "Anthropic sells these models, and much of the evidence comes from Anthropic". Current, slide 29: "Both men sell the models, and both sell the defense. One outlet reported the criticism of an 'arms-dealer dynamic'".
- Proposed: 1 slide titled "Skeptics" with 5 bullets:
  1. "Attackers used 0.23% of the flaws disclosed in 2026 (Google, Sep 30, 2026)"
  2. "'The vast majority of successful intrusions still stem from fundamental human and systemic failures.' (Mandiant, Mar 2026)"
  3. "The maintainer of curl called Mythos 'an amazingly successful marketing stunt' (Stenberg) [verify]"
  4. "Both men sell the models, and both sell the defense. Much of the evidence comes from Anthropic"
  5. "Security agencies still tell everyone to patch, and faster (NCSC, May 1, 2026) [verify]"
- Dropped bullets go to `source_notes` or to a backup slide: VulnCheck 1.3%, Forbes "overblown", "Altman did not say who builds the 'defense shield'" (say it aloud on slide 25), and "We found no statement from Amodei that patching fails" (say it aloud on slide 26).
- Why: the speaker concedes the conflict of interest twice, 8 slides apart, and the 2 slides cost about 2.3 minutes. 1 slide placed before the takeaways keeps the fair presentation that 3.11 requires.
- Evidence: .tex lines 369 to 378 and 468 to 477; 8.2 "Put 1 idea on each slide"; 3.11 (present each side fairly).

**S4. Section 4: 3 Level C slides take about 3.3 minutes for steps that few in the room will take. Show 1 Level C slide and move the detail to backup.** Confidence: medium.

- Current: C1 Strictest settings (76 words), C2 Email aliases (58), C3 Private Relay and VPNs (74), then "Overrated advice", which repeats the VPN point of C3 and the NIST point of A2.
- Proposed: 1 slide, title "C. When time allows, or at higher risk":
  - "**Strictest settings:** Google Advanced Protection Program, Apple Advanced Data Protection. Cost: if you lose your keys and your devices, Google and Apple cannot let you back in"
  - "**Email aliases:** a breach at 1 site exposes 1 alias, and you can turn that alias off"
  - "**Private Relay and VPNs:** use the university VPN for university resources. A commercial VPN moves your trust from the network to the VPN company"
  - "→ The checklist has the menu path for each step"
- Move C1, C2, and C3 unchanged to backup after "Questions?", with a button at the bottom right of the new slide (8.2). Keep "Overrated advice".
- Why: the 3-level sort stays on the slides (the request), and the handout already carries the Level C detail. The change saves about 2 minutes in the section most likely to run long.
- Evidence: 8.2 "Put backup slides after the 'Questions?' slide, with links from buttons at the bottom right"; `security_checklist.tex` contains Level C; my timing table.

**S5. The audience does not learn about the 1-page checklist until the last slide.** Confidence: high.

- Current, slide 32 "Three levels of urgency", last line: "We sorted by 2 criteria: how often attackers use the weakness, and how long the step takes. The sort is a judgment." Slide 54: "Checklist handout: security_checklist.pdf".
- Proposed, slide 32, add before the last line: "Every step and menu path is on the 1-page checklist \fillin{paper copy or link}." Proposed, slide 54: "Checklist handout: \fillin{link or QR code}".
- Why: professors will copy menu paths from 14 slides if they do not know that a handout has them, and that slows section 4. A file name on the last slide does not tell the audience where to get the file.
- Evidence: .tex lines 504 to 519 and 775; 8.2 "Write a link as underlined text in the accent color ... with a QR code when the audience should open it."

**S6. Section 1 ends on "entry is a login or a person," and section 2 opens on software flaws with no bridge. The Sophos slide also shows flaws falling from 35% to 13%.** Confidence: medium.

- Current, slide 12, last bullet: "Where universities named the entry method, the method was most often a login or a person." Slide 13 gloss: "In 2026, AI models began to find flaws faster than people fix them".
- Proposed, slide 12, add a fourth item: "→ Software flaws were the smaller share. The heads of 2 AI companies say that this share will grow."
- Why: a professor who reads slide 11 ("Software flaws that attackers used: 13% (35% the year before)") will ask why the next 18 slides are about flaws. The deck answers this only at slide 21 ("Skeptics") and slide 22. 1 line at the hand-off states the tension first and holds attention.
- Evidence: .tex lines 240, 253, and 265; 8.2 "Put '→' before a consequence, a next step, or a lesson." I have not checked that "will grow" matches the quotes; the nearest support in the deck is slide 30, "The builders of the models expect more flaws than anyone can patch, for now." If that is too strong, use: "→ Software flaws were the smaller share. Section 2 shows why that may change."

**S7. First 5 minutes: slide 6 repeats slide 2, and the Brown fact that would hold this audience arrives at slide 7.** Confidence: medium.

- Current: slide 2 covers Vanderbilt and Michigan State. Slide 6, first bullet: "Nov 9: Vanderbilt, ransomware"; fifth bullet: "October: Michigan State, 'potential credential compromise'". Slide 7, last bullet: "Brown was among the Canvas customers with exposed data [verify]".
- By my estimate, minute 5 falls on slide 7 or 8. The first 5 minutes are therefore the story, the main points, the roadmap, and 1 list of 6 universities, 2 of them already covered.
- Proposed:
  1. Slide 6: delete the Vanderbilt bullet (slide 2 covers it) and retitle the slide "Other universities, fall 2026". The slide then has 5 bullets.
  2. Swap slides 6 and 7, so that "Canvas during finals" (the case that reached Brown and the audience's own courses) is the first slide of section 1.
  3. Slide 12, first takeaway, stays correct ("at least 6 universities between September and November 2026") because Vanderbilt remains in the count from slide 2.
- Why: 8.2 asks for an opening with a short story (slide 2 does this well). The second story should be the one the audience lived through. The Brown claim carries "[verify]"; if it fails verification, keep the swap for the finals disruption alone.
- Evidence: .tex lines 121 to 130, 173 to 195.

**S8. "First hour" (slide 52) is the slide most likely to be dropped if the talk runs late, and it is the only slide that says what to do after a break-in.** Confidence: medium.

- Current: "First hour" is the last content slide of section 5, at minute 55 to 57 of the plan.
- Proposed: move "First hour" to the end of the "meantime" section, after "Overrated advice" and before "Takeaways: the meantime". Change the section 5 gloss from "Research data, AI agents, and the first hour after a break-in" to "Research data and AI agents". Add to "Takeaways: the meantime": "If you suspect a break-in: disconnect, do not erase, and call \fillin{number}."
- Why: the step applies to every professor, and section 5 applies to those with labs or agents. Section 5 then has 3 content slides, which Alyssa can shorten without loss if time is short.
- Evidence: .tex lines 699 to 751; my timing table.

### Minor

**M1. Main points and Roadmap use the same red numerals for 2 different lists.** Main point 3 ("Most break-ins ... start with a password or a person") is not section 3 ("Altman and Amodei"). Proposed: remove the numerals from "Main points" (use 3 unnumbered sentences) and keep numerals for the roadmap and the closing takeaways. Evidence: .tex lines 136 to 157; 8.2 "mark the current section with 1 device per deck". Confidence: medium.

**M2. Section 5 has no section takeaways slide.** 8.2: "End each section of a long talk with a takeaways slide." The closing "Takeaways" slide follows "First hour" directly and has no item about labs or agents. Proposed: do not add a slide; add to closing takeaway 3 a second sentence: "In the lab: study data on university storage, and coding agents in a container." Confidence: low (a fourth idea lengthens the close).

**M3. "Public flaw counts" (slide 17) carries 4 ideas: a definition, the count ratio, the 7-day figure, and the federal deadline.** If the slide stays in the main deck (see S1), cut the last bullet ("... the median federal deadline to patch fell from 21 days to 3 (CISA catalog) [verify]"), which is unverified and is the least needed for the argument. Confidence: medium.

**M4. "Attackers with AI" (slide 20) is the longest slide by words (85) and has 5 cases.** Proposed: keep the November 2025, May 2026, and fall 2026 bullets; move the Hugging Face bullet and the undergraduates bullet to backup. Saves about 25 seconds. Confidence: medium.

**M5. "Outside universities, 2026" (slide 10) is the weakest slide of section 1 for this audience.** 4 unrelated cases, all "[verify]", and takeaways slide 12 does not use any of them. Proposed: move to backup, and change the section 1 gloss from "Universities in 2025 and 2026, and 4 cases outside universities" to "Universities in 2025 and 2026". Saves about 1 minute. Confidence: medium. (S2's table assumes this cut.)

**M6. "Takeaways: Altman and Amodei" (slide 30), item 2, "'The meantime' is about 2 years, by Anthropic's own forecast."** This is the first use of "the meantime" as a term, and it is the link to section 4. Keep it as the last item before the "→" line in any merged takeaways slide (S1), because it is the transition into the advice. No text change. Confidence: high.

**M7. Title slide date is a placeholder** (`\fillin{date of talk}`); known limit, listed only because slide 2 ("Monday, November 9, 2026") reads as recent news only if the talk is in November 2026. If the talk is later, retitle slide 2 "Vanderbilt, November 9, 2026". Confidence: high.

## Net effect of the proposals

With S1, S3, S4, and M5, the main deck falls from 54 to about 46 slides and from about 47 to about 40 minutes in my middle case (about 55 in the high case), which leaves 5 to 20 minutes for questions. The first advice slide moves from slide 33 to about slide 26.

## Reasoning notes

- I treated the request order as satisfied in sequence and unsatisfied in adjacency. I marked S1 medium because Alyssa may prefer the evidence before the quotes; the smaller alternative in S1 keeps her 5 sections.
- I did not propose cutting Level A or Level B slides. Each has 1 step, and the checklist mirrors them.
- I did not propose a rhetorical question for the opening. 8.2 allows an opening question, but slide 2 already opens with a story, and 3.2 bars rhetorical questions as transitions.
- All added sentences in S4, S5, S6, S8, and M2 reuse claims that are already on the slides. S6 has 1 exception, which I flagged there.
