# Review: figures and figure code

Language model claude-fable-5-2, prompt version v1, role: figures-code (reviewer of the 2 figures and `code/briefing_figures.R` against CLAUDE.md section 4.1 and the figure rules in Part 8).

Date: 2026-11-12.

## Summary

4 substantive findings and 6 minor findings. Every number in both figures matches its source. The script reproduces the committed PDFs. The main problems are the size of the figure text on the slide, the unequal periods in the CVE figure, and the source line of the CVE figure.

## What I checked

| Check | Method | Result |
|---|---|---|
| Figure 1 numbers (530, 75, May 22, 2026) | Downloaded https://www.anthropic.com/news/glasswing-initial-update and searched the text | Match. "75 of the 530 high- or critical-severity bugs we've reported have now been patched". Published May 22, 2026 |
| Figure 2 numbers (48,151 and 89,859) | Research report section 4.1, and a new download of the tabulation (see below) | Match |
| Reproduction | Copied `code/` and `figures/` to a scratch folder, ran `Rscript code/briefing_figures.R` there (R 4.3.3, ggplot2 3.4.4) | Both PDFs have the same size in bytes as the committed files (4,570 and 4,577). `cmp` finds 8 different bytes, which start at byte 60 (the creation time in the PDF header). Rasters at 200 dpi are identical. The script prints 14% and 1.87, which match the slide text (14%, 1.9 times) |
| Axes from 0 | Script and rendered slides | Pass. Limits are 0 to 600 and 0 to 100,000, with `expand = c(0, 0)` |
| Gridlines | Script (`panel.grid = element_blank()`) and rendered slides | Pass. No gridlines |
| Labels in words, with units | Rendered slides | Pass with 1 note (finding 8) |
| Color | Script and slides | Pass. Gray for the context bar, Brown red `#8B1A1A` for the bar of interest (rule 4.1, context in gray and 1 accent color). The 2 colors differ in lightness, so they also separate in grayscale |
| Factor labels | Script | Pass. Both factors have matched `levels =` and `labels =` (rule 4.1, last item) |
| Source on the slide | `.tex` lines 298 and 318 | Both slides carry a gray `\srccite` line under the figure. See finding 3 for the CVE figure |
| Pauses | `.tex` lines 301 and 321 | Pass. A `\pause` follows each figure |
| Readability at slide size | Rendered handout pages 16 and 17 at 110 dpi, and arithmetic from the PDF page size | Fail (finding 1) |
| Working tree | `git status` in `/home/user/setup` before and after | Only `agent-reports/review/` is untracked. I changed no project file |

### New download of the CVE tabulation

The brief says that only 4 hosts open. `raw.githubusercontent.com` also opened in this session (HTTP 200). I downloaded 2 files from `github.com/jgamblin/monthlyCVEStats` (branch `main`):

- `README.md`: "2026 year to date | 89,859", "Data through October 31, 2026, excluding rejected CVEs."
- `outputs/2026/ytd_summary.json` (generated 2026-11-01): `current_ytd_total` 89859, `previous_ytd_total` 39639, `yoy_percent` 126.69, `prior_year_totals` 2021: 20149, 2022: 25073, 2023: 28816, 2024: 39953, 2025: 48151.

So the 2 numbers in the figure are confirmed first-hand, and the count for January to October 2025 is 39,639.

### What I could not check

- The National Vulnerability Database itself (nvd.nist.gov). The counts are a third-party tabulation of that database. I did not test whether nvd.nist.gov opens.
- How the figures look on the projector in the room. My judgment of size comes from arithmetic and from a 110 dpi rendering.
- The one-page-per-click PDF. I looked at the handout pages only. Both files include the same 2 figure files.

## Substantive findings

### S1. "Finding outpaces fixing" and "Public flaw counts": the figure text is about half the size of the slide text (confidence high)

- Evidence: the script saves each figure 3.9 inches wide with `base_size = 13`. The slide is 362.8 pt wide (5.04 inches), and the figure column is 0.46 of the text width, about 2.1 inches. The figure shrinks to about 0.55 of its drawn size. On the slide, the axis numbers and the bar labels under the axis are about 5.7 pt, the subtitle is about 5.2 pt, and the axis title is about 7 pt. The body text is 11 pt and the gray citations are about 7 pt. In the rendering of handout pages 16 and 17, the tick labels are the smallest text on the slide. Part 8.1 asks for a figure column of about 0.54 of the width. Part 2.4 asks us to check each rendered figure.
- Second problem with the same cause: the PDFs use Helvetica that is not embedded (`pdffonts`), while the deck uses Libertinus Sans. The default R PDF device also draws each hyphen as a minus sign ("High− or critical−severity" in the PDF text).
- Current code: `theme_bw(base_size = 13)`; `ggsave(..., width = 3.9, height = 3.5)`; `geom_text(..., size = 4.6)`.
- Proposed code (I ran this in the scratch folder; file `/tmp/claude-0/-home-user-Claude-Resources/a1d93863-c675-507d-bc75-982ff8361d3f/scratchpad/figcode/test/t.R`; Libertinus Sans is installed and the output embeds it):
  - `theme_bw(base_size = 12, base_family = "Libertinus Sans")`, with `axis.text = element_text(colour = "black")`, `plot.title.position = "plot"`, and `plot.subtitle = element_text(size = 9.5, colour = "grey30")`.
  - `geom_text(..., size = 4.2, family = "Libertinus Sans")`.
  - `ggsave(..., width = 2.6, height = 2.6, device = cairo_pdf)`.
  - At 2.6 inches the long y-axis title of Figure 1 is cut off at the top. Change it to `y = "Flaws (count)"` and move the severity to the subtitle: `subtitle = "High or critical severity, open-source\nsoftware, as of May 22, 2026"`. This version fits.
  - With these settings the axis numbers are about 8 pt on the slide and the axis title is about 10 pt.
- Optional: widen the figure column from `0.46\textwidth` to `0.50\textwidth` and narrow the text column to `0.48\textwidth`.

### S2. "Public flaw counts": the figure compares 12 months with 10 months (confidence medium to high)

- Current: bars "2025 (12 months)" = 48,151 and "2026 (January to October)" = 89,859. Slide text: "10 months of 2026 had 1.9 times the records of all of 2025".
- Assessment: the labels state the 2 periods, so the figure does not hide the difference. The comparison also understates the growth. But adjacent bars ask the audience to compare like with like, and the like-for-like number exists: 39,639 records in January to October 2025 (`ytd_summary.json`, downloaded today). The research report gives the same growth (+126.7%) but not the count.
- Proposed figure: bars "January to\nOctober 2025" = 39,639 and "January to\nOctober 2026" = 89,859, with the y-axis title "New CVE records (count)". I drew this version in the scratch folder and it fits.
- Proposed slide text: "January to October 2026 had 2.3 times the records of the same months of 2025" (89,859 / 39,639 = 2.27). The numbers-consistency reviewer proposed the same sentence. If Alyssa prefers the "more than all of 2025" message, keep the current figure and labels. Both are accurate.
- Alternative, if 1 more bar is acceptable: 6 gray-and-red bars for 2021 to 2026 (20,149; 25,073; 28,816; 39,953; 48,151; 89,859 for January to October). This shows that counts grew by 15% to 39% a year before 2026. It needs a larger figure.

### S3. "Public flaw counts": the source line names the database, but the counts come from a third-party tabulation, and the line wraps (confidence high)

- Current: `\srccite{(National Vulnerability Database, Nov 1, 2026)}`. On the slide the line breaks after "Nov 1," and "2026)" stands alone on a second line.
- Evidence: the script comment and `source_notes.tex` line 43 both say that the counts are from `github.com/jgamblin/monthlyCVEStats`. The tabulation excludes rejected CVE records. The research report records a different 2025 count from CVE.org (48,244, secondary source).
- Proposed: `\srccite{(NVD, tabulated by J. Gamblin, Nov 1, 2026)}`. The subtitle of the figure already spells out "U.S. National Vulnerability Database".
- Proposed for `source_notes.tex` line 43, last sentence: "A research agent downloaded these counts from a public tabulation of the U.S. National Vulnerability Database (\url{https://github.com/jgamblin/monthlyCVEStats}). A review agent downloaded the tabulation again on November 12, 2026, and the counts match. The tabulation excludes rejected records. We did not check the counts against the database itself." Change line 92 in the same way.

### S4. "Public flaw counts": the slide omits the caveat that a few assigners produce much of the 2026 increase (confidence medium)

- Current: the figure and the bullet "10 months of 2026 had 1.9 times the records of all of 2025", in the section "AI and software flaws". The audience will read the red bar as an effect of AI.
- Evidence: research report, section 4.1 and limitation 8. The tabulation's own note (downloaded today, `outputs/2026/post.txt`): "Some of that is who is publishing rather than what is breaking: the five busiest assigners supplied 7,638 of October's CVEs, 44.8%". October 2026 alone has 17,060 of the 89,859 records. Google's threat group: records that mention the Linux kernel were about 5,000 of the 2026 records through August, with none exploited as zero-days (this page was not downloaded by the research agent in full; label [P-wf]).
- Rule: Part 8.2, "Put caveats on their own line or slide."
- Proposed new bullet after the 1.9 times (or 2.3 times) bullet: "Part of the rise is bookkeeping: 5 organizations filed 45\% of the October records \srccite{(Gamblin, Nov 1, 2026)}". To keep 4 bullets, move the Mandiant bullet or the CISA bullet to the next slide.

## Minor findings

### M1. "Finding outpaces fixing": the figure does not say that 530 is Anthropic's estimate, and the slide omits Anthropic's 2 other reasons for the low count (confidence medium)

- Current bullet: "Maintainers had patched 75 of 530 reported flaws (14\%) by May 22".
- Evidence (Anthropic page, downloaded today): "We estimate that we've disclosed 530 high- or critical-severity bugs to maintainers so far." Anthropic gives 3 reasons for the low count: "we're still early in the 90-day window", "we are likely to be undercounting patches", and "the low volume of patches reflects a genuine problem". The slide title uses the third reason only.
- Proposed bullet: "Maintainers had patched 75 of about 530 reported flaws (14\%) by May 22, early in the 90-day disclosure window". I rate this minor because the next bullets (129,000 verified flaws, the Microsoft quotation) support the title independently. Another reviewer may rate it higher.

### M2. `code/briefing_figures.R`: the fill colors are matched by position (confidence high)

- Current: `scale_fill_manual(values = c(context_gray, brown_red))` in both figures.
- Proposed: `scale_fill_manual(values = setNames(c(context_gray, brown_red), levels(fig1$status)))`, and the same with `levels(fig2$period)`. Rule 4.1: "Map factor labels explicitly, never by position."

### M3. `code/briefing_figures.R`, last line: the CVE counts are typed a second time (confidence high)

- Current: `cat("Ratio, Figure 2:", round(89859 / 48151, 2), "\n")`, and the same 2 numbers inside `data.frame(...)`.
- Proposed: define `cve_2025 <- 48151` and `cve_2026_jan_oct <- 89859` once (as `reported` and `patched` are defined for Figure 1), and use the names in the data frame and in `cat()`. Rule 5.6: "Define each constant once."

### M4. `code/briefing_figures.R`: the file name `found_vs_patched.pdf` does not match the figure (confidence high)

- The figure shows flaws reported to maintainers (530), not flaws found (Anthropic's count of found flaws is 6,202 estimated high or critical). Proposed name: `reported_vs_patched.pdf`, with the same change at `.tex` line 297. The slide title "Finding outpaces fixing" can stay.

### M5. `code/briefing_figures.R`: 2 lines are longer than 80 characters, and the script does not record the R and package versions (confidence high)

- Lines 19 and 49 (the Anthropic quotation and the axis-label function). Rule 5.6 asks for lines under 80 characters.
- Proposed last line: `sessionInfo()` printed to the console, or a comment "Run with R 4.3.3 and ggplot2 3.4.4". The scratch run used these versions.

### M6. `code/briefing_figures.R`: the script depends on the working folder (confidence medium)

- Current: relative path `figures/...` and a comment "Run from the folder cybersecurity_briefing/". If someone runs the script from `code/`, `ggsave` stops with an error because `figures/` does not exist there. No wrong output results. Proposed first line after `library(ggplot2)`: `stopifnot(dir.exists("figures"))`, so that the error message names the cause.

## Items that pass and need no change

- Both y-axes start at 0, and neither axis is cut.
- No gridlines, no legend (the bars carry their labels), no 3D or decoration.
- Each bar has its value printed above it, which suits a slide with 2 bars.
- Both figures have a 1-line encoding note as the subtitle (Part 8.2).
- Neither slide has a caption (Part 8.2), and each slide has a gray source line under the figure.
- Anthropic is a company, not an academic or government source (Part 8.1 asks for one). This deck follows Part 8.2, which has no such rule, and the Anthropic page is the primary source for its own disclosure counts. I do not count this as a finding.

## Reasoning for the ratings

I rated a finding substantive if it changes what the audience can read or conclude from a figure: text too small to read (S1), a comparison of unequal periods where the equal comparison is available (S2), a source line that does not name where the numbers came from (S3), and a missing caveat that changes the interpretation (S4). Code style and naming are minor because they do not change the figures.
