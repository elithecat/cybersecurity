# Review: fact check of slides C1 to C3, "Overrated advice", and "Takeaways: the meantime"

- Language model: claude-fable-5-2
- Prompt version: v1
- Role: factcheck-level-c (fact check of "C1. Strictest settings", "C2. Email aliases", "C3. Private Relay and VPNs", "Overrated advice", and "Takeaways: the meantime")
- Date: 2026-11-12

## What I checked

I read the slide source (cybersecurity_2026_briefing.tex, lines 639 to 693), the handout text for slides 43 to 45 (pdftotext), and both research reports in full: research_account_hardening_2026-11-12.md ("AH" below) and research_protective_guidance_2026-11-12.md ("PG" below). I compared every product name, requirement, menu path, quotation, and attribution on the 5 slides with the reports. I also read the lines of source_notes.tex and security_checklist.tex that cover the same claims, and the slide "Entry methods in higher education" (lines 234 to 244), because one takeaway depends on it.

## What I could not check

I opened no outside page. Both reports say that the Apple, Google, CISA, FTC, EFF, NIST, and Wirecutter pages were blocked, so every fact on these slides rests on search summaries. I checked the slides against the reports only. I could not confirm the wording of any quotation against its primary page. Where I add something from my own background knowledge, I say so.

## Summary

- Substantive findings: 3
- Minor findings: 9
- Every product name and menu path on the 5 slides matches the reports. The problems are 1 claim that the reports do not support (C1, cost bullet), 1 quotation that is shortened inside the quotation marks and that omits its audience (C3, CISA), and 1 takeaway that conflicts with 2 figures in the reports.

## Claims that match the reports (no change needed)

| Slide | Claim | Report evidence |
|---|---|---|
| C1 | Advanced Protection Program requires a passkey or a security key | AH line 84 |
| C1 | It limits other apps' access to Gmail and Drive, and tightens recovery | AH line 85 ("third-party app access to Gmail and Drive data"; "stricter account recovery with extra steps and delay") |
| C1 | Advanced Data Protection: end-to-end encryption for most iCloud data, but not Mail, Contacts, or Calendar | AH line 114 (25 or 23 categories; iCloud Mail, Contacts, Calendar excluded) |
| C1 | Path: Settings, your name, iCloud, Advanced Data Protection | AH line 116 (iPhone and iPad path) |
| C1 | Lockdown Mode: for the few people whom sophisticated attackers target | AH line 132; PG line 168. A fair paraphrase of Apple's "the very few individuals who ... might be personally targeted by some of the most sophisticated digital threats" |
| C2 | Hide My Email, Apple, with iCloud+; path Settings, your name, iCloud, Hide My Email | AH lines 261 to 263 |
| C2 | Firefox Relay, DuckDuckGo Email Protection, Fastmail Masked Email | AH lines 267 to 269 (names match exactly) |
| C2 | A Gmail "+tag" address does not hide the real address | AH line 270 (Google: aliases "aren't private"; the rest is the report's judgment) |
| C3 | Private Relay needs iCloud+; Safari traffic; 2 relays | AH lines 238 and 240 |
| C3 | Private Relay and education networks, attributed to Apple | AH line 242 |
| C3 | A VPN moves the trust to the VPN company, attributed to EFF | AH line 247 |
| C3 | CISA guidance dated December 2024 | AH line 248 (2024-12-18); PG line 57 (Dec 2024, reissued Dec 2025) |
| Overrated advice | NIST against scheduled password changes | AH line 202; PG lines 59 and 214 |
| Overrated advice | FTC: "usually safe" | PG line 215 (the 2 quoted words are in the FTC sentence) |
| Takeaways | Level A takes about 2 hours, marked as our estimate | PG lines 233 to 236 (15 + 30 to 45 + 10 + 60 minutes, all the report's own estimates); source_notes.tex line 117 |

## Substantive findings

### S1. "C1. Strictest settings", bullet 4: the reports do not support "Google ... cannot let you back in"

- Current text: "Cost: if you lose your keys and your devices, Google and Apple cannot let you back in"
- Problem: the reports say 3 different things, and the slide merges them.
  - Google Advanced Protection Program: enrollment requires a fallback ("a recovery phone and email, or an additional passkey / security key", AH line 84). Recovery is "stricter ... with extra steps and delay" (AH line 85). A lost key "can only be replaced with a backup key or a slower recovery path" (AH line 65). So Google's recovery is slower. The reports do not say that it is impossible.
  - Apple Advanced Data Protection: "Apple cannot help recover the data if you lose the devices and the recovery methods" (AH line 119). The recovery methods are a recovery contact or a recovery key (AH line 115), not security keys.
  - The permanent lockout for lost keys and devices ("If you lose all trusted devices and all keys you can be locked out permanently", AH line 73) belongs to Security Keys for Apple Account, which is on slide B1, not on C1.
- Proposed text: "Cost: recovery is harder. With Advanced Data Protection, Apple cannot recover your data if you lose your devices and your recovery contact or recovery key. Google's recovery takes extra steps and a delay \vfy"
- Evidence: AH lines 65, 73, 84, 85, 115, 119.
- Confidence: high that the current text overstates the Google case. Medium on the exact replacement wording, because the reports are search summaries.

### S2. "C3. Private Relay and VPNs", bullet 4: the CISA quotation is shortened inside the quotation marks, and its audience is missing

- Current text: "CISA's guidance for phones: ``Do not use a personal VPN'' (CISA, Dec 2024)"
- Problem 1 (quotation): both reports give CISA's words as "Do not use a personal virtual private network (VPN)" (AH line 248; PG line 216). The slide replaces "virtual private network (VPN)" with "VPN" inside the quotation marks, so the quotation is not verbatim.
- Problem 2 (fairness): PG line 216 says "The guidance is written for highly targeted people; a university-required VPN is a different case." The slide says only "guidance for phones," so a professor can read it as advice from CISA to everyone. CISA's stated reason is also absent: personal VPNs "simply shift residual risks from the internet service provider (ISP) to the VPN provider, often increasing the attack surface" (PG line 216). From my background knowledge, which needs a check, the document addresses "highly targeted individuals" in senior government and political positions.
- Proposed text: "CISA, to highly targeted people: ``Do not use a personal virtual private network (VPN).'' The VPN shifts the risk from the internet provider to the VPN provider \srccite{(CISA, Dec 2024)} \vfy"
- Evidence: AH line 248; PG lines 57 and 216.
- Confidence: high for both problems. The quotation itself still needs a check against the PDF; AH line 248 says that only the heading was confirmed by a search summary.

### S3. "Takeaways: the meantime", bullet 3: "the entry methods that attackers use most" conflicts with 2 figures in the reports

- Current text: "Passkeys, a password manager, and 3 habits address the entry methods that attackers use most."
- Problem: the reports give software flaws as the most common entry method in the 2 general data sets. Mandiant M-Trends 2026: exploits were 32% of intrusions, the most common vector for the sixth year, against 11% for voice phishing and 6% for email phishing (PG lines 36, 78, 220). Verizon DBIR 2026: exploitation of vulnerabilities was 31% of initial access, "first time ahead of credentials" (AH line 294). Passkeys, a password manager, and habits do not address that method; updates do. The claim holds only for the deck's higher-education figure (Sophos: stolen logins 27% and phishing email 23%, against 13% for software flaws, slide "Entry methods in higher education"), and for identity attacks (Microsoft: more than 97% are password attacks, PG line 55).
- Proposed text: "Passkeys, a password manager, and 3 habits address stolen logins and phishing, the 2 most common entry methods in the education survey."
- Evidence: PG lines 36, 55, 78, 220; AH line 294; slide source lines 234 to 244.
- Confidence: medium. The current sentence is defensible for universities, but a listener who remembers Section 2 can object, and the reports support the objection.

## Minor findings

### M1. "C1", bullet 2: Advanced Data Protection needs a recovery method first, and managed accounts cannot use it

- Current text: "Apple Advanced Data Protection: end-to-end encryption for most iCloud data, but not Mail, Contacts, or Calendar. Settings, your name, iCloud, Advanced Data Protection"
- Proposed addition (the checklist already has the first half, line 54): "Set a recovery contact or a recovery key first. A university-managed Apple Account cannot turn it on."
- Evidence: AH line 115 ("at least one recovery method"; "Not for Managed Apple Accounts (many university-issued Apple accounts)"). AH line 120 adds that Apple stopped offering it to new users in the United Kingdom in February 2025.
- Confidence: high that the reports say this; the reports are search summaries.

### M2. "C1", bullet 1: the Advanced Protection Program also requires a fallback, and a university Google account needs the administrator's permission

- Current text: "requires a passkey or a security key, limits other apps' access to Gmail and Drive, and tightens recovery"
- Proposed text: no change on the slide. Add to the spoken notes: "Google asks for a recovery phone and email, or a second passkey or key. For a university Google account, the administrator must allow enrollment."
- Evidence: AH lines 84 and 90.
- Confidence: medium.

### M3. "C1", bullet 4 has no "[verify]" flag

- The cost bullet rests on the same unopened Apple and Google pages as bullets 1 to 3. The proposed text in S1 adds \vfy.
- Evidence: AH section 0, item 1.
- Confidence: high.

### M4. "C3", bullet 1: "your identity" should be "your IP address"; the product is "iCloud Private Relay"

- Current text: "Neither relay has both your identity and the site name."
- Proposed text: "Neither relay has both your IP address and the site name."
- Evidence: AH line 238 ("The first (Apple) sees your IP address but not the site; the second (a partner) sees the site but not your IP address"). Apple's own name for the feature is "iCloud Private Relay" (AH line 237); the short form is acceptable after "(Apple, with iCloud+)".
- Confidence: high.

### M5. "C3", bullet 1: "sends Safari traffic" leaves out that other browsers and most apps are not covered

- Current text: "sends Safari traffic through 2 relays"
- Proposed text: "sends Safari traffic through 2 relays. It does not cover other browsers or most apps."
- Evidence: AH lines 238 and 239. The slide is already long, so this can go in the spoken notes.
- Confidence: medium.

### M6. "C3", bullet 2: "can fail on campus networks" is stronger than Apple's words

- Current text: "Private Relay can fail on campus networks (Apple)"
- Proposed text: "Private Relay may not work on campus networks that filter or audit traffic (Apple)". The same change applies to security_checklist.tex line 57.
- Evidence: AH line 242 (Apple: networks that must audit or filter traffic, "such as business or education networks", may not be compatible).
- Confidence: medium.

### M7. "C3", bullet 3, and "Overrated advice", bullet 3: the EFF summary says "the local network and your internet provider"

- Current text (C3): "A commercial VPN moves your trust from the network to the VPN company (EFF)". Current text (Overrated advice): "A VPN hides traffic from the local network."
- Proposed text (C3): "A commercial VPN moves your trust from the network and the internet provider to the VPN company (EFF)". Proposed text (Overrated advice): "A VPN hides traffic from the local network and the internet provider."
- Also: "It does not stop phishing or software flaws" is not in the EFF summary. EFF's listed limits are tracking by cookies, logins, and fingerprinting (AH line 247). The nearest report sentence is a judgment: "a commercial VPN adds little against account takeover" (AH line 249). The sentence is correct in my judgment, and it carries no citation, so it does not misattribute. Keep it as the deck's own statement.
- Evidence: AH lines 247 and 249.
- Confidence: medium.

### M8. "Overrated advice", bullet 1: NIST's rule has an exception, and it binds services

- Current text: "Scheduled password changes. NIST says no"
- Proposed text: "Scheduled password changes. NIST says no. Change a password when there is evidence of a compromise \srccite{(NIST SP 800-63B-4, 2025)}"
- Evidence: AH line 202 ("Services SHALL NOT require periodic password changes; they SHALL force a change only on evidence of compromise"); PG line 59. The rule is addressed to services that verify passwords, not to individuals. The slide gives no document name or year here, although slide A2 does.
- Confidence: high on the reports; the NIST page was not opened.

### M9. "Overrated advice", bullet 2: the FTC quotation is fair, with 2 cautions

- Current text: "Fear of public Wi-Fi. The FTC calls public Wi-Fi ``usually safe,'' because most sites use HTTPS"
- Assessment: the FTC sentence in the report is "Most websites do use encryption to protect your information, so connecting through a public Wi-Fi network is usually safe" (PG line 215). The 2 quoted words are verbatim, and "because most sites use HTTPS" is a fair paraphrase of the first clause. The label "overrated" is the deck's framing, not the FTC's; the slide does not attribute the label to the FTC, so the attribution is fair.
- Caution 1: the FTC says "encryption," not "HTTPS." Proposed text: "The FTC calls connecting through public Wi-Fi ``usually safe,'' because most websites use encryption".
- Caution 2: PG line 215 records 1 exception from 2026, Microsoft's "CaptiveCrunch" report of July 31, 2026, in which a state actor targeted travelers (title only seen), and PG line 170 gives US travel guidance to "have no expectation of privacy on your devices when traveling abroad." Proposed spoken note: "This applies to ordinary use at home. Travel to higher-risk countries is a different case."
- I could not read the FTC page, so I could not check what the FTC says next in that article.
- Confidence: medium.

## Notes without a proposed change

- "Takeaways", bullet 1: the 2-hour figure matches the sum of PG's own estimates for the level A steps (115 to 130 minutes, plus 5 minutes for the phone passcode in AH line 306). AH's estimates for the same steps sum to about 47 minutes (AH lines 304 to 307). The 2 reports disagree, both figures are estimates, and the slide marks the number as ours. No change.
- "Takeaways", bullet 2: "Updates shorten the exposure to new flaws" is consistent with PG line 45, which also states the limit: updates cannot stop attacks on flaws that have no patch yet.
- "Takeaways", bullet 4: "Levels B and C limit the damage of 1 failure" is the deck's judgment. No report sentence states it, and none contradicts it.
- "C2", bullet 4: the benefit is the report's "standard reasoning" (AH line 272), marked as judgment there. It is fair.
- "C3", bullet 5: "Use the university VPN for university resources" agrees with CISA's exception for an organization's required VPN (AH line 248) and with PG line 216.
