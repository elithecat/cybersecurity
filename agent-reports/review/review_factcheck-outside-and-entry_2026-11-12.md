# Review: fact check of "Outside universities, 2026" and "Entry methods in higher education"

- Language model: claude-fable-5-2
- Prompt version: v1
- Role: factcheck-outside-and-entry
- Date: 2026-11-12

## What I checked

- Slide source: `cybersecurity_2026_briefing.tex`, lines 223 to 244 (the 2 assigned frames), and for context lines 165 to 256 (section transition and takeaways).
- `agent-reports/research/research_major_hacks_2026_2026-11-12.md` (all of it; records 2, 5, 6, 7 are the ones behind the first slide).
- `agent-reports/research/research_university_hacks_2026-11-12.md` (all of it; Part 5 is behind the second slide).
- `source_notes.tex` lines 90, 91, 126 (rows for these 2 slides).

## What I could not check

- No original page (BleepingComputer, Becker's, The Record, Sophos, the Texas attorney general portal) could be opened; these hosts are blocked. Both research reports say every figure on these 2 slides comes from search-result summaries, not from the article text. Therefore, my check is slide against report, and not slide against source. The "[verify]" flags on every item are correct and should stay.
- Finding 3 (the denominator of the 69%) rests partly on my background knowledge of how earlier Sophos editions report this statistic. I could not open the 2026 edition.

## Summary of the check, item by item

| Slide item | Report says | Result |
|---|---|---|
| Binance, Oct 29 | "On or about October 29, 2026" | Matches (the report hedges the date; minor) |
| about $6.3 billion stolen | Binance: about $6.3 billion ($6.34 billion in its report). TRM Labs $6.36 billion. Elliptic $6.43 billion. FBI "more than $6 billion" | Matches Binance's own figure. The slide does not say whose figure it is (minor 1) |
| fake job interview, malware on an engineer's laptop | Binance's incident report, as summarized by BleepingComputer and The Register: a DevOps engineer downloaded malware onto a work laptop during a fake job interview | Matches |
| Oracle Health, 19.9 million patients | 19,929,149 "people", from Texas attorney general filings made by Cerner, obtained by Becker's. Oracle has stated no total. Intrusion January 22 to April 1, 2025 | Number matches. Year and wording do not (finding 1) |
| copied with a stolen login | "Filings list credential compromise (stolen login details), per Becker's" | Matches |
| Stryker, Mar 11 | March 11, 2026 | Matches |
| erased company devices with the company's own device-management tool | Administrator account used with Microsoft Intune to factory-reset devices | Matches |
| and some personal phones | Incident record: "Some employees reported that personal devices enrolled in Intune were wiped too." Ranking table: "staff personal phones were wiped" | The slide states an employee report as a fact, and "phones" is narrower than the record (finding 2) |
| Denmark, 8.8 million people | "About 8.8 million people (living residents, people who have died and people who have emigrated), per the ministry" | Matches. Number exceeds the population of Denmark; the slide does not explain (minor 3) |
| through the account of 1 small company | "a small private company's legitimate search access" | Matches |
| Sophos, 95 higher-education organizations hit by ransomware | "95 higher-education organizations hit by ransomware in the prior 12 months"; survey January to March 2026 | Matches |
| Stolen logins 27% | "compromised credentials were the top entry route at 27%" | Matches |
| Phishing email 23% | "phishing 23%" | Matches |
| Software flaws 13% (35% the year before) | "exploited vulnerabilities 13% (35% the year before)" | Matches |
| 50% started with a login or a phishing email | Not in the report. It is the sum 27 + 23 | Derived number (finding 4) |
| 69% restored their data from backups | "69% restored from backups", listed in the row with denominator 95 | Number matches. Denominator in doubt (finding 3) |

## Findings

### Finding 1 (substantive, confidence high): Oracle Health is a 2025 intrusion on a slide titled "2026", and "patients" is not the report's word

- Slide: "Outside universities, 2026"
- Current text: `\textbf{Oracle Health:} records of 19.9 million patients, copied with a stolen login \srccite{(Becker's)}`
- Problem: the research report (record 5) dates the intrusion to January 22 to April 1, 2025. Only the total (19,929,149) was reported in 2026 (Texas attorney general portal, October 2). The other 3 items on the slide carry a 2026 event date or are 2026 events; the audience will read this one as a 2026 break-in. The section transition also says "4 cases outside universities" under "Universities in 2025 and 2026", so the year matters. In addition, the report says "people", and the count comes from state filings made by Cerner; "Oracle has made no public statement of the total."
- Proposed text: `\textbf{Oracle Health:} a 2025 break-in. In October 2026, state filings put the count at 19.9 million people. The attackers used a stolen login \srccite{(Becker's)}`
- Evidence: `research_major_hacks_2026_2026-11-12.md`, record 5 (lines 81 to 87) and table row 5 (line 29).

### Finding 2 (substantive, confidence medium): the Stryker personal-device claim is an employee report, and the report's own record says "devices"

- Slide: "Outside universities, 2026"
- Current text: `attackers erased company devices, and some personal phones, with the company's own device-management tool \srccite{(The Record)}`
- Problem: the incident record says "Some employees reported that personal devices enrolled in Intune were wiped too." Stryker's SEC filing "confirmed a 'global disruption' to its Microsoft environment and gave no device count." The slide states the personal-phone detail as an established fact. "Phones" appears only in the report's ranking table (line 31), not in the incident record (line 101). The report does not say which of its 4 URLs carries the employee reports; the Record URL cited on the slide is the article on the SEC filing, so the citation may not support this detail.
- Proposed text: `attackers erased company devices with the company's own device-management tool. Employees reported that some personal devices were erased as well \srccite{(The Record; BleepingComputer)}`
- Evidence: `research_major_hacks_2026_2026-11-12.md`, record 7 (lines 97 to 104). Which outlet carries the employee reports: not checkable in this session.

### Finding 3 (substantive, confidence low to medium): the denominator of "69% restored their data from backups" is probably not the 95 organizations

- Slide: "Entry methods in higher education"
- Current text: `69\% of the organizations restored their data from backups`
- Problem: the slide header gives the denominator as 95 organizations hit by ransomware, and "the organizations" points to those 95. The research report lists the 69% in the same row as the 95, but says all statistics "were read from search extracts and secondary coverage, not from the reports themselves." In earlier editions of this Sophos series (from my background knowledge, not re-checked), the backup figure is reported among organizations whose data was encrypted, which is a subset of the organizations hit. If that holds for 2026, the slide overstates the base. The item also sits under the title "Entry methods" although it is a recovery statistic.
- Proposed text (until Alyssa opens the Sophos page): `69\% restored their data from backups (Sophos reports this among organizations whose data was encrypted; denominator to check)` and keep the "[verify]" flag. If the page confirms the 95, keep the current text.
- Evidence: `research_university_hacks_2026-11-12.md`, Part 5, lines 378 and 398; https://www.sophos.com/en-us/blog/state-of-ransomware-in-education-2026 (blocked).

### Finding 4 (minor, confidence medium): "50%" is a sum of 2 rounded percentages, and the unit is organizations

- Slide: "Entry methods in higher education"
- Current text: `50\% of these attacks started with a login or a phishing email`
- Problem: the report does not give 50%. It is 27 + 23. With n = 95 and each share rounded, the true sum can lie between 49% and 51% (for example, 26 and 22 organizations give 27% and 23%, and 48 of 95 is 50.5%). The sum is valid only if each organization named one root cause, which the report does not state. The denominator is organizations, not attacks.
- Proposed text: `About half of these organizations said the attack started with a login or a phishing email (27\% + 23\%)`
- Evidence: `research_university_hacks_2026-11-12.md`, line 378.

### Minor 1 (confidence high): say whose figure the $6.3 billion is

- Slide: "Outside universities, 2026"
- Current text: `about \$6.3 billion stolen.`
- Proposed text: `about \$6.3 billion stolen, by Binance's count.`
- Evidence: record 2, line 55: 4 sources give 4 figures. `source_notes.tex` line 126 already lists them, so this is optional.

### Minor 2 (confidence high): the Sophos figures are survey answers about the prior 12 months

- Slide: "Entry methods in higher education"
- Current text: `(Sophos, State of Ransomware in Education 2026: 95 higher-education organizations hit by ransomware)`
- Proposed text: `(Sophos, State of Ransomware in Education 2026: survey of 95 higher-education organizations hit by ransomware in the prior 12 months)`
- Evidence: Part 5, line 378: "Survey January to March 2026 ... hit by ransomware in the prior 12 months." The numbers are what respondents reported, mostly about 2025 attacks.

### Minor 3 (confidence high): 8.8 million exceeds Denmark's population, and the item has no date

- Slide: "Outside universities, 2026"
- Current text: `\textbf{Denmark:} records on 8.8 million people, through the account of 1 small company`
- Proposed text: `\textbf{Denmark, announced Oct 5:} register records on 8.8 million people (living, dead, and emigrated), through the account of 1 small company`
- Evidence: record 6, lines 90 to 92. The Register's headline in the report notes that the count is larger than the number of residents.

### Minor 4 (confidence medium): "Stolen logins" for "compromised credentials"

- Slide: "Entry methods in higher education"
- Current text: `Stolen logins: 27\%`
- Comment: the report's term is "compromised credentials", which also covers guessed and reused passwords. "Stolen or guessed logins: 27\%" is closer. Optional.

### Minor 5 (confidence medium, outside my 2 slides): "Oracle" in the takeaways now refers to 2 different incidents

- Slide: "Takeaways: recent hacks"
- Current text: `A vendor's breach can become our breach (Canvas, Oracle).`
- Comment: the university case is the Oracle business-software flaw (Harvard, Penn, Dartmouth). The slide before the takeaways introduces Oracle Health, a different incident. Proposed: `(Canvas, Oracle business software)`.

## Reasoning

All numbers on the 2 slides (6.3, 19.9, 8.8, Mar 11, Oct 29, 95, 27, 23, 13, 35, 69) match the research reports. No number is wrong against the reports. The substantive problems are of wording and base: 1 item is from 2025 on a 2026 slide, 1 detail is stated more firmly than the report supports, and 1 percentage may have a narrower denominator than the slide implies. The derived 50% is arithmetic that is correct for the rounded figures.

Count: 3 substantive, 6 minor.
