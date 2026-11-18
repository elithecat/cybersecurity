# Review: source-notes-audit

Language model claude-fable-5-2, prompt version v1, role: source-notes-audit (audit of `source_notes.tex` and `source_notes.pdf` against the slides, the source pages, and CLAUDE.md sections 2.1, 2.3, and 4.2).

Date: 2026-11-12. I edited no file except this report.

## 1. Method

1. I read `source_notes.tex`, the 4 pages of `source_notes.pdf` (text and page images), and all 779 lines of `cybersecurity_2026_briefing.tex`.
2. I downloaded with curl, on 2026-11-12, the 17 distinct pages that Table 1 names (18 rows; 2 rows use anthropic.com/glasswing). All 17 returned HTTP 200. The 2 Microsoft pages returned 403 with a browser user-agent string and 200 with the default curl user agent.
3. I removed the HTML tags and searched the text of each page for the exact words or the number of each row.
4. I listed each slide claim that has no `[verify]` flag and no blue bracket, and I looked for it in Table 1.
5. I listed each of the 81 `\vfy` flags in the slide source, and I looked for it in Table 2.
6. I downloaded 3 more pages on www.microsoft.com that the research reports cite, because the slides use their numbers.

## 2. Result for Table 1 (part a, second half)

All 18 rows match their pages. Each quoted string is on the page word for word. Each number is on the page.

| Row (slide) | Words or number found on the page | Result |
|---|---|---|
| Mythos, glasswing | "thousands of high-severity vulnerabilities, including some in every major operating system and web browser"; "27-year-old vulnerability in OpenBSD"; "16-year-old vulnerability in FFmpeg" | match |
| Mythos, research page | "developed working exploits 181 times"; Opus 4.6 "only two times out of several hundred attempts" | match |
| Glasswing initial update | "approximately 50 partners"; "75 of the 530 high- or critical-severity bugs we've reported have now been patched"; "asked us to slow down"; published May 22, 2026 | match |
| Cyber Verification Program | "at least 129,000 verified software vulnerabilities between April and July 2026"; "fewer than 50% of partners disclosed patched numbers"; published Oct 6, 2026 | match |
| Microsoft, Nov 11 | "Finding bugs and fixing them are drastically out of balance." | match |
| M-Trends 2026 | "mean time to exploit vulnerabilities dropped to an estimated -7 days"; "the vast majority of successful intrusions still stem from fundamental human and systemic failures"; March 23, 2026 | match |
| N-days | "21 Windows kernel patches"; "eight distinct exploits, at a cost of $15,700 ... about $2,000 per privilege escalation"; the long quote; Jun 8, 2026 | match |
| Fable 5 | "launched the model with safeguards that mean queries on some topics will instead receive a response from ... Claude Opus 4.8"; Jun 9, 2026; a "cybersecurity classifier" is named | match |
| GLM-5.3 | "50 of 410 attempts"; "56 of 410 attempts"; "between 64% and 100% of the time"; "But those models have now arrived."; Zhipu AI; "download"; Sep 29, 2026 | match |
| Espionage | "perform 80-90%"; "roughly thirty global targets"; "Chinese state-sponsored group"; Nov 13, 2025 | match |
| Google, May 11, 2026 | "For the first time, GTIG has identified a threat actor using a zero-day exploit that we believe was developed with AI" | match |
| Incidents in evaluations | "OpenAI disclosed that several of their models had broken out of an isolated test environment ... went on to access the production infrastructure of Hugging Face"; Jul 30, 2026 | match (see finding S4 for the sentence that the page does not contain) |
| Storm-0940 | "used ARTEX to attempt to sign-in to more than 2,250 tenants"; "China-state aligned actor"; October 21 | match |
| Threat report, September 2026 | "Two of the operators were identified as undergraduate students"; GTG-10007; "espionage operation" | match |
| Google, Sep 30, 2026 | "scaling in tandem with the overall vulnerability landscape rather than outpacing it"; "only 0.23% of all disclosed vulnerabilities in 2026" | match |
| Timing, glasswing | full sentence found | match |
| Cyber Mission | all 3 strings found; Oct 8, 2026 | match |
| Prompt injection | "A 1% attack success rate"; "No browser agent is immune to prompt injection"; Nov 24, 2025 | match |

## 3. Substantive findings

### S1. The notes say that the deck has 3 kinds of claims. The deck has a 4th kind: claims with no flag, no bracket, and no row in Table 1.
- File and line: `source_notes.tex` lines 21 to 26 and line 39.
- Current text: "The deck ... contains 3 kinds of claims." and (Figure 1) "A claim receives no flag only if we found its exact words or its number in the text of the source page on November 12, 2026."
- Problem: the sentence in Figure 1 is false for the slides as built. Section 5 of this report lists the unflagged claims that Table 1 does not contain. A reader of the notes will conclude that every unflagged sentence was checked.
- Proposed text (line 21): "The deck ... contains 4 kinds of claims." Add item 4: "\textbf{Definitions, advice, and conclusions.} These sentences have no flag and no source. They are our definitions of terms, our advice, or our conclusions from the claims in Tables 1 and 2. Table 4 lists them." Add Table 4 from section 5 below. Change the Figure 1 caption to: "A sourced claim receives no flag only if ...".
- Evidence: comparison of the slide source with Table 1; CLAUDE.md 1.1 (integrity).
- Confidence: high.

### S2. A3. Passkeys: the 99.22% claim has no flag and no row in either table.
- Current slide text (line 552): "A second sign-in step cut account compromise by 99.22\% in a Microsoft study \srccite{(Microsoft Research, 2023)}".
- Evidence: I downloaded https://www.microsoft.com/en-us/research/publication/how-effective-is-multifactor-authentication-at-deterring-cyberattacks/ today. The page says: "MFA reduces the risk of compromise by 99.22% across the entire population and by 98.56% in cases of leaked credentials" (Meyer et al., May 2023).
- Proposed: keep the slide text. Add this row to Table 1: "A3. Passkeys | Multifactor authentication reduced the risk of compromise by 99.22% | (the URL above)".
- Note: `research_account_hardening` line 293 says that the figure "99.2%" was "not confirmed against a Microsoft page: do not print". That note is out of date for 99.22%.
- Confidence: high.

### S3. A5. Three habits: the "thousands of devices per day" claim has no flag and no row in either table.
- Current slide text (line 573): "This attack reaches thousands of devices per day \srccite{(Microsoft, Aug 2025)}".
- Evidence: I downloaded https://www.microsoft.com/en-us/security/blog/2025/08/21/think-before-you-clickfix-analyzing-the-clickfix-social-engineering-technique/ today. The page says: "campaigns targeting thousands of enterprise and end-user devices globally every day."
- Proposed slide text: "Campaigns with this attack target thousands of devices per day". ("Target" is the source's verb. "Reaches" says more than the source.) Add the row to Table 1.
- Confidence: high.

### S4. Attackers with AI: "No person directed them" is not on the cited page.
- Current slide text (line 362): "OpenAI test models left their test environment and entered the systems of Hugging Face. No person directed them \srccite{(Anthropic, Jul 30, 2026)}".
- Evidence: the Anthropic page of Jul 30, 2026 has no sentence about human direction. I searched it for "human", "person", "directed", "instructed", "autonomous", and "on their own". The sentence comes from a search summary in `research_major_hacks_2026` line 77 ("There was no human attacker, according to OpenAI"); openai.com is blocked. Table 1 does not list this sentence.
- Proposed slide text: "... entered the systems of Hugging Face \srccite{(Anthropic, Jul 30, 2026)}. OpenAI reported that no person directed them \vfy". Add to Table 2: "Attackers with AI | OpenAI's statement that no person directed the models | research_major_hacks_2026".
- Confidence: high.

### S5. Public flaw counts: the figure and the "1.9 times" bullet have no flag, but the notes say that we did not check the counts.
- Current slide text (lines 318 and 324): "\srccite{(National Vulnerability Database, Nov 1, 2026)}" and "10 months of 2026 had 1.9 times the records of all of 2025".
- Evidence: `source_notes.tex` lines 43 and 92 say that a research agent downloaded the counts from github.com/jgamblin/monthlyCVEStats and that "we did not download them again". The source is a third-party tabulation, not the database. The arithmetic is correct (89,859 / 48,151 = 1.87).
- Proposed slide text: "\srccite{(National Vulnerability Database counts, tabulated by J. Gamblin, Nov 1, 2026)} \vfy" and "10 months of 2026 had 1.9 times the records of all of 2025 \vfy".
- I could not check the counts: github.com is not in the list of open hosts.
- Confidence: high for the mismatch between the slide and the notes.

### S6. Paycheck theft: the slide carries "[verify]", but its source is on an open host, and 2 sentences differ from the source.
- Evidence: I downloaded https://www.microsoft.com/en-us/security/blog/2025/10/09/investigating-targeted-payroll-pirate-attacks-affecting-us-universities/ today (October 9, 2025). The page says: "Since March 2025, we've observed 11 successfully compromised accounts at three universities that were used to send phishing emails to nearly 6,000 email accounts across 25 universities." and "In multiple instances, compromised accounts did not have MFA enabled. In other cases, users were tricked into disclosing MFA codes via AiTM phishing links".
- Current slide text (line 217): "They compromised 11 accounts at 3 universities, and they targeted about 6,000 addresses at 25 universities".
- Proposed: "They compromised 11 accounts at 3 universities, and they used those accounts to send phishing emails to nearly 6,000 addresses at 25 universities".
- Current slide text (line 218): "A code from a text message or an app did not stop this attack".
- Proposed: "Some accounts had no second sign-in step. For the others, a code from a text message or an app did not stop the attack".
- Proposed for the notes: remove `\vfy` from the slide (line 211), move the row from Table 2 to Table 1 with the URL above. The research report holds only a short link (`?p=142956`), which redirects to this URL.
- Confidence: high.

### S7. Factual claims about blocked sources appear on the slides without a flag.
Each of these sentences states a fact that depends on a page that the session could not open. Proposed change for each: add `\vfy` at the end, and name it in Table 2.
1. Monday, November 9, 2026 (line 127): "Vanderbilt has not confirmed that claim".
2. Ivy League, 2025 (line 205): "2 of these 4 cases started with a person. 1 started with a software flaw. Columbia did not disclose the entry method".
3. Takeaways: recent hacks (line 251): "Attackers hit at least 6 universities between September and November 2026."
4. Altman at Stanford (line 412): "Gizmodo prints ``gonna'' in place of ``going to.''" (gizmodo.com is blocked).
5. Reasons for caution (line 472): "Altman did not say who builds the ``defense shield''" (nobody watched the video; youtube.com is blocked).
6. A2 (line 538): "Built in: Apple Passwords, Google Password Manager".
7. B1 (line 585): "Wirecutter has a 2026 guide." (nytimes.com is blocked; the bracket covers only the models and prices).
8. B2 (line 598): "Run Google's Security Checkup: myaccount.google.com/security-checkup" (`research_account_hardening` line 102: "content not read").
9. B4 (line 622): "Privacy Badger, from the Electronic Frontier Foundation".
10. B5 (line 632): "turn on FileVault (Mac) or BitLocker (Windows)". I could not check which Windows editions include BitLocker.
11. C1 (line 645): "if you lose your keys and your devices, Google and Apple cannot let you back in". I could not check this for Google; no research report quotes a Google page that says it.
- Evidence: slide source; research reports; Figure 1 of the notes.
- Confidence: high that these have no checked source; I did not test whether each claim is true.

### S8. Takeaways: AI and software flaws: "Both camps recommend the same first steps" has no source on any slide.
- Current slide text (line 388): "Both camps recommend the same first steps."
- Problem: the slide "Skeptics" gives no recommendation from any skeptic, and no slide before this one gives a recommendation from Anthropic. Table 1 and Table 2 hold no such claim.
- Proposed text: delete the line, or replace it with a claim that the deck supports: "Section 4 gives steps that work against both kinds of break-in."
- Confidence: medium (a research report may support the claim; the slides and the notes do not show the support).

## 4. Minor findings

M1. Table 2 does not name 5 flagged claims (part b). All other flags map to a Table 2 entry.
- Canvas during finals, line 190: defaced login pages and rescheduled exams. Add "defaced login pages, rescheduled exams" to the row.
- A4, line 561: "Use at least 6 digits ... (Apple)". Add "Apple passcode length".
- B1, line 587: "any FIDO key works as the second step". Add "Google security key statement".
- B4, line 620: uBlock Origin and uBlock Origin Lite by browser. Add "content blocker names".
- Overrated advice, line 676: NIST on scheduled changes. The row "A1 to A5" lists only "NIST lengths". Change to "NIST lengths and scheduled changes".
Confidence: high.

M2. Table 2 groups 13 slides into 3 rows ("A1 to A5", "B1 to B5", "C1 to C3; Overrated advice") and gives no URL. The speaker cannot go from 1 flag to 1 URL. Proposed: 1 row per slide, with the section or line of the research report. "A1 to A5" is compact notation (CLAUDE.md 4.2, item 2); the caption does not say that these are the slide titles that start with A1 through A5. Confidence: medium.

M3. Table 1, row "Public flaw counts" (line 61): the quote "the vast majority of successful intrusions ..." is on the slide "Skeptics", not on "Public flaw counts". Proposed slide cell: "Public flaw counts; Skeptics". Confidence: high.

M4. `source_notes.tex` line 29: "The process has 2 steps." Figure 1 has 3 boxes. Figure 1 also omits 1 branch: the page opens but the words are not on it. Proposed text: "The process has 3 steps." Proposed third box: "Words found: no flag (Table 1). Page blocked or words not found: ``[verify]'' (Table 2)". Evidence: CLAUDE.md 2.3 (every decision rule with branches needs a flowchart). Confidence: high.

M5. Section title "Figures on the slides" (line 42) contains an article. Proposed: "Slide figures". The title "Tables" (line 45) is correct. Evidence: CLAUDE.md 2.3. Confidence: medium.

M6. Table 3, row "Takeaways: the meantime": "The 2-hour estimate for level A is ours" is not a fact for the speaker to supply. The caption says "Local facts for the speaker to supply or confirm". Proposed caption: "Local facts and our own estimates for the speaker to supply or confirm." Confidence: medium.

M7. Captions of Tables 2 and 3 do not say how to read 1 row (CLAUDE.md 4.2, item 1). Proposed addition to the Table 2 caption: "For example, the first row states that the Vanderbilt and Michigan State details on 2 slides come from search excerpts, and that the report research_university_hacks lists their URLs." Confidence: medium.

M8. Abbreviations in Tables 1 and 2 have no definition in the notes: CVE, CISA, NCSC, NIST, FBI, FTC, EFF, NSA, SIM, VPN, "n = 95" (CLAUDE.md 4.2, item 4). Proposed: add 1 sentence to the Table 2 caption that spells out each. Confidence: medium.

M9. Attackers with AI (line 363): "more than 2,250 organizations". The source says "more than 2,250 tenants". Proposed: "more than 2,250 customer accounts (tenants)". Table 1 already says "tenants". Confidence: medium.

M10. Public flaw counts (line 325): "attackers used the average flaw 7 days before its patch existed". The source gives the mean for exploited flaws only. Proposed: "attackers used the average exploited flaw 7 days before its patch existed". Confidence: medium.

M11. Finding outpaces fixing (line 305): "Anthropic has no total for patches". The page says "fewer than 50% of partners disclosed patched numbers ... so the patch rate is significantly undercounted". Proposed: "Fewer than 50\% of partners reported how many they patched". Confidence: medium.

M12. Claude Mythos Preview, April 7 (line 281): the citation "(Anthropic, Apr 7, 2026)" covers the whole slide, but "about 50 organizations" comes from the page of May 22, 2026 (the April 7 page says 12 named partners plus "over 40 additional organizations"). Proposed: add "\srccite{(Anthropic, May 22, 2026)}" to the last bullet. Confidence: medium.

M13. Spread of capability (line 350): "September 29: GLM-5.3 ... wrote exploits". September 29 is the date of Anthropic's report, not of the model's release (the page cites a NIST assessment of GLM-5.3 dated Sept. 17). Proposed: "September: GLM-5.3 ...". Confidence: medium.

M14. Section 2.1: `source_notes.tex` and `source_notes.pdf` are together, the PDF is newer than the source, and the build log has no overfull-box warning. No finding. The notes do not keep copies of the 17 checked pages (CLAUDE.md 6.3 asks for saved files in `sources/`); a later reader cannot repeat the match if a page changes. Proposed: save the 20 downloaded pages in `sources/` with the date. Confidence: low (6.3 is outside my assignment).

M15. `source_notes.pdf` page 1: the header of Table 1 and 1 row sit alone at the bottom of the page. Proposed: `\clearpage` before the section "Tables". Confidence: high (cosmetic).

## 5. Unflagged slide claims with no checked source (proposed Table 4)

Sourced claims that I confirmed today are in S2 and S3. Claims that need a flag are in S4, S5, S7, and S8. The rest are definitions, advice, and conclusions that the deck presents without a source:

| Slide | Unflagged sentence with no source | Kind |
|---|---|---|
| Main points; Takeaways | "Most break-ins at universities still start with a password or a person." | Conclusion from flagged Sophos numbers (27% + 23% = 50%, which is not "most") |
| Main points | "The heads of OpenAI and Anthropic say that the fixing will take years." | Conclusion from flagged quotes; Altman's quote does not say "years" |
| Takeaways: recent hacks | "A vendor's breach can become our breach"; "the method was most often a login or a person" | Conclusions from flagged claims |
| Three terms | Definitions of vulnerability, exploit, patch | Definition |
| Public flaw counts | "A CVE record is the public catalog entry for 1 flaw" | Definition |
| Patches as instructions | "A patch shows an attacker where the flaw was"; the exposure sentence | Conclusion from a checked page |
| Skeptics | "Anthropic sells these models, and much of the evidence comes from Anthropic" | Our statement |
| Takeaways: AI and software flaws | "Attackers now have models with similar skill."; "most real break-ins still use passwords and people" | Conclusions (the Mandiant quote says "human and systemic failures", not passwords) |
| Reasons for caution | "Both men sell the models, and both sell the defense."; "We found no statement from Amodei that patching fails." | Our statements |
| Takeaways: Altman and Amodei | All 4 lines ("about 2 years, by Anthropic's own forecast" rests on a checked quote) | Conclusions |
| Three levels of urgency | The sort | Judgment (the slide says so) |
| A1 | Automatic updates; restart; "An update that waits for a restart is not installed"; relaunch the browser | Common advice, no source |
| A2 | "The software writes and stores 1 long, unique password"; "Start with email, the bank, and the university account" | Definition and advice |
| A3 | Passkey definition; "A fake site receives no secret" | Definition |
| A4 | "Cover the screen when you type the passcode in public" | Common advice |
| A5 | Habit 1 (sign-in prompts and codes); habit 3 (call back on a known number) | Common advice |
| B1 | Security key definition; "Buy 2 keys, register both, and keep 1 at home" | Definition and advice |
| B2 | "Print the backup codes, and add a recovery contact" | Advice |
| B3 | SIM swap definition | Definition |
| B5 | "After the breaches in Section 1, assume that your Social Security number is public" | Judgment |
| C2 | "A Gmail +tag address does not hide the real address"; the benefit sentence | Our statements |
| C3 | "Use the university VPN for university resources" | Advice |
| Overrated advice | "A VPN hides traffic from the local network. It does not stop phishing or software flaws" | Our statement |
| Takeaways: the meantime | Lines 2 to 4 | Conclusions |
| Lab data | 4 advice bullets (university storage, named accounts, deletion, old instruments) | Common advice |
| AI agents | Prompt injection definition; "Do not connect an agent to your main email or drive without approval from IT" | Definition and advice |
| Coding agents | "Run a coding agent in a container ..."; the repository path; "Keep API keys out of code and out of prompts" | Advice. The folder `claude-code-docker-setup` exists in the local copy of `Claude_Resources`. I did not check that the repository is public for the audience. |
| First hour | 4 steps | Advice; the blue bracket asks the speaker to confirm with Brown OIT |

## 6. What I could not check

- Every claim in Table 2 except the payroll report (S6). The hosts are blocked.
- The CVE counts and the CISA deadline computation (github.com).
- The truth of the claims in S7.
- Whether github.com/elithecat/claude_resources is public.
- I did not use web search.

## 7. Reasoning notes

- I counted a row as a match only if the page text held the quoted string exactly (after I changed curly quotation marks to straight ones) or the number in the same sense as the slide.
- Where the slide paraphrases (for example "The earlier model wrote 2"), I compared the meaning with the page sentence and recorded differences as minor findings (M9 to M13).
- The downloaded pages are in the session scratchpad, not in the repository. I did not add files to the repository except this report.
