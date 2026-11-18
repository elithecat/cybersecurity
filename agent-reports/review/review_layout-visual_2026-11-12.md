language model claude-fable-5-2, prompt version v1, role: layout-visual (rendered-page review of the slides, the checklist, and the source notes)

# Layout and visual review, 2026-11-12

## Result

3 substantive findings and 6 minor findings. No text passes a margin, no LaTeX error or overfull box exists, and no content moves between clicks in any of the 54 frames.

## What I checked, and how

- Rendered all 54 pages of `cybersecurity_2026_briefing_handout.pdf` with `pdftoppm -r 80 -png` and read every page as an image (6 contact sheets of 9 slides at full 80 dpi size, then slides 11, 16, 17, 20, 32, and 52 again at 130 dpi).
- Rendered `security_checklist.pdf` (1 page) and `source_notes.pdf` (4 pages) and read each page.
- Copied the folder to `/tmp/claude-0/-home-user-Claude-Resources/a1d93863-c675-507d-bc75-982ff8361d3f/scratchpad/lv/build/` and compiled all 4 targets there with XeLaTeX (deck twice, handout, checklist, source notes). All exit 0. Overfull boxes: 0 in every log. Underfull boxes: 0. The only warning is hyperref "Option `pdfauthor' has already been used" (harmless). The rebuilt deck has the same text as the committed PDF (251 pages, 54 handout pages).
- Overlay check, all 54 frames (not only 3): (a) for each click page, every word with its coordinates (`pdftotext -bbox`) must appear at the same coordinates on the last page of its frame; 0 words moved. (b) Pixel check at 40 dpi: every inked pixel of a click page must be inked on the last page of the frame; 0 frames failed. The figure frames, the `\vfill` frames (Main points, Altman quotes, Three levels of urgency, Takeaways), and the transition frames are all stable.
- Measured each handout page from the word boxes: lines, words in body size, horizontal extent, and lines that contain only small gray text.
- Tested the fixes that I propose for findings 1, 2, 7, and 8 in a second scratch copy (`.../scratchpad/lv/fix/`). I changed no file in the repository except this report.

## What I could not check

- Legibility in the real room (projector size, distance of the last row). I judge size by the ratio to the 11pt body text and by rule 8.1 ("Do not reduce fonts below `\footnotesize`").
- Rendering on a computer without Helvetica (finding 5).

## Measurements that support several findings

- Frame: 362.8 x 272.1 pt. Body text: 11pt (Libertinus Sans). Text block: x from 28 to 334 pt, so the left and right margins are equal (28 pt). No word passes x = 334 on a normal frame (342 inside the right column of the 2 figure frames, still 21 pt from the edge).
- Citations and `[verify]`: `\scriptsize` = 8pt, the same as the template deck (`llms_2026_research_slides.tex`, line 80). I do not report the 8pt citations as a finding, because the template sets them.
- Figure text on the slide (figure PDF is 280.8 pt wide, placed at 0.46 of the text width = 141 pt, scale 0.50): axis numbers and category labels 5.2pt, axis title 6.5pt, subtitle 4.8pt, bar labels 6.5pt.

## Substantive findings

### 1. Figure labels are about half the size of the body text (substantive, confidence high)

- Where: slides "Finding outpaces fixing" (16) and "Public flaw counts" (17); `code/briefing_figures.R` lines 9 to 13, 27 to 33, 45 to 52.
- Current: `theme_bw(base_size = 13)`, `ggsave(..., width = 3.9, height = 3.5)`, then `\includegraphics[width=\textwidth]` in a column of 0.46 of the text width. The scale of 0.50 gives axis numbers of 5.2pt, an axis title of 6.5pt, and a subtitle of 4.8pt beside 11pt body text. The y-axis titles ("High- or critical-severity flaws (count)", "Cataloged software flaws (CVE records)") and the subtitles are not readable at 80 dpi on a screen, and will not be readable from the back of a room.
- Proposed (tested; rendered result is clear and nothing overlaps): save the figures at the size of the slide column so that the text is 8pt or larger.
  - `theme_deck <- theme_bw(base_size = 12) + theme(panel.grid = element_blank(), legend.position = "none", axis.title.x = element_blank(), plot.subtitle = element_text(size = 10, colour = "grey30"), plot.title.position = "plot")`
  - Figure 1: `labs(y = "Flaws (count)", subtitle = "High- or critical-severity flaws in\nopen-source software, May 22, 2026")`
  - Figure 2: `labs(y = "CVE records (count)", subtitle = "U.S. National Vulnerability Database")`, category label `"2026\n(Jan to Oct)"` in place of `"2026\n(January to October)"` (the long label collides with "(12 months)" at the larger size).
  - Both: `geom_text(..., size = 4.2)` and `ggsave(..., width = 2.6, height = 2.7, device = cairo_pdf)`.
  - Result on the slide (scale 0.75): axis numbers 7.2pt, axis title 9pt, subtitle 7.5pt, bar labels 9pt. In Figure 2, also set `limits = c(0, 105000)` so that the label "89,859" does not touch the panel border.
- Evidence: CLAUDE.md 8.1 "Do not reduce fonts below `\footnotesize`"; 8.2 "Check that the code is readable at slide size" (the same test applies to a figure); measured sizes above; renders `z1617.png` (before) and `f1617.png` (after) in the scratch folder.

### 2. Citations break across lines, and `[verify]` stands alone on a line (substantive, confidence high)

- Where: 17 lines on 13 slides. `cybersecurity_2026_briefing.tex` lines 84 and 93 (the 2 macros).
- Current, citation split in the middle (11 cases): slide 2 "(The Register, / Nov 10, 2026) [verify]"; slide 7 "(Inside Higher / Ed, May 11, 2026) [verify]"; slide 8 "(Daily / Pennsylvanian) [verify]"; slide 17 "(National Vulnerability Database, Nov 1, / 2026)"; slide 20 "(Microsoft, Oct / 21, 2026)"; slide 21 "(VulnCheck, / Jul 2026) [verify]"; slide 25 "(Axios, Apr 6, / 2026) [verify]"; slide 28 "(CNBC, May 5, / 2026) [verify]"; slide 29 "(Security / Boulevard) [verify]"; slide 36 "(Wall Street Journal, / 2023) [verify]"; slide 45 "(CISA, / Dec 2024) [verify]".
- Current, `[verify]` alone on a line (6 cases): slide 7 (items 1 and 3), slide 17 (last item), slide 29 (Forbes item), slide 34 (Wirecutter item), slide 36 (item 2).
- Proposed (tested: all 17 cases disappear, no slide gains a line, and slide 17 loses 1 line):
  - `\newcommand{\srccite}[1]{{\scriptsize\textcolor{citecol}{\mbox{#1}}}}`
  - `\newcommand{\vfy}{\unskip\nobreakspace{\scriptsize\textcolor{citecol}{[verify]}}}`
  - With these macros, 2 citations are too long for their line and need shorter text. Slide 17, under the figure: `\srccite{(NVD, Nov 1, 2026)}` (the plot subtitle already prints "U.S. National Vulnerability Database"). Slide 11: see finding 4.
  - After the change, a complete citation still moves to its own line where it does not fit (for example "(The Record) [verify]" on slides 2 and 6). I regard a complete citation on its own line as acceptable; a half citation or a lone flag is not.
- Evidence: handout pages listed above; the test build `.../scratchpad/lv/fix/hfix.pdf` (0 overfull boxes after the 2 shorter citations).

### 3. 2 slides fill the whole frame, and 23 slides have more than 60 words (substantive, confidence medium)

- Where: "Attackers with AI" (20): 86 words, 12 lines, text from y = 43 to 237 of a body area of about 40 to 245. "Claude Mythos Preview, April 7" (15): 84 words, 12 lines, y = 44 to 238. Next: AI agents (50) 79, Passkeys (35) 77, Strictest settings (43) 77, Skeptics (21) 75, Reasons for caution (29) 75.
- Current: these slides are at the limit of rule 8.1 (about 12 lines) and above the limit of rule 8.2 (about 10 to 60 words on a slide). Counts exclude the gray citations. 23 of the 44 content slides have 61 or more words.
- Proposed for slide 20 (same words, 2 frames): frame "Attackers with AI" keeps the items "Nov 2025", "May 2026", and "July 2026". A new frame "Attackers with AI, fall 2026" has the items "Fall 2026: a group aligned with China used AI agents to attempt sign-ins at more than 2,250 organizations (Microsoft, Oct 21, 2026)" and "2 operators in another spying group were undergraduates (Anthropic, Sep 2026)".
- Proposed for slide 15: move the last item to the next frame, "Finding outpaces fixing", as its first item: "Project Glasswing: about 50 organizations got early access, to fix flaws first". This needs the right column of that frame to lose 1 item, so Alyssa must choose. I do not propose cuts for the other slides, because a cut is a content decision.
- Evidence: CLAUDE.md 8.1 "Limit each frame to one idea and to about 5 short bullets or about 12 lines"; 8.2 "Put 1 idea on each slide, in about 10 to 60 words"; measured word and line counts (script `lines.py` in the scratch folder). The timing plan in README.md already has 54 slides in 60 minutes, so a split costs time. This is why my confidence is medium.

## Minor findings

### 4. Source line above the list on 4 slides sits at a different indent and close to the first bullet (minor, confidence medium)

- Where: "Paycheck theft" (9), "Entry methods in higher education" (11), "Claude Mythos Preview, April 7" (15), "Patches as instructions" (18).
- Current: the frame body starts with a small gray line, for example `\srccite{(Microsoft, October 2025)} \vfy`, at x = 28 pt. The bullets start at x = 41 pt, 3 pt below the line. On all other slides the citation follows its item. On slide 11 the line wraps: "(Sophos, State of Ransomware in Education 2026: 95 higher-education organizations hit by / ransomware) [verify]".
- Proposed: put the citation at the end of the first item. Slide 9: `\item Since March 2025, one group has sent phishing emails to university employees \srccite{(Microsoft, October 2025)} \vfy`. Slide 15: first item ends `... to the public \srccite{(Anthropic, Apr 7, 2026)}`. Slide 18: first item ends `... where the flaw was \srccite{(Anthropic, Jun 8, 2026)}`. Slide 11: a lead-in line in body size, `95 higher-education organizations hit by ransomware \srccite{(Sophos, 2026)} \vfy`, then `\medskip` before the list.
- Evidence: CLAUDE.md 8.2 "In beamer, cite inline as (Author et al., year)"; renders of slides 9, 11, 15, 18.

### 5. Figures use Helvetica that is not embedded, and hyphens print as minus signs (minor, confidence high)

- Where: `figures/found_vs_patched.pdf`, `figures/cve_counts.pdf`.
- Current: `pdffonts` reports "Helvetica, Type 1, emb no". The text layer of Figure 1 has U+2212 (minus sign) in "High− or critical−severity" and "Open−source"; the render shows long dashes. The deck text is Libertinus Sans.
- Proposed: `ggsave(..., device = cairo_pdf)` (tested: the font is embedded and the hyphens are hyphens). To match the deck, also add `text = element_text(family = "Libertinus Sans")` to `theme_deck` and `family = "Libertinus Sans"` to each `geom_text` (not tested).
- Evidence: `pdffonts`, `pdftotext` on the figure files; CLAUDE.md 8.1 "Do not paste screenshots with different fonts" (by analogy).

### 6. "Questions?" appears twice on the last slide (minor, confidence low)

- Where: slide 54, tex line 769.
- Current: frame title "Questions?" and the centered body line "Questions?".
- Proposed: `\begin{frame}{}` (keep the centered line, the email address, and the footer).
- Evidence: render of slide 54. CLAUDE.md 8.2 asks for a "Questions?" slide with the email address; it does not ask for the word twice.

### 7. Source notes: table captions are narrower than the tables, and "https:" stands alone on a line (minor, confidence high)

- Where: `source_notes.tex` line 11; `source_notes.pdf` pages 1, 3, and 4.
- Current: the 3 longtable captions are 4 inches wide and centered above tables of 6.9 inches, with loose word spacing ("Novem- / ber 12, 2026."). In Table 1, 2 rows print the URL as "https:" on one line and "//www.anthropic.com/glasswing" on the next.
- Proposed (tested: 4 pages, 0 overfull boxes, captions at full width, URL breaks after "com/"): add after line 11
  - `\setlength{\LTcapwidth}{\textwidth}`
  - `\mathchardef\UrlBigBreakPenalty=9999`
- Evidence: renders `snA.png` and `snB.png` in the scratch folder.

### 8. Checklist: 9pt text with the bottom fifth of the page empty, and placeholders not in blue (minor, confidence medium)

- Where: `security_checklist.tex` line 20 (`\begin{document}\small`), lines 32, 70, 73.
- Current: body text is 9pt, and the page is blank below about 80% of its height. The placeholders "[option to confirm]", "[confirm with Brown OIT]", and "[number]" print in black or dark red, while the introduction of the source notes says that local facts are in blue brackets.
- Proposed: `\begin{document}` without `\small` (tested: still 1 page, 0 overfull boxes). Define `\newcommand{\fillin}[1]{{\color[HTML]{1F5FA8}[#1]}}` and write `Brown: \fillin{option to confirm}.`, `\section{After a suspected break-in \fillin{confirm with Brown OIT}}`, and `another phone: \fillin{number}.`
- Evidence: render `chk-1.png`; README.md "Blue brackets: a local fact that the speaker must supply."

### 9. Spacing differs between slides (minor, confidence low)

- Current: `\itemsep` takes 6 values (7, 8, 9, 10, 12, 14pt), and frames are centered vertically, so the first line of text starts between y = 42 pt (slide 32) and y = 94 pt (slide 14). When Alyssa moves from slide 13 to 15, the first line jumps 50 pt. On slide 52, the lead-in "After a suspected break-in [...]" has no space before the first bullet, while the bullets are 9pt apart.
- Proposed: on slide 52, add `\medskip` after the lead-in line. For the vertical start, no change unless Alyssa wants top-aligned frames (`\documentclass[11pt,t]{beamer}`); the template deck also centers its frames, so the deck follows its model.
- Evidence: measured y-ranges; template `llms_2026_research_slides.tex`.

## Points that I checked and do not report as findings

- Figure column is 0.46 of the width; rule 8.1 says about 0.54 for frames with a figure and questions. With finding 1 fixed, the figure is legible at 0.46, and a narrower text column would push slide 17 past 13 lines.
- Columns on the 2 figure frames: the figure (with its source line) ends at y = 175 pt and the text column at y = 235 pt. The imbalance is normal for a figure beside a list.
- `\lvl` headings on slide 32 looked like a serif font at 80 dpi. At 200 dpi and in `pdffonts` they are Libertinus Sans Bold. No finding.
- The title slide, the 5 section slides, the 4 quotation slides, and the 5 takeaways slides are well balanced.
- Line "Gizmodo prints "gonna" in place of "going to."" on slide 24 stands alone by design (a caveat on its own line, rule 8.2).

## Reasoning

I separated what a reader in the room cannot read (finding 1), what looks like an error on the page (finding 2), and what makes a slide heavy (finding 3) from matters of consistency (4 to 9). I marked a finding substantive when it affects whether the audience can read the slide, and minor when it affects only polish. I proposed only changes that I compiled in a scratch copy, except where I say "not tested".
