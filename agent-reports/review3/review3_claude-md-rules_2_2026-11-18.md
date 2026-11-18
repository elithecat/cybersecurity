Language model claude-fable-5-2, prompt version v3, topic claude-md-rules, reviewer 2.

# Review 3: CLAUDE.md rules (3.3, 3.4, 3.6, 3.7, 3.8, 3.12, Part 8)

## Method

- I read CLAUDE.md sections 3.3, 3.4, 3.6, 3.7, 3.8, 3.12, 8.1, and 8.2.
- I searched the 3 .tex sources and checklist_page/index.html for every word in 3.6, the banned verbs in 3.3, em dashes, ", so", ", since", "what the", "percent", and semicolons.
- I read all 75 slides in cybersecurity_2026_briefing.tex (lines 147 to 1050), both checklists, and the web page. I compared the text of slides 1 to 3 and 39 with `pdftotext` output of the clean handout PDF. I did not render every slide as an image.
- I did not fact-check, and I did not report the settled decisions.

## Search results

- Em dashes, causal ", so", causal ", since", "percent": none.
- Banned words of 3.6 outside quotations: "basic" (line 469), "sit" (line 495). The other hits ("essentially," "just," "fundamentally," "basic techniques") are inside source quotations.
- Banned verbs of 3.3 with a non-human subject: "tells" (a web page, line 775, and 3 other files).
- Semicolons in slide text: only inside 3 citations (lines 288, 750, 850) and 1 quotation (line 562).
- 8.1 mechanics: every list has `\pause` before the first item and between items. The table builds row by row. No `\alert` remains at the end of a frame.

## Findings: substantive (8)

S1. "How worried should we be?" (line 601). High.
- Current: "This fall: Vanderbilt, Canvas, AO3, Binance, PHP, and Java"
- Proposed: "This year: Vanderbilt, Canvas, AO3, Binance, PHP, and Java"
- Reason: the "Canvas during finals" slide dates the Canvas break-in to April 29, 2026. The label "This fall" contradicts that slide.

S2. "A3. Sign-in methods" (line 667). High.
- Current: "The next 4 slides explain each method, from strongest to weakest"
- Proposed: "The next 4 slides explain each method"
- Reason: the next slides are in the order passkeys, security keys, passkey storage, codes. The "Security keys" slide says that security keys are the strongest, and the table lists the security key first. Alternative: keep the sentence and move "Security keys" before "Passkeys."

S3. "A5. Habits" (line 775), security_checklist.tex line 35, security_checklist_detailed.tex line 30, index.html line 29. Medium.
- Current: "Never paste text that a web page tells you to copy into a terminal or the Windows Run box."
- Proposed: "Do not follow a web page's instructions to paste text into a terminal or the Windows Run box."
- Reason: 3.3 bans "tells" for a non-human subject. The current sentence also has 2 readings ("copy into a terminal" or "paste into a terminal"). The proposal has 18 words (3.12 limit: 20).

S4. "Main points" (line 172) and final "Takeaways" (line 999). Medium.
- Current: "About half of ransomware attacks on universities start with a stolen password or a phishing email." (line 999: "still start")
- Proposed: "In a 2026 survey, about half of ransomware attacks on universities started with a stolen password or a phishing email."
- Reason: 3.4 (past tense for results) and 3.2 (qualify a claim once, with its limit). The number comes from 1 survey of 95 organizations. Line 315 already uses the limited, past-tense form.

S5. "Range of predictions" (line 495). High.
- Current: "Skeptics sit to the left of this line: they call the warnings marketing. The positions are our reading of each person's statements."
- Proposed: "Skeptics are to the left of ``Big mess.'' They call the warnings marketing. We placed each person from that person's statements."
- Reason: 3.6 bans "sit" for a position. "Our reading" is figurative (3.6 "read from"). "This line" is unclear, because the skeptics are past the left end of the line.

S6. "Passkeys" (lines 677 and 678), compared with "Passkey storage" and "A4. Phone passcode." Medium.
- Current: "…after you approve with your face, fingerprint, or device PIN" and "…and your face, fingerprint, or PIN."
- Proposed: "…after you approve with your face, fingerprint, or device passcode" and "…and your face, fingerprint, or passcode."
- Reason: 3.12, one word for each concept. The deck calls the same secret "passcode" in A4, in "Passkey storage," and in "Face, fingerprint, or passcode." "PIN" also names the carrier PIN (A6) and the PIN of a security key.

S7. security_checklist.tex line 32. Medium.
- Current: "A passkey is a secret key that your device stores."
- Proposed: "A passkey is a secret that your device creates and stores for 1 site."
- Reason: 3.12, one word for each concept. The slides say "secret." "Secret key" is 1 letter group away from "security key," which is a different method in the same item.

S8. "AI agents" (line 963). Medium.
- Current: "With safeguards on, about 1\% of attacks succeeded against an attacker with 100 tries per test."
- Proposed: "With safeguards on, about 1\% of attacks succeeded when the attacker had 100 tries per test."
- Reason: the sentence says that attacks succeeded against an attacker. 3.8 also requires a clear denominator. Check the proposed wording against the source.

## Findings: minor (33)

Deck: hidden actors, voice, and tense (3.3, 3.4)

M1. "Takeaways," section 1 (line 316). High. "The next part of the talk explains why that share may grow." -> "Next, we explain why that share may grow." Reason: 3.10 rule 25, a section is never the actor.
M2. "Takeaways," section 2 (line 469). Medium. "For 2025, Mandiant tied most break-ins to basic failures, not to AI." -> "For 2025, Mandiant attributed most break-ins to human and system failures." Reason: "tied" is figurative, and 3.6 bans "basic" for an idea. The quoted Mandiant sentence on the "Skeptics" slide does not mention AI.
M3. "Face, fingerprint, or passcode" (line 762). High. "a short passcode can be guessed" -> "a person can guess a short passcode." Reason: 3.4, passive.
M4. "Skeptics" (line 453). Low. "the flaws that were disclosed in 2026" -> "the flaws disclosed in 2026." Reason: 3.4, passive.
M5. "A1. Updates" (line 639). Low. "An update is not installed until the device restarts" -> "The device installs an update only when it restarts." Reason: 3.4.
M6. "Paycheck theft" (line 252) and "Monday, November 9, 2026" (line 157). Medium. "Since March 2025, one group has sent university employees fake emails…" -> "From March 2025, 1 group sent university employees fake emails…". "Vanderbilt has not confirmed the claim" -> "As of November 18, Vanderbilt had not confirmed the claim." Reason: 3.12, no present perfect. Line 290 already uses the "As of" form.
M7. "Monday, November 9, 2026" (line 157). Medium. "claims more than 1 million Social Security numbers" -> "claims that it stole more than 1 million Social Security numbers." Reason: 3.12, do not drop words. The same change applies to "The group claimed 275 million records" (line 205): "The group claimed that it stole 275 million records."
M8. "Java, November 2026" (line 287). Medium. "Java runs a large share of university and business software" -> "A large share of university and business software runs on Java." Reason: the software runs on Java.
M9. "Entry methods" (line 299). Low. "organizations that ransomware hit" -> "organizations that had a ransomware attack." Reason: figurative verb with a non-human subject.

Deck: unclear references and one word per concept (3.12)

M10. "Hacks with AI" (line 342). Medium. "It succeeded against a small number of roughly 30 targets" -> "The campaign succeeded against a small number of the roughly 30 targets." Reason: unclear "it" (AI, the group, or the campaign).
M11. "Reasons for caution" (line 572). High. "Both companies sell the models and defensive products" -> "Anthropic and OpenAI sell the models and defensive products." Reason: the slide does not name the 2 companies before this bullet.
M12. "A4. Phone passcode" (line 749). High. "This is a reason to keep passwords in a separate manager." -> "For that reason, keep passwords in a separate manager." Reason: 3.12, unclear "This."
M13. "A3. Sign-in methods" (line 666). Medium. "A security key can do either" -> "A security key can replace the password or add a second step." Reason: unclear "either."
M14. "Java, November 2026" (line 291). Medium. "The others can still crash" -> "An attacker can still crash the other systems." Reason: unclear "others."
M15. "A2. Password manager" (lines 650 and 651). Medium. "The software writes and stores 1 long, unique password for each account" -> "A password manager creates and stores 1 long, unique password for each account." Reason: the slide uses "the software," "the manager," and "the company" for 2 concepts.
M16. "Skeptics" (line 455). Medium. "In 3 test accidents" -> "In 3 incidents during tests." Reason: line 354 calls the same events "incidents."
M17. "Schneier" (line 503). Medium. "He called Mythos a real step, and 1 step in a long series of small steps" -> "He called Mythos an incremental step in a long series." Reason: the "Range of predictions" slide says "an incremental step." "Real" is filler (3.6), and the digit in "1 step" is awkward (3.8).
M18. "Ivy League, 2025" (line 243). Medium. "3 of these 5 incidents started with a person" -> "3 of these 5 incidents started with deception of an employee." Reason: "a person" is vague. The slide defines "social engineering" as deception.
M19. "Sign-in methods compared" (lines 723 and 726). Medium. Header "Stops a stolen phone number" -> "Works after a thief moves your number." Row "App code or app prompt" -> "App code." Reason: a method does not stop a number. The "App codes and text-message codes" slide does not define "app prompt."
M20. "Amodei, September 2026" (line 554). High. "Critics: the researcher Gary Marcus…" -> "Critic: the researcher Gary Marcus…". Reason: the bullet names 1 critic.
M21. security_checklist_detailed.tex line 51. High. "Email aliases:" -> "Email masking:". Reason: the slides, the 1-page checklist, and the web page say "email masking."
M22. Agency names. Medium. The deck explains CISA at its last use (line 896, "CISA (the US cybersecurity agency)") and not at its first use (line 276). Move the gloss to line 277: "CISA, the US cybersecurity agency, said to patch at once." NIST (line 919) and the FTC (lines 848 and 920) have no gloss. Reason: 3.10 rule 3.

Deck: numbers (3.8)

M23. "Three terms" (line 329). High. Title "Three terms" -> "Terms." Reason: 3.8, numerals for counts. Every other count in the deck is a numeral.
M24. "Skill" (line 367). Medium. "2 operators of one spying group" -> "2 operators of 1 spying group." Reason: the deck writes "1 software project" and "1 small company" elsewhere.
M25. "Entry methods" (line 302). Low. "69\% restored their data from backups" has no denominator. Add it from the source, for example "69\% of the organizations with encrypted data."
M26. "B2. Account recovery" (line 814) repeats the 76\% figure of "App codes and text-message codes" (line 715). Keep it on 1 of the 2 slides.

Deck: Part 8

M27. Title slide (line 145). High. `\date{}` leaves the date out. 8.2 lists the date on the title slide. Add the date of the talk.
M28. Backup slides (lines 1015, 1027, 1039). Medium. Titles "Backup: lab data," "Backup: spread of capability," "Backup: Amodei on the opportunity" have colons (8.1). Proposed: "Lab data," "Spread of capability," "Amodei on opportunity." 8.2 also asks for buttons at the bottom right that link to the backup slides, and the deck has none.
M29. Bold labels. Medium. 8.2 specifies a bold label, a colon, and a gloss. "B3. Browser" (lines 823 to 828) and "Advice to drop" (lines 919 to 921) end the label with a period, and other slides use a colon. Use the colon throughout.
M30. Line 470. High. "``breaking the internet''." -> "``breaking the internet.''" Reason: lines 169 and 996 put the period inside the quotation marks.
M31. "Claude Mythos Preview, April 7" (line 385). Low. Add the year ("April 2026"), as the other dated titles do.
M32. "C3. Private Relay and VPNs" (line 898) and security_checklist.tex line 60. Medium. Both show the open placeholder "Wirecutter's pick: [pick]." The detailed checklist (line 53) names Mullvad, with Rtings as its source. Resolve the placeholder in the same way in the 3 files.

Checklists and web page

M33. Several instructions in 1 sentence (3.12: 1 instruction per sentence, at most 20 words).
- security_checklist.tex line 43: "Buy 2 (…), add both keys to your Apple and Google accounts in the security settings, and keep the spare key at home." -> "Buy 2 keys (…). Add both keys to your Apple and Google accounts in the security settings. Keep the spare key at home."
- line 47: "back up first, turn on FileVault (Mac) or BitLocker (Windows), and save the recovery key away from the laptop" -> "Back up first. Then turn on FileVault (Mac) or BitLocker (Windows). Save the recovery key away from the laptop."
- line 73: "API keys: keep them out of code and prompts, give each project its own key with a spending limit, and limit a server's key to the address of that server." -> the 2 sentences of the detailed checklist (lines 60 and 61).
- line 31: "…or reset the main password: write the main password on paper." -> "…or reset the main password. Write the main password on paper."
- line 63: "Tracking; turn off" and "Ads; choose" -> "Tracking. Turn off" and "Ads. Choose."
- line 44: "Run myaccount.google.com/security-checkup" -> "Run Google's Security Checkup at myaccount.google.com/security-checkup."
- security_checklist_detailed.tex line 37: "Two security keys:" -> "2 security keys:" (3.8).
- index.html line 26: "…(Google: g.co/passkeys): a passkey replaces the password and the second step." -> "…(Google: g.co/passkeys). A passkey replaces the password and the second step."
- index.html line 54: "…or browsers: update those at once." -> "…or browsers. Update those at once."
- index.html line 36: "for the day that you lose the first one" -> "in case you lose the first key."
- The detailed checklist writes menu paths with ">" and the 1-page checklist and the slides write them with commas. The detailed checklist and the web page have no step labels (A1 to C4), and the 1-page checklist says that the labels match the slides. The 3 drafts carry 3 dates (November 12, 17, and 18).

## Not reported

- "Hacks with AI, and what AI changes" and "What you can do right now" match the "what the X does" pattern of 3.7. Both are settled.
- Semicolons inside citations and quotations.
- Slide count and bullets per slide (settled).
