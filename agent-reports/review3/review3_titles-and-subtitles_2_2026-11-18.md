Language model: claude-fable-5-2. Prompt version: v3. Topic: titles-and-subtitles. Reviewer number: 2. Date: 2026-11-18.

# Review 3: titles and subtitles (reviewer 2)

## Method

- I read every `\begin{frame}{...}` title, every `transition` title, the "Main points" and "Roadmap" lines, every line between a title and the first list, and every bold label in `cybersecurity_2026_briefing.tex` (1,052 lines, 75 frames in the handout).
- I read the headings and the lead paragraphs of `security_checklist.tex`, `security_checklist_detailed.tex`, and `checklist_page/index.html`.
- I compared the titles with Alyssa's decks: `llms_2026_research_slides.tex` and `php_2455a/slides/section1_intro.tex`.
- I did not render slide images. All findings come from the source text.
- I did not edit any file except this report.

## Summary

- Substantive findings: 7. Minor findings: 12.
- No frame uses a beamer subtitle (`\framesubtitle` or a second brace group).
- No frame has a sentence between the title and the first bullet, except the settled "Very worried." line.
- Capitalization of slide titles is consistent (sentence case).

## Substantive findings

**S1. "Monday, November 9, 2026" (line 151).**
- Current title: `Monday, November 9, 2026`
- Proposed title: `Vanderbilt ransomware attack`
- Reason: a bare date as the title of the first content slide is a dramatic opening device. The title does not name the content. The first bullet already carries the date in its citation "(Axios, Nov 9, 2026)". CLAUDE.md 8.2: a content title is a noun phrase of 1 to 4 words. CLAUDE.md 3.2: no dramatic fragments.
- Confidence: high.

**S2. "AI that broke in without orders" (line 347).**
- Current title: `AI that broke in without orders`
- Proposed title: `Break-ins during AI tests`
- Reason: the title has 6 words and is not a 1-claim sentence. "Without orders" is a military figure for a model (3.2), and the phrase is dramatic. The arrow bullet already states the point in literal words ("Nobody told these models to attack those organizations").
- Confidence: high.

**S3. Dates in 10 titles, in 4 different formats.**
- Current titles: `Other universities, fall 2026`; `Ivy League, 2025`; `Outside universities, 2026`; `PHP, October 2026`; `Java, November 2026`; `Claude Mythos Preview, April 7`; `Industry letter, August 2026`; `Altman at Stanford, October 2026`; `Amodei, April 7, 2026`; `Amodei, September 2026`.
- Problem: the comma and date work as a subtitle inside the title. The formats differ (season and year; year; month and year; day without year; full date). In 7 of the 10 slides, the body repeats the date.
- Proposed titles:
  - `PHP, October 2026` -> `PHP flaws` (bullets give October 21 and October 26)
  - `Java, November 2026` -> `Java flaw` (bullet gives November 17)
  - `Claude Mythos Preview, April 7` -> `Claude Mythos Preview` (citation gives Apr 7, 2026)
  - `Industry letter, August 2026` -> `Industry letter` (first bullet opens "August 27, 2026")
  - `Altman at Stanford, October 2026` -> `Altman` (the attribution line gives Stanford and October 21, 2026; matches the titles "Schneier" and "Stamos and Mandia")
  - `Amodei, April 7, 2026` -> `Amodei in April` (both attribution lines give the date)
  - `Amodei, September 2026` -> `Amodei in September`
  - `Other universities, fall 2026` -> `Other universities this fall` (the bullets give day and month without a year; keep the period in the title, without the comma)
  - Keep `Ivy League, 2025` and `Outside universities, 2026`. The year is needed there, because the bullets give no year and the neighboring slides are about fall 2026.
- Rule: assignment item "dates that are not needed"; 8.2 (noun phrase of 1 to 4 words); 3.5 (no added subtitles).
- Confidence: high for the 7 slides whose body repeats the date; medium for "Other universities this fall".

**S4. Colons in the 3 backup titles (lines 1015, 1027, 1039).**
- Current titles: `Backup: lab data`; `Backup: spread of capability`; `Backup: Amodei on the opportunity` (5 words).
- Proposed titles: `Lab data`; `Spread of capability`; `Amodei on opportunity`.
- Reason: titles have no colons (8.1), and a content title has 1 to 4 words (8.2). The position after "Questions?" already marks the slides as backup slides (8.2).
- Confidence: high.

**S5. Roadmap lines do not match the divider titles (lines 176 to 188, 194, 322).**
- Roadmap line 1 is `Recent hacks`. The divider for that part is `How worried should we be about cybersecurity?`. No divider says "Recent hacks".
- Roadmap line 2 is `Hacks with AI`. The divider is `Hacks with AI, and what AI changes`.
- The other 3 lines match their dividers.
- Proposed change: keep the settled question divider. Add a divider `Recent hacks` after it (or accept the mismatch for line 1). Change the divider `Hacks with AI, and what AI changes` to `Hacks with AI`, which matches the roadmap and the `\section` name and removes the comma clause. If Alyssa wants "what AI changes" on the divider, change roadmap line 2 to the same words instead.
- Reason: 3.12 (one name for each concept); 8.2 (mark the current section with 1 device). The comma clause on the divider works as a subtitle.
- Confidence: medium. The structure is settled; this finding is only about the wording match.

**S6. The title "Hacks with AI" names both a section and 1 slide (line 336).**
- Current slide title: `Hacks with AI` (the first evidence slide of the section "Hacks with AI").
- Proposed slide title: `Reported hacks with AI`
- Reason: a slide title that repeats the section name does not say what this slide adds. The slide is a dated list of 4 reports.
- Confidence: medium.

**S7. The 2 PDF checklists have the same heading, and the 3 checklists use different section headings and terms.**
- Both PDFs: `Security checklist for professors`. A reader with both printouts cannot tell them apart by the heading.
  - Proposed heading for `security_checklist_detailed.tex` line 16: `Detailed security checklist for professors`.
- Section heading 4: 1-page PDF `For a research lab`; detailed PDF and web page `If you write research code`.
  - Proposed: use `For a research lab` in all 3, or split the 1-page section to match. The 1-page section contains lab items that the other 2 do not have; at minimum, the heading words must match where the content matches.
- Term for step C2: slides, 1-page PDF, and web page say `Email masking`; the detailed PDF says `Email aliases` (line 51).
  - Proposed: `Email masking: Hide My Email (Apple, with iCloud+), ...`.
- The 1-page PDF says "The labels (A1, B2) match the slides". The detailed PDF and the web page have no step labels. Proposed: add the labels A1 to C4 to the bold lead of each detailed item (for example `A1. Automatic updates. Restart today.`).
- Reason: 3.12 (one word for each concept); 1.2 (follow the existing convention).
- Confidence: high for the term and the duplicate heading; medium for the labels.

## Minor findings

**M1. "A3." appears on 2 slides (lines 658 and 736).**
- Current: `A3. Sign-in methods` and `A3. Passkey setup`. The checklist and "Levels of urgency" name step A3 "Sign-in methods".
- Proposed: `A3. Passkey setup` -> `Passkey setup`. The 5 slides between them already have no label.
- Reason: one label for one step. Confidence: medium.

**M2. "App codes and text-message codes" (line 709), 5 words.**
- Proposed: `App and text-message codes`. Reason: 8.2 length. Confidence: medium.

**M3. "B5. Credit freeze and old devices" (line 846), 5 words after the label, 2 unrelated topics.**
- Proposed: keep the slide, title `B5. Credit freeze, old devices` is not better. Leave as is unless Alyssa splits the slide. Both checklists already list the 2 topics as separate items. Confidence: low.

**M4. "Three terms" (line 326).**
- Proposed: `Terms`. Reason: the title announces a count (3.7: do not announce how many items follow). Her own 2026 deck has "Six things to keep in mind"; therefore confidence is low.

**M5. Five slides have the title "Takeaways" (lines 305, 457, 586, 938, 993).**
- No change proposed for the 4 section slides. CLAUDE.md 8.2 asks for a takeaways slide at the end of each section, and her course deck repeats titles ("Goals for the course").
- Optional: title the final slide (line 993) `Main points`, because it repeats the 3 numbered points of the opening "Main points" slide in the same layout. Confidence: low.

**M6. Unbolded label "Test:" (line 437, "Exploits built from patches").**
- Current: `Test: Anthropic gave Mythos Preview 21 Windows patches`
- Proposed: `In a test, Anthropic gave Mythos Preview 21 Windows patches`
- Reason: a 1-word label with a colon, added for effect (3.5; 3.2 colon reveal). Confidence: medium.

**M7. Unbolded label "Critics:" (line 560, "Amodei, September 2026").**
- Current: `Critics: the researcher Gary Marcus does not find the swarm claim plausible`
- Proposed: `The researcher Gary Marcus does not find the swarm claim plausible`
- Reason: the label is plural and names 1 person; it is a mini-subtitle. Confidence: high.

**M8. Label "His remedy:" under the Altman quote (line 535).**
- Current: `His remedy: ``... completely switch the defense model ...''`
- Proposed: `Altman proposed to ``... completely switch the defense model to using the same technology for a new kind of defense shield.''`
- Reason: colon reveal (3.2); "remedy" is a medical figure. Confidence: low.

**M9. Transition comments on 2 takeaway slides.**
- Line 313: `Software flaws were the smaller share in that survey. The next part of the talk explains why that share may grow.` Proposed: `Software flaws were the smaller share in that survey. That share may grow.`
- Line 465: `Next: predictions, from ``big mess'' to ``breaking the internet''.` Proposed: delete the bullet. The divider "Predictions" follows on the next slide.
- Reason: comments about the text (3.2); "Next:" is a label. Confidence: medium.

**M10. Bold labels end with a period on 2 slides and with a colon on all others.**
- "B3. Browser" (lines 824 to 829): `HTTPS only.`, `Privacy extension.`, `Few extensions.`
- Proposed: `HTTPS only:`, `Privacy extension:`, `Few extensions:` (8.2: a bold label, a colon, and a gloss).
- "Advice to drop" (lines 920 to 922) can keep the periods, because each bold phrase is the item itself.
- Confidence: medium.

**M11. Web checklist `<title>` and `<small>` labels.**
- `<title>Security Checklist</title>` is in title case; the `<h1>` and both PDFs use sentence case. Proposed: `Security checklist`.
- `<h2>If you write research code <small>labs</small></h2>`: the small label "labs" adds a second name for the section. Proposed: delete `<small>labs</small>`.
- The small labels "about 2 hours", "about 4 hours", and "personal accounts" match the parentheses in the PDF headings. Keep them.
- Confidence: medium.

**M12. Lead paragraph under the web heading (index.html line 22).**
- Current first 2 sentences: `Short form of the handout for “Cybersecurity in 2026.” Draft of November 17, 2026.` Both are fragments, and the date is 1 day old.
- Proposed: `This page is the short form of the handout for “Cybersecurity in 2026.”` Delete the draft date, or update it at each publish.
- Reason: 3.12 (do not drop words); a date that is not needed. Confidence: medium.

## Checked, no finding

- "How worried should we be?" with the large line "Very worried." (line 602): settled, and 8.2 allows an answer shown alone before the bullets.
- "Skill", "Energy", the divider titles, and the step labels A1 to C4: settled.
- "Main points", "Roadmap", "Levels of urgency", "Range of predictions", "Reasons for caution", "Skeptics", "Advice to drop", "After a break-in", "Entry methods", "Paycheck theft", "Canvas during finals", "Archive of Our Own", "Exploits built from patches", "Flaws reported and patched", "Public flaw counts", "Anthropic on timing", "Sign-in methods compared", "Face, fingerprint, or passcode", "Passkeys", "Security keys", "Passkey storage", "AI agents", "Coding agents", "API keys": plain noun phrases of 1 to 4 words.
- Bold labels that are dates, institutions, defined terms, platforms, or carriers (lines 225 to 240, 261 to 264, 329 to 331, 339 to 350, 664 to 667, 702 to 704, 739 to 753, 789 to 804, 837 to 851, 872 to 875, 907 to 910, 962): each label names the item of a real list. No finding.
- "A3. Sign-in methods", line 661, `The 4 methods, from strongest to weakest:` introduces a nested numbered list. No finding.
