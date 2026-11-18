language model claude-fable-5-2, prompt version v1, role: checklist-handout

# Review of security_checklist.tex and security_checklist.pdf as a standalone handout

Date: 2026-11-12. Reviewer role: checklist-handout (1 of 25 independent reviewers).

## Summary

- The checklist fits on 1 page (pdfinfo: 1 page, letter). The last line of text ends at y = 658 pt of 792 pt. With the 0.55 in margin, about 94 pt (about 8 lines at the current size) remain free. The additions that I propose below fit in this space if the authors accept all of them; I did not compile a changed file, because the brief forbids edits.
- The time estimates of level A sum to 115 minutes (15 + 60 + 30 + 10). The heading "about 2 hours" and the slide "Takeaways: the meantime" ("Level A takes about 2 hours") agree with this sum. The 3 habits have no time, which is reasonable.
- The time estimates of level B sum to 195 minutes (45 + 30 + 5 + 15 + 60 + 10 + 30), with no time for "Old devices." The heading of level B gives no total.
- I found 7 substantive and 14 minor findings.
- No banned word from CLAUDE.md 3.6, no em dash, no causal ", so" and no causal "since" appear in the checklist (3.7). The findings on writing rules are all from 3.12.

## What I checked

- security_checklist.tex (78 lines) and the rendered PDF (pdftotext -layout, pdftotext -bbox, and a 70 dpi image of the page).
- The slides of Sections 4 and 5 in cybersecurity_2026_briefing_handout.pdf (slides 31 to 53), item by item against the checklist: level, name, menu path, number, and "[verify]" flag.
- CLAUDE.md 3.6, 3.7, and 3.12.
- agent-reports/research/research_account_hardening_2026-11-12.md (section 12 and the carrier-lock section) and research_protective_guidance_2026-11-12.md, for the time estimates, the order, and the places where a reader turns on each setting.
- security_checklist.log: no overfull or underfull box warnings.

## What I could not check

- I did not open any vendor page (Apple, Google, carriers), because the network blocks them. I did not judge whether the menu paths are correct, only whether the checklist and the slides agree.
- I did not measure whether the proposed additions keep the handout on 1 page. Compile after the changes and confirm.
- The time estimates are the authors' judgment. I can compare them only with the estimates in the research reports, not with a measurement.

## Substantive findings

### S1. "Old devices" is in level B on the checklist and in level A on the slides
- Location: security_checklist.tex line 48 (level B, last item); slide "A1. Updates," bullet 4.
- Current text (checklist, level B): "Old devices. Replace devices that no longer receive updates, such as an old home router."
- Current text (slide A1): "Replace devices that no longer receive updates, such as an old home router (NCSC, May 1, 2026) [verify]"
- Proposed: choose 1 level. Option 1 (keeps the 2-hour total of level A): keep the checklist item in level B, and move the slide bullet from "A1. Updates" to "B5. Backups, encryption, credit freeze," or state the level on the slide: "This month: replace devices that no longer receive updates, such as an old home router (NCSC, May 1, 2026) [verify]". Option 2: move the checklist item to level A after "Updates."
- Also add the flag on the checklist: "...such as an old home router \vfy." (see S3).
- Evidence: handout slide 33; checklist line 48. Confidence: high.

### S2. The time for the phone number lock differs: 5 minutes on the checklist, about 2 minutes on the slide
- Location: security_checklist.tex line 43; slide "B3. Phone number lock," last bullet.
- Current text (checklist): "\mins{5 min}". Current text (slide): "the lock takes about 2 minutes [verify]".
- Proposed: use 1 number. The research report gives 2 minutes ("the fix takes 2 minutes," research_account_hardening, section 12, item 5). Either change the checklist to "2 min" (the level B sum becomes 192 minutes), or change the slide to "the lock takes about 5 minutes".
- Confidence: high that the numbers differ; medium on which number is better.

### S3. The "[verify]" flags on the checklist do not match the flags on the slides
The introduction of the checklist says: "A step marked [verify] comes from a source that we could not open for this draft." A reader therefore takes an unmarked step as verified. These steps have a flag on the slides and no flag on the checklist:
1. Line 45, "Backups": slide B5 has "(CISA) [verify]". Proposed: "Restore 1 file as a test \vfy."
2. Line 47, "Credit freeze": slide B5 has "(FTC) [verify]". Proposed: "...(Equifax, Experian, TransUnion) \vfy."
3. Line 48, "Old devices": slide A1 has "(NCSC, May 1, 2026) [verify]". Proposed: add "\vfy" at the end.
4. Line 58, "VPN": slide C3 has "(EFF) [verify]" on the sentence about trust. Proposed: "A commercial VPN moves your trust from the network to the VPN company \vfy."
5. Line 43, "Phone number lock": the slide flags Verizon, T-Mobile, and AT&T separately. The checklist has 1 flag after AT&T, and a reader can take it to apply to AT&T only. Proposed: put the flag after the item name ("Phone number lock \vfy.") or after each carrier.
6. Line 31, "Password manager": the single flag follows "Bitwarden at no cost." On the slide, the flag covers both Wirecutter picks. Proposed: "(Wirecutter picks \vfy: 1Password, or Bitwarden at no cost; or the built-in ...)".
- Evidence: handout slides 33, 34, 40, 42, 45; checklist lines 26, 31, 43, 45, 47, 48, 58. Confidence: high.

### S4. Level C on the checklist omits the lock-out warning of slide C1, and it adds a prerequisite that the slide does not have
- Location: security_checklist.tex lines 53 to 55; slide "C1. Strictest settings."
- Current text (slide, last bullet): "Cost: if you lose your keys and your devices, Google and Apple cannot let you back in". The checklist has no such sentence. A reader who has only the handout turns on Advanced Data Protection or the Advanced Protection Program without the warning.
- Current text (checklist line 54, not on the slide): "Set a recovery contact or a recovery key first."
- Proposed (checklist, as the first line under the level C heading, not a checkbox): "Warning for the first 3 steps: if you lose your keys and your devices, Google and Apple cannot let you back in. Do the step \"Account recovery\" in level B first."
- Proposed (slide C1, Apple bullet, so that the 2 documents agree): add "Set a recovery contact or a recovery key first" before the menu path.
- Minor part of the same item: the slide says that the Google program "tightens recovery"; the checklist omits these words. Proposed checklist text: "It requires a passkey or a security key, limits other apps' access to Gmail and Drive, and tightens recovery \vfy."
- Evidence: handout slide 43; research_account_hardening line 115 (Advanced Data Protection requires at least 1 recovery method) and line 312. Confidence: high for the omission; medium for the wording.

### S5. Three steps do not say what to do or where, and 2 terms have no definition; a reader without the talk cannot do these steps
1. "Passkeys on main accounts" (line 32) and "Two security keys" (line 41): the checklist never says what a passkey or a security key is. The slides define both (A3, bullet 1; B1, bullet 1).
   - Proposed line 32, first sentence: "A passkey replaces the password: the device stores a secret key, and you approve each sign-in with your face, fingerprint, or device PIN."
   - Proposed line 41, first sentence: "A security key is a small USB or NFC device that you buy (FIDO standard)." The words "FIDO standard" come from slide B1 ("any FIDO key works") and tell the reader what to buy; the checklist names no product.
2. "Phone passcode" (line 33): "iPhone: Settings, Face ID & Passcode, Stolen Device Protection" has no verb. Proposed: "Turn on the theft setting. iPhone: Settings, Face ID & Passcode, Stolen Device Protection \vfy. Android: Settings, Google, All services, Theft protection \vfy."
3. "Phone number lock" (line 43): the item lists 5 setting names with no verb, no location, and no reason. Proposed: "Turn on the lock in the app or on the website of your carrier. The lock stops a thief who asks the carrier to move your number. Verizon: ..." The research report supports "app or website" for Verizon (My Verizon app or website), T-Mobile (T-Life app), and AT&T (myAT&T app), each with an unconfirmed path (research_account_hardening lines 167 to 170).
- The same missing verbs are on slides A4 and B3, where the speaker supplies them.
- Evidence: CLAUDE.md 3.12 ("Do not drop words"); the assignment's requirement that the handout work without the talk. Confidence: high for the gap; medium for the exact words.

### S6. The reader cannot tell what to do first, and cannot connect an item to its slide
- Location: whole checklist; slide titles "A1. Updates" to "C3. Private Relay and VPNs."
- Current state: the levels have letters, but the items have no numbers. The introduction does not say whether the order within a level matters. The slides use the labels A1 to A5, B1 to B5, and C1 to C3; the checklist uses none of them. Level A states a total time; level B does not.
- Proposed:
  1. Number the items with the slide labels: "A1 Updates," "A2 Password manager," "A3 Passkeys," "A4 Phone passcode," "A5 Three habits (no set-up time)" with the 3 habits below it; "B1 Security keys" to "B5" (see minor finding M2 for B5); "C1" to "C3."
  2. Add 1 sentence to the introduction: "Start with level A, and do the steps in each level from top to bottom." This sentence is correct only if the authors intend the slide order as the priority order; the author must confirm. If the order within a level has no meaning, write: "Start with level A. Within a level, the order is not important."
  3. Change the heading of level B to "B. This month (about 3 hours)". The estimates sum to 195 minutes (192 minutes with the change in S2). Alternative: "(about 3 hours and 15 minutes)".
- Evidence: checklist lines 26, 28, 39; slide titles 33 to 45. Confidence: high for the missing labels and total; medium for the sentence on order.

### S7. In "Account recovery," the first instruction depends on the item above, and the safer instructions come last
- Location: security_checklist.tex line 42; slide "B2. Account recovery."
- Current text: "Remove text-message codes after you add a passkey or a key [verify]. Print the backup codes. Add a recovery contact. Run myaccount.google.com/security-checkup."
- Problem: the research report puts the recovery set-up before the security keys, because stronger sign-in raises the risk of a lock-out ("do it before item 8 and before Advanced Data Protection," research_account_hardening line 312). On the checklist, a reader removes the text-message fallback first and prints the backup codes second. The item also does not say at which account to add a recovery contact.
- Proposed text: "Print the backup codes. Add a recovery contact at Apple and at Google. Run myaccount.google.com/security-checkup. Then remove text-message codes, but only after a passkey or a security key works \vfy."
- The slide B2 has the same order (remove first, print second); change both, or accept the difference on purpose.
- Note for level C: the same research report says that an account in the Google Advanced Protection Program cannot use Recovery Contacts (line 88). I could not check this claim. If it is correct, the instruction "Add a recovery contact" does not apply to a Google account in that program.
- Evidence: research_account_hardening lines 88, 105, 145, 312. Confidence: medium.

## Minor findings

M1. Item names differ from the slide titles. Checklist "Passkeys on main accounts" and "Two security keys" match the overview slide "Three levels of urgency" but not the titles "A3. Passkeys" and "B1. Security keys." Checklist "Browser" matches "B4. Browser" but the overview slide says "Browser settings." Proposed: use the title of each numbered slide everywhere ("Passkeys," "Security keys," "Browser"), per the rule of 1 word for each concept (3.12). Confidence: high.

M2. Slide B5 is 1 item ("Backups, encryption, credit freeze"); the checklist has 3 items ("Backups," "Disk encryption," "Credit freeze"). The split is better for a checklist. Proposed labels if S6 is accepted: "B5a Backups," "B5b Disk encryption," "B5c Credit freeze." Slide says "Encryption"; checklist says "Disk encryption." Confidence: high.

M3. Line 30: "Restart today." Slide A1: "Restart when the device asks." The slide also has "Relaunch the browser when it shows an update button," which the checklist omits. Proposed checklist text: "Restart the device and the browser today, and each time that an update asks." Confidence: medium.

M4. Line 32, Apple passkey: the slide gives the path "(Settings, your name, iCloud, Passwords)"; the checklist omits it. Proposed: "Apple: turn on two-factor authentication and iCloud Keychain (Settings, your name, iCloud, Passwords) \vfy." Confidence: high.

M5. Line 32: "Brown: [option to confirm]." Slide A3: "Brown: [passkey or security key option for Brown sign-in]". Line 70: "[confirm with Brown OIT]"; slide "First hour": "[confirm these steps with Brown OIT]". Proposed: use the slide wording in both places. Confidence: high.

M6. The placeholders on the checklist ("[option to confirm]," "[number]," "[confirm with Brown OIT]") print in black body text or in the red heading. The slides print placeholders in blue with \fillin, and the introduction of the checklist explains only "[verify]." Proposed: define \fillin in the checklist with the same blue as the deck, so that an unfilled placeholder is visible before printing. Confidence: high.

M7. Line 41: "register both on Apple and Google accounts." Slide B1: "Buy 2 keys, register both, and keep 1 at home," with a separate line "Google: any FIDO key works as the second step [verify]." The checklist gives the Apple path and no Google line. Proposed: add "Google: myaccount.google.com, Security" only if a source supports the path; I found the path "Google Account > Security > How you sign in to Google" in research_account_hardening line 105 for recovery contacts, not for keys, and I cannot confirm it for keys. Otherwise leave as is. Confidence: low.

M8. Line 44: slide B4 also has "Tracking. Privacy Badger, from the Electronic Frontier Foundation." The checklist omits it, while it says "Install 1 content blocker." Either omit on purpose (consistent with "1 content blocker") or remove the Privacy Badger bullet from the slide. No change needed on the checklist. Confidence: medium.

M9. Line 58: "A commercial VPN moves your trust to the VPN company." Slide C3: "moves your trust from the network to the VPN company." Proposed: restore "from the network." Confidence: high.

M10. Lab section. (a) Line 63 omits the second sentence of the slide "Lab data": "Do not keep it on a laptop or in a personal cloud account." Proposed: add it. (b) Line 67: "Run AI coding agents in a container." Slide: "Run a coding agent in a container, not in your own laptop account." The slides say "agent" and "coding agent"; the checklist says "AI coding agents" and "an AI agent." Proposed: "Run a coding agent in a container, not in your own laptop account. Do not connect an agent to your main email or drive without approval from IT." (c) The slide bullet "Keep API keys out of code and out of prompts" is an action with no checklist item. Proposed new item: "Keep API keys out of code and out of prompts." Confidence: high for the differences.

M11. One instruction in each sentence (3.12). Sentences that join 2 or 3 instructions:
- Line 34: "Never approve a sign-in prompt, and never share a code, unless you started the sign-in." Proposed: "Never approve a sign-in prompt unless you started the sign-in. Never share a code."
- Line 41: "Buy 2, register both ..., and keep 1 at home." Proposed: "Buy 2 security keys. Register both keys. Keep 1 key at home."
- Line 64: "Give each student a named account, and remove access when a person leaves." The slide already uses 2 sentences. Proposed: "Give each student a named account. Remove access when a person leaves."
- Line 74: "On a different device, change the password and sign out of all other sessions." Proposed: "On a different device, change the password. Then sign out of all other sessions."
- Line 67 and the slide wording of lines 34, 41, and 74 are the same as on the slides; if the checklist changes, change the slides also. Confidence: high that the rule applies to a handout (3.12 scope: prose outside papers); low priority.

M12. Dropped words and unclear reference (3.12). Line 31: "Install one" (no noun). Proposed: "Install a password manager." Line 41: "Buy 2" (see M11). Line 42: "a passkey or a key." Proposed: "a passkey or a security key." Line 31: "long, unique passwords" gives no length; slide A2 gives the NIST figure. Proposed: "long (at least 15 characters), unique passwords \vfy," or leave "long" because the password manager chooses the length. Confidence: medium.

M13. Words for the IT office vary: "IT" (lines 66, 67), "the IT security office" (line 73), "Brown OIT" (line 70), "the university" (lines 31, 45, 58, 63), "Brown" (line 32). Proposed: "Brown OIT" or "IT" everywhere after the author fills in the local facts. Confidence: medium.

M14. The 2 web addresses (g.co/passkeys, myaccount.google.com/security-checkup) are plain text. hyperref is loaded and has no link to make. Proposed: \url{...} or \href, so that the PDF version of the handout has links. The time estimates are also larger than the estimates in the research report (updates 2 minutes, password manager 30 minutes "to start," passkey 10 minutes, phone 5 minutes, keys about 30 minutes; research_account_hardening section 12). The checklist says that the times are "our estimates," and larger estimates are the cautious choice; no change needed, but the author should know that the 2-hour total comes from the checklist, not from the research report. The 45 minutes for security keys excludes the purchase, and the 60 minutes for backups excludes the time of the first backup. Proposed: no change, or "45 min after the keys arrive." Confidence: medium.

## Items that match (no change needed)

- Level A order (Updates, Password manager, Passkeys, Phone passcode, 3 habits) matches slides A1 to A5 and the final takeaway 3.
- Level B order matches slides B1 to B5, apart from "Old devices" (S1).
- Level C order matches slides C1 to C3.
- The 3 habits match slide A5 word for word.
- Menu paths that agree with the slides: Stolen Device Protection, Android Theft protection, Apple Security Keys, Advanced Data Protection, the Chrome and Firefox HTTPS settings, the uBlock Origin browser pairs, the 3 carrier lock names, g.co/passkeys, and the Security Checkup address.
- The 4 steps after a suspected break-in match the slide "First hour" word for word.
- The 2 sorting criteria in the introduction match the slide "Three levels of urgency."
