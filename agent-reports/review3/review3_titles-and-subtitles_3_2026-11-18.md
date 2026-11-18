Language model: claude-fable-5-2. Prompt version: v3. Topic: titles-and-subtitles. Reviewer number: 3. Date: 2026-11-18.

# Review 3: titles and subtitles (reviewer 3)

## Method

I read every frame title, transition title, roadmap line, takeaway slide, and bold bullet label in `cybersecurity_2026_briefing.tex` (line numbers below are from the file as it was during my review; another process may edit the file). I read the headings and bold labels of `security_checklist.tex`, `security_checklist_detailed.tex`, and `checklist_page/index.html`. I compared the titles with the frame titles of `llms_2026_research_slides.tex`. I did not render slide images, edit any file, or fact-check.

## Summary

- 8 substantive findings, 11 minor findings.
- No `\framesubtitle` and no sentence between a title and its bullets remains. Section dividers have no subtitle. Slide titles are in sentence case throughout.
- Remaining problems: 1 date as a title, 1 dramatic 6-word title, date suffixes in 10 titles, 5 slides titled "Takeaways," colons in 3 backup titles, 2 signpost lines on takeaway slides, 1 label that does not match its list, and checklist headings that differ between the 3 checklists.

## Substantive findings

### S1. "Monday, November 9, 2026" (line 151)
- Current title: "Monday, November 9, 2026"
- Proposed title: "Vanderbilt"
- Proposed first bullet: "Monday, November 9: Vanderbilt University told its campus to shut down computers during a ransomware attack (attackers lock or steal files, and then demand payment)"
- Reason: a bare date is a dramatic opening title and does not name the subject. 8.2: noun phrase of 1 to 4 words. "Vanderbilt" matches "Archive of Our Own," "Schneier."
- Confidence: high.

### S2. "AI that broke in without orders" (line 347)
- Current: "AI that broke in without orders" (6 words)
- Proposed: "AI break-ins in tests"
- Reason: longer than 4 words; dramatic; "orders" is a military word for a task (3.2). The bullets already say that nobody told the models to attack.
- Confidence: high.

### S3. 5 slides titled "Takeaways" (lines 305, 457, 586, 955, 1010)
- Current: all 5 have the title "Takeaways." The last one closes the talk under the footer "AI tools," and it repeats the numbered points of "Main points" (line 162).
- Proposed: line 1010 -> "Main points." Keep "Takeaways" on the 4 section slides (8.2 allows 1 per section; the footer names the section).
- Confidence: high for line 1010, medium for keeping the others.

### S4. Date suffixes after a comma in 10 titles
The comma plus date works as a subtitle, and the formats differ ("fall 2026," "2025," "October 2026," "April 7," "April 7, 2026").
- "Other universities, fall 2026" -> "Other universities" (each bullet has a bold date)
- "Ivy League, 2025" -> "Ivy League in 2025" (the bullets give no year)
- "Outside universities, 2026" -> "Other sectors" (the Oracle Health bullet is a 2025 break-in)
- "PHP, October 2026" -> "PHP"
- "Java, November 2026" -> "Java"
- "Claude Mythos Preview, April 7" -> "Claude Mythos Preview"
- "Industry letter, August 2026" -> "Industry letter"
- "Altman at Stanford, October 2026" -> "Altman"
- "Amodei, April 7, 2026" -> "Amodei in April"
- "Amodei, September 2026" -> "Amodei in September"
- Reason: dates that the bullets or attribution lines already give; 8.2 noun phrase of 1 to 4 words; names alone match "Schneier" and "Stamos and Mandia."
- Confidence: high for the pattern, medium for each replacement.

### S5. Backup titles (lines 1032, 1044, 1056)
- Current: "Backup: lab data"; "Backup: spread of capability"; "Backup: Amodei on the opportunity"
- Proposed: "Lab data"; "Spread of capability"; "Amodei on opportunity"
- Reason: a colon makes a label plus a subtitle (8.1: no colons in titles). The position after "Questions?" marks backup slides (8.2).
- Confidence: medium-high.

### S6. Signpost lines on 2 takeaway slides (lines 305 and 457 slides)
- Current (Recent hacks takeaways): "→ Software flaws were the smaller share in that survey. The next part of the talk explains why that share may grow."
- Proposed: "→ Software flaws were the smaller share in that survey. That share may grow."
- Current (Hacks with AI takeaways): "→ Next: predictions, from ``big mess'' to ``breaking the internet''."
- Proposed: delete the line. The section divider "Predictions" follows.
- Reason: both lines are lead-ins to the next section and comments about the talk (3.2). The second is a "Next:" label with a colon reveal.
- Confidence: high.

### S7. "How worried should we be?" (line 599), label "This fall:"
- Current: "This fall: Vanderbilt, Canvas, AO3, Binance, PHP, and Java"
- Proposed: "This year: Canvas, Binance, AO3, PHP, Vanderbilt, and Java"
- Reason: the label does not match the list; the Canvas slide dates that break-in to April 29. The proposed order follows the dates on the slides.
- Confidence: high (internal consistency only).

### S8. Checklist headings differ between the 3 checklists
- Current: 1-page PDF "For a research lab"; detailed PDF "If you write research code"; web page "If you write research code" with the small subtitle "labs." The web page has no "After a suspected break-in" heading. The detailed PDF has no step labels (A1 to C4), although the 1-page PDF says "The labels (A1, B2) match the slides," and its bold labels are full sentences ("Second sign-in step (2FA) on every account that offers one. Use a passkey where the site offers it.").
- Proposed: "Research labs" in the 1-page PDF. "Research code" in the detailed PDF and on the web page, and delete `<small>labs</small>`. In the detailed PDF, start each bold label with the slide label and name ("A1. Updates." "A2. Password manager." "A3. Sign-in methods." "A4. Phone passcode." "A6. Phone number lock." "B1. Security key setup." "B2. Account recovery." and so on), and move the rest of the sentence to the small text.
- Reason: 2.3 (section titles are short noun phrases, not clauses); 3.12 (1 name per concept); the web subtitle contradicts its heading.
- Confidence: medium-high for the headings, medium for the detailed labels.

## Minor findings

### M1. "Hacks with AI" content slide (line 336) repeats the section name
- The divider reads "Hacks with AI, and what AI changes," the roadmap and footer read "Hacks with AI," and the first content slide after "Three terms" has the same title.
- Proposed slide title: "Reported AI attacks." Confidence: medium.

### M2. "How worried should we be?" (line 599) repeats the divider
- The divider "How worried should we be about cybersecurity?" is settled. The answer slide has a shortened copy. A question title for a 1-claim slide fits 8.2. Proposed: use the full divider wording so that the question has 1 form, or no change. Confidence: low.

### M3. "Three terms" (line 326)
- Proposed: "Terms." Reason: the count in the title announces the list (3.7). Her own 2026 deck has "Six things to keep in mind"; therefore confidence is low.

### M4. "Canvas during finals" (line 198)
- Proposed: "Canvas." Reason: matches the other incident titles ("Archive of Our Own," "Paycheck theft"); "during finals" adds emphasis, and bullet 2 states it. Confidence: low-medium.

### M5. "App codes and text-message codes" (line 726, 5 words)
- Proposed: "App and text-message codes." Confidence: medium.

### M6. "B5. Credit freeze and old devices" (line 863, 5 words after the label)
- 2 topics on 1 slide, each with a bold label that repeats half of the title. The checklist lists them as 2 separate B5 items. Proposed: no shorter exact title keeps both terms; keep, or split into 2 slides "B5. Credit freeze" and "B5. Old devices." Confidence: low.

### M7. Bold labels end in 3 different ways
- Most labels are "Label:" (8.2: a bold label, a colon, and a gloss). Exceptions end in a period or have no punctuation: B3 ("HTTPS only." "One content blocker" "Privacy extension." "Few extensions."), "Advice to drop" ("Scheduled password changes." "Fear of public Wi-Fi." "A commercial VPN as protection from break-ins."), C2 ("Hide My Email"), C3 ("Private Relay," "A VPN"), C4 ("Data brokers" as the subject of the sentence).
- Proposed for B3: "HTTPS only:" "Content blocker:" (then "an extension that blocks ads and trackers. Use 1. Wirecutter recommends ...") "Privacy extension:" "Few extensions:".
- Proposed for "Advice to drop": "Scheduled password changes:" "Fear of public Wi-Fi:" "Commercial VPN against break-ins:" (4 words in place of 8).
- Confidence: medium.

### M8. Unlabeled lines "Limit:" "Benefit:" "Cost:" "SIM swap:" "Built in:" "Others:"
- These plain labels with colons ("A3. Passkey setup," "C2. Email masking," "Security keys," "A6. Phone number lock," "A2. Password manager") are not bold, while similar labels are bold. They are informative and are not added for effect. Proposed: no change, or make them bold for 1 style. Confidence: low.

### M9. Unlabeled slides inside step A3
- "Factors," "Passkeys," "Security keys," "Passkey storage," "App codes and text-message codes," "Sign-in methods compared," and "Face, fingerprint, or passcode" have no step label, while "A3. Sign-in methods" and "A3. Passkey setup" both carry "A3." A handout reader cannot tell which step "Factors" (between A2 and A3) belongs to. Proposed: move "Factors" after "A3. Sign-in methods," or no change. Confidence: low.

### M10. Web page title and small subtitles
- `<title>Security Checklist</title>` is in title case; the h1 and the PDFs use "Security checklist for professors." Proposed: `<title>Security checklist</title>`.
- The h2 headings carry small subtitles ("about 2 hours," "about 4 hours," "personal accounts"); the PDFs put the same text in parentheses. Proposed: parentheses on the web page as well ("A. This week (about 2 hours)"). Confidence: medium.

### M11. Roadmap lines and dividers
- The roadmap has 5 lines ("Recent hacks," "Hacks with AI," "Predictions," "What you can do right now," "AI tools"). The first divider reads "How worried should we be about cybersecurity?" and no divider reads "Recent hacks"; the second divider reads "Hacks with AI, and what AI changes." The structure is settled; I report only that roadmap line 1 never appears as a divider. Proposed: no change, or roadmap line 2 -> "Hacks with AI, and what AI changes" to match its divider. Confidence: low.

## Checked and not reported
- "Skill," "Energy," "Very worried.," the level labels, and the divider wording are settled.
- "Main points," "Roadmap," "Entry methods," "Paycheck theft," "Flaws reported and patched," "Public flaw counts," "Exploits built from patches," "Skeptics," "Range of predictions," "Schneier," "Stamos and Mandia," "Anthropic on timing," "Reasons for caution," "Levels of urgency," "Advice to drop," "After a break-in," "AI agents," "Coding agents," "API keys," and the A1 to C4 titles are plain noun phrases of 1 to 4 words.
