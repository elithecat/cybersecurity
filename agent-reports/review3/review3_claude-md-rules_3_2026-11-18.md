Language model claude-fable-5-2, prompt version v3, topic claude-md-rules, reviewer 3. Date 2026-11-18.

# Review 3: CLAUDE.md rules (3.3, 3.4, 3.6, 3.7, 3.8, 3.12, Part 8)

## Method

- I read CLAUDE.md sections 3.3, 3.4, 3.6, 3.7, 3.8, 3.12, 8.1, and 8.2.
- I searched `cybersecurity_2026_briefing.tex`, `security_checklist.tex`, `security_checklist_detailed.tex`, and `checklist_page/index.html` for every word in 3.6, the banned verbs in 3.3, em dashes, causal ", so" and ", since", semicolons, "what the X", "percent", spelled-out numbers, and the present perfect.
- I read the text of all 75 slides in `cybersecurity_2026_briefing_clean_handout.pdf` (with `pdftotext -layout`), and the text of both PDF checklists and the web page.
- I counted the words of each sentence outside quotations with a script (limit: 25 words).
- I did not look at slide images. I did not check facts.
- The folder already held the reports of reviewers 1 and 2. I printed the first lines of reviewer 1 by mistake (the method list only). I did not read their findings.

## Result of the searches (no finding)

- No em dash outside a quotation. No causal ", so" or ", since". Every "so that" states a purpose.
- No banned word from 3.6 outside a quotation ("essentially," "just," "fundamentally," and "basic" occur only in quotations). "basic failures" (Takeaways, Hacks with AI) paraphrases Mandiant's "fundamental"; I left it.
- Every percentage has the % sign. Every number of 4 or more digits has a separator.
- Every list item has its own click. No frame title has an article at the start.
- Every Takeaways item is a sentence with a period, as 8.2 requires.

## Findings

Count: 6 substantive, 17 minor.

### Substantive

**S1. A3. Sign-in methods (tex line 667), and Security keys (line 692).**
- Current: "The next 4 slides explain each method, from strongest to weakest"
- Problem: the next 4 slides are Passkeys, Security keys, Passkey storage, and App codes and text-message codes. The Security keys slide says "Security keys are the strongest of the 4 methods," and that slide is second. Passkey storage is not a method. The count and the order on the slide do not match the deck (3.8: a number must have a correct referent; 3.12: one meaning per word).
- Proposed: "The next 4 slides explain the methods"
- Confidence: high.

**S2. A5. Habits (tex line 775), `security_checklist.tex` line 35, `security_checklist_detailed.tex` line 30, `index.html` line 29.**
- Current: "Never paste text that a web page tells you to copy into a terminal or the Windows Run box"
- Problem: "tells" is a banned verb for a non-human subject (3.3). The sentence also has 2 readings: "copy into a terminal" or "paste into a terminal."
- Proposed (all 4 places): "Never paste text from a web page into a terminal or the Windows Run box"
- Confidence: medium. The proposed text is broader than the current text (it covers all pasted text, not only text that the page instructs the reader to paste). If Alyssa wants the narrow sense: "Never follow a web page's instruction to paste text into a terminal or the Windows Run box."

**S3. Numerals for counts (3.8). The deck writes "1" in most places ("In 1 test," "1 small company," "1 flaw," "1 software project") and "one" or a word in others.**
- "Three terms" (title, line 329) -> "Terms" (a title of 1 word; 8.2 allows 1 to 4 words). High.
- B3. Browser (line 825): "**One content blocker**" -> "**1 content blocker**" (the web page already says "install 1 content blocker"). High.
- `security_checklist_detailed.tex` line 37: "Two security keys:" -> "2 security keys:". High.
- Paycheck theft (line 252): "one group has sent" -> see S4.
- Skill (line 367): "2 operators of one spying group were undergraduates" -> "2 operators of 1 spying group were undergraduates". Medium.
- Energy (line 379): "One attack tool compares" -> "1 attack tool compares". Medium.
- Claude Mythos Preview (line 391): "One flaw was 27 years old. Another was 16 years old" -> "1 flaw was 27 years old. Another was 16 years old". Medium.
- PHP (line 279) "One report says," Java (line 291) "One firm estimates," Reasons for caution (line 572) "One outlet reported": here "one" works as "a." Proposed: "A report says," "A firm estimates," "An outlet reported." Low.
- Confidence for the group: high that the deck is inconsistent; the single items as marked.

**S4. Present perfect (3.12: simple tenses only).**
- Paycheck theft (line 252): "Since March 2025, one group has sent university employees fake emails that link to a copy of a sign-in page (phishing)" -> "From March 2025, 1 group sent university employees fake emails that link to a copy of a sign-in page (phishing)"
- Monday, November 9, 2026 (line 157): "Vanderbilt has not confirmed the claim" -> "Vanderbilt did not confirm the claim"
- Archive of Our Own (line 219): "The operator has not stated the cause" -> "The operator did not state the cause"
- Confidence: high for the rule. Medium for the worth of the change, because the present perfect here means "up to today."

**S5. One word per concept (3.12) in the handouts.**
- `security_checklist.tex` line 32: "A passkey is a secret key that your device stores." The slides say "a secret," and "security key" is a different object. A reader can confuse "secret key" with "security key." -> "A passkey is a secret that your device stores."  High.
- `security_checklist_detailed.tex` (section C): "Email aliases:" The slides, the 1-page checklist, and the web page say "Email masking." -> "Email masking:". High.
- `security_checklist.tex` line 32 and `security_checklist_detailed.tex` line 26: "Strength, from most to least: security key or passkey, app, text message." The slides say "app code" and "text-message code." -> "Strength, from most to least: security key or passkey, app code, text-message code." High.
- Passkeys (lines 677 and 678): "device PIN" and "PIN." The deck says "passcode" for the same secret on Passkey storage and A4. -> "your face, fingerprint, or device passcode" and "your face, fingerprint, or passcode". Medium (Windows calls it a PIN).
- B2. Account recovery (line 814): "on-device prompts stopped 90%." The comparison table says "app prompt." -> "app prompts stopped 90%". Medium.
- A2. Password manager (lines 650 and 651): "The software writes and stores …" and then "The manager encrypts …" name the same object. "writes" is also an action verb with a software subject (3.3). -> "The manager creates and stores 1 long, unique password for each account". High.

**S6. Unclear "it," "this," "both," and "such" (3.12).**
- Hacks with AI (line 342): "It succeeded against a small number of roughly 30 targets" ("It" can be the group, the AI, or the campaign) -> "The group succeeded against a small number of roughly 30 targets". High.
- Exploits built from patches (line 444): "It 'would have finished …'" follows "Each one turns …" -> "The model 'would have finished …'". High.
- Reasons for caution (line 572): "Both companies sell the models and defensive products." The slide before it names only Anthropic. -> "OpenAI and Anthropic sell the models and defensive products". High.
- Takeaways, Predictions (line 585): "Nobody on this line predicts that the problem goes away." The slide shows no line. -> "None of the 5 people predicts that the problem goes away." (Schneier, Stamos, Mandia, Altman, Amodei.) Medium.
- How worried should we be? (line 602): "Anyone can now download such a model." The sentence before it names no model. -> "Anyone can now download a model near that level". Medium.
- A4. Phone passcode (line 749): "This is a reason to keep passwords in a separate manager." -> "For that reason, keep passwords in a separate manager." Medium.

### Minor

**M1. Range of predictions (line 495).** "Skeptics sit to the left of this line: they call the warnings marketing." "sit" is a position metaphor (3.6 bans "sit at"; 3.3 asks for "we" as the actor). -> "We place skeptics to the left of this line. They call the warnings marketing." Medium. (The line copies the "spectrum" line of her course lecture; if she wrote that sentence, keep it.)

**M2. Banned verb "ask" with a non-human subject (3.3).**
- A3. Sign-in methods (line 663): "Most accounts ask for a password, and then for a second step" -> "Most accounts require a password, and then a second step". Medium.
- App codes and text-message codes (line 713): "A fake sign-in page can ask for the code and pass it to the real site" -> "An attacker's fake sign-in page can collect the code and pass it to the real site". Medium.

**M3. Three terms (line 332).** "The quotes also say 'bug'" (quotes do not speak; 3.3) -> "The people we quote also say 'bug'". Medium.

**M4. C2. Email masking (line 882).** "The site never learns your real address" -> "The site never receives your real address". Low.

**M5. Entry methods (line 299).** "organizations that ransomware hit" ("hit" is figurative; ransomware is the actor) -> "organizations that had a ransomware attack". Low.

**M6. Takeaways, What you can do right now (line 944).** "Passkeys, a password manager, and 3 habits address stolen passwords and phishing." ("address" is an action verb with object subjects) -> "Passkeys, a password manager, and 3 habits protect against stolen passwords and phishing." Low.

**M7. Passive voice without an actor (3.4).**
- A1. Updates (line 639): "An update is not installed until the device restarts" -> "The device installs an update only when it restarts". Medium.
- Face, fingerprint, or passcode (line 762): "a short passcode can be guessed" -> "a person can guess a short passcode". Medium.
- C1. Strictest settings (line 872): "Mail, Contacts, and Calendar are excluded" -> "It excludes Mail, Contacts, and Calendar". Low.
- Skeptics (line 453): "the flaws that were disclosed in 2026" -> "the flaws that researchers disclosed in 2026". Low.
- Outside universities (line 266): "some personal devices were erased as well" -> "the tool erased some personal devices as well". Low.

**M8. Semicolons in slide text (8.1).** Three citations: "(Talos; Rapid7)" (line 288), "(Apple; Google)" (line 750), "(UK NCSC; CISA)" (line 850) -> "(Talos and Rapid7)," "(Apple and Google)," "(UK NCSC and CISA)". Medium.

**M9. Semicolon that joins 2 instructions (3.12), `security_checklist.tex` line 63.** "iPhone: Settings, Privacy & Security, Tracking; turn off 'Allow Apps to Request to Track.' Android: Settings, Privacy, Ads; choose 'Delete advertising ID.'" -> "iPhone: Settings, Privacy & Security, Tracking. Turn off 'Allow Apps to Request to Track.' Android: Settings, Privacy, Ads. Choose 'Delete advertising ID.'" (the wording of slide C4). High.

**M10. More than 1 instruction per sentence, and more than 20 words (3.12), in the 1-page checklist.**
- Line 43 (B1, 33 words): "Buy 2 (Wirecutter's pick: Yubico Security Key C NFC, about $29 each), add both keys to your Apple and Google accounts in the security settings, and keep the spare key at home." -> "Buy 2 (Wirecutter's pick: Yubico Security Key C NFC, about $29 each). Add both keys to your Apple and Google accounts in the security settings. Keep the spare key at home."
- Line 73 (API keys, 30 words): "API keys: keep them out of code and prompts, give each project its own key with a spending limit, and limit a server's key to the address of that server." -> "API keys: keep them out of code and prompts. Give each project its own key with a spending limit. Limit a server's key to the address of that server."
- Line 47 (Disk encryption, 26 words): "On your own computer: back up first, turn on FileVault (Mac) or BitLocker (Windows), and save the recovery key away from the laptop." -> "On your own computer: back up first. Then turn on FileVault (Mac) or BitLocker (Windows). Save the recovery key away from the laptop."
- Web page `index.html`: "Browser: turn on HTTPS only, install 1 content blocker, and remove the extensions that you do not use." -> "Browser: turn on HTTPS only. Install 1 content blocker. Remove the extensions that you do not use." The "Tracking:" item has the same form.
- Confidence: high for the rule, medium for the worth (the handout must fit on 1 page).

**M11. C3. Private Relay and VPNs (line 897), 26 words.** "CISA's reason: a personal VPN moves the risk from your internet provider to the VPN company, and many VPN companies have weak security and privacy practices" -> "CISA's reason: a personal VPN moves the risk from your internet provider to the VPN company. Many VPN companies have weak security and privacy practices". Medium.

**M12. AI agents (line 963).** "about 1% of attacks succeeded against an attacker with 100 tries per test" (an attack cannot succeed against an attacker; 3.8 asks for a clear denominator) -> "about 1% of attacks succeeded, when the attacker had 100 tries per test". Medium. Check the denominator against the source.

**M13. Main points (line 171) and final Takeaways (line 999).** "About half of ransomware attacks on universities start with a stolen password or a phishing email." The number comes from 1 survey of 95 organizations, and the section Takeaways slide gives that limit ("In the higher-education survey"). 3.8 asks for the denominator with the number. -> "In a 2026 survey, about half of ransomware attacks on universities started with a stolen password or a phishing email." Medium.

**M14. Other universities, fall 2026 (line 231).** "with up to about 200,000 people affected" has 2 qualifiers on 1 number (3.8: one "about" before a rounded figure) -> "with up to 200,000 people affected". Low.

**M15. Frame titles with a colon (8.1: titles without colons).** "Backup: lab data," "Backup: spread of capability," "Backup: Amodei on the opportunity" -> "Lab data," "Spread of capability," "Amodei on the opportunity." The slides already come after "Questions?" Low.

**M16. Frame titles longer than 4 words (8.2).** "AI that broke in without orders" (6 words) -> "Break-ins without orders". "App codes and text-message codes" (5 words) -> "App and text-message codes". Low.

**M17. Small items.**
- Takeaways, Hacks with AI (line 470): "'breaking the internet'." has the period outside the quotation mark; every other instance has it inside. -> "'breaking the internet.'" High.
- Footer section label: the final Takeaways, "Questions?," and the 3 backup slides show "AI tools" in the footer, because no `\section` follows. The AI tools section has no Takeaways slide of its own (8.2: end each section of a long talk with takeaways). Proposed: add `\section*{}` or a "Summary" section before the final Takeaways. Low.
- B6. Old accounts (line 858): "can appear in a breach." The deck says "break-in" elsewhere (3.12). -> "A break-in at the site can expose that data". Low.
- Passkey storage (line 701): "the passcode can stand in for your face or fingerprint" ("stand in" is figurative) -> "the passcode can replace your face or fingerprint". Low.
- `security_checklist_detailed.tex` line 72: "the speaker's recommendation," "according to the speaker." The handouts say "we" elsewhere (3.4). -> "our recommendation," "according to our notes". Low.
- `index.html` line 53: the gray label "labs" after "If you write research code" has no clear meaning, and the 1-page checklist calls the section "For a research lab." Proposed: delete the label. Low.
- B2. Account recovery (line 814) repeats the 76% figure of "App codes and text-message codes" (line 715). Keep it on 1 slide. Low.

## Items checked and left

- "AI lowers the skill that an attack needs, and an AI agent does not tire": "Skill" and "Energy" are settled.
- "lock" and "puzzle" on the Passkeys slide are an analogy for a lay audience (3.10 rule 17 would ban them in a paper). I leave this to the mannered-prose reviewers.
- The title slide has no date (8.2 lists a date). Her 2026 template also has `\date{}`. No finding.
- The Roadmap has no pauses. 8.2 says to show an agenda at once.
- Counts that I recomputed from the slides and that match: 6 universities (Recent hacks Takeaways), 3 of 5 incidents (Ivy League), 27% + 23% = 50% (Entry methods), 75 of 530 = 14%, 89,859 / 39,639 = 2.3, level A = 135 minutes, level B = 230 minutes.
