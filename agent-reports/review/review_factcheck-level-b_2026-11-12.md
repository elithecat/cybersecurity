# Review: fact check of slides B1 to B5

- Language model: claude-fable-5-2
- Prompt version: v1
- Role: factcheck-level-b (fact check of "B1. Security keys" through "B5. Backups, encryption, credit freeze")
- Date: 2026-11-12

## What I checked

I read the slide source (cybersecurity_2026_briefing.tex, lines 580 to 636), the handout text for the same 5 slides (pdftotext), and both research reports in full: research_account_hardening_2026-11-12.md ("AH" below) and research_protective_guidance_2026-11-12.md ("PG" below). I compared every product name, menu path, number, date, and attribution on the 5 slides with the reports. I also read source_notes.tex lines 97 to 116 for the status of these claims.

## What I could not check

I opened no outside page. Both reports say that Apple, Google, CISA, FBI, FTC, carrier, and Wirecutter pages were blocked, so every fact on these slides rests on search summaries. I therefore checked the slides against the reports only. Where I add something from my own background knowledge, I say so, and it needs a check.

## Summary

- Substantive findings: 2
- Minor findings: 9
- All numbers, dates, product names, and quoted words on B1 to B5 match the reports. I found no number or name that disagrees with them.

## Claims that match the reports (no change needed)

| Slide | Claim | Report evidence |
|---|---|---|
| B1 | Key is a USB or NFC device; sign-in works only on the real site with the key present | AH section 2, line 54 |
| B1 | Apple path: Settings, your name, Sign-In & Security, Two-Factor Authentication, Security Keys | AH line 71 (iPhone and iPad path); flagged |
| B1 | Google: any FIDO key works as the second step | AH line 76 ("Any FIDO1 or FIDO2 key"); flagged |
| B2 | A new passkey does not remove the old password or the text-message fallback (Google) | AH line 33, Google: "doesn't change or remove any authentication or recovery factors currently on your account"; flagged |
| B2 | CISA, Dec 2024: remove text-message codes after FIDO enrollment | AH line 48 (dated 2024-12-18); PG line 57 (Dec 2024, reissued Dec 2025); flagged |
| B2 | myaccount.google.com/security-checkup | AH line 102 |
| B2 | 76% and 90% of targeted attacks (Google, 2019) | AH line 96 and 292; PG line 51; flagged |
| B3 | Verizon Number Lock and SIM Protection; T-Mobile SIM Protection and Port Out Protection; AT&T Wireless Account Lock | AH lines 168 to 170; flagged |
| B3 | 971 complaints in 2025 | AH lines 172 and 296; flagged (see minor finding 5) |
| B4 | Chrome "Always use secure connections"; Firefox "HTTPS-Only Mode" | AH lines 216 and 217; flagged |
| B4 | uBlock Origin in Firefox; uBlock Origin Lite in Chrome, Edge, Safari | AH line 223; flagged |
| B4 | FBI quote, Dec 2022 | AH line 225 (PSA of 2022-12-21, same words); flagged |
| B4 | Privacy Badger, from the Electronic Frontier Foundation | AH line 224 |
| B4 | December 2024, at least 35 extensions, about 2.6 million users | AH line 229; flagged |
| B5 | Credit freeze: free, separate at each of 3 bureaus (FTC) | AH line 283; PG line 164; flagged |

## Substantive findings

### 1. B2. Account recovery: the order of the bullets invites a lock-out

- Current text (bullets 2 and 3): "After you add a passkey or a key, remove text-message codes (CISA, Dec 2024) [verify]" and then "Print the backup codes, and add a recovery contact".
- Problem: the slide tells the listener to remove text-message codes after 1 passkey or 1 key, and only then to print backup codes. The report sets a condition that the slide drops. AH line 100: "removing it is for people who have at least two passkeys or keys plus backup codes" and "Google's own research favours keeping a recovery phone for ordinary users." AH line 311: remove SMS "where there are two other methods." AH line 312: do the recovery set-up before the keys, because "stronger sign-in raises the lock-out risk." PG line 216 adds that the CISA guidance "is written for highly targeted people." A professor who follows the slide in order can lose the only fallback.
- Proposed text: swap the 2 bullets and add the condition.
  - Bullet 2: "Print the backup codes, and add a recovery contact"
  - Bullet 3: "Once you have 2 passkeys or keys and the printed codes, remove text-message codes \srccite{(CISA, Dec 2024)} \vfy"
- Evidence: AH lines 100, 311, 312; PG line 216.
- Confidence: high that the reports state the condition; medium on the exact wording.
- Note: the condition (2 methods plus codes) is the report author's judgment, marked [judgment] in AH. CISA supplies only "disable weaker methods after FIDO enrollment."

### 2. B5. Backups: "(CISA)" covers only part of the bullet, and "or" weakens CISA's advice

- Current text: "Backups: keep 1 copy offline, or on university storage that keeps versions. Restore 1 file as a test (CISA) [verify]".
- Problem: CISA says "Maintain offline, encrypted backups of critical data, and regularly test the availability and integrity of backups" (PG line 99). CISA does not offer versioned storage as a substitute for the offline copy. The point about storage that keeps earlier versions is from the UK NCSC (PG line 100), and NCSC adds an offline rule on top of it. The university-storage recommendation is the report author's own inference: PG line 105 says "unconfirmed as a quoted recommendation." The report's own recommendation is "and," not "or" (PG lines 105 to 106 and line 237: "Move lab data to university-managed storage with versions; make one offline copy; restore one file as a test").
- Proposed text: "\textbf{Backups:} keep 1 copy offline \srccite{(CISA)}, and keep working files on university storage that keeps versions \srccite{(UK NCSC)}. Restore 1 file as a test \vfy"
- Evidence: PG lines 99, 100, 105, 106, 237.
- Confidence: high on the attribution; medium on whether Alyssa wants "and" (she may have chosen "or" to lower the effort).

## Minor findings

### 3. B1: "Wirecutter has a 2026 guide" has no flag
- Current: "Wirecutter has a 2026 guide. Confirm its picks before the talk [models and prices]".
- The guide's existence rests only on a title in third-party podcast show notes (AH line 57, [S]); AH line 58 marks the guide date [unconfirmed]. The blue bracket covers the picks, not the existence or the year.
- Proposed: add \vfy after "Wirecutter has a 2026 guide" or fold the sentence into the blue bracket: "\fillin{Wirecutter's 2026 picks: models and prices}".
- Confidence: high.

### 4. B1: the Apple path is for iPhone and iPad only, and "buy 2" has a source that the slide omits
- Current: "Apple: Settings, your name, Sign-In & Security, Two-Factor Authentication, Security Keys [verify]".
- AH line 71 gives this path for iPhone and iPad and ends with "Add Security Keys"; AH line 72 gives "System Settings" for Mac. AH line 63: Apple requires "at least two FIDO Certified security keys."
- Proposed: "\textbf{Apple} (iPhone): Settings, your name, Sign-In \& Security, Two-Factor Authentication, Security Keys. Apple requires 2 keys \vfy".
- Confidence: high that the reports say this; the change is optional.

### 5. B3: the 971 figure is marked "do not cite until checked" in 1 of the 2 reports
- Current: "This attack is rare (971 complaints to the FBI in 2025), and the lock takes about 2 minutes [verify]".
- AH lines 172 and 296 give 971 complaints for 2025 (and 982 for 2024) from secondary summaries. PG line 167 says the search returned 971, 982, and 1,075 "without clear year labels" and marks the figure "[unconfirmed]; do not cite until checked against the PDF." The slide has the [verify] flag, so the rule is met, but this is the strongest warning attached to any number on B1 to B5. From my background knowledge (not checked in this session), the 2023 and 2024 FBI reports gave 1,075 and 982, which fits 971 for 2025.
- Proposed: keep the text and the flag. If the PDF cannot be opened before the talk, use "This attack is rare in FBI complaint data, and the lock takes about 2 minutes".
- Confidence: medium.

### 6. B3: "about 2 minutes" is an estimate, not a sourced fact
- AH line 308 gives "Effort: 2 minutes" inside a section headed "all rankings are my judgment." The [verify] flag suggests a source exists. The deck marks its other estimate with a blue bracket ("Level A takes about 2 hours [our estimate]").
- Proposed: "and the lock takes about 2 minutes \fillin{our estimate}".
- Confidence: high.

### 7. B2: "add a recovery contact" has no flag, and Google's version has limits
- AH lines 104 to 107 ([S]): Google's Recovery Contacts feature is "not available for Workspace accounts, child accounts, or accounts in Advanced Protection," and has a 7-day wait. A professor's university Google account is a Workspace account, and slide C1 recommends Advanced Protection.
- Proposed: "Print the backup codes, and add a recovery contact (Apple, and personal Google accounts) \vfy".
- Confidence: high that the report says this.

### 8. B2: the Security Checkup line has no flag
- AH line 102 marks it "[S, content not read]." The address matches the report (and my background knowledge). A flag is optional here; I report it only because the assignment asks for unflagged items.
- Proposed: add \vfy, or leave as is.
- Confidence: high.

### 9. B4: extensions were Chrome extensions; Chrome's setting may now be on by default
- Current: "attackers took over at least 35 extensions with about 2.6 million users [verify]". AH line 229 cites "35 Google Chrome extensions."
- Proposed: "attackers took over at least 35 Chrome extensions with about 2.6 million users \vfy".
- Also, AH line 216: Google announced default-on for "Always use secure connections" with Chrome 154 in October 2026 ("likely, unconfirmed"). If confirmed, the Chrome instruction asks for a step that is already done. No change proposed until it is checked.
- Confidence: high on "Chrome"; low on the default.

### 10. B5: FileVault and BitLocker were not researched
- Current: "Encryption: turn on FileVault (Mac) or BitLocker (Windows)" (no flag).
- AH line 282: "Mac (FileVault) and Windows (BitLocker) paths were not researched in this session." PG line 127 recommends them as general practice. The product names are correct. From my background knowledge (not checked): Windows Home editions offer "Device encryption" and not the full BitLocker settings.
- Proposed: "\textbf{Encryption:} turn on FileVault (Mac), or BitLocker or Device encryption (Windows) \vfy".
- Confidence: medium.

### 11. B5: the Social Security number line is a judgment that rests partly on an attacker's claim
- Current: "After the breaches in Section 1, assume that your Social Security number is public".
- Neither assigned report covers this. The opening slide's "more than 1 million Social Security numbers" is the attacker's claim only (research_university_hacks, line 30); Columbia's 868,969 with Social Security numbers is confirmed (same report, line 258). The line is advice, and it reads as such, so I propose no change. If a softer form is wanted: "After breaches like those in Section 1, assume that your Social Security number is public".
- Confidence: medium.

## Items in the reports that the slides correctly leave out

- Wirecutter model names and prices (AH line 59: "Do not print this as Wirecutter's current pick"): not on the slide.
- Microsoft "99.2%" and "99.9%" (AH line 293: "do not print them"): not on B1 to B5.
- SIM-swap dollar losses: not on the slide.
