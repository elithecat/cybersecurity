# Review 3: bilinski-style, reviewer 2

Language model claude-fable-5-2, prompt version v3, topic bilinski-style, reviewer number 2. Date: 2026-11-18.

## Method

I read the review brief, CLAUDE.md Part 3 and section 8.2, and the text of all 75 slides (`pdftotext -layout` on `cybersecurity_2026_briefing_clean_handout.pdf`). I read her 2026 LLM talk (`llms_2026_research_slides.tex`) and the PHP 2455a lecture (`section1_intro.tex`). I checked line numbers with `grep` in `cybersecurity_2026_briefing.tex`. I did not render slide images, and I did not check whether each proposed text fits its frame. I did not read the other reviewers' reports.

## Her style in the 2 decks

- Bullets are fragments of 4 to 12 words ("Getting much better, fast"; "Verification costs rise").
- She gives her own opinion in the first person ("I worry much less about fake citations than I used to"; "AI writing is fine with me, if it is good writing"; "I learn something every time I teach").
- She uses contractions and direct imperatives ("Don't overestimate AI"; "But don't be stupid"; "So, don't zone out during the basics!").
- Humor is dry and concrete ("Annoying to have an RA that solves Erdős problems in its spare time").
- She asks the audience real questions ("Challenge: Give me some interesting questions that do not involve causal relationships"; "Pair up with your neighbor").
- Takeaways are 2 short lines ("Raise the ceiling"; "Don't settle for a lazy floor").

## What already matches

- The opening story (Vanderbilt), the "How worried should we be? Very worried." slide, "Advice to drop," "A container limits the damage. It does not make the agent safe," "Fake sites use HTTPS too," and "Report a suspicious message to OIT, even after you clicked."
- The A5, B4, First hour, and API keys slides use direct imperatives.

## Substantive findings

**S1. Repeated thesis sentence (Main points, line near "Main points"; Takeaways after "Hacks with AI"; "How worried should we be?"; final Takeaways).** 4 slides.
- Current: "AI lowers the skill that an attack needs, and an AI agent does not tire."
- Proposed: "With AI, an attack takes less skill. And an AI agent doesn't get tired."
- Reason: "the skill that an attack needs" and "does not tire" are formal written English. She uses contractions and everyday verbs. The titles "Skill" and "Energy" stay.
- Confidence: high.

**S2. A3. Sign-in methods (line 654).**
- Current: "The next 4 slides explain each method, from strongest to weakest"
- Proposed: delete the bullet. She says the order aloud.
- Reason: a comment about the talk (3.2), with slides as the actor (3.3). The order is also wrong: Passkeys comes before Security keys, and the Security keys slide calls keys "the strongest of the 4 methods."
- Confidence: high.

**S3. Takeaways, Recent hacks (line 313).**
- Current: "→ Software flaws were the smaller share in that survey. The next part of the talk explains why that share may grow."
- Proposed: "→ Software flaws were the smaller share in that survey. With AI, that share may grow."
- Reason: "the next part of the talk explains" is report language with a non-human actor (3.3). The section slide follows directly.
- Confidence: high.

**S4. Takeaways, Hacks with AI (line 465).**
- Current: "→ Next: predictions, from “big mess” to “breaking the internet”."
- Proposed: delete the line.
- Reason: the next slide is the "Predictions" section slide, and the Roadmap has the same words. Her decks do not announce the next section in a bullet.
- Confidence: medium.

**S5. Passkeys.** About 110 words in 5 bullets of 2 to 3 full sentences each. The slide reads like a manual page.
- Current: the 5 bullets from "A passkey is a secret that your phone or computer creates for 1 site…" to "…nobody can sign in with the lock".
- Proposed:
  - "A secret that your phone or laptop creates for 1 site"
  - "The device keeps the secret. The site gets only a matching lock"
  - "To sign in, you approve with your face, fingerprint, or PIN"
  - "No password and no code. You never see or type the secret"
  - "Works only at the real address of the site. A fake site gets nothing"
  - "A break-in at the site exposes only the lock. Nobody can sign in with the lock"
- Reason: 8.2 (1 idea in about 10 to 60 words; list items as fragments). The "puzzle" and "counts as 2 factors" sentences are spoken detail.
- Confidence: medium (Alyssa must decide whether the "2 factors" point stays on the slide).

**S6. A2. Password manager (lines near 636 to 639).**
- Current: "The software writes and stores 1 long, unique password for each account" / "The manager encrypts your passwords with 1 main password that only you know. The company stores the encrypted file and cannot read it" / "For that reason, the company cannot reset the main password. Write it on paper"
- Proposed: "The manager makes a long, different password for each account" / "You remember 1 main password. Only you know it" / "The company stores an encrypted copy and can't read it" / "The company also can't reset the main password. Write it on paper"
- Reason: "For that reason" is essay language. "The software" and "the manager" name 1 object with 2 words (3.12).
- Confidence: medium.

**S7. Takeaways, What you can do right now (lines 928 to 931).**
- Current: "Level A takes about 2 hours (our estimate)." / "Updates shorten the exposure to new flaws." / "Passkeys, a password manager, and 3 habits address stolen passwords and phishing." / "Levels B and C limit the damage of 1 failure."
- Proposed: "Level A takes about 2 hours (my estimate). Do it this week." / "Updates remove new flaws. Restart when the device asks." / "Passkeys, a password manager, and 3 habits protect you from stolen passwords and phishing." / "Levels B and C limit the damage if an attacker still gets in."
- Reason: "shorten the exposure," "address," and "the damage of 1 failure" are abstract nouns where she uses a verb and "you." Her takeaways tell the audience what to do.
- Confidence: high.

**S8. Takeaways, Predictions (line 581).**
- Current: "The people who build the models make the most severe predictions, and they have a commercial interest."
- Proposed: "The most severe predictions come from the people who sell the models."
- Reason: "they have a commercial interest" is a formal phrase. The proposed sentence states the same fact in plain words.
- Confidence: medium.

**S9. "We" for her own checks, in a talk with 1 speaker.** Lines 203, 490, 570, 582, 778, 928.
- Current: "We found no count from Instructure"; "The positions are our reading of each person's statements"; "We found no statement from Amodei that patching fails"; "We found no independent check of that forecast"; "(our estimate)" on A6 and on the Takeaways.
- Proposed: "I found no count from Instructure"; "I placed each person from their statements"; "I found no statement from Amodei that patching fails"; "I found no independent check of that forecast"; "(my estimate)".
- Reason: her LLM talk uses "I" for her own judgments. "We" stays where it means everyone ("We should be very worried"; "We can't fix the internet"). CLAUDE.md 3.4 allows "we" for research in talks; therefore Alyssa decides.
- Confidence: medium.

**S10. Coding agents (line 959).**
- Current: "One setup: claude-code-docker-setup at github.com/elithecat/claude_resources"
- Proposed: "My setup: claude-code-docker-setup at github.com/elithecat/claude_resources"
- Reason: the repository is hers. The talk gives her own tool, and she says so in the first person in her LLM talk. If she does not use this setup herself, keep "One setup."
- Confidence: medium.

**S11. No question to the audience in the second half.** The deck has 1 question slide ("How worried should we be?"). Her lecture asks the room. Proposed additions, each as a first line that appears alone before the bullets (8.2, "Show a question … alone, and then add the answer"):
- Canvas during finals: "Who saw the message on the Canvas sign-in page?"
- A2. Password manager: "Who uses a password manager now?"
- A3. Sign-in methods: "Who has a passkey on a Google or Apple account?"
- Levels of urgency: "Which of these steps did you already do?"
- Reason: these are real questions that the audience answers by a show of hands. They are not rhetorical transitions (3.2).
- Confidence: medium.

**S12. Face, fingerprint, or passcode (line 750).**
- Current: "Face or fingerprint risk: a person can force you to unlock the device. In the United States, the legal protection against a forced unlock is weaker for a face or fingerprint than for a passcode"
- Proposed: "Face or fingerprint risk: a person can force you to unlock the device. US law protects a passcode more than a face or fingerprint"
- Reason: the second sentence has 4 stacked prepositional phrases. It is the longest bullet on a slide with 4 bullets and 2 arrows.
- Confidence: medium.

## Minor findings

**M1. Energy (line 373).** "A person tires, sleeps, and loses interest. An AI agent does not." -> "People get tired and bored. An AI agent doesn't." A 3-item list with a matched contrast (3.2, 3.5); everyday words. Medium.

**M2. Energy.** "Defenders gain the same energy." -> "Defenders get the same help." A defender cannot gain energy from a model in the literal sense. Low.

**M3. Skill.** "An attack on a new flaw used to need a rare expert." -> "An attack on a new flaw used to take a rare expert." Medium.

**M4. Skeptics (line 452).** "Much of the evidence in this section comes from Anthropic, which sells these models" -> "Caveat: much of my evidence here comes from Anthropic, which sells these models". "In this section" refers to the talk. Medium.

**M5. Range of predictions (line 490).** "Skeptics sit to the left of this line: they call the warnings marketing." -> "Skeptics are to the left of this line. They call the warnings marketing." "Sit" is figurative (3.6 row on "sit at"). Medium.

**M6. Three terms (line 329).** "The quotes also say “bug”" -> "Also called a “bug”". Quotes do not speak (3.3). High.

**M7. Entry methods.** "Survey of 95 higher-education organizations that ransomware hit" -> "Survey of 95 higher-education organizations hit by ransomware". The current word order is awkward. Medium.

**M8. A1. Updates.** "Restart when you see the restart prompt. An update is not installed until the device restarts" -> "Restart when the device asks. The update isn't installed until you restart". Medium.

**M9. A6. Phone number lock (line 778).** "This attack is rare, and the lock takes about 5 minutes (our estimate)" -> "The attack is rare. The lock takes about 5 minutes (my estimate)". Low.

**M10. B5. Credit freeze.** "Credit freeze: a freeze stops new credit in your name. It is free, and separate at each of the 3 credit bureaus" -> "Credit freeze: stops new credit in your name. Free. You set it at each of the 3 credit bureaus". The label repeats in the gloss. Low.

**M11. C3. Private Relay and VPNs.** "CISA's reason: a personal VPN moves the risk from your internet provider to the VPN company, and many VPN companies have weak security and privacy practices" -> "CISA's reason: you then trust the VPN company in place of your internet provider, and many VPN companies have weak security". Medium.

**M12. How worried should we be? (arrow).** "We cannot fix the internet. We can make our own accounts and devices hard to break into" -> "We can't fix the internet. We can make our own accounts and devices hard to break into". Contraction, as in her decks. Low.

**M13. A2. Password manager, optional first-person line.** Her LLM talk names what she uses. A line "I use [manager]" fits after the Wirecutter bullet. I do not know which manager she uses; the bracket is for her. Low.

## Counts

Substantive: 12. Minor: 13.

## Handoff

- Files changed: this report only.
- Tests and renders: none run (review only).
- `git status`: the folder is not a git repository.
