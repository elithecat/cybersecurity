# Review: fact check of Level A slides

- Language model: claude-fable-5-2
- Prompt version: v1
- Role: factcheck-level-a
- Date: 2026-11-12

## Scope

Slides "Three levels of urgency" and "A1. Updates" through "A5. Three habits" (cybersecurity_2026_briefing.tex lines 504 to 577; handout pages 32 to 37), checked against agent-reports/research/research_account_hardening_2026-11-12.md ("hardening report") and research_protective_guidance_2026-11-12.md ("protective report").

## What I checked

1. Every product name, menu path, number, date, and attribution on the 6 slides, line by line against the 2 reports.
2. Whether each claim that the reports label [S], [primary snippet], [secondary], or [unconfirmed] carries the gray "[verify]" flag on the slide.
3. The 2 Microsoft claims, by downloading the Microsoft pages today (curl, HTTP 200):
   - https://www.microsoft.com/en-us/research/publication/how-effective-is-multifactor-authentication-at-deterring-cyberattacks/ . The page reads: Meyer, Romero, Bertoli, Burt, Weinert, Lavista Ferres, May 2023; "MFA reduces the risk of compromise by 99.22% across the entire population and by 98.56% in cases of leaked credentials"; the data are "a large dataset of Microsoft Azure Active Directory users exhibiting suspicious activity", and the study concerns "commercial accounts".
   - https://www.microsoft.com/en-us/security/blog/2025/08/21/think-before-you-clickfix-analyzing-the-clickfix-social-engineering-technique/ . The page is dated August 21, 2025 and reads: "campaigns targeting thousands of enterprise and end-user devices globally every day".

## What I could not check

- Apple, Google, NIST, NCSC, FBI IC3, Wall Street Journal, and Wirecutter pages (blocked hosts). For these I could only compare the slide with the research reports. All of them carry "[verify]" on the slides, with the exceptions listed in the findings.
- Menu paths on a real device.
- Whether the FBI IC3 totals cover only US victims (finding 7).

## Claims that match the reports and are flagged correctly (no change needed)

| Slide | Claim | Report evidence | Flag on slide |
|---|---|---|---|
| Three levels | 2 sort criteria; "The sort is a judgment" | Hardening report section 12: "all rankings are my judgment"; level A defined by frequency and 5 to 30 minutes | Not needed |
| A1 | Automatic updates; restart | Protective report section 1, recommendations 1 and 2 (restart point has no measured figure; the slide gives none) | Not needed |
| A2 | Wirecutter: 1Password; Bitwarden as free option | Hardening report section 6: from podcast show notes only, guide not read | [verify] present |
| A2 | Apple Passwords; Google Password Manager | Hardening report section 6 | Product names correct |
| A2 | NIST SP 800-63B-4, 2025: 15 characters as the only factor; no scheduled changes | Both reports (final, July 2025), [primary snippet] | [verify] present |
| A3 | g.co/passkeys, "Create a passkey" | Hardening report section 1, [S] | [verify] present |
| A3 | Settings, your name, iCloud, Passwords | Hardening report section 1, [S] | [verify] present |
| A3 | 99.22%, Microsoft Research, 2023 | Protective report section 2, [fetched]; I confirmed it again today | No flag needed (but see finding 4) |
| A4 | Wall Street Journal, 2023: passcode resets account password and opens saved passwords | Hardening report section 5, via secondary coverage | [verify] present |
| A4 | Settings, Face ID & Passcode, Stolen Device Protection | Hardening report section 4, [S] | [verify] present |
| A4 | Settings, Google, All services, Theft protection | Hardening report section 5, [S] | [verify] present |
| A5 | Microsoft, Aug 2025, thousands of devices per day | Protective report section 3, [fetched]; I confirmed it again today | No flag needed (but see finding 3) |
| A5 | 1,008,597 complaints; over $20 billion | Both reports ($20.877 billion), [primary snippet] or [S] | [verify] present |

One conflict between the 2 reports is resolved. The hardening report (section 11) says of Microsoft's "99.2%" figure: "not confirmed against a Microsoft page: do not print them." The protective report fetched the Microsoft Research page, and I fetched it again today. 99.22% is confirmed. The slide may print it.

## Findings

### Finding 1 (substantive, confidence medium to high)
- Slide: A5. Three habits, bullet 1 (and security_checklist.tex line 34, "Habit 1", same words).
- Current text: "Never approve a sign-in prompt, and never share a code, unless you started the sign-in"
- Problem: the condition "unless you started the sign-in" also governs "never share a code". The sentence then permits a person to give a code to someone else when the person started the sign-in. The sources state the code rule with no exception. In the attacks the reports describe (real-time phishing pages, help desk impersonation, device-code phishing), the victim often did start a sign-in.
- Proposed text: "Never approve a sign-in prompt that you did not start. Never give a sign-in code to another person"
- Evidence: protective report section 2, recommendation 3: "Never approve a sign-in prompt you did not start, and never read a code to anyone." Protective report section 3, FBI alert row: "never give a two-factor code to anyone who asks." Section 3 recommendation 5: "IT will not ask for your code."

### Finding 2 (minor, confidence medium)
- Slide: A4. Phone passcode, bullet 2.
- Current text: "Use at least 6 digits. A longer code with letters is stronger (Apple) [verify]"
- Problem: the attribution covers only half of the bullet. In the hardening report (section 5), Apple says that 6 digits is the default, that 4 digits is the least secure, and that a custom alphanumeric code is among the most secure options. The advice "six or more digits" is Google's (Pixel help: "a six-digit PIN is recommended"; Android theft protection page: "a PIN of six or more digits").
- Proposed text: "Use at least 6 digits. A longer code with letters is stronger (Apple; Google) [verify]"
- Evidence: hardening report section 5, "Passcode length: vendor advice".

### Finding 3 (minor, confidence high)
- Slide: A5. Three habits, bullet 2.
- Current text: "This attack reaches thousands of devices per day (Microsoft, Aug 2025)"
- Problem: Microsoft wrote "targeting", which is weaker than "reaches". The source does not say how many devices the attack reached.
- Proposed text: "Campaigns of this kind target thousands of devices per day (Microsoft, Aug 2025)"
- Evidence: Microsoft page fetched today (URL above): "campaigns targeting thousands of enterprise and end-user devices globally every day".

### Finding 4 (minor, confidence high on the facts)
- Slide: A3. Passkeys, bullet 5.
- Current text: "A second sign-in step cut account compromise by 99.22% in a Microsoft study (Microsoft Research, 2023)"
- Problem: 2 points. (a) The paper reports a reduction in the risk of compromise among commercial (business) Azure Active Directory accounts that showed suspicious activity, a narrower population than the slide suggests. (b) The study measured second steps such as text-message codes and authenticator apps, and it did not measure passkeys. On a slide titled "Passkeys", a listener may read the number as a passkey result.
- Proposed text: "Even an ordinary second sign-in step (a code or an app) cut the risk of compromise by 99.22% in a Microsoft study of business accounts (Microsoft Research, 2023)"
- Evidence: Microsoft Research page fetched today (URL above); protective report section 2.

### Finding 5 (minor, confidence medium)
- Slide: A3. Passkeys, bullet 3.
- Current text: "Apple: turn on two-factor authentication and iCloud Keychain (Settings, your name, iCloud, Passwords) [verify]"
- Problem: the bullet sits beside "Google: ... Create a passkey", so it reads as the way to put a passkey on the Apple Account. The hardening report (section 1) gives these 2 settings as the requirements to store and sync passkeys for other sites. For the Apple Account itself, the report says that Apple assigns a passkey automatically since iOS 17, from 2023 reporting, "[unconfirmed for 2026]".
- Proposed text: "Apple: to save passkeys for other sites, turn on two-factor authentication and iCloud Keychain (Settings, your name, iCloud, Passwords) [verify]"
- Evidence: hardening report section 1, "Apple Account [S]".

### Finding 6 (minor, confidence medium)
- Slide: A1. Updates, bullet 4.
- Current text: "Replace devices that no longer receive updates, such as an old home router (NCSC, May 1, 2026) [verify]"
- Problem: 2 points. (a) "NCSC" is not expanded on this slide. The earlier slide "Reasons for caution" says "the UK agency", and the protective report also cites a US body with the same initials (National Counterintelligence and Security Center, section 7). (b) Per the protective report, the NCSC post says to replace end-of-life technology. The home router example comes from the report's own recommendation 3 ("with home routers first") and from CISA Binding Operational Directive 26-02 on edge devices, and the report does not attribute it to the NCSC post.
- Proposed text: "Replace devices that no longer receive updates, such as an old home router (UK NCSC, May 1, 2026; CISA, Feb 5, 2026) [verify]"
- Evidence: protective report section 1, table rows for NCSC (1 May 2026) and CISA BOD 26-02 (5 February 2026), and recommendation 3.

### Finding 7 (minor, confidence low)
- Slide: A5. Three habits, bullet 4.
- Current text: "Reported US losses in 2025: over \$20 billion in 1,008,597 complaints (FBI IC3) [verify]"
- Problem: 2 points. (a) Neither report shows that the IC3 totals cover only US victims. The hardening report labels the row "United States" in its own words, and the PDF was not opened. I could not check this (ic3.gov is blocked). (b) The total covers all internet crime reported to the FBI, including investment fraud, and not only the 3 attacks on this slide.
- Proposed text: "Losses reported to the FBI in 2025, all internet crime: over \$20 billion in 1,008,597 complaints (FBI IC3) [verify]"
- Evidence: protective report section 3, first row; hardening report section 11.

## Unflagged claims that the reports mark as unconfirmed

None found. The 2 claims without a "[verify]" flag that carry a source (99.22% and the ClickFix figure) are both [fetched] in the protective report, and I confirmed both today. The unsourced bullets (automatic updates, restart, cover the screen, call back) are advice, and the reports mark them as judgment or as following from the cited sources.

## Reasoning notes

- I treated the difference between the deck's sort and the hardening report's sort (the report puts the carrier lock at the border of A and B, and the deck puts it in B) as settled, since the sort is Alyssa's request and the slide says that it is a judgment.
- I marked finding 1 substantive because the current wording changes the meaning of the safety rule. The other findings concern precision of wording or attribution.

## Count

1 substantive finding, 6 minor findings.
