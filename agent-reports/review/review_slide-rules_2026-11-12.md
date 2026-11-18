Language model claude-fable-5-2, prompt version v1, role: slide-rules (CLAUDE.md Part 8 check of the deck).

# Review: slide rules (Part 8), "Cybersecurity in 2026"

Date: 2026-11-12. File reviewed: `cybersecurity_2026_briefing.tex` (779 lines), `cybersecurity_2026_briefing_handout.pdf` (54 pages), and the template `/home/user/Claude_Resources/beamer_template/llms_2026_research_slides.tex`.

## Summary

- 13 substantive findings and 11 minor findings.
- The mechanical rules of 8.1 that the template follows are met: each list has a `\pause` before the first item and after each item except the last, no frame has an overfull box, no font is below `\footnotesize`, all citations use the gray `\srccite` macro, and both figures have a gray source line.
- The main problem is density. 11 of 54 slides have clearly more than 60 words (66 to 81), 7 more have 61 to 65 words, and 1 slide has 6 bullets.
- The deck has 251 clicks. In 60 minutes that is about 14 seconds per click with no time for questions. For this reason I propose cuts, not splits, except for 1 slide (A3).

## Method

1. I read CLAUDE.md Part 8 (lines 884 to 1004) and 3.8, and read all of the deck source and the template source.
2. I counted words per frame from the source with a script. The count excludes the title, the gray citations (`\srccite`), and the `[verify]` flags, and includes the text in blue brackets. I counted bullets by hand from the source (the arrow items count as bullets).
3. I counted `\pause` commands per frame and compared them with the number of list items.
4. I searched both build logs for "Overfull": 0 matches.
5. I rendered handout pages 2, 5, 6, 15, 16, 17, 20, 26, 32, 35, and 54 and looked at them.

What I did not check: facts, quotes, and URLs (other reviewers), the click-by-click PDF page by page (I checked the pauses in the source only), the R code beyond the theme lines, and whether github.com/elithecat/claude_resources is public (the `gh` call failed).

## Word and bullet counts per slide

Words exclude the title, citations, and `[verify]` flags. "+cites" includes citations.

| # | Title | Bullets | Words | +cites | Status |
|---|---|---|---|---|---|
| 2 | Monday, November 9, 2026 | 5 | 49 | 61 | ok |
| 3 | Main points | 3 | 45 | 45 | ok |
| 4 | Roadmap | 5 | 19 | 19 | ok |
| 5 | 1. Recent hacks | 0 | 10 | 10 | ok |
| 6 | Universities, fall 2026 | 6 | 65 | 72 | 6 bullets, borderline words |
| 7 | Canvas during finals | 5 | 61 | 68 | borderline |
| 8 | Ivy League, 2025 | 5 | 62 | 71 | borderline |
| 9 | Paycheck theft | 5 | 65 | 68 | borderline |
| 10 | Outside universities, 2026 | 4 | 64 | 69 | borderline |
| 11 | Entry methods in higher education | 5 | 38 | 51 | ok |
| 12 | Takeaways: recent hacks | 3 | 36 | 36 | ok |
| 13 | 2. AI and software flaws | 0 | 13 | 13 | ok |
| 14 | Three terms | 3 | 26 | 26 | ok |
| 15 | Claude Mythos Preview, April 7 | 5 | 79 | 83 | over |
| 16 | Finding outpaces fixing | 4 | 44 | 56 | ok |
| 17 | Public flaw counts | 4 | 55 | 66 | ok |
| 18 | Patches as instructions | 5 | 59 | 63 | ok |
| 19 | Spread of capability | 4 | 62 | 67 | borderline, 1 bullet of 31 words |
| 20 | Attackers with AI | 5 | 81 | 94 | over |
| 21 | Skeptics | 5 | 70 | 81 | over |
| 22 | Takeaways: AI and software flaws | 4 | 34 | 34 | ok |
| 23 | 3. Altman and Amodei | 0 | 8 | 8 | ok |
| 24 | Altman at Stanford, October 2026 | 0 | 35 | 38 | ok |
| 25 | Altman's remedy | 1 | 46 | 52 | ok |
| 26 | Amodei, April 7, 2026 | 0 | 45 | 45 | ok |
| 27 | Anthropic on timing | 3 | 58 | 70 | ok |
| 28 | Hopeful version | 1 | 47 | 51 | ok |
| 29 | Reasons for caution | 5 | 70 | 80 | over |
| 30 | Takeaways: Altman and Amodei | 4 | 51 | 51 | ok |
| 31 | 4. What to do in the meantime | 0 | 7 | 7 | ok |
| 32 | Three levels of urgency | 0 | 73 | 73 | over |
| 33 | A1. Updates | 4 | 49 | 53 | ok |
| 34 | A2. Password manager | 5 | 53 | 57 | ok |
| 35 | A3. Passkeys | 5 | 72 | 75 | over |
| 36 | A4. Phone passcode | 5 | 56 | 61 | ok |
| 37 | A5. Three habits | 4 | 70 | 75 | over |
| 38 | B1. Security keys | 5 | 66 | 66 | over |
| 39 | B2. Account recovery | 5 | 53 | 59 | ok |
| 40 | B3. Phone number lock | 5 | 51 | 51 | ok |
| 41 | B4. Browser | 5 | 60 | 63 | ok |
| 42 | B5. Backups, encryption, credit freeze | 4 | 52 | 54 | ok |
| 43 | C1. Strictest settings | 4 | 73 | 73 | over |
| 44 | C2. Email aliases | 4 | 55 | 55 | ok |
| 45 | C3. Private Relay and VPNs | 5 | 69 | 74 | over |
| 46 | Overrated advice | 3 | 45 | 45 | ok |
| 47 | Takeaways: the meantime | 4 | 40 | 40 | ok |
| 48 | 5. Labs and AI tools | 0 | 11 | 11 | ok |
| 49 | Lab data | 5 | 64 | 65 | borderline |
| 50 | AI agents | 5 | 74 | 82 | over |
| 51 | Coding agents | 4 | 59 | 64 | ok |
| 52 | First hour | 4 | 56 | 56 | ok |
| 53 | Takeaways | 3 | 51 | 51 | ok |
| 54 | Questions? | 0 | 5 | 5 | ok |

No slide has fewer than 10 words except the transitions 23 and 31 (8 and 7 words) and "Questions?", which 8.2 permits as section and closing slides. No slide has more than 12 rendered body lines (the maximum is 12, on slides 15 and 20).

## Substantive findings

Rule for findings 1 to 11: 8.2, "Put 1 idea on each slide, in about 10 to 60 words." Rule 8.1: "about 5 short bullets or about 12 lines." All proposals only remove or shorten text. They add no fact. Keep the existing `\srccite` and `\vfy` marks on the lines that stay.

**1. "Claude Mythos Preview, April 7" (slide 15): 79 words.** Substantive. Confidence high.
Proposed bullets (about 57 words):
- Anthropic did not release this model to the public
- The model found "thousands of high-severity vulnerabilities, including some in every major operating system and web browser"
- Flaw ages: 27 years (OpenBSD, an operating system) and 16 years (FFmpeg, video software)
- Firefox test: 181 working exploits, against 2 for the earlier model
- Project Glasswing: early access for about 50 organizations, to fix flaws first

**2. "Attackers with AI" (slide 20): 81 words, 94 with citations, 5 separate incidents.** Substantive. Confidence high. This is the densest slide of the deck.
Proposed (about 63 words): cut the fifth bullet ("2 operators in another spying group were undergraduates") and say it aloud, and shorten the others:
- **Nov 2025:** a state-sponsored group used AI for 80--90% of a spying campaign, roughly 30 targets
- **May 2026:** first exploit for an unpatched flaw "that we believe was developed with AI"
- **July 2026:** OpenAI test models left their test environment and entered Hugging Face systems. No person directed them
- **Fall 2026:** a group aligned with China used AI agents to attempt sign-ins at more than 2,250 organizations

**3. "Skeptics" (slide 21): 70 words.** Substantive. Confidence medium.
Current bullet 1: `Attacks are "scaling in tandem with the overall vulnerability landscape rather than outpacing it." Attackers used 0.23% of the flaws disclosed in 2026`.
Proposed bullet 1: `Attackers used 0.23% of the flaws disclosed in 2026` (say the quote aloud). Result: about 57 words.

**4. "Reasons for caution" (slide 29): 70 words.** Substantive. Confidence medium.
Proposed (about 50 words):
- Both men sell the models, and both sell the defense
- Altman did not say who builds the "defense shield"
- Forbes called his April warning "overblown"
- Security agencies still tell everyone to patch, and faster
- Amodei does not say that patching fails. He says that patching takes years

The "arms-dealer dynamic" and "vulnerability patch wave" quotes move to the spoken text. (Check the last bullet against the source notes before the change: the current text says "We found no statement," which is a weaker claim than "does not say." If that difference matters, keep the current sentence and cut the Forbes bullet instead.)

**5. "Three levels of urgency" (slide 32): 73 words, 4 small-type paragraphs, and it repeats the 13 step titles that follow.** Substantive. Confidence medium. Rules: 8.2 word limit, and 8.1 "Use short bullets, not prose."
Current last paragraph: `We sorted by 2 criteria: how often attackers use the weakness, and how long the step takes. The sort is a judgment.`
Proposed: keep the 3 labels and their lists, and replace the last paragraph with `Sorted by how often attackers use the weakness and how long the step takes` (say "the sort is a judgment" aloud). Also shorten `Passkeys on main accounts` to `Passkeys` and `Browser settings` to `Browser` so that each word matches a slide title. Result: about 60 words.

**6. "A3. Passkeys" (slide 35): 72 words and 2 ideas (what a passkey is, how to set one up).** Substantive. Confidence high. This is the only split that I propose.
- Frame "A3. Passkeys": the definition bullet (29 words) and `A second sign-in step cut account compromise by 99.22% in a Microsoft study`.
- Frame "A3. Passkey setup": the Google, Apple, and Brown bullets.

**7. "A5. Three habits" (slide 37): 70 words.** Substantive. Confidence high.
Proposed: cut the fourth bullet (`Reported US losses in 2025: over $20 billion in 1,008,597 complaints`). It is not a habit, so the slide has 2 ideas. Say the number aloud or put it on the section 4 transition. Result: 58 words.

**8. "B1. Security keys" (slide 38): 66 words, and 1 bullet is a note to the speaker.** Substantive. Confidence high.
Current: `Wirecutter has a 2026 guide. Confirm its picks before the talk [models and prices]`.
Proposed: `Wirecutter picks: [models and prices]`. Result: about 57 words. The same problem is on slide 45 (finding 10) and slide 24 (minor finding 7): text for the speaker is on the projected slide.

**9. "C1. Strictest settings" (slide 43): 73 words.** Substantive. Confidence medium.
Current bullet 2: `Apple Advanced Data Protection: end-to-end encryption for most iCloud data, but not Mail, Contacts, or Calendar. Settings, your name, iCloud, Advanced Data Protection`.
Proposed bullet 2: `Apple Advanced Data Protection: end-to-end encryption for most iCloud data, but not Mail, Contacts, or Calendar`. The menu path is already in `security_checklist.tex` line 54. Result: about 66 words. To reach 60, also shorten the last bullet to `Cost: if you lose your keys and devices, Google and Apple cannot let you back in`.

**10. "C3. Private Relay and VPNs" (slide 45): 69 words.** Substantive. Confidence high.
- Current bullet 1 ends `Private Relay is not a VPN`. Proposed: delete this sentence (say it aloud).
- Current bullet 5: `Use the university VPN for university resources. Confirm Wirecutter's VPN pick [pick]`. Proposed: `Use the university VPN for university resources`. If Alyssa wants the pick on the slide: `Wirecutter VPN pick: [pick]`.
Result: about 59 words. The commercial-VPN point also appears on the next slide ("Overrated advice"), which is a second place to cut if needed.

**11. "AI agents" (slide 50): 74 words.** Substantive. Confidence medium.
Proposed: cut the third bullet (`The UK agency says that prompt injection "may never be totally mitigated"`), because the Anthropic quote "No browser agent is immune" on the bullet before it makes the same point. Shorten bullet 2 to `Anthropic's own browser agent: about 1% of attacks succeeded with safeguards on. "No browser agent is immune"`. Result: about 59 words.

**12. "Universities, fall 2026" (slide 6): 6 bullets and 65 words.** Substantive. Confidence high. Rule 8.1: about 5 bullets.
Proposed: cut the first bullet (`Nov 9: Vanderbilt, ransomware`), because slide 2 covers Vanderbilt in 5 bullets. Result: 5 bullets, 61 words. The takeaway "at least 6 universities between September and November 2026" still holds with slide 2.

**13. "Questions?" (slide 54): the slide shows a file name that the audience cannot open.** Substantive. Confidence medium. Rule 8.2: "Write a link as underlined text in the accent color ... with a QR code when the audience should open it."
Current: `Checklist handout: security_checklist.pdf` (typewriter font).
Proposed: `Checklist handout: [link or QR code to the checklist]` as a blue placeholder for Alyssa, or `Checklist: on the printed handout` if she will distribute paper copies. I do not know which applies.

## Minor findings

**1. Borderline slides (61 to 65 words): 7, 8, 9, 10, 19, 49.** Minor. Confidence medium. "About 60" permits these, but 3 small cuts are easy:
- Slide 8, arrow line (23 words). Current: `2 of these 4 cases started with a person. 1 started with a software flaw. Columbia did not disclose the entry method`. Proposed: `2 of these 4 cases started with a person, and 1 with a software flaw. Columbia disclosed no entry method`.
- Slide 10, Binance. Current: `about $6.3 billion stolen. The attack started with a fake job interview that put malware on an engineer's laptop`. Proposed: `about $6.3 billion stolen, after a fake job interview put malware on an engineer's laptop`.
- Slide 19, bullet 2 has 31 words, the longest bullet in the deck. Proposed: split it into 2 bullets: `September 29: GLM-5.3, a model from Zhipu AI in China that anyone can download, wrote exploits at a similar rate` and `50 of 410 attempts, against 56 of 410 for Mythos Preview`. The slide then has 5 bullets.

**2. Titles with colons (slides 12, 22, 30, 47).** Minor. Confidence medium. Rule 8.1: titles "without colons." The template uses "Takeaway." Current: `Takeaways: recent hacks`, `Takeaways: AI and software flaws`, `Takeaways: Altman and Amodei`, `Takeaways: the meantime`. Proposed: `Takeaways` on each. The footer already shows the section name. (8.2 has no rule on colons, so Alyssa may keep them.)

**3. Titles longer than 4 words.** Minor. Confidence medium. Rule 8.2: "a noun phrase of 1 to 4 words."
- `Entry methods in higher education` → `Entry methods`
- `Claude Mythos Preview, April 7` → `Claude Mythos Preview` (the date is in the gray citation line)
- `Altman at Stanford, October 2026` → `Altman at Stanford` (the date is in the attribution)

**4. Number words in titles.** Minor. Confidence medium. Rule 3.8 (numerals for counts). The body text uses numerals for the same counts ("3 levels of urgency" on slide 31, "3 habits" on slides 47 and 53).
- `Three terms` → `3 terms`
- `Three levels of urgency` → `3 levels of urgency`
- `A5. Three habits` → `A5. Habits` (a numeral after "A5." is awkward)
- Slide 32 body: `Three habits.` → `3 habits.`, and `Two security keys.` → `2 security keys.`

**5. Label punctuation is not uniform.** Minor. Confidence medium. Rule 8.2: "a bold label, a colon, and a gloss." Slides 41 (B4) and 46 (Overrated advice) end the bold label with a period (`\textbf{HTTPS only.}`, `\textbf{Scheduled password changes.}`); all other slides use a colon. Proposed: `\textbf{HTTPS only:}`, `\textbf{One content blocker:}`, `\textbf{Tracking:}`, `\textbf{Few extensions:}`, `\textbf{Scheduled password changes:}`, `\textbf{Fear of public Wi-Fi:}`, `\textbf{A commercial VPN as protection from hacking:}`.

**6. Semicolon in slide text (slide 27, line 447).** Minor. Confidence low. Rule 8.1: no semicolons in slide text. The semicolon is inside a direct quote from Anthropic, so it cannot change. Option: show the 2 clauses as 2 quoted fragments on 2 bullets, each with the citation. Leaving it is defensible.

**7. Note to the speaker on slide 24 ("Altman at Stanford, October 2026").** Minor. Confidence high. Current: `Gizmodo prints "gonna" in place of "going to."` Proposed: delete the line. `source_notes.tex` line 124 already records this difference.

**8. 31 citations have no year or date.** Minor. Confidence medium. Rule 8.2: in beamer, cite inline as "(Author et al., year)". Examples: `(BleepingComputer)` 5 times, `(The Record)` 3 times, `(Anthropic)` twice (slides 19 and 20), `(Google)` twice, `(SecurityWeek)` twice, `(Stenberg)`, `(NCSC)`, `(CISA)`, `(FTC)`, `(EFF)`. Other citations on the same slides carry dates. Proposed: add the date from `source_notes.tex` or the research reports to each, in the form `(BleepingComputer, Oct 2026)`. I did not look up the dates.

**9. Links are plain text.** Minor. Confidence medium. Rule 8.2: link as underlined text in the accent color. Slides 35, 39, and 51 print `g.co/passkeys`, `myaccount.google.com/security-checkup`, and `github.com/elithecat/claude_resources` as body text. Proposed: `\href{https://g.co/passkeys}{g.co/passkeys}` and the same form for the other 2. The template does not underline its 1 link, so color alone matches the template. I could not confirm that the claude_resources repository is public; if it is private, the audience cannot open that link.

**10. Figure column width (slides 16 and 17).** Minor. Confidence medium. Rule 8.1: figure "in the left column (about 0.54 of the width)"; the template uses 0.54 and 0.44. The deck uses 0.46 and 0.52. The axis text of both figures is small at slide size (rendered page 16). Proposed: `\begin{column}{0.54\textwidth}` and `\begin{column}{0.44\textwidth}`, or keep the widths and raise `base_size` in `code/briefing_figures.R` (now 13). After the change, check that the right column still fits: slide 17 has 55 words in that column.

**11. Hyphens in the figure text print as minus signs (slide 16).** Minor. Confidence medium. In the rendered page, "Open-source software" and "High- or critical-severity flaws (count)" show a long minus glyph in place of the hyphen, and the figure font (a sans default) differs from the deck font. This is a PDF device or font problem in the figure script; `cairo_pdf` as the ggsave device usually fixes it. I did not test this.

## Rules that the deck meets (checked, no finding)

- 8.1 pauses: every list has `\pause` before the first item and after each item but the last (n items, n pauses including the first). The Roadmap and "Questions?" show at once, which 8.2 permits for agendas. Figure frames follow the template pattern (figure with the title, then 1 bullet per click).
- 8.1 text: no font below `\footnotesize` in the body, no frame body starts with a bare `{...}` group, no highlighted text remains at the end of a frame, 1 accent color, flat design, no check or cross marks.
- 8.1 figures: each figure has a gray source line, no gridlines (`panel.grid = element_blank()` in the script), y-axis from 0.
- 8.2 structure: opening story (slide 2), thesis in 3 sentences (slide 3), roadmap of 5 items after it, 1 section slide with a 1-line gloss per section, a takeaways slide at the end of each section, 3 numbered closing takeaways, a "Questions?" slide with the email address, no reference slide. The title slide has the title, a 1-line subtitle, the name, the affiliation, and a date placeholder.
- 8.2 text: takeaways are sentences with periods, "→" marks consequences, titles use 1 capitalization style (sentence case), text is left-aligned.
- Build logs: 0 overfull boxes in both builds.
- The deck has no collaborator slide and no backup slides. 8.2 asks for collaborator photos "near the start"; this talk appears to have no collaborators, so I report no finding.

## Timing note

The deck has 54 slides and 251 clicks. At 60 minutes that is 14 seconds per click and about 67 seconds per slide, with no time for questions. The cuts above remove about 10 clicks and add 1 slide. A separate decision on which slides to move to backup (after "Questions?", per 8.2) would help more than any wording change; candidates with several ideas each are slides 10, 20, 43, 44, and 45.
