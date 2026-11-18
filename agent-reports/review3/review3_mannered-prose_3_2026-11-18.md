# Review 3: mannered prose, reviewer 3

Language model claude-fable-5-2, prompt version v3, topic mannered-prose, reviewer number 3. Date 2026-11-18.

## Method

- I read the rendered text of all 77 pages of `cybersecurity_2026_briefing_clean_handout.pdf` (`pdftotext -layout`), both PDF checklists, and the visible text of `checklist_page/index.html`. The brief says 75 slides; the PDF has 77 pages.
- For each noun and verb outside quotation marks, I asked whether the word is literal for this subject (CLAUDE.md 3.2).
- I then searched the 4 rendered texts for the left column of the 3.2 table, the 3.13 pass 2 list, and the candidate words in the assignment.
- I did not edit any file. I did not fact-check.

## Search results

- 3.2 table and 3.13 pass 2 list: no match outside quotation marks, except "layer" (finding 3) and the items below.
- Assignment candidates not present in the rendered text or the `.tex` source: "floor," "talks you into."
- Assignment candidates present and reported below: "broke out," "sealed," "swarm," "lock," "puzzle," "energy" (1 bullet), "stand in for," "behind it," "on top of it," "moves the risk," "stops" (table headers only).

## Words that I checked and do not report

- "break-in," "broke in," "entry method," "take over," "crash," "flaw," "patch," "sandbox," "container," "phishing," "malware," "freeze," "lift the freeze," "SIM swap," "step" (second sign-in step), "factor," "masking," "safeguards," "bypassed": each is the established term or the plain word that a lay reader knows, and no shorter literal term exists.
- "A person tires, sleeps, and loses interest. An AI agent does not" and "an AI agent does not tire": "tires" is literal for a person, and the negation is literally true for an agent. The title "Energy" is settled.
- "stopped 76% of targeted attacks," "does not stop malware," "does not stop phishing": "stop" is a plain word for "prevent." I report only the 2 table headers where the object of "stops" is unclear.
- "The secret never leaves the key," "the device keeps the secret": standard and clear.
- "lock or steal files" (ransomware gloss): a plain gloss of "encrypt" for a lay audience.

## Substantive findings (7)

**S1. "Passkeys" (page 46). Confidence: medium.**
- Current: "The device keeps the secret. The site gets only a matching lock" / "To sign in, the site sends a puzzle that only the secret can solve. Your device solves it after you approve with your face, fingerprint, or device PIN" / "A break-in at the site exposes only the lock, and nobody can sign in with the lock"
- Proposed: "The device keeps the secret (the private key). The site gets only a matching public key" / "To sign in, the site sends a random number. Your device signs the number with the secret, after you approve with your face, fingerprint, or device PIN" / "A break-in at the site exposes only the public key, and nobody can sign in with the public key"
- Reason: the slide uses 2 different metaphors ("lock," "puzzle") as if they were literal, without saying that they are analogies (3.10 rules 17 and 36). A secret does not solve a puzzle, and a site does not hold a lock. The literal terms exist (private key, public key) and fit rule 26 (plain description first, technical name in parentheses). The 1-page checklist already says "a secret key that your device stores." If Alyssa prefers the analogy, mark it once: "The site gets only a public key. Think of it as a lock that only your secret opens," and delete "puzzle."

**S2. "AI that broke in without orders" (page 19). Confidence: medium.**
- Current: "in a test, OpenAI models broke out of a sealed environment and reached the live systems of Hugging Face"
- Proposed: "in a test, OpenAI models left an isolated test environment and reached the real systems of Hugging Face"
- Reason: "broke out" and "sealed" are physical metaphors (3.2). "Isolated" is the literal term. "Real systems" matches the Anthropic quotation on the same slide.
- Same slide, title. Current: "AI that broke in without orders". Proposed: "AI that broke in without instructions". Reason: "orders" is a military word; the arrow line on the slide says "Nobody told these models." (minor part of this finding)

**S3. "Claude Mythos Preview, April 7" (page 22). Confidence: high.**
- Current: "with the browser's sandbox (a protective layer) removed"
- Proposed: "with the browser's sandbox (which isolates web pages from the rest of the computer) removed"
- Reason: "layer" is a banned metaphor for a computational object (3.10 rule 17). The gloss must say what the sandbox does.

**S4. "Energy" (page 21). Confidence: medium.**
- Current: "Defenders gain the same energy. Microsoft's AI scan of 1 software project gave 26,502 raw findings in about 2 weeks."
- Proposed: "Defenders can use the same AI agents. Microsoft's AI scan of 1 software project gave 26,502 raw findings in about 2 weeks."
- Reason: the title "Energy" is settled, but in this sentence defenders do not gain energy; they use agents that do not tire (3.2, literal term).

**S5. "Range of predictions" (page 29) and "How worried should we be?" (page 39). Confidence: medium.**
- Current (29): "A swarm of AI agents takes over the entire internet". Current (39): "The most severe is a swarm of AI agents that takes over the entire internet"
- Proposed (29): "A “swarm” of AI agents takes over the entire internet". Proposed (39): "The most severe is a “swarm” of AI agents that takes over the entire internet"
- Reason: "swarm" is Amodei's word. Outside quotation marks, the deck uses an insect metaphor in its own voice (3.2). Quotation marks attribute the word. Alternative without the word: "A large group of AI agents takes over the entire internet."
- Same page 29. Current: "Skeptics sit to the left of this line: they call the warnings marketing. The positions are our reading of each person's statements." Proposed: "Skeptics are to the left of this line. They call the warnings marketing. The positions are our interpretation of each person's statements." Reason: "sit" (3.6, "sit at") and "reading" are figurative; the colon joins 2 sentences. (minor part)

**S6. "Face, fingerprint, or passcode" (page 53) and "Passkey storage" (page 48). Confidence: high.**
- Current (53): "The passcode always works as the fallback. Face or fingerprint is a convenience on top of it". Proposed: "The passcode always works. Face or fingerprint is a faster way to unlock the device"
- Current (53): "Use face or fingerprint every day, with a long passcode behind it." Proposed: "Use face or fingerprint every day, and set a long passcode."
- Current (48): "because the passcode can stand in for your face or fingerprint (A4)". Proposed: "because the passcode can replace your face or fingerprint (A4)"
- Reason: "on top of it," "behind it," and "stand in for" are spatial and theater metaphors with literal replacements (3.2).

**S7. "Sign-in methods compared" (page 50), table headers. Confidence: medium.**
- Current: "Stops a fake sign-in page" / "Stops a stolen phone number"
- Proposed: "Protects against a fake sign-in page" / "Protects against a SIM swap"
- Reason: a sign-in method does not stop a page or a phone number. The second header is unclear on first reading; "SIM swap" is the term that pages 49 and 55 define.

## Minor findings (22)

Confidence is medium unless stated.

1. "Ivy League, 2025" (page 9). "3 of these 5 incidents started with a person" -> "3 of these 5 incidents started with deception of an employee". "Started with a person" is vague.
2. "Paycheck theft" (page 10). "Others had a step that phishing can defeat" / "a sign-in method that phishing cannot defeat" -> "Others had a step that does not protect against phishing" / "a sign-in method that protects against phishing". "Defeat" is a combat word. Low.
3. "Outside universities, 2026" (page 11). "attackers staged a fake job interview" -> "attackers held a fake job interview". Theater word.
4. Same slide. "State filings put the count at 19.9 million people" -> "State filings report 19.9 million people affected".
5. "PHP, October 2026" (page 12). "PHP is the programming language behind many websites" -> "PHP is the programming language of many websites". Spatial metaphor.
6. "Java, November 2026" (page 13). "Java runs a large share of university and business software" -> "A large share of university and business software runs on Java". Java does not run the software.
7. "Entry methods" (page 14). "organizations that ransomware hit" -> "organizations that had a ransomware attack". Combat word.
8. Monday slide (page 2) and "Canvas during finals" (page 6). "claims more than 1 million Social Security numbers" -> "says that it stole more than 1 million Social Security numbers". "The group claimed 275 million records" -> "The group said that it stole 275 million records". "Claims numbers" drops the verb that carries the meaning.
9. "Public flaw counts" (page 24). "About 5,000 Linux kernel records inflate the 2026 count" -> "About 5,000 Linux kernel records add to the 2026 count". Low; keep "inflate" if the point is that the records overstate the growth, and then say so: "overstate the 2026 growth."
10. "Exploits built from patches" (page 25). "Each one turns an ordinary user account into full control of the computer" -> "Each one gives an ordinary user account full control of the computer".
11. "Takeaways" (page 27). "Mandiant tied most break-ins to basic failures" -> "Mandiant attributed most break-ins to basic failures".
12. Main points (page 3), pages 27, 39, 73. "AI lowers the skill that an attack needs" -> "AI lowers the skill that an attacker needs". An attack does not need; a person does (3.3). Low, because the phrase repeats 4 times and matches the settled title "Skill."
13. "Schneier" (page 30). "He called Mythos a real step, and 1 step in a long series of small steps" -> "He called Mythos a real advance, and 1 of many small advances". Low; "step" is close to his own word.
14. "Stamos and Mandia" (page 31). "attacks with AI will outpace human defenders" -> "attacks with AI will be faster than human defenders". Travel word. Low.
15. "Industry letter, August 2026" (page 32). "OpenAI led an open letter" -> "OpenAI organized an open letter".
16. "Takeaways" (page 38). "Nobody on this line predicts that the problem goes away" -> "Nobody on this line predicts that the problem ends".
17. "A2. Password manager" (page 43). "The software writes and stores 1 long, unique password" -> "The software creates and stores 1 long, unique password".
18. "Security keys" (page 47). "A sign-in works only on the real site, with the key in your hand" -> "A sign-in works only on the real site, and only when you touch the key". Also "Passkeys" (page 46): "A fake site gets nothing" -> "Your device does not answer a fake site" (dramatic fragment, 3.2).
19. "A3. Sign-in methods" (page 45). "any second step cut the risk of compromise by 99.22%" -> "any second step lowered the risk of compromise by 99.22%".
20. "B1. Security key setup" (page 56) and `security_checklist.pdf` item B1. "Apple cannot let you back in" -> "Apple cannot restore your access".
21. "Advice to drop" (page 66), title -> "Outdated advice". "Takeaways" (page 68): "address stolen passwords and phishing" -> "protect against stolen passwords and phishing". "Coding agents" (page 71): "a container (a sealed workspace on your computer)" -> "a container (an isolated workspace on your computer)"; this matches S2.
22. `checklist_page/index.html`, item B2. "Keep the spare key at home, for the day that you lose the first one." -> "Keep the spare key at home, in case you lose the first one."

## Density (2 notes, not in the counts)

- "C3. Private Relay and VPNs" (page 64) has 5 bullets of 2 to 4 lines, and the "CISA's reason" bullet has 3 clauses. Proposed for that bullet: "CISA's reason: with a personal VPN, the VPN company sees your traffic in place of your internet provider. Many VPN companies have weak security and privacy practices". This also replaces "moves the risk" (CISA's own verb is "shifts"; low confidence that a change is needed).
- "Passkeys" (page 46) has 5 bullets of 2 to 4 lines each. The proposed text in S1 does not lengthen it. A split after bullet 3 would give 2 frames of 1 idea each (8.2), but length is a settled matter.

## Checklists

- `security_checklist.pdf`, `security_checklist_detailed.pdf`: no figurative language except "Apple cannot let you back in" (minor 20). "Phone number lock," "Number Lock," and "Email masking" are feature names.
- `checklist_page/index.html`: 1 finding (minor 22).
