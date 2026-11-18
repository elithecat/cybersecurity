Language model claude-fable-5-2, prompt version v1, role: writing-banned-words (CLAUDE.md 3.6, 3.7, 3.8, 3.12, and the semicolon rule of 8.1).

# Review: banned words, punctuation, numbers, and one term per concept

Date: 2026-11-12. Files reviewed: `cybersecurity_2026_briefing.tex` (and the handout PDF text), `security_checklist.tex`, `source_notes.tex`, `README.md`, the text of the 2 figures, and the labels in `code/briefing_figures.R`.

## Method

1. I read CLAUDE.md 3.6, 3.7, 3.8, 3.12, 3.13, and 8.1.
2. I searched the 3 `.tex` sources and the README (case-insensitive, whole words) for every entry in the 3.6 table and for the figurative words in 3.13 pass 2. I repeated the punctuation searches on the `pdftotext -layout` output of the handout, the checklist, and the source notes.
3. I searched for `---`, `—`, ` -- `, `, so `, `, since`, the word "percent", and semicolons in the slide source.
4. I counted every security term in the slide source (flaw, vulnerability, bug, hack, break-in, breach, attack, login, sign-in, key, code, and others) and read each use in context.
5. I counted words per sentence with a script (macros removed) and read each sentence over 20 words.
6. I counted frames per section and compared the counts with the README table.

## Result of the searches (no finding)

- **3.6 banned words.** Every hit is inside a quotation from a source, and is therefore exempt: "landscape" (Skeptics, Google quote; also source notes line 70), "just" (Altman at Stanford; Anthropic on timing; source notes line 71), "fundamentally" (Hopeful version, Amodei quote). No other 3.6 entry occurs in the slides, the checklist, the source notes, or the README.
- **"Since".** 1 use (Paycheck theft, "Since March 2025"). The use is temporal, which 3.6 allows.
- **Em dashes.** None in any file. The only en dash is in the range "80--90%".
- **Causal ", so" and ", since".** None.
- **Semicolons in slide text.** 1, inside the Anthropic quote on "Anthropic on timing" (exempt as a quotation). The semicolons in `source_notes.tex` are in table cells of a document, not slides.
- **Percent sign.** Every percentage has the sign. The word "percent" does not occur.
- **Thousands separators.** Present in every number of 4 or more digits, also in the figure labels (48,151; 89,859; axis labels).
- **Arithmetic I recomputed.** 75/530 = 14%; 14/1,061 = 1.3%; 89,859/48,151 = 1.9; 27% + 23% = 50%; level A checklist minutes 15 + 60 + 30 + 10 = 115 (about 2 hours). All correct.

## Substantive findings

### S1. The verb "patch" has 2 meanings (3.12, one meaning for each word). Confidence: medium.

The slide "Three terms" defines a patch as "the software update that removes the flaw." The deck then uses the verb "patch" for 2 different actions: the maintainer writes the fix (Finding outpaces fixing: "Maintainers had patched 75 of 530"; the figure label "Patched"), and the user installs the update (Public flaw counts; Reasons for caution). The argument of the slide "Patches as instructions" depends on the difference between "update available" and "update installed."

- Public flaw counts (line 326). Current: "the median federal deadline to patch fell from 21 days to 3". Proposed: "the median federal deadline to install the patch fell from 21 days to 3".
- Reasons for caution (line 474). Current: "Security agencies still tell everyone to patch, and faster." Proposed: "Security agencies still tell everyone to install patches, and faster."
- Optional, for one verb on the maintainer side ("fix" is the word of the main points and of the title "Finding outpaces fixing"): Takeaways: AI and software flaws (line 385), "faster than maintainers patch them" → "faster than maintainers fix them". Takeaways: Altman and Amodei (line 484), "more flaws than anyone can patch" → "more flaws than anyone can fix".

### S2. "Attacks" where the deck means "exploits" (3.12). Confidence: high.

- Patches as instructions (line 339). Current: "The model built 8 complete attacks, at about \$2,000 each". Proposed: "The model built 8 complete exploits, at about \$2,000 each".
- `source_notes.tex` line 62. Current: "8 complete attacks from 21 Windows patches". Proposed: "8 complete exploits from 21 Windows patches".
- Evidence: the slide "Three terms" defines "exploit"; the next bullet quotes "all eight full chain exploits"; the deck uses "attack" for events against organizations ("ransomware attack," "50% of these attacks").

### S3. 5 words for one event: hack, break-in, breach, attack, hacking (3.12). Confidence: medium.

Uses: "Recent hacks" (roadmap line 149, section line 163, transition line 165, title line 247); "break-ins" (main point 3, lines 142, 387, 702, 760; checklist line 70); "breach" (lines 252, 634, 656); "hacking" (line 678); "attack" (many).

Proposal: use "break-in" for the event in which an attacker enters a system or an account, and keep "attack" for the attempt or the method.

- Roadmap, section, transition, and takeaways title: "Recent hacks" → "Recent break-ins"; "Takeaways: recent hacks" → "Takeaways: recent break-ins".
- Line 252: "A vendor's breach can become our breach (Canvas, Oracle)." → "A break-in at a vendor can expose our data (Canvas, Oracle)."
- Line 634: "After the breaches in Section 1, assume that your Social Security number is public" → "After the break-ins in part 1, assume that your Social Security number is public" (the README calls the divisions "parts").
- Line 656: "a breach at 1 site exposes 1 alias" → "a break-in at 1 site exposes 1 alias".
- Line 678: "A commercial VPN as protection from hacking." → "A commercial VPN as protection from break-ins."

I could not check whether "Recent hacks" is Alyssa's own wording (the research report file names use "hacks"). If it is, apply the reverse change: use "hack" in every place above and in main point 3.

### S4. Login, sign-in, and password (3.12). Confidence: medium.

"Sign-in" is the act (lines 215, 548, 551, 572, 583). "Login" means the page at line 190 and the credentials at lines 202, 227, 238, 241, 253. Main point 3 and the final takeaway say "a password or a person," but the section takeaway says "a login or a person."

- Canvas during finals (line 190). Current: "The group defaced Canvas login pages". Proposed: "The group defaced Canvas sign-in pages".
- Takeaways: recent hacks (line 253). Current: "the method was most often a login or a person." Proposed: "the method was most often a stolen password or a person."
- Entry methods (lines 238, 241). Current: "Stolen logins: 27%" and "started with a login or a phishing email". Proposed: "Stolen passwords: 27%" and "started with a stolen password or a phishing email". I could not open the Sophos report. If Sophos counts credentials other than passwords, keep "login" here and change main point 3 and the final takeaway to "a stolen login or a person" instead.
- Lines 202 and 227 can then follow the chosen word ("an employee's password"; "a stolen password").

### S5. The headline quotes say "bugs," and the slide "Three terms" does not define the word (3.12). Confidence: medium.

Altman: "patch all the bugs" (line 408). Microsoft: "Finding bugs and fixing them" (line 306). The deck's own word is "flaw."

- Three terms (line 273). Current: "\textbf{Vulnerability:} a flaw in software that an attacker can use". Proposed: "\textbf{Vulnerability} (also ``bug'' in the quotes)\textbf{:} a flaw in software that an attacker can use".

### S6. Main point 3 has an unclear pronoun and a second meaning of "fix" (3.12). Confidence: medium.

- Main points (line 142). Current: "Most break-ins at universities still start with a password or a person. We can fix those this week." "Those" can refer to the break-ins, the passwords, or the people, and "fix" means "repair a software flaw" in main points 1 and 2.
- Proposed: "Most break-ins at universities still start with a password or a person. We can protect our own accounts this week."

## Minor findings

M1. **Spelled-out counts (3.8).** The deck uses numerals in most places ("3 habits" at lines 689 and 763, "3 levels" at line 499) and words in others. Proposed: "Three terms" → "3 terms" (line 270); "Three levels of urgency" → "3 levels of urgency" (line 504); "A5. Three habits" → "A5. 3 habits" (line 569); "Three habits." → "3 habits." (line 507); "Two security keys." → "2 security keys." (line 511; checklist line 41); "one group has sent" → "1 group sent" (line 214); "uses one flaw" → "uses 1 flaw" (line 274); "One content blocker." → "1 content blocker." (line 620; the checklist already says "Install 1 content blocker"). Confidence: medium (3.8 names results text; the deck is inconsistent in either reading).

M2. **"Roughly" against "about" (3.12).** Attackers with AI (line 360) and source notes line 65: "roughly 30 targets" → "about 30 targets". Every other approximation in the deck uses "about." Confidence: high.

M3. **"Over" against "more than."** A5 (line 575): "over \$20 billion" → "more than \$20 billion" (lines 126 and 363 use "more than"). Confidence: high.

M4. **Range format.** Line 360 "80--90%" against line 351 "64% to 100%". Proposed: "80% to 90%". Confidence: medium.

M5. **"Code" for "passcode."** A4 (line 561): "A longer code with letters is stronger" → "A longer passcode with letters is stronger". "Code" means a sign-in code on the other slides. Confidence: high.

M6. **"Key" has 4 meanings** (security key, secret key, API key, recovery key). B2 (line 596) and checklist line 42: "a passkey or a key" → "a passkey or a security key". C1 (line 645): "if you lose your keys and your devices" → "if you lose your security keys and your devices". A3 (line 548): "your device stores a secret key in place of a password" → "your device stores a secret in place of a password" (the same bullet ends "A fake site receives no secret"). Confidence: medium.

M7. **"Filters" against "safeguards."** Spread of capability (line 349): "with filters on cybersecurity requests" → "with safeguards on cybersecurity requests" (lines 351 and 723 and the source notes use "safeguards"). Confidence: medium.

M8. **Tenses (3.12, simple tenses only).** Line 127: "Vanderbilt has not confirmed that claim" → "By November 12, Vanderbilt did not confirm that claim". Line 214: "Since March 2025, one group has sent phishing emails" → "From March 2025, 1 group sent phishing emails". Line 303: "Maintainers had patched 75 of 530 reported flaws (14%) by May 22" → "By May 22, maintainers patched 75 of 530 reported flaws (14%)". Line 305: "partners had verified" → "partners verified". Confidence: medium (the present perfect at line 127 reads naturally; change it only if the rule applies strictly to slides).

M9. **"Both camps" has no clear referent.** Takeaways: AI and software flaws (line 388): "Both camps recommend the same first steps." → "The skeptics and the AI companies recommend the same first steps." Confidence: medium. I did not check whether the sources support the claim.

M10. **Sentence length (3.12: 25 words, or 20 for an instruction).**
- Spread of capability (line 350, 31 words). Proposed: "September 29: GLM-5.3 is a model from Zhipu AI in China that anyone can download. It wrote exploits at a similar rate: 50 of 410 attempts, against 56 of 410 for Mythos Preview".
- A5 (line 574) and checklist line 36 (instruction, 23 words). Proposed: "An email, a call, or a video can ask for money or a password. Call back on a number that you already have."
- Checklist line 31 (instruction with a 20-word parenthesis). Proposed: "Install one. Wirecutter picks 1Password, or Bitwarden at no cost [verify]. The built-in Apple Passwords and Google Password Manager also work."
- Source notes line 39 (26 words). Proposed: "A claim receives no flag only if we found its exact words or its number in the source page. We searched on November 12, 2026."
- Source notes line 92 (29 and 31 words). Proposed: "Median federal deadline fell from 21 days to 3. The research agent computed this median from CISA's catalog on GitHub. We did not repeat the computation." The CVE sentence repeats the paragraph "Figures on the slides"; delete it from the table.
Confidence: medium.

M11. **One instruction per sentence (3.12), checklist.** Line 41: "Buy 2, register both on Apple and Google accounts, and keep 1 at home." → "Buy 2 keys. Register both keys on your Apple and Google accounts. Keep 1 key at home." Line 64: "Give each student a named account, and remove access when a person leaves." → "Give each student a named account. Remove access when a person leaves." (the slide already uses 2 sentences). Line 74 and slide line 748: "change the password and sign out of all other sessions" → "Change the password. Then sign out of all other sessions." Slide line 584 and line 597 have the same pattern; fragments are acceptable on slides (8.1), so these 2 are optional. Confidence: medium.

M12. **Dropped article and unclear pronouns, source notes (3.12).** Line 33: "Research agent records the claim" → "A research agent records the claim". Line 43: "we did not download them again" → "we did not download the counts again". Line 24: "Table 2 lists them by slide" → "Table 2 lists these claims by slide". Confidence: medium.

M13. **Date format.** The deck mixes "Nov 9" and "Oct 26" (bold labels, citations) with "April 29 to May 12," "June 9," and "September 29" (running text, lines 189, 349, 350). Proposed: one form in bullet text, for example "Jun 9:" and "Sep 29:" in bold to match the slides "Universities, fall 2026" and "Attackers with AI". Confidence: low.

M14. **README slide counts (3.8).** The table gives 16 slides for part 4, and the rows sum to 53. The source has 17 frames in part 4 (1 transition, 1 levels slide, 5 A, 5 B, 3 C, Overrated advice, takeaways), and the handout has 54 pages. Proposed: "| 4. What to do in the meantime | 17 | 17 |". Also README lines 7 to 9: "one page per click" → "1 page per click"; "one page per slide" → "1 page per slide"; "the one-page handout" → "the 1-page handout". Confidence: high for the count.

M15. **Counts without percentages (3.8).** Spread of capability (line 350): "50 of 410 attempts, against 56 of 410" → "50 of 410 attempts (12%), against 56 of 410 (14%)". I computed 50/410 = 12.2% and 56/410 = 13.7%. Confidence: medium.

M16. **"Exploited" against "used," source notes.** The slides say that attackers "used" flaws. Source notes line 70 says "0.23% of 2026 disclosures exploited". Proposed: "attackers used 0.23% of the flaws disclosed in 2026". Confidence: low.

## What I could not check

- The exact wording of the Sophos report ("compromised credentials" or another term), which decides the word in S4.
- Whether "Recent hacks" is Alyssa's requested title (S3).
- The absolute effect behind "cut account compromise by 99.22%" (A3). 3.8 asks for absolute and relative effects together; I did not have the source and propose no text.
- The unit behind "80--90% of a spying campaign" (line 360). I did not open the Anthropic page to see what the percentage counts.
- The figure text extracts with a minus sign in "High- or critical-severity" (`found_vs_patched.pdf`). I did not inspect the glyph at high zoom; the figures reviewer should check it.
- I did not review hidden actors (3.3), mannered prose (3.2), or the facts themselves; other reviewers have those assignments.
