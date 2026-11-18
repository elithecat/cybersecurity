# Cybersecurity in 2026: briefing for professors

Draft of a 60-minute briefing, built from `beamer_template/` in github.com/elithecat/claude_resources.

## Files

- `cybersecurity_2026_briefing.tex` and `.pdf`: the slides, one page per click.
- `cybersecurity_2026_briefing_handout.pdf`: the slides, one page per slide.
- `security_checklist.tex` and `.pdf`: the one-page handout, in 3 levels of urgency.
- `cybersecurity_2026_briefing_clean.pdf`, `cybersecurity_2026_briefing_clean_handout.pdf`, and `security_checklist_clean.pdf`: the same files without the `[verify]` flags. The claims are still unchecked; use the flagged files to see which.
- `source_notes.tex` and `.pdf`: the verification status of each claim on the slides.
- `code/briefing_figures.R`: draws the 2 figures in `figures/`.
- `agent-reports/`: the reports of the research agents and the review agents.

## Build

Run these commands in this folder. XeLaTeX and the Libertinus fonts must be installed.

```
Rscript code/briefing_figures.R
xelatex cybersecurity_2026_briefing.tex    # run twice
xelatex -jobname=cybersecurity_2026_briefing_handout '\PassOptionsToClass{handout}{beamer}\input{cybersecurity_2026_briefing.tex}'    # run twice
xelatex security_checklist.tex
xelatex source_notes.tex    # run twice
```

## Flags on the slides

- `[verify]` in gray: we could not open the source page. Compare the claim with the source before the talk.
- Blue brackets: a local fact that the speaker must supply.

## Timing plan

| Part | Slides | Minutes |
|---|---|---|
| Opening, main points, roadmap | 4 | 3 |
| First half: recent hacks | 11 | 8 |
| First half: hacks with AI, and what AI changes | 12 | 11 |
| First half: predictions, and the answer | 12 | 9 |
| Second half: what you can do right now | 29 | 19 |
| Second half: AI tools | 4 | 4 |
| Takeaways | 1 | 1 |
| Questions | 1 | 5 |
| Backup slides | 3 | 0 |

Table: planned minutes for each part of the talk. The slide counts include the section slide of each part. The slide counts sum to 77, and the minutes sum to 60. The minutes are a plan, not a measurement. A reviewer scaled the word counts and estimated about 57 minutes of speaking time, which leaves little time for questions. We added 4 slides to Section 4 and 1 slide to Section 5 after that estimate. Rehearse once with a timer before the talk.
