Language model claude-fable-5-2, prompt version v3, topic mannered-prose, reviewer number 2.

# Review 3: mannered prose, reviewer 2 (2026-11-18)

## Method

- I read the rendered text of all 77 pages of `cybersecurity_2026_briefing_clean_handout.pdf` (`pdftotext -layout`), both PDF checklists, and the visible text of `checklist_page/index.html`.
- For each noun and verb, I asked whether the word has its literal sense for the subject (CLAUDE.md 3.2).
- I searched for the left column of the substitution table in 3.2 and for the search list in 3.13 pass 2. The search found none of those entries, except the words that I list below ("behind," "sit," "energy," "layer," "stand in," "on top of").
- I did not edit any file except this report. The brief says 75 slides; the PDF has 77 pages.

## Figurative words that I do not report

These words are the established term, or a plain word that a lay listener knows, and no shorter literal term exists:

- "break-in," "broke in," "take over," "takes over the entire internet" (Amodei's phrase), "crash," "patch," "exploit," "phishing," "sandbox," "container," "content blocker," "credit freeze," "lift the freeze," "email masking," "number lock," "SIM swap," "backup," "offline," "bypassed the safeguards."
- "An AI agent does not tire": the negative statement is literally true.
- "Something you know / have / are": the standard names of the factors.
- "An API key is a password that lets software use a paid service": an analogy that introduces the term (3.10 rule 36).
- "A thief can move the number": the carrier term is "port," and "move" is the plain word.
- Titles "Skill" and "Energy," "big mess," "breaking the internet," "hacks": settled.

## Substantive findings

**S1. Passkeys (slide 46).** Confidence: medium.
- Current: "The site gets only a matching lock" / "the site sends a puzzle that only the secret can solve. Your device solves it after you approve" / "A fake site gets nothing" / "A break-in at the site exposes only the lock, and nobody can sign in with the lock".
- Proposed:
  - "The device keeps the secret. The site gets only a public key, which can check the secret and cannot sign in"
  - "To sign in, the site sends a random number. Your device answers with the secret after you approve with your face, fingerprint, or device PIN"
  - "You never see or type the secret, and it works only at the real address of the site. It does not work on a fake site"
  - "A break-in at the site exposes only the public key, and nobody can sign in with the public key"
- Reason: "lock" and "puzzle" are metaphors for computational objects (3.10 rule 17), and the slide states them as facts, not as a marked analogy. The 2 metaphors do not match each other (a secret solves a puzzle, and a lock matches a secret). "Public key" is the established term, and the slide defines it in 1 clause. "A fake site gets nothing" is a short sentence for effect (3.2, dramatic fragments).

**S2. AI that broke in without orders (slide 19), and Coding agents (slide 71).** Confidence: high for "sealed," medium for the title.
- Current (19): "OpenAI models broke out of a sealed environment and reached the live systems of Hugging Face".
- Proposed (19): "OpenAI models left an isolated test environment and reached the real systems of Hugging Face".
- Current (71): "a container (a sealed workspace on your computer)".
- Proposed (71): "a container (an isolated workspace on your computer)".
- Current title (19): "AI that broke in without orders". Proposed: "AI that broke in without instructions".
- Reason: "sealed" and "broke out" describe a physical enclosure; "isolated" is the literal computing term. "Live" is figurative, and the quotation on the same slide says "real systems." "Orders" is a military word; the arrow line on the slide already says "Nobody told these models."

**S3. Energy (slide 21), last bullet.** Confidence: high.
- Current: "Defenders gain the same energy."
- Proposed: "Defenders can run AI agents without rest as well."
- Reason: the title "Energy" is settled, but in a sentence "energy" is a metaphor for the absence of fatigue. The first bullet states the literal fact ("A person tires, sleeps, and loses interest"), and the last bullet can use the same literal words.

**S4. Sign-in methods compared (slide 50), column headers; and the verb "stop" on slides 49, 51, 57, 60, 65, 66.** Confidence: high for slide 50, medium for the others.
- Current headers: "Stops a fake sign-in page" / "Stops a stolen phone number".
- Proposed headers: "Protects against a fake sign-in page" / "Protects against a SIM swap".
- Reason: a sign-in method does not stop a page or a number. The second header has no clear meaning, and "SIM swap" is the term that slides 49 and 55 define.
- Slide 51. Current: "a passkey does not stop malware on your own device, or a caller who deceives the help desk". Proposed: "a passkey does not protect against malware on your own device, or against a caller who deceives the help desk".
- Slide 66. Current: "A VPN does not stop phishing or software flaws". Proposed: "A VPN does not protect against phishing or software flaws".
- Slide 60. Current: "a freeze stops new credit in your name". Proposed: "with a freeze, lenders cannot open new credit in your name".
- Slide 65. Current: "stop most tracking code". Proposed: "block most tracking code" ("block" is the term of "content blocker").
- Slides 49 and 57. Current: "It stopped 76% of targeted attacks"; "They stopped 76% of targeted attacks, and on-device prompts stopped 90%". Proposed: "prevented" in each place.
- Reason: one word ("stop") has 5 different objects (a page, a number, malware, credit, attacks). 3.12 requires one meaning for each word.

**S5. Face, fingerprint, or passcode (slide 53).** Confidence: high.
- Current: "The passcode always works as the fallback. Face or fingerprint is a convenience on top of it".
- Proposed: "The passcode always works. Face or fingerprint is a faster way to unlock the device".
- Current: "→ Use face or fingerprint every day, with a long passcode behind it."
- Proposed: "→ Use face or fingerprint every day, and set a long passcode."
- Reason: "on top of it" and "behind it" are spatial metaphors for a relation between 2 unlock methods.

**S6. Passkey storage (slide 48).** Confidence: high.
- Current: "because the passcode can stand in for your face or fingerprint (A4)".
- Proposed: "because the passcode can replace your face or fingerprint (A4)".
- Reason: "stand in for" is a theater idiom; "replace" is the word that slides 45 to 47 use.

**S7. Range of predictions (slide 29).** Confidence: high for "sit," medium for "swarm."
- Current: "Skeptics sit to the left of this line: they call the warnings marketing." Proposed: "Skeptics are to the left of this line: they call the warnings marketing."
- Current: "The positions are our reading of each person's statements." Proposed: "The positions are our interpretation of each person's statements."
- Current: "A swarm of AI agents takes over the entire internet" (also slide 39: "a swarm of AI agents that takes over the entire internet"). Proposed: put Amodei's word in quotation marks in both places: A "swarm" of AI agents takes over the entire internet.
- Reason: 3.6 bans "sit at" for positions. "Reading" is figurative for "interpretation." "Swarm" is Amodei's metaphor, and outside quotation marks the slide adopts the metaphor as its own word (3.10 rule 31).

**S8. Claude Mythos Preview, April 7 (slide 22).** Confidence: medium.
- Current: "with the browser's sandbox (a protective layer) removed".
- Proposed: "with the browser's sandbox (the part that isolates web pages from the computer) turned off".
- Reason: 3.10 rule 17 names "layer" as a metaphor to avoid, and the gloss does not say what the sandbox does. If the line gets too long, drop "browser's."

**S9. Ivy League, 2025 (slide 9), arrow line.** Confidence: medium.
- Current: "→ 3 of these 5 incidents started with a person, and 1 started with a software flaw."
- Proposed: "→ In 3 of these 5 incidents, attackers deceived an employee. In 1, attackers used a software flaw."
- Reason: "started with a person" is not literal (every incident has a person), and it hides the actor (3.3).

## Minor findings

All have the reason "figurative word; a literal word is available" (3.2) unless I state another reason.

| # | Slide | Current | Proposed | Confidence |
|---|---|---|---|---|
| M1 | Entry methods (14) | "organizations that ransomware hit" | "organizations that had a ransomware attack" | high |
| M2 | Outside universities, 2026 (11) | "attackers staged a fake job interview" | "attackers held a fake job interview" | medium |
| M3 | Outside universities, 2026 (11) | "State filings put the count at 19.9 million people" | "State filings report 19.9 million people" | medium |
| M4 | PHP, October 2026 (12) | "PHP is the programming language behind many websites" | "Many websites are written in PHP, a programming language" | medium |
| M5 | Java, November 2026 (13) | "Java runs a large share of university and business software" | "A large share of university and business software is written in Java" (Java does not run the software) | medium |
| M6 | Paycheck theft (10) | "a step that phishing can defeat" / "a sign-in method that phishing cannot defeat" | "a step that works on a fake sign-in page" / "a sign-in method that does not work on a fake page" | low |
| M7 | Public flaw counts (24) | "About 5,000 Linux kernel records inflate the 2026 count" | "The 2026 count includes about 5,000 Linux kernel records" | medium |
| M8 | Exploits built from patches (25) | "Each one turns an ordinary user account into full control of the computer" | "Each one gives an ordinary user account full control of the computer" | medium |
| M9 | Takeaways (27) | "Mandiant tied most break-ins to basic failures, not to AI" | "Mandiant attributed most break-ins to basic failures, not to AI" | high |
| M10 | Schneier (30) | "a real step, and 1 step in a long series of small steps" | "a real advance, and 1 in a long series of small advances" (keep the current text if "step" is his word; then use quotation marks) | low |
| M11 | Stamos and Mandia (31) | "attacks with AI will outpace human defenders" | "attacks with AI will be faster than human defenders" | medium |
| M12 | Industry letter (32) | "OpenAI led an open letter" | "OpenAI organized an open letter" | medium |
| M13 | Takeaways (38) | "Nobody on this line predicts that the problem goes away" | "Nobody on this line predicts that the problem ends" | medium |
| M14 | A3. Sign-in methods (45) | "any second step cut the risk of compromise by 99.22%" | "any second step lowered the risk of compromise by 99.22%" | medium |
| M15 | Security keys (47) | "A sign-in works only on the real site, with the key in your hand" | "A sign-in works only on the real site, and only when you have the key" | low |
| M16 | B1. Security key setup (56); 1-page checklist, B1 | "Apple cannot let you back in" | "Apple cannot restore your access" | medium |
| M17 | C3. Private Relay and VPNs (64) | "a personal VPN moves the risk from your internet provider to the VPN company" | "a personal VPN replaces the risk at your internet provider with a risk at the VPN company" | low |
| M18 | Advice to drop (66), title | "Advice to drop" | "Advice to ignore" | low |
| M19 | Takeaways (68) | "Passkeys, a password manager, and 3 habits address stolen passwords and phishing" | "Passkeys, a password manager, and 3 habits protect against stolen passwords and phishing" | medium |
| M20 | Web checklist, B, security keys (`index.html` line 36) | "Keep the spare key at home, for the day that you lose the first one." | "Keep the spare key at home, in case you lose the first key." | high |
| M21 | A2. Password manager (43) | "The software writes and stores 1 long, unique password" | "The software creates and stores 1 long, unique password" | medium |

## Density

I found no bullet that needs a split for mannered prose. The longest bullets (slide 64, CISA's reason; slide 62, Advanced Data Protection) state facts in plain clauses.

## Checklists

- The 2 PDF checklists have no figurative wording except "Apple cannot let you back in" (M16).
- The web checklist has 1 finding (M20).
