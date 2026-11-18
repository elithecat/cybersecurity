Language model: claude-fable-5-2. Prompt version: v3. Topic: titles-and-subtitles. Reviewer number: 1. Date: 2026-11-18.

# Review 3: titles and subtitles (reviewer 1)

## Method

I read every `\begin{frame}{...}` title, every `\begin{transition}` title, the roadmap, the 5 takeaway slides, and every bold or colon label in `cybersecurity_2026_briefing.tex` (1,049 lines). I read the text of the clean handout PDF with `pdftotext -layout`, and I looked at slides 5 and 37 as images. I read the headings of `security_checklist.tex`, `security_checklist_detailed.tex`, and `checklist_page/index.html`. I compared the titles with the frame titles of `llms_2026_research_slides.tex`. I did not edit any file and did not fact-check sources.

## Summary

- 8 substantive findings, 14 minor findings.
- No lead-in sentence remains between a title and its bullets. No frame has a `\framesubtitle`. Section dividers have no subtitle.
- Capitalization of slide titles is consistent (sentence case).
- The remaining problems are: 1 date used as a title, 1 dramatic title, date suffixes in 9 titles in 5 formats, 5 slides with the title "Takeaways," colons in the 3 backup titles, and headings that differ between the 3 checklists.

## Substantive findings

### S1. Slide 2, "Monday, November 9, 2026" (tex line 151)
- Current title: "Monday, November 9, 2026"
- Proposed title: "Vanderbilt ransomware attack"
- Proposed first bullet: "On Monday, November 9, Vanderbilt University told its campus to shut down computers during a ransomware attack (attackers lock or steal files, and then demand payment)"
- Reason: a bare date as a title is a dramatic opening device, and the title does not name the subject of the slide. CLAUDE.md 8.2: a content slide title is a noun phrase of 1 to 4 words. The date moves to the bullet, so no information is lost.
- Confidence: high.

### S2. "AI that broke in without orders" (line 347)
- Current title: "AI that broke in without orders" (6 words)
- Proposed title: "Break-ins during AI tests"
- Reason: the title is longer than 4 words and is dramatic. "Without orders" is a military word for a test task (3.2, literal term). The last bullet already states the point ("Nobody told these models to attack those organizations").
- Confidence: high.

### S3. Last "Takeaways" slide (line 990), and 5 slides with the same title
- Current: slides at lines 305, 457, 586, 935, and 990 all have the title "Takeaways." The slide at line 990 closes the talk, but its footer reads "AI tools," and the AI tools section has no takeaways of its own. A reader of the handout takes this slide for the AI tools summary.
- Proposed title for line 990: "Main points" (the slide repeats the 3 numbered points of slide 3, which has that title).
- The 4 section slides can keep "Takeaways," because the footer names the section and 8.2 allows a takeaways slide per section. See minor finding M1 for an alternative.
- Confidence: high for line 990, medium for the rest.

### S4. Date suffixes in 9 titles, in 5 formats
- Current titles and proposed titles:
  - "Other universities, fall 2026" -> "Other universities" (each bullet has a bold date)
  - "Ivy League, 2025" -> "Ivy League in 2025" (the year is needed, because the bullets give no year; the comma is not)
  - "Outside universities, 2026" -> "Other sectors" (the Oracle Health bullet describes "a 2025 break-in"; the "2026" in the title is wrong for that row)
  - "PHP, October 2026" -> "PHP flaws" (bullet 2 starts "October 21")
  - "Java, November 2026" -> "Java flaw" (bullet 2 starts "November 17")
  - "Claude Mythos Preview, April 7" -> "Claude Mythos Preview" (the citation in bullet 1 gives April 7, 2026; this title has no year and the others do)
  - "Industry letter, August 2026" -> "Industry letter" (bullet 1 starts "August 27, 2026")
  - "Altman at Stanford, October 2026" -> "Altman" (matches "Schneier" and "Stamos and Mandia"; the attribution line gives the place and the date)
  - "Amodei, April 7, 2026" -> "Amodei in April"; "Amodei, September 2026" -> "Amodei in September" (the month distinguishes the 2 slides; the year is in the attribution lines)
- Reason: the assignment asks for dates that are not needed. The formats differ ("fall 2026," "2025," "October 2026," "April 7," "April 7, 2026"). The comma and date act as a subtitle after the title. 8.2: a noun phrase of 1 to 4 words.
- Confidence: high for the inconsistency and for "Outside universities, 2026"; medium for each exact replacement.

### S5. "How worried should we be?" (line 606), label "This fall:"
- Current: "This fall: Vanderbilt, Canvas, AO3, Binance, PHP, and Java"
- Proposed: "This year: Canvas, Binance, AO3, PHP, Vanderbilt, and Java"
- Reason: the label does not match the list. The Canvas slide dates the break-in to April 29, 2026, during spring finals. The proposed order is the order of the dates on the slides.
- Confidence: high (internal consistency; I did not check sources).

### S6. "A3. Sign-in methods" (line 665), signpost bullet
- Current: "The next 4 slides explain each method, from strongest to weakest"
- Proposed: delete the bullet.
- Reason: the bullet is a comment about the talk (3.2), it acts as a lead-in to the next slides, and it is not accurate. The next 4 slides are "Passkeys," "Security keys," "Passkey storage," and "App codes and text-message codes." "Passkey storage" is not a method, and the "Security keys" slide (second) says that security keys are the strongest method.
- Confidence: high.

### S7. Checklist headings differ between the 3 checklists
- Current: the 1-page PDF has the heading "For a research lab." The detailed PDF and the web page have "If you write research code," and the web page adds a small subtitle, "labs." The web page has no heading "After a suspected break-in."
- Proposed: "Research labs" in the 1-page PDF (it covers study data and code). "Research code" in the detailed PDF and on the web page. Delete `<small>labs</small>` on the web page.
- Reason: "If you write research code" is a clause, not a noun phrase (2.3). The same list has 2 names, and the web subtitle "labs" contradicts its own heading (the list is about code). 3.12: one word for each concept.
- Confidence: medium-high.

### S8. Backup titles (lines 1012, 1024, 1036)
- Current: "Backup: lab data"; "Backup: spread of capability"; "Backup: Amodei on the opportunity"
- Proposed: "Lab data"; "Spread of capability"; "Amodei on opportunity"
- Reason: a colon in a title makes a label plus a subtitle (8.1 bans colons in titles; Alyssa dislikes subtitles). The position after "Questions?" shows that the slides are backups (8.2). The footer of these slides and of "Questions?" reads "AI tools"; if a marker is wanted, put `\section*{Backup}` (or `\appendix`) before line 1012 so that the footer shows the status instead of the title.
- Confidence: medium-high.

## Minor findings

### M1. The 4 section "Takeaways" slides (lines 305, 457, 586, 935)
- If Alyssa wants no duplicate titles, the plain alternative is the section name plus the word: "Recent hacks takeaways," "Hacks with AI takeaways," "Predictions takeaways," "Steps takeaways." These read worse than the footer solution in S3. I recommend no change. Confidence: medium.

### M2. Signpost lines at the end of 2 takeaway slides
- Line 313: "Software flaws were the smaller share in that survey. The next part of the talk explains why that share may grow." -> "Software flaws were the smaller share in that survey. That share may grow."
- Line 465: "Next: predictions, from ``big mess'' to ``breaking the internet''." -> delete (the divider "Predictions" follows on the next slide).
- Reason: comments about the talk (3.2); "Next:" is a colon label. Confidence: medium.

### M3. Divider "Hacks with AI, and what AI changes" (line 322)
- The roadmap and the footer say "Hacks with AI." The divider adds a second part after a comma, which reads as a title with a subtitle. Proposed: "Hacks with AI." The brief lists this wording under the settled structure, so I mark it low confidence.

### M4. Roadmap item 1 and divider 1 differ
- The roadmap lists "Recent hacks." The first divider reads "How worried should we be about cybersecurity?" and the slides that follow have the footer "Recent hacks." The audience sees no divider with the first roadmap item. The question divider is Alyssa's choice; I report the mismatch only. Option: none needed if she states the question aloud on the roadmap slide. Confidence: low.

### M5. "Hacks with AI" (line 336)
- The frame title repeats the section name and the divider. Proposed: "Reported hacks with AI" (the slide is a dated list of 4 reports). Confidence: medium.

### M6. "Three terms" (line 326)
- Proposed: "Terms." A count in a title announces the number of items (3.7), and 3.8 prefers numerals. Her own 2026 deck has "Six things to keep in mind," so this may be her style. Confidence: low.

### M7. "App codes and text-message codes" (line 706)
- 5 words. Proposed: "App and text-message codes." Confidence: medium.

### M8. "Reasons for caution" (line 575)
- The title is ambiguous: the talk tells the audience to be "very worried," and "caution" here means doubt about the warnings. Proposed: "Doubts about the warnings." Confidence: medium.

### M9. Bold labels with a period, not a colon (lines 821 to 826, 917 to 919)
- "B3. Browser" uses "HTTPS only.", "One content blocker", "Privacy extension.", "Few extensions." and "Advice to drop" uses "Scheduled password changes.", "Fear of public Wi-Fi.", "A commercial VPN as protection from break-ins." All other slides use a bold label and a colon (8.2). Proposed: colons, for example "HTTPS only: HTTPS encrypts the connection to a site."
- "Fear of public Wi-Fi." is the only label that names a feeling. Proposed: "Avoiding public Wi-Fi:". Confidence: medium.

### M10. Plain one-word labels with a colon
- Line 437 "Test: Anthropic gave Mythos Preview 21 Windows patches" -> "In a test, Anthropic gave Mythos Preview 21 Windows patches"
- Line 689 "Cost: about \$29 each. You need 2, in case you lose 1" -> "A key costs about \$29. You need 2, in case you lose 1"
- Line 738 "Limit: a passkey does not stop malware ..." -> "A passkey does not stop malware ..."
- Line 884 "Benefit: a break-in at 1 site exposes 1 masked address ..." -> "A break-in at 1 site exposes 1 masked address ..."
- Line 560 "Critics: the researcher Gary Marcus does not find ..." -> "The researcher Gary Marcus does not find ..."
- Reason: these labels add no information (3.5). Confidence: medium.

### M11. Date labels in 2 formats
- "Other universities" uses "Nov 9:", "Oct 26:", then "October:", "September:". "Hacks with AI" uses "Nov 2025:", "May 2026:". Proposed: abbreviate every month or none ("Oct:", "Sep:" or "November 9:"). Confidence: medium.

### M12. Long level label C
- Slide "Levels of urgency" and all 3 checklists: "C. When time allows, or at higher risk" (7 words; the PDFs add "(personal accounts)"). Proposed: "C. Later, or at higher risk." Move "personal accounts" to the first item, as slide C1 does ("These settings are for personal accounts"). Confidence: low-medium.

### M13. Checklist titles and labels
- Both PDFs have the title "Security checklist for professors." Proposed for the 2-page PDF: "Detailed security checklist."
- Web `<title>` is "Security Checklist" (title case); the `<h1>` is sentence case. Proposed: "Security checklist."
- 1-page PDF labels "A5. Habit 1.", "A5. Habit 2.", "A5. Habit 3." name nothing. Proposed: "A5. Sign-in prompts.", "A5. Pasted commands.", "A5. Requests for money."
- Detailed PDF item "Email aliases" -> "Email masking" (the slides, the 1-page PDF, and the web page say "masking").
- Slide "After a break-in" versus checklist heading "After a suspected break-in." Proposed: one form in all 4 places.
- The detailed PDF and the web page have no A1 to C4 labels, and the 1-page PDF says that "the labels (A1, B2) match the slides."
- Confidence: medium.

### M14. Frame counter
- The last backup slide shows "76 / 75" in the footer. Not a title problem; I report it because I saw it.

## Items checked with no finding
- No sentence between a title and the bullets on any slide.
- "Main points," "Roadmap," "Entry methods," "Paycheck theft," "Skeptics," "Levels of urgency," A1 to C4 titles, "Advice to drop," "After a break-in," "AI agents," "Coding agents," "API keys": plain noun phrases of 1 to 4 words.
- Title slide: no subtitle.
