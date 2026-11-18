Language model claude-fable-5-2, prompt version v3, topic claude-md-rules, reviewer 1. Date 2026-11-18.

# Review 3: CLAUDE.md rules (3.3, 3.4, 3.6, 3.7, 3.8, 3.12, Part 8)

## Method

- I read CLAUDE.md sections 3.3, 3.4, 3.6, 3.7, 3.8, 3.12, 8.1, and 8.2.
- I read all of cybersecurity_2026_briefing.tex (75 slides), security_checklist.tex, security_checklist_detailed.tex, and checklist_page/index.html.
- I searched the 4 sources for every word in 3.6, the banned verbs in 3.3, em dashes, ", so", ", since", semicolons, "percent", the present perfect, and numbers without separators.
- I checked the pdftotext output of the clean handout and of the checklist PDFs for stray spaces before punctuation where a hidden [verify] flag was.
- Text inside source quotation marks is exempt, and I did not report it.

## Search results with no finding

- Em dashes: none. Causal ", so" and ", since": none ("so that" states a purpose in each use).
- "percent" spelled out: none. Every percentage has the % sign.
- Thousands separators: present on every count of 1,000 or more.
- Banned words of 3.6 outside quotations: only "basic" (finding 5) and "sit" (finding 4).
- Each list item has its own click. The table on "Sign-in methods compared" appears row by row. The roadmap appears at once, which 8.2 allows.
- The clean builds have no stray space before punctuation.

## Substantive findings (9)

S1. "A3. Sign-in methods" (tex line 667). Substantive, high confidence.
- Current: "The next 4 slides explain each method, from strongest to weakest"
- Proposed: "The next 4 slides explain each method"
- Reason: the slide order is Passkeys, Security keys, Passkey storage, App codes. The Security keys slide says that security keys are the strongest of the 4 methods, and the comparison table lists the security key first. The stated order is wrong. Alternative: move the "Security keys" slide before "Passkeys."

S2. "How worried should we be?" (line 601). Substantive, high confidence.
- Current: "This fall: Vanderbilt, Canvas, AO3, Binance, PHP, and Java"
- Proposed: "This year: Canvas, Vanderbilt, AO3, Binance, PHP, and Java"
- Reason: the "Canvas during finals" slide dates the Canvas break-in to April 29, 2026. The period in the label is wrong (3.8: give the period with every count or list of events).

S3. "Main points" 3 (line 172) and final "Takeaways" 2 (line 999). Substantive, medium confidence.
- Current: "About half of ransomware attacks on universities start with a stolen password or a phishing email." (final slide: "still start")
- Proposed: "In a 2026 survey, about half of ransomware attacks on universities started with a stolen password or a phishing email."
- Reason: the number comes from 1 survey of 95 organizations ("Entry methods"). 3.4 requires the past tense for a result. 3.10 rule 24 requires the limit of scope in the same sentence. The section takeaway (line 315) already has both.

S4. "Range of predictions" (line 495). Substantive, high confidence.
- Current: "Skeptics sit to the left of this line: they call the warnings marketing. The positions are our reading of each person's statements."
- Proposed: "Skeptics are to the left of this line. They call the warnings marketing. We placed each person from that person's statements."
- Reason: 3.6 bans "sit at" for positions. "Our reading" is the figurative "read from" of 3.6. The second sentence has no actor (3.3).

S5. "Takeaways," Hacks with AI (line 469). Substantive, medium confidence.
- Current: "For 2025, Mandiant tied most break-ins to basic failures, not to AI."
- Proposed: "For 2025, Mandiant attributed most break-ins to human and system failures, not to AI."
- Reason: "tied" is figurative (3.2). "basic" is in 3.6. The Mandiant quotation on "Skeptics" says "human and systemic failures."

S6. "A5. Habits" (line 775), security_checklist.tex line 35, security_checklist_detailed.tex line 30, index.html line 29. Substantive, medium confidence.
- Current: "Never paste text that a web page tells you to copy into a terminal or the Windows Run box."
- Proposed: "Never follow a web page's instruction to paste text into a terminal or the Windows Run box."
- Reason: "tells" is a banned verb for a non-human subject (3.3). The current sentence also has 2 parses: "copy into a terminal" or "paste into a terminal." The proposed sentence has 17 words.

S7. "Reasons for caution" (line 572). Substantive, high confidence.
- Current: "Both companies sell the models and defensive products."
- Proposed: "OpenAI and Anthropic sell the models and defensive products."
- Reason: no company name comes before "Both companies" on this slide (3.12: no unclear reference). The slide is 1 page of the handout.

S8. "Hacks with AI" (line 342). Substantive, high confidence.
- Current: "It succeeded against a small number of roughly 30 targets"
- Proposed: "The campaign succeeded against a small number of roughly 30 targets"
- Reason: "It" can refer to the group, the AI, or the campaign (3.12).

S9. "AI agents" (line 963). Substantive, medium confidence.
- Current: "With safeguards on, about 1% of attacks succeeded against an attacker with 100 tries per test."
- Proposed: "With safeguards on, about 1% of attacks succeeded when the attacker had 100 tries per test."
- Reason: an attack does not succeed "against an attacker." The denominator of the 1% is unclear in the current sentence (3.8).

## Minor findings (30)

Hidden actors, voice, tense (3.3, 3.4, 3.12)

M1. "Paycheck theft" (line 252). Current: "Since March 2025, one group has sent university employees fake emails". Proposed: "From March 2025, 1 group sent university employees fake emails". Reason: present perfect (3.12), numeral (3.8). Medium.
M2. "Monday, November 9, 2026" (line 157) and "Archive of Our Own" (line 219). Current: "Vanderbilt has not confirmed the claim"; "The operator has not stated the cause". Proposed: "Vanderbilt did not confirm the claim"; "The operator did not state the cause". Reason: present perfect (3.12). Low, because the present perfect marks "up to today."
M3. "Face, fingerprint, or passcode" (line 762). Current: "a short passcode can be guessed". Proposed: "a person can guess a short passcode". Reason: passive without actor (3.4). High.
M4. "Skeptics" (line 453). Current: "the flaws that were disclosed in 2026". Proposed: "the flaws that researchers disclosed in 2026". Reason: passive (3.4). Medium.
M5. "Java, November 2026" (line 287). Current: "Java runs a large share of university and business software". Proposed: "A large share of university and business software runs on Java". Reason: the subject and the object are reversed. Medium.
M6. "Public flaw counts" (line 429). Current: "About 5,000 Linux kernel records inflate the 2026 count". Proposed: "The 2026 count includes about 5,000 Linux kernel records". Reason: "inflate" is figurative (3.2). Medium.
M7. "Passkey storage" (line 701). Current: "the passcode can stand in for your face or fingerprint". Proposed: "the passcode can replace your face or fingerprint". Reason: figurative verb. Medium.
M8. "Face, fingerprint, or passcode" (lines 761, 765). Current: "Face or fingerprint is a convenience on top of it"; "with a long passcode behind it". Proposed: "Face or fingerprint is a faster way to unlock"; "Use face or fingerprint every day, and set a long passcode." Reason: "on top of" and "behind" are spatial figures (3.2). Low.
M9. "Claude Mythos Preview, April 7" (line 392). Current: "sandbox (a protective layer)". Proposed: "sandbox (a barrier between the browser and the computer)". Reason: 3.10 rule 17 names "layer." Low.
M10. security_checklist_detailed.tex line 72. Current: "Dashlane: the speaker's recommendation. ... according to the speaker." Proposed: "Dashlane: our recommendation. ... according to us" or name the source. Reason: the handout uses "we" elsewhere (3.4). Medium.
M11. index.html line 36. Current: "Keep the spare key at home, for the day that you lose the first one." Proposed: "Keep the spare key at home, in case you lose the first key." Reason: plain statement (3.2), and the slide says "in case you lose 1." Medium.

Unclear reference (3.12)

M12. "Exploits built from patches" (line 444). Current: "It ``would have finished ...". Proposed: "The model ``would have finished ...". Reason: "It" follows "Each one." Medium.
M13. "A4. Phone passcode" (line 749). Current: "This is a reason to keep passwords in a separate manager." Proposed: "For that reason, keep passwords in a separate password manager." Reason: unclear "This." Medium.
M14. "How worried should we be?" (line 602). Current: "Anyone can now download such a model". Proposed: "Anyone can now download a model that writes exploits". Reason: "such a model" has no antecedent in the bullet. Medium.
M15. "Passkeys" (line 679). Current: "You never see or type the secret, and it works only at the real address of the site". Proposed: "You never see or type the secret, and the passkey works only at the real address of the site". Low.

One word per concept (3.12)

M16. security_checklist.tex line 32. Current: "A passkey is a secret key that your device stores." Proposed: "A passkey is a secret that your device stores." Reason: the slides say "secret," and "key" already means the security key. High.
M17. security_checklist_detailed.tex line 51. Current: "Email aliases:". Proposed: "Email masking:". Reason: the slides, the 1-page checklist, and the web page say "Email masking." High.
M18. "Skeptics" (line 455). Current: "In 3 test accidents". Proposed: "In 3 test incidents". Reason: the earlier slide and the Amodei quotations say "incidents." Medium.
M19. "A2. Password manager" (lines 650, 651). Current: "The software writes and stores ..."; "The manager encrypts ...". Proposed: "A password manager creates and stores ..."; "The password manager encrypts ...". Reason: 3 names for 1 object. Medium.
M20. "Levels of urgency" (line 624). Current: "Browser settings." Proposed: "Browser." Reason: the step title is "B3. Browser." Low.
M21. "A2. Password manager" line 653 and "B1" line 799. Current: "Wirecutter picks:" and "Wirecutter's pick:". Proposed: "Wirecutter's picks:" on A2. Low.
M22. Section heading for code and labs. 1-page checklist: "For a research lab". Detailed checklist and web page: "If you write research code". The 3 forms also have 3 draft dates (November 12, 18, and 17). Proposed: 1 heading and 1 date. Low.

Numbers (3.8)

M23. "Three terms" (line 329). Proposed title: "3 terms" or "Terms". "B3. Browser" (line 825): "One content blocker" -> "1 content blocker" (the web page already has "1 content blocker"). "Skill" (line 367): "one spying group" -> "1 spying group". Reason: numerals for counts, and the deck has "1 small company" and "In 1 test". Medium.
M24. "Schneier" (line 503). Current: "He called Mythos a real step, and 1 step in a long series of small steps". Proposed: "He called Mythos a real step in a long series of small steps". Reason: awkward digit (3.8: rephrase). Low.
M25. "Ivy League, 2025" (line 243). Current: "3 of these 5 incidents started with a person". Proposed: "3 of these 5 incidents started with deception of an employee". Reason: the 4 bullets above hold 5 incidents, and "a person" does not name the method. Low.
M26. security_checklist_detailed.tex line 54. Current: "use Optery or EasyOptOuts (about \$20 per year)". Proposed: state which service costs about \$20 per year. Low.

Punctuation and sentence limits (3.7, 3.12, 8.1)

M27. Semicolons in slide citations: "(Talos; Rapid7)" (line 288), "(Apple; Google)" (750), "(UK NCSC; CISA)" (850). Proposed: "(Talos and Rapid7)", "(Apple and Google)", "(UK NCSC and CISA)". Reason: 8.1, no semicolons in slide text. security_checklist.tex line 63: "Tracking; turn off" and "Ads; choose" -> "Tracking. Turn off" and "Ads. Choose". Medium.
M28. "Takeaways," Hacks with AI (line 470). Current: ```breaking the internet''.` Proposed: ```breaking the internet.''` Reason: the period is inside the quotation mark on "Main points" and the final slide. High.
M29. security_checklist.tex lines 43, 47, 73: 3 instructions in 1 sentence, each over 20 words. Proposed for line 43: "Buy 2 keys (...). Add both keys to your Apple and Google accounts. Keep the spare key at home." Proposed for line 73: "API keys: keep them out of code and prompts. Give each project its own key with a spending limit. Limit a server's key to the address of that server." Reason: 3.12, 1 instruction per sentence. Line 43 also says "Print the backup codes first (B2)," and the introduction says "from top to bottom"; add "except where a step names an earlier step" or leave as is. Medium.

Part 8

M30. Titles and slide structure.
- "Backup: lab data," "Backup: spread of capability," "Backup: Amodei on the opportunity": colons in titles (8.1). Proposed: "Lab data," "Spread of capability," "Amodei on the opportunity"; the slides are after "Questions?". 8.2 also puts a button link to each backup slide at the bottom right of the main slide that it supports; the deck has none. Low.
- "AI that broke in without orders" (6 words; "orders" is a military word). Proposed: "AI break-ins without instructions". Low.
- Title slide: 8.2 lists the date on the title slide; \date{} is empty. Proposed: "[date of talk]". Low.
- Final "Takeaways" 3 (line 1002): "This week: updates, a password manager, ..." is a fragment; 8.2 writes takeaways as sentences. Proposed: "This week, set up updates, a password manager, passkeys and 2FA, a phone passcode, a phone number lock, and 3 habits." Low.
- The SIM swap definition appears on "App codes and text-message codes" (line 712) and again on "A6. Phone number lock" (line 786). The 76% figure appears on line 715 and line 814. Each is a repeat across slides. Low.

## Not reported

- Slide density above the 8.2 range of 10 to 60 words (settled: length).
- The [pick] placeholder on C3 and in the 1-page checklist (a known fill item). The detailed checklist names Mullvad from Rtings, and the slide asks for a Wirecutter pick.
