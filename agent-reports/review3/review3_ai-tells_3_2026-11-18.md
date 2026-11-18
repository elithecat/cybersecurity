Language model: claude-fable-5-2. Prompt version: v3. Topic: ai-tells. Reviewer number: 3.

# Review 3, AI tells, reviewer 3 (2026-11-18)

## Scope and method

- Files read in full: `cybersecurity_2026_briefing.tex` (1,049 lines), `security_checklist.tex`, `security_checklist_detailed.tex`, `checklist_page/index.html`.
- Rules applied: CLAUDE.md 3.2 ("Constructions to delete or rewrite"), 3.5, 3.6, and 8.2.
- I did not read the other round-3 reports. I did not render slide images; every finding is about wording, and I took the wording from the source.
- I did not edit any file except this report.
- Line numbers refer to `cybersecurity_2026_briefing.tex` unless a different file is named.

## Summary

- Substantive findings: 9.
- Minor findings: 12.
- The source-quote bullets and the step slides (A1 to C4) have few signs of generated text. The signs are in the bullets that we wrote ourselves to connect or summarize: paired contrast sentences, a repeated slogan, and bullets that describe the talk.

## Substantive findings

### S1. One sentence appears verbatim on 4 slides
- Slides: "Main points" (line 165), "Takeaways" after Hacks with AI (line 462), "How worried should we be?" (line 607), final "Takeaways" (line 993).
- Current text, 4 times: "AI lowers the skill that an attack needs, and an AI agent does not tire."
- Reason: 8.2 puts takeaways at the start and at the end, which accounts for lines 165 and 993. The 2 copies in the middle make the sentence a refrain (3.2, epigrams: "Make the point with a number").
- Proposed, line 462: "A working exploit from a new patch cost about \$2,000, and 2 operators of one spying group were undergraduates."
- Proposed, line 607: "A model that anyone can download wrote exploits in 50 of 410 attempts. Mythos Preview wrote exploits in 56 of 410". Then delete the sentence "Anyone can now download such a model" from the same bullet.
- Confidence: high.

### S2. "Energy," first bullet
- Current (line 373): "A person tires, sleeps, and loses interest. An AI agent does not"
- Reason: a list of three for rhythm, followed by a short contrast sentence arranged for effect (3.2).
- Proposed: "An AI agent can work on an attack 24 hours a day"
- Confidence: high.

### S3. "How worried should we be?", arrow line
- Current (line 609): "We cannot fix the internet. We can make our own accounts and devices hard to break into"
- Reason: "not X but Y" in 2 matched sentences, placed as the closing line of the first half (3.2, epigrams and "not X but Y").
- Proposed: "Next, we turn to the steps that protect our own accounts and devices"
- Confidence: medium. Alyssa may want this line as her pivot; if she wrote it, keep it (1.2).

### S4. "A3. Sign-in methods," bullet about the next slides
- Current (line 665): "The next 4 slides explain each method, from strongest to weakest"
- Reason: a comment about the talk (3.2). A speaker says this aloud; it is not slide content. It is also inaccurate: the next 4 slides are Passkeys, Security keys, Passkey storage, and App codes and text-message codes, and the "Security keys" slide says that security keys are the strongest method.
- Proposed: delete the bullet.
- Confidence: high.

### S5. "Takeaways" slides that end with a line about the next section
- Current (line 313): "Software flaws were the smaller share in that survey. The next part of the talk explains why that share may grow."
- Proposed: "Software flaws were 13\% in that survey. AI may raise that share"
- Current (line 465): "Next: predictions, from ``big mess'' to ``breaking the internet''."
- Proposed: delete the line. The divider slide "Predictions" follows directly, and "Range of predictions" shows both phrases.
- Reason: comments about the text and a "watch what happens next" setup (3.2, 3.4). Line 465 is also a colon fragment.
- Confidence: high for line 465, medium for line 313.

### S6. "Takeaways" after Predictions, first bullet
- Current (line 590): "Nobody on this line predicts that the problem goes away."
- Reason: a dramatic phrase of zero (3.2). Line 591 then states the same point literally.
- Proposed: "All 5 people on this line predict more break-ins."
- Confidence: medium.

### S7. "Takeaways" after Hacks with AI, Mandiant bullet
- Current (line 464): "For 2025, Mandiant tied most break-ins to basic failures, not to AI."
- Reason: ", not to AI" is a contrast clause added for effect. The Mandiant quote on "Skeptics" (line 449) names "fundamental human and systemic failures" and does not mention AI. "Tied" is figurative.
- Proposed: "For 2025, Mandiant attributed most break-ins to human and system failures."
- Confidence: high.

### S8. "Passkey storage," first bullet
- Current (line 698): "You do not add a second step to a passkey. You protect the place that stores it"
- Reason: "not X but Y" in 2 matched sentences (3.2).
- Proposed: "Protect the 3 places that can store a passkey"
- Confidence: medium.

### S9. "Sign-in methods compared," arrow line repeats an earlier slide
- Current (line 729): "→ A passkey or a security key can replace the password. A code only adds a step after the password. Use a passkey or a key where the site offers one"
- Reason: the first 2 sentences repeat bullets 2 to 4 of "A3. Sign-in methods" (lines 662 to 664), and the table above already shows the difference. A summary line that restates the slide is a sign of generated text.
- Proposed: "→ Use a passkey or a security key where the site offers one"
- Confidence: medium.

## Minor findings

### M1. Paired short sentences as a repeated device
- The deck often puts 2 short matched sentences in 1 bullet: lines 373, 387, 388, 609, 674, 698, 709, 971. Each pair is acceptable alone; 8 pairs give the deck a uniform rhythm (3.2, uniform sentences; 3.5, parallel sentences). S2, S3, and S8 remove 3. Proposed for 2 more:
- "Claude Mythos Preview, April 7" (line 387). Current: "One flaw was 27 years old. Another was 16 years old". Proposed: "The flaws included 1 that was 27 years old and 1 that was 16 years old"
- "Coding agents" (line 971). Current: "A container limits the damage. It does not make the agent safe". Proposed: "A container limits the damage to the files and keys that you put inside it"
- Confidence: medium.

### M2. "Passkeys," short sentence for effect
- Current (line 677): "You never see or type the secret, and it works only at the real address of the site. A fake site gets nothing"
- Proposed: "You never see or type the secret, and the device uses it only at the real address of the site"
- Reason: dramatic short sentence (3.2). Confidence: medium.

### M3. "AI that broke in without orders," arrow line
- Current (line 353): "Nobody told these models to attack those organizations. The models were working on a test task"
- Proposed: "The models were working on a test task, and no person told them to attack those organizations"
- Reason: the "Nobody" opening is a dramatic phrase of zero, and the line restates the slide title. Confidence: low.

### M4. "Range of predictions," closing sentence
- Current (line 490): "Skeptics sit to the left of this line: they call the warnings marketing. The positions are our reading of each person's statements."
- Proposed: "Skeptics, who call the warnings marketing, would be to the left of this line. We placed each person from our reading of that person's statements."
- Reason: "sit" is figurative (3.6), and the colon is a reveal (3.2). Confidence: medium.

### M5. "Face, fingerprint, or passcode," spatial metaphors
- Current (line 759): "The passcode always works as the fallback. Face or fingerprint is a convenience on top of it"
- Proposed: "The passcode always unlocks the device. Face or fingerprint is a faster substitute"
- Current (line 763): "Use face or fingerprint every day, with a long passcode behind it."
- Proposed: "Use face or fingerprint every day, and set a long passcode."
- Reason: "on top of" and "behind" are figurative (3.2). Confidence: medium.

### M6. Final "Takeaways" of the second half, last bullet
- Current (line 942): "Levels B and C limit the damage of 1 failure."
- Proposed: "Levels B and C limit the damage when 1 account or device is compromised."
- Reason: "1 failure" is vague and reads as an epigram. Confidence: medium.

### M7. Uniform slide shape
- Of the 61 slides with a bulleted list, 33 have exactly 5 bullets and 16 have 4. Each bullet appears on a click, and 12 slides end with an arrow line. 8.2 prescribes builds and the arrow; the uniform count is what reads as generated.
- Proposed: no wording change. Where a fifth bullet only adds 1 more fact of the same kind, remove it when Alyssa cuts the deck. Candidates: line 217 ("The operator has not stated the cause"), line 276 ("One report says that researchers found the flaws with AI"), line 205.
- Confidence: low.

### M8. "How worried should we be?", first bullet
- Current (line 606): "This fall: Vanderbilt, Canvas, AO3, Binance, PHP, and Java"
- Reason: not a sign of generated text, but the deck dates the Canvas incident to April 29 and finals (line 201). The label conflicts with that slide.
- Proposed: "In 2026: Vanderbilt, Canvas, AO3, Binance, PHP, and Java"
- Confidence: high.

### M9. Web checklist, spare key (`checklist_page/index.html`, line 36)
- Current: "Keep the spare key at home, for the day that you lose the first one."
- Proposed: "Keep the spare key at home, in case you lose the first key."
- Reason: a closing clause added for effect (3.2). The slides say "in case you lose 1." Confidence: high.

### M10. Web checklist, colon after a parenthesis (`checklist_page/index.html`, line 26)
- Current: "Use a passkey where the site offers it (Google: g.co/passkeys): a passkey replaces the password and the second step."
- Proposed: "Use a passkey where the site offers it (Google: g.co/passkeys). A passkey replaces the password and the second step."
- Reason: colon reveal; 2 colons in 1 sentence. Confidence: medium.

### M11. Web checklist, package wait (`checklist_page/index.html`, line 54)
- Current: "This wait does not apply to phones, laptops, or browsers: update those at once."
- Proposed: "Update phones, laptops, and browsers at once." (the wording of `security_checklist_detailed.tex`, line 57)
- Reason: a negated statement followed by a colon and the instruction; the instruction alone is enough. Confidence: medium.

### M12. One-page checklist, causal colon (`security_checklist.tex`, line 29)
- Current: "The company cannot read your passwords or reset the main password: write the main password on paper."
- Proposed: "The company cannot read your passwords or reset the main password. For that reason, write the main password on paper."
- Reason: colon used as a causal link; the slide (line 650) already says "For that reason." Confidence: medium.

## Checked, with no finding

- Evaluative adjectives, stacked qualifiers, rhetorical questions as transitions, em dashes outside quotations, and "First/Second" templates: none found in our own text. The section question "How worried should we be about cybersecurity?" and its 2-word answer follow 3.10 rule 28 and are settled.
- The 4 slides titled "Takeaways" follow 8.2 (a takeaways slide at the end of each section).
- `security_checklist_detailed.tex`: no finding. Its items are labels and menu paths.
- "Lock" and "puzzle" on "Passkeys" are a teaching analogy for the public key and the challenge. 3.10 rule 36 allows an analogy to introduce a concept. I did not report them.
