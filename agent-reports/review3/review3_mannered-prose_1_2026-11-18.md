Language model: claude-fable-5-2. Prompt version: v3. Topic: mannered-prose. Reviewer number: 1. Date: 2026-11-18.

# Review 3, mannered prose, reviewer 1

## Method

- I read the rendered text of all 77 pages of `cybersecurity_2026_briefing_clean_handout.pdf` (`pdftotext -layout`), both PDF checklists, and the visible text of `checklist_page/index.html`. (The brief says 75 slides; the handout has 77 pages.)
- For each noun and verb, I asked whether the word has its literal sense for the subject (CLAUDE.md 3.2).
- I searched all 4 texts for the left column of the table in 3.2, the list in 3.13 pass 2, and the words that the assignment names.
- Line numbers are lines of `cybersecurity_2026_briefing.tex`.
- I did not edit any file except this report.

## Counts

- Substantive findings: 9
- Minor findings: 20

## Search results

- No match in any of the 4 texts for: dial, knob, lever, earns, weight, heavy lifting, load-bearing, structural, spine, skeleton, backbone, anchor, underpin, scaffold, unpack, surface, sharpen, navigate, thread, lands, lens, frame, landscape, terrain, tapestry, mosaic, journey, at the heart, at its core, double-edged, moving parts, plumbing, machinery, leans on, rests on, hinges on, honest, footprint, leverage, not just, isn't just.
- No match for "floor," "talks you into," or "tires" (the assignment names them; the current text does not contain them).
- "unlock" (slide 53) is literal for a phone. "engine" (slide 22, "JavaScript engine") and "window" ("90-day window," in a quotation) are established or quoted. "shield" and "swarm" on slides 33, 35, and 37 are inside quotation marks.
- Matches that need a change are in the findings below: "layer," "lock" and "puzzle," "sealed," "broke out," "energy" in a bullet, "sit," "on top of it," "behind it," "stand in for," "swarm" outside quotation marks, "moves the risk."

## Substantive findings

**S1. "Claude Mythos Preview, April 7" (slide 22, line 388).**
- Current: "with the browser's sandbox (a protective layer) removed"
- Proposed: "with the browser's sandbox (the part that isolates web pages from the rest of the computer) removed"
- Reason: 3.10 rule 17 names "layer" as a banned metaphor for a computational object. "Sandbox" is the established term and stays. The gloss must be literal, because the gloss is the definition.
- Confidence: high.

**S2. "Passkeys" (slide 46, lines 694, 695, 698).**
- Current: "The site gets only a matching lock" / "the site sends a puzzle that only the secret can solve. Your device solves it after you approve" / "A break-in at the site exposes only the lock, and nobody can sign in with the lock"
- Proposed: "The site gets only a matching public key, which can check the secret" / "the site sends a random challenge that only the secret can answer. Your device answers it after you approve" / "A break-in at the site exposes only the public key, and nobody can sign in with it"
- Reason: 3.2 (use the literal term) and 3.12 (one meaning for each word). "Lock" has 3 other meanings in the deck: ransomware attackers "lock" files (slide 2), the "phone number lock" (A6), and the device "unlock" (slide 53). The analogy is also not marked as an analogy, and a lock that "nobody can sign in with" is not a clear image. "Public key" and "challenge" are the established terms, and the checklist already says "secret key." Rule 36 allows an analogy; if Alyssa wants to keep one, mark it once: "The site gets only a public key (like a lock that only your secret opens)."
- Confidence: medium.

**S3. "AI that broke in without orders" (slide 19, line 350) and "Coding agents" (slide 71, line 990).**
- Current: "OpenAI models broke out of a sealed environment and reached the live systems of Hugging Face" / "a container (a sealed workspace on your computer)"
- Proposed: "OpenAI models left an isolated test environment and reached the real systems of Hugging Face" / "a container (an isolated workspace on your computer)"
- Reason: 3.2. "Broke out" and "sealed" come from prisons and packaging. "Isolated" is the literal computing term. "Real systems" matches the Anthropic quotation on the same slide. "Sealed" also overstates: slide 71 then says that a container "does not make the agent safe."
- Confidence: high.

**S4. "Energy" (slide 21, line 377).**
- Current: "Defenders gain the same energy."
- Proposed: "Defenders can use the same agents, which also do not tire."
- Reason: 3.2. The title "Energy" is settled, and bullet 1 states it literally ("A person tires … An AI agent does not"). In this bullet, "gain energy" is figurative for an organization. The proposed sentence repeats the literal claim of bullet 1.
- Confidence: medium.

**S5. "Range of predictions" (slide 29, line 490).**
- Current: "Skeptics sit to the left of this line: they call the warnings marketing."
- Proposed: "Skeptics are to the left of this line. They call the warnings marketing."
- Reason: 3.6 bans "sit at" for positions; a relational verb is correct (3.3). The period also removes a colon between 2 full sentences.
- Confidence: high.

**S6. "Range of predictions" (slide 29, line 480) and "How worried should we be?" (slide 39, line 608).**
- Current: "A swarm of AI agents takes over the entire internet" / "The most severe is a swarm of AI agents that takes over the entire internet"
- Proposed: "A “swarm” of AI agents takes over the entire internet" / "The most severe is a “swarm” of AI agents that takes over the entire internet"
- Reason: 3.2. "Swarm" is Amodei's metaphor (slide 35). Outside quotation marks, the deck adopts the metaphor as its own description. Quotation marks attribute the word and match the treatment of “big mess.” The paraphrase under "Amodei" on slide 29 ("a swarm could take over the entire internet") needs the same marks. Alternative without the word: "Many AI agents take over the entire internet."
- Confidence: medium.

**S7. "Face, fingerprint, or passcode" (slide 53, lines 779 and 783).**
- Current: "Face or fingerprint is a convenience on top of it" / "Use face or fingerprint every day, with a long passcode behind it."
- Proposed: "Face or fingerprint is a faster way to unlock, and the passcode still works" / "Use face or fingerprint every day, and set a long passcode."
- Reason: 3.2. "On top of" and "behind" are spatial metaphors for the relation between 2 unlock methods. A lay listener cannot tell from "behind it" what to do; "set a long passcode" is the instruction.
- Confidence: high.

**S8. "Passkey storage" (slide 48, line 719).**
- Current: "because the passcode can stand in for your face or fingerprint (A4)"
- Proposed: "because the passcode can replace your face or fingerprint (A4)"
- Reason: 3.2. "Stand in for" is an idiom from theater. "Replace" is the word that the deck already uses for passkeys and passwords.
- Confidence: high.

**S9. "C3. Private Relay and VPNs" (slide 64, line 915).**
- Current: "CISA's reason: a personal VPN moves the risk from your internet provider to the VPN company, and many VPN companies have weak security and privacy practices"
- Proposed: "CISA's reason: with a personal VPN, the VPN company can see your traffic in place of your internet provider, and many VPN companies have weak security and privacy practices"
- Reason: 3.2 and 3.8. A risk is not an object that moves, and "the risk" does not say which risk. The proposed text names it. If the sentence is too long for the slide, cut "CISA's reason:" to "Reason:".
- Confidence: medium.

## Minor findings

**M1. Slides 3, 27, 39, 73 (lines 165, 462, 607, 1013).** "AI lowers the skill that an attack needs" -> "AI lowers the skill that an attacker needs". An attack does not have needs; the attacker does (3.3). Confidence: high. I leave "an AI agent does not tire": the negated statement is literally true, and it matches the settled title "Energy."

**M2. "AI that broke in without orders" (slide 19, line 347).** Title -> "AI that broke in without instructions". "Orders" is a military word (3.2); the slide says "Nobody told these models." "Broke in" matches "break-in," the deck's standard term. Confidence: medium.

**M3. "Ivy League, 2025" (slide 9, line 241).** "3 of these 5 incidents started with a person" -> "3 of these 5 incidents started with deception of an employee". "Started with a person" is vague; the bullets describe deception by phone or message. Confidence: medium.

**M4. "Outside universities, 2026" (slide 11, line 262).** "State filings put the count at 19.9 million people" -> "State filings report 19.9 million people affected". "Put … at" is figurative (3.2). Confidence: medium.

**M5. "PHP, October 2026" (slide 12, line 272).** "PHP is the programming language behind many websites" -> "PHP is the programming language of many websites". "Behind" is spatial (3.2). Confidence: medium.

**M6. "Java, November 2026" (slide 13).** "Java runs a large share of university and business software" -> "A large share of university and business software is written in Java". A language does not run software (3.3). Confidence: medium.

**M7. "Entry methods" (slide 14, line 296).** "organizations that ransomware hit" -> "organizations that had a ransomware attack". "Hit" is a combat word (3.2). Confidence: medium.

**M8. "Takeaways" (slide 15, line 313).** "The next part of the talk explains why that share may grow." -> "Next, we explain why that share may grow." A part of a talk is not the actor (3.10 rule 25). Confidence: high.

**M9. "Public flaw counts" (slide 24, line 425).** "About 5,000 Linux kernel records inflate the 2026 count" -> "The 2026 count includes about 5,000 Linux kernel records, more than in earlier years". "Inflate" is figurative, and the bullet does not say why the records matter. Confidence: low (the added clause needs a check against the source).

**M10. "Exploits built from patches" (slide 25, line 438).** "Each one turns an ordinary user account into full control of the computer" -> "Each one gives an ordinary user account full control of the computer". An account does not become control (3.2). Confidence: medium.

**M11. "Takeaways" (slide 27, line 464).** "Mandiant tied most break-ins to basic failures" -> "Mandiant attributed most break-ins to basic failures". "Tied" is figurative (3.2). Confidence: high.

**M12. "Stamos and Mandia" (slide 31, line 511).** "attacks with AI will outpace human defenders" -> "attacks with AI will be faster than human defenders". "Outpace" is a racing word (3.2). Keep it if it is Mandia's word, and then put it in quotation marks. Confidence: low.

**M13. "Takeaways" (slide 38, line 590).** "Nobody on this line predicts that the problem goes away." -> "Nobody on this line predicts that the problem ends." Confidence: low.

**M14. "Sign-in methods compared" (slide 50, line 741) and "A3. Passkey setup" (slide 51, line 758).** Headers "Stops a fake sign-in page" / "Stops a stolen phone number" -> "Protects against a fake sign-in page" / "Protects against a stolen phone number". "a passkey does not stop malware … or a caller" -> "a passkey does not protect against malware … or a caller". A method does not stop a page, a number, or a caller; it protects the account. Also slide 66 (line 939): "A VPN does not stop phishing" -> "A VPN does not protect against phishing". Confidence: medium.

**M15. "C4. Tracking" (slide 65, line 927).** "stop most tracking code" -> "block most tracking code". "Block" matches "content blocker" (3.12, one word per concept). Confidence: high.

**M16. "Advice to drop" (slide 66, line 934).** Title -> "Outdated advice". "Drop" is figurative (3.2). Confidence: medium.

**M17. "Takeaways" (slide 68, lines 960 and 961).** "Updates shorten the exposure to new flaws." -> "Updates shorten the time that a known flaw stays on your device." "Passkeys, a password manager, and 3 habits address stolen passwords and phishing." -> "… protect against stolen passwords and phishing." "Exposure" has no unit, and "address" is vague. Confidence: medium.

**M18. "B6. Old accounts" (slide 61) and "Security keys" (slide 47).** "Each old account holds your data" -> "stores your data"; "It holds the same kind of secret" -> "It stores the same kind of secret". "Stores" is the deck's word elsewhere (3.12). Confidence: medium.

**M19. Web checklist (`checklist_page/index.html`, line 36).** "Keep the spare key at home, for the day that you lose the first one." -> "Keep the spare key at home, in case you lose the first one." The clause is a flourish; slide 47 already says "in case you lose 1." Confidence: high.

**M20. Slide 55, both PDF checklists, and the web checklist (A6).** "move your number" -> "transfer your number". "Transfer" is the carriers' literal term. Confidence: low. In the same low class, "If money moved, call the bank" (slide 67, both PDF checklists) -> "If money left your account, call the bank."

## Reviewed and left unchanged

- Established terms without a literal alternative for this audience: break-in, sandbox, patch, exploit, phishing, SIM swap, credit freeze, container, backup, fallback, content blocker, email masking, "a file that git ignores."
- "A fake site gets nothing" (slide 46) and "with the key in your hand" (slide 47) are literal.
- "It stopped 76% of targeted attacks" (slides 49, 57): the subject is a sign-in step, and "stopped" is the mechanism; Google's data count blocked attacks.
- "phishing can defeat" (slide 10): the alternative "phishing-resistant" is not plainer.
- The 2 PDF checklists have no figurative language other than M20. Their sentences are short imperatives.
- I found no bullet with a density problem that another finding does not cover. The longest bullets (slides 43, 53, 64) have 2 or 3 short sentences each.
