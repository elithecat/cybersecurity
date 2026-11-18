# Review: urgency sort and coverage of the "what to do" section

- Language model: claude-fable-5-2
- Prompt version: v1
- Role: urgency-sort-coverage (1 of 25 reviewers)
- Date: 2026-11-12

Short names below: AH = agent-reports/research/research_account_hardening_2026-11-12.md. PG = agent-reports/research/research_protective_guidance_2026-11-12.md. Deck = cybersecurity_2026_briefing.tex. Checklist = security_checklist.tex.

## What I checked

1. I read Deck lines 494 to 693 (Section 4, slides "Three levels of urgency" to "Takeaways: the meantime"), the whole Checklist, and all of AH and PG.
2. For each of the 7 items that Alyssa asked for, I checked 3 things: is it on a slide, is it on the Checklist, and can a professor act on the text without another source.
3. I compared the deck's levels with AH section 12 (19 ranked steps in levels A, B, C) and PG section 10 (10 actions ranked by risk reduction per hour).
4. I read the earlier reviews of levels A, B, and C and of the security-expert audience, so that I do not repeat their findings. Where I rely on one, I name it.

## What I could not check

- I opened no outside page (network limit, settled). Every menu path that I propose comes from AH or PG, and each keeps the label that the report gave it. I propose "[verify]" on each.
- I did not compile the deck. Several proposals add a line to a slide that already has 5 bullets. Someone must check the fit after the edit. Where a slide is full, I propose a replacement and not an addition.
- Wirecutter's lists (add-ons, VPN pick, key models) are unconfirmed in AH. I checked only whether the deck leaves a placeholder for each.

## Coverage table

"Act" = enough detail to act on.

| Item Alyssa asked for | Slide | Checklist | Act: slide | Act: checklist |
|---|---|---|---|---|
| Security keys | B1 | B, item 1 | Partly: Apple path given, Google path missing, no hint which kind of key to buy | Partly: same gaps, and no Wirecutter placeholder |
| Passkeys | A3 | A, item 3 | Yes for Google. Apple gives the path | Apple has no path |
| Google and Apple "most secure versions" | C1 (plus A3, B1, B2) | C, items 1 to 3 | No: no step to enroll in Advanced Protection, no path for Lockdown Mode, and the route is split over 4 slides | No: Advanced Protection and Lockdown Mode have no step |
| PINs for phones | A4 | A, item 4 | Yes, except the path to a longer code | Yes |
| Wirecutter: HTTPS and privacy add-ons | B4 | B, item 4 | Partly: no Safari, no setting path, and no mention or placeholder for Wirecutter's own list | Partly: Privacy Badger is missing |
| Password manager | A2 | A, item 2 | Yes | Yes |
| Private Relay and other VPN options | C3 | C, items 5 and 6 | No path to turn Private Relay on. "Other options" = 1 placeholder | No path, no placeholder for the pick |
| Hide My Email | C2 | C, item 4 | Yes | No path |
| Sorted into levels of urgency | "Three levels of urgency" | 3 sections | Yes | Yes |

All 7 items appear on both documents. The gaps are in the detail, and they are largest for the strictest settings (C1) and for Private Relay (C3).

## The sort against the evidence: summary

The deck's sort agrees with AH section 12 for 13 of the 15 steps that both contain. The 2 differences:

- Carrier lock: AH puts it in A ("borderline A / B"). The deck puts it in B.
- Old devices: the slides put the step in A (slide A1). The Checklist puts it in B. PG ranks it 7 of 10. The 2 documents disagree with each other.

Level C matches the evidence. AH ranks email aliases 17 and Private Relay and VPNs 18 of 19, and CISA advises against a personal VPN (PG section 9). I propose no move there.

Steps that the evidence ranks high and the deck omits: a second sign-in step where a site offers no passkey (AH rank 1, in A), a code word (PG rank 6), the caution about passkey-themed lures and device codes (PG section 2 and 3), and passkeys on the other important accounts (AH rank 6).

## Substantive findings

### S1. Old devices: the slide and the Checklist put the same step in different levels
- Where: slide "A1. Updates", bullet 4 (Deck line 528). Checklist line 48 (section B).
- Current text, slide: "Replace devices that no longer receive updates, such as an old home router (NCSC, May 1, 2026) [verify]" under level A. Checklist: the same step under "B. This month".
- Evidence: PG section 10 ranks it 7 of 10 with "30 min plus purchase". A purchase does not fit "this week" beside 15-minute steps. The slide "Three levels of urgency" lists no such step in either level.
- Proposed text, slide A1 bullet 4: "This month (level B): replace devices that no longer receive updates, such as an old home router (NCSC, May 1, 2026) [verify]". Keep the Checklist as it is.
- Confidence: high that the 2 documents disagree. Medium on which level to keep.

### S2. Level A has no step for accounts that offer no passkey
- Where: slide "A3. Passkeys" (Deck lines 545 to 554). Checklist line 32.
- Current text: the slide gives passkey steps for Google, Apple, and Brown. Its last bullet says "A second sign-in step cut account compromise by 99.22% in a Microsoft study", but no bullet tells the audience to turn a second step on.
- Evidence: AH section 12 rank 1 is "Second factor or passkey on the main email, Apple and Google accounts". NCSC, April 2026 (PG section 2): passkeys first, "otherwise a strong unique password plus two-step verification". Many banks offer no passkey. The 99.22% figure measures any second step, so the slide cites evidence for a step that it does not give.
- Proposed text, slide A3, replace the last bullet: "No passkey offered (many banks): turn on 2-step sign-in. An app or a prompt beats a text message. A second step cut account compromise by 99.22% (Microsoft Research, 2023)".
- Proposed text, Checklist, add to the passkey item: "Where a site offers no passkey, turn on 2-step sign-in. Prefer an app or a prompt to a text message."
- Confidence: high.

### S3. Carrier lock: the evidence puts it in A, and the deck's own order makes the case stronger
- Where: slide "B3. Phone number lock" (Deck lines 604 to 613). Checklist line 43. Slide "Three levels of urgency" (line 511).
- Current: level B.
- Evidence: AH section 12 rank 5, level A, marked "borderline A / B": "it matters as long as SMS is a recovery path". The deck removes text-message codes only in level B (slide B2), so for the first month the phone number is the open path. The lock takes 2 minutes (AH) or 5 minutes (Checklist). Against the move: 971 complaints in 2025, so the weakness is rare, and the first of the deck's 2 criteria is how often attackers use it. PG ranks the lock 9 of 10.
- Proposed change (option 1, which I prefer): move the step to level A as the last step. Slide "Three levels of urgency", line 507: "Updates. Password manager. Passkeys on main accounts. Phone passcode. Phone number lock. Three habits." Line 511: remove "Phone number lock." Renumber the slides, and move the Checklist item to section A. Level A then takes about 2 hours and 5 minutes, so "about 2 hours" stays true.
- Option 2: keep level B and add 1 sentence to slide B3, last bullet: "This attack is rare (971 complaints to the FBI in 2025), so we put the lock in level B. It takes about 2 minutes, so do it today if you can [verify]".
- Confidence: medium. The research report calls it borderline, and the sort is a judgment.

### S4. The strictest settings (C1) give no step for 2 of the 3 settings, and no single route to "the most secure version"
- Where: slide "C1. Strictest settings" (Deck lines 639 to 647). Checklist lines 53 to 55.
- Current text: Advanced Protection Program: what it requires and limits, and no enrollment step. Lockdown Mode: who it is for, and no path. Advanced Data Protection: a path (the only one of the 3).
- Evidence: Alyssa asked "how to get Google and Apple accounts into their most secure versions". AH section 3: enroll at landing.google.com/advancedprotection, "Get started"; the short link g.co/advancedprotection is unconfirmed, so do not print it. AH section 4: Lockdown Mode is at Settings, Privacy & Security, Lockdown Mode. The steps that lead to the strictest state sit on 4 slides (A3, B1, B2, C1), and nothing says that they form 1 route.
- Proposed text, slide C1 bullet 1: "Google Advanced Protection Program: requires a passkey or a security key, limits other apps' access to Gmail and Drive, and tightens recovery. Enroll at landing.google.com/advancedprotection [verify]".
- Proposed text, slide C1 bullet 3: "Apple Lockdown Mode: for the few people whom sophisticated attackers target. Settings, Privacy & Security, Lockdown Mode [verify]".
- Proposed text, Checklist line 53: add "Enroll at landing.google.com/advancedprotection [verify]." Line 55: add "Settings, Privacy & Security, Lockdown Mode [verify]."
- Proposed addition, Checklist, 2 lines at the top of section C (the route in order; each step is already in the deck):
  - "Google, in order: passkey (A), 2 security keys (B), backup codes (B), remove text-message codes (B), Advanced Protection (C)."
  - "Apple, in order: two-factor authentication and passkeys (A), Stolen Device Protection (A), 2 security keys (B), recovery contact (B), Advanced Data Protection (C)."
- Related findings by others, which I do not repeat: review_factcheck-level-c (university accounts cannot turn on Advanced Data Protection, and need the administrator's permission for Advanced Protection; the wording of the "Cost" bullet).
- Confidence: high on the missing steps. Medium on the 2 route lines (they add length to a 1-page handout).

### S5. Private Relay has no step, and "other VPN options" is 1 placeholder
- Where: slide "C3. Private Relay and VPNs" (Deck lines 661 to 670). Checklist lines 57 and 58.
- Current text: 5 bullets on what Private Relay and a VPN do, and no path to turn Private Relay on. The other options: "Confirm Wirecutter's VPN pick [pick]" on the slide, and nothing on the Checklist.
- Evidence: AH section 8. Path: Settings, your name, iCloud, Private Relay (per device). A second option that AH documents and the deck omits: encrypted DNS (Chrome: Settings, Privacy and security, Security, "Use secure DNS"; Firefox turns it on by default in available regions). A third fact that helps on campus: Private Relay can be turned off for 1 Wi-Fi network ("Limit IP Address Tracking").
- Proposed text, slide C3 bullet 1: "Private Relay (Apple, with iCloud+): sends Safari traffic through 2 relays. Neither relay has both your identity and the site name. Settings, your name, iCloud, Private Relay [verify]".
- Proposed text, slide C3 bullet 2: "Private Relay is not a VPN, and it can fail on campus networks. You can turn it off for 1 Wi-Fi network (Apple) [verify]".
- Proposed text, slide C3 last bullet: "Use the university VPN for university resources. For travel, Wirecutter's pick: [pick]".
- Proposed text, Checklist line 57: "Private Relay. Apple, with iCloud+, for Safari: Settings, your name, iCloud, Private Relay [verify]. Private Relay is not a VPN. If it fails on campus, turn it off for that Wi-Fi network [verify]."
- Proposed text, Checklist line 58: "VPN. Use the university VPN for university resources. A commercial VPN moves your trust to the VPN company; CISA advises against a personal VPN [verify]. Wirecutter's pick: [pick]."
- Encrypted DNS: I propose it for the Checklist only if space allows: "Encrypted DNS. Chrome: Settings, Privacy and security, Security, 'Use secure DNS' [verify]." It hides only the name lookups (AH line 254), so it is optional.
- Confidence: high on the missing path. Medium on encrypted DNS.

### S6. The browser slide does not carry Wirecutter's list or a placeholder for it, and it leaves out Safari
- Where: slide "B4. Browser" (Deck lines 616 to 625). Checklist line 44.
- Current text: uBlock Origin, uBlock Origin Lite, and Privacy Badger, with no mention of Wirecutter. HTTPS settings for Chrome and Firefox only.
- Evidence: Alyssa asked for "Wirecutter recommendations such as HTTPS and some add-ons related to privacy". AH section 7: "Wirecutter's list of add-ons: [unconfirmed]. No Wirecutter page could be read." The slides A2, B1, and C3 each mark the Wirecutter gap; B4 does not, so Alyssa cannot see that the add-ons on B4 are the research agent's picks and not Wirecutter's. AH section 7 also reports that Safari tries HTTPS first by default (Safari 18.2, unconfirmed) and that Chrome 154 turned the setting on by default in October 2026 (likely, unconfirmed). Most of the audience uses Safari or Chrome, so for them the HTTPS step may already be done. The slide lists Privacy Badger; the Checklist does not.
- Proposed text, slide B4 bullet 1: "HTTPS only. Chrome: Settings, Privacy and security, Security, 'Always use secure connections.' Firefox: 'HTTPS-Only Mode.' Recent Chrome and Safari may already do this [verify]".
- Proposed text, slide B4 bullet 4: "Tracking: Privacy Badger, from the Electronic Frontier Foundation [verify]. Wirecutter's add-on list: [confirm picks]".
- Proposed text, Checklist line 44, after the content blocker sentence: "For tracking: Privacy Badger [verify]. [Wirecutter's add-on picks to confirm.]"
- Confidence: high that the placeholder is missing. Medium on the default-on claim (AH marks it unconfirmed, so it needs "[verify]").

### S7. Two cautions with evidence from 2026 are missing from level A: passkey-themed lures and device codes
- Where: slide "A3. Passkeys" and slide "A5. Three habits", bullet 2 (Deck line 573). Checklist lines 34 and 35.
- Current text, habit 2: "Never paste a command that a web page or a 'CAPTCHA' gives you."
- Evidence: PG section 3, Microsoft, April 6, 2026 (fetched): in device-code phishing, the victim types a code from the attacker's page into Microsoft's real sign-in page, and the attacker then holds valid tokens with no password stolen. PG ranks the rule "never paste a command or device code a web page gives you" 3 of 10. Habit 1 ("never share a code") does not cover this case, because the victim types the code into a real page. PG section 2, Microsoft, September 9, 2026 (title and summary only): attackers send "set up your passkey" emails. The deck's level A tells professors to set up passkeys, so the lure fits the talk exactly.
- Proposed text, habit 2 (slide and Checklist): "Never paste a command, and never type a code, that a web page or an email gives you".
- Proposed text, slide A3, in the Google bullet: "Google: type g.co/passkeys yourself, then 'Create a passkey.' An email that asks you to set up a passkey can be a lure (Microsoft, Sep 2026) [verify]".
- Confidence: high for the device code (fetched source). Medium for the passkey lure (the research agent saw only the title and summary).

### S8. A code word for family and the lab is missing; PG ranks it 6 of 10
- Where: slide "A5. Three habits", bullet 3 (Deck line 574). Checklist line 36.
- Current text: "When an email, a call, or a video asks for money or a password, call back on a number that you already have".
- Evidence: FBI public service announcement, December 3, 2024: "Create a secret word or phrase with your family to verify their identity" (PG section 3, primary snippet). PG section 10 rank 6, 15 minutes, above old devices, the credit freeze, and disk encryption, all of which the deck includes. Voice phishing was 11% of intrusions in Mandiant's 2025 cases (PG, fetched).
- Proposed text, Checklist, add after habit 3: "Agree on a code word with your family and your lab for urgent requests (FBI, Dec 2024) [verify]."
- Proposed text, slide A5: add the same sentence in place of the losses bullet ("Reported US losses in 2025: ..."), or keep the slide and put the code word only on the Checklist. The slide has 4 bullets, so a 5th may fit.
- Confidence: medium. The evidence for the step is one FBI sentence; the rank is the research agent's judgment.

## Minor findings

M1. Slide "B1. Security keys", bullet 5, and Checklist line 41: Google has no path. Current: "Google: any FIDO key works as the second step [verify]". Proposed: "Google: myaccount.google.com, Security, 'Passkeys and security keys.' Any FIDO key works [verify]". Evidence: AH line 76 (path partly unconfirmed). Confidence medium.

M2. Slide "B1. Security keys", bullet 2, and Checklist line 41: no hint which kind of key to buy, and the Checklist has no Wirecutter placeholder. Proposed, slide: "Buy 2 FIDO keys with USB-C and NFC, register both, and keep 1 at home. Apple requires 2 [verify]". Proposed, Checklist: "Buy 2 FIDO keys with USB-C and NFC [Wirecutter picks to confirm], ...". Evidence: AH lines 63 and 70. Confidence high.

M3. Order of B1 and B2. AH section 12 puts the recovery set-up (rank 7) before the security keys (rank 8): "do it before item 8". The deck puts keys first. Proposed: swap the 2 slides and the 2 Checklist items, so that "Account recovery" is B1. The order inside B2 (print the codes before removing text messages) was reported by review_audience-security-expert and review_factcheck-level-b. Confidence medium.

M4. Passkeys on other important accounts (AH rank 6, level B) appear nowhere. Proposed, Checklist "Account recovery" item, first sentence: "Add passkeys to your other important accounts (bank, password manager) where offered." Evidence: AH line 311; PG section 2 recommendation 1 names the password manager. Confidence medium.

M5. Slide "A4. Phone passcode", bullet 2: no path to a longer code. Proposed: "Use at least 6 digits. A longer code with letters is stronger: Settings, Face ID & Passcode, Change Passcode, Passcode Options (Apple) [verify]". Evidence: AH line 154. Confidence medium.

M6. Slide "A4" and Checklist line 33, Android: the path opens a page with several switches. Proposed: "Android: Settings, Google, All services, Theft protection. Turn on Theft Detection Lock and Identity Check [verify]". Evidence: AH lines 178 to 180. Confidence medium.

M7. Checklist line 32, Apple passkeys: no path, though the slide has one. Proposed: "Apple: turn on two-factor authentication and iCloud Keychain (Settings, your name, iCloud, Passwords) [verify]." Confidence high.

M8. Checklist line 56, email aliases: no path, though the slide has one. Proposed: "Hide My Email (Apple, with iCloud+): Settings, your name, iCloud, Hide My Email [verify]. Others: Firefox Relay, ...". Confidence high.

M9. Slide "B3" and Checklist line 43: CISA also advises a PIN on the carrier account (PG section 7; AH line 173). Proposed, Checklist: add "Set a PIN on the carrier account (CISA) [verify]." Confidence medium.

M10. Apple side of the account review is missing (AH rank 10: "same review of devices signed in to the Apple Account"). Proposed, Checklist "Account recovery" item: add "Apple: Settings, your name, and remove devices that you do not recognize [verify]." AH gives no confirmed path, so this needs a check on a device. Confidence low.

M11. Separate work and personal accounts (PG section 7, recommendation 3) is missing. Proposed, Checklist "Account recovery" item: add "Do not use the university address as the recovery address for a personal account." Confidence medium.

M12. "Save the IT security number in your phone now" (PG section 8, item 9; rank 10) takes 1 minute and appears only as a step after a break-in. Proposed, Checklist section A, new item: "Save the IT security number in your phone: [number]. (1 min)". Confidence medium.

M13. Slide "A2. Password manager": nothing protects the manager itself. Proposed, Checklist line 31, add: "Protect the manager with a long password and a passkey or a second step." Evidence: PG section 2, recommendation 1. Confidence medium.

M14. Slide "B4", bullet 4 (Privacy Badger) has no "[verify]" flag, though AH marks the whole of section 7 as search summaries. Covered by the proposed text in S6. Confidence high.

## Reasoning on the 3 levels as a whole

The deck's 2 criteria (how often attackers use the weakness, and how long the step takes) match the columns of the evidence table in AH section 11 and the "risk reduction per hour" rank in PG section 10. Level A holds the 4 steps that both reports rank first (updates, password manager, sign-in, phone passcode) plus the habits, which PG ranks 3 of 10 at no cost. Level B holds steps with a cost, a purchase, or a lock-out risk. Level C holds the steps that defend against rare attacks or that serve privacy more than account safety; AH and CISA both support that placement for VPNs, Private Relay, and email aliases. I found no item in level C that the evidence would raise, and no item in level A that it would lower, except the old-device bullet in S1.
