# Review 3: ai-tells, reviewer 2

Language model claude-fable-5-2, prompt version v3, topic ai-tells, reviewer number 2. Date 2026-11-18.

## Method

- I read the text of all 75 slides in `cybersecurity_2026_briefing_clean_handout.pdf` with `pdftotext -layout`.
- I read `security_checklist.pdf`, `security_checklist_detailed.pdf`, and `checklist_page/index.html` in full.
- I searched Alyssa's 2026 template deck (`llms_2026_research_slides.tex`) for arrow lines, "Next:" lines, and "Takeaways" titles. The search found none.
- I did not view slide images, and I did not check facts.
- I applied CLAUDE.md 3.2 ("Constructions to delete or rewrite"), 3.5, and the uniform-sentence rule. I skipped the settled decisions and quoted source text.

## Summary

9 substantive findings and 12 minor findings. The deck has few classic signs of generated text (no em dashes, no evaluative adjectives, no rhetorical transitions). The remaining signs are of 4 kinds: matched "cannot X / can Y" sentence pairs, signpost lines that describe the talk, one sentence repeated verbatim on 4 slides, and the same 4-bullet shape on every section "Takeaways" slide.

## Substantive findings

### S1. Slide 38, "How worried should we be?" (arrow line)
- Current: "→ We cannot fix the internet. We can make our own accounts and devices hard to break into"
- Proposed: "→ We can make our own accounts and devices hard to break into"
- Rule: 3.2, "not X but Y" form and a contrast arranged for effect; 3.5, matched parallel sentences. The first sentence refutes a claim that nobody made.
- Confidence: high.

### S2. Slide 21, "Energy" (bullet 1)
- Current: "A person tires, sleeps, and loses interest. An AI agent does not"
- Proposed: "A person needs sleep. An AI agent can run all day and all night"
- Rule: 3.2, list of three for rhythm ("tires" and "sleeps" are 1 item) and a short contrast sentence for effect. The proposed second sentence states the fact.
- Confidence: high.

### S3. Slide 15, "Takeaways" (arrow line)
- Current: "→ Software flaws were the smaller share in that survey. The next part of the talk explains why that share may grow."
- Proposed: "→ Software flaws were the smaller share in that survey. AI may raise that share."
- Rule: 3.2, comments about the text; 3.3, "the next part of the talk explains" has a non-human subject. A speaker says a transition aloud and does not print it.
- Confidence: high.

### S4. Slide 27, "Takeaways" (arrow line)
- Current: "→ Next: predictions, from “big mess” to “breaking the internet”."
- Proposed: delete the line.
- Rule: 3.2, comments about the text, and a colon reveal. The "Predictions" divider is the next slide, and slide 29 shows the same 2 labels. Her 2026 template deck has no "Next:" line.
- Confidence: high.

### S5. Slide 43, "A3. Sign-in methods" (bullet 5)
- Current: "The next 4 slides explain each method, from strongest to weakest"
- Proposed: delete the bullet.
- Rule: 3.2, comments about the text; 3.3, slides do not explain. The line is also inaccurate: the next 4 slides are Passkeys, Security keys, Passkey storage, and App codes, and slide 45 calls security keys the strongest method.
- Confidence: high.

### S6. Slides 3, 27, 38, 71 (one sentence, verbatim, 4 times)
- Current: "AI lowers the skill that an attack needs, and an AI agent does not tire." on "Main points," "Takeaways" (slide 27), "How worried should we be?" (slide 38), and the closing "Takeaways" (slide 71).
- Proposed: keep the sentence on slides 3 and 71 (8.2: takeaways at the start and at the end). Slide 27, bullet 2: "An attack on a new flaw now needs less skill and less time." Slide 38, bullet 2: "Anyone can now download a model that writes exploits".
- Rule: a sentence pasted unchanged into 4 slides is a sign of generated text; slide 38 bullets 2 and 3 restate slides 27 and 37, which the audience saw 1 and 11 slides earlier. The terms "skill" and "tire" stay the same (3.12, one word per concept).
- Confidence: medium.

### S7. Slides 37 and 38 (adjacent repetition)
- Current, slide 37 bullets 1 and 2: "Nobody on this line predicts that the problem goes away." and "The mildest prediction is years of more break-ins and more patching." Slide 38 bullet 3 then repeats: "The mildest prediction is years of more break-ins. The most severe is a swarm of AI agents that takes over the entire internet".
- Proposed, slide 37: replace bullets 1 and 2 with 1 bullet, "Every person on this line predicts more break-ins." Keep slide 38 bullet 3 unchanged.
- Rule: 3.2, dramatic phrase of zero ("Nobody ... predicts"); bullets 1 and 2 state one fact twice; the same sentence appears on 2 adjacent slides. The change also gives slide 37 3 bullets, which breaks the 4-bullet pattern in S9.
- Confidence: medium.

### S8. Slide 48, "Sign-in methods compared" (arrow line)
- Current: "→ A passkey or a security key can replace the password. A code only adds a step after the password. Use a passkey or a key where the site offers one"
- Proposed: "→ Use a passkey or a security key where the site offers one"
- Rule: a summary line that restates bullets. Sentences 1 and 2 repeat bullets 2 to 4 of slide 43 ("An app code or a text-message code adds a step after the password," "A passkey replaces the password and the second step"). The arrow then states the consequence only (8.2).
- Confidence: medium.

### S9. Section "Takeaways" slides 15, 27, 37, 66 (same shape)
- Current: each section ends with a slide titled "Takeaways" with exactly 4 one-sentence bullets; slides 15 and 27 add an arrow line that announces the next section.
- Proposed: after S3, S4, and S7, the 4 slides have 4 bullets and an arrow, 4 bullets, 3 bullets, and 4 bullets. On slide 66, merge bullets 1 and 2: "Level A takes about 2 hours (our estimate), and updates shorten the exposure to new flaws." is not a good merge; instead delete bullet 1, because slide 40 and both checklists state the 2 hours. Slide 66 then has 3 bullets.
- Rule: uniform structure across slides ("every slide with exactly the same shape"); 8.2 asks for 1 to 3 takeaway sentences at the close.
- Confidence: low to medium. Alyssa may want the time estimate repeated; if so, leave slide 66 unchanged.

## Minor findings

### M1. Slide 46, "Passkey storage" (bullet 1)
- Current: "You do not add a second step to a passkey. You protect the place that stores it"
- Proposed: "A passkey takes no second step. Protect each place that stores it"
- Rule: 3.2, "not X but Y" in 2 matched sentences. Confidence: medium.

### M2. Slide 69, "Coding agents" (bullet 2)
- Current: "A container limits the damage. It does not make the agent safe"
- Proposed: "A container limits the damage to the files inside it. The agent can still misuse those files"
- Rule: 3.5, matched contrast; the second sentence names no risk. Confidence: medium.

### M3. Slide 44, "Passkeys" (bullet 4)
- Current: "...it works only at the real address of the site. A fake site gets nothing"
- Proposed: "...it works only at the real address of the site. Your device does not answer a fake site"
- Rule: 3.2, short closing sentence for effect. Confidence: medium.

### M4. Slide 50, "A4. Phone passcode" (bullet 2)
- Current: "This is a reason to keep passwords in a separate manager. The thief then needs 1 more secret: the main password"
- Proposed: "With a separate password manager, the thief also needs the main password"
- Rule: 3.2, colon reveal; 3.12, unclear "This." Confidence: medium.

### M5. Slide 21, "Energy" (bullet 5)
- Current: "Defenders gain the same energy."
- Proposed: "Defenders can run AI agents in the same way."
- Rule: 3.2, figurative "gain energy" (the title "Energy" stays). Confidence: medium.

### M6. Slide 29, "Range of predictions" (note)
- Current: "Skeptics sit to the left of this line: they call the warnings marketing."
- Proposed: "Skeptics, who call the warnings marketing, are to the left of this line."
- Rule: 3.6, "sit"; 3.2, colon reveal. Confidence: high.

### M7. Slide 36, "Reasons for caution" (bullet 4)
- Current: "Security agencies still tell everyone to install patches, and faster"
- Proposed: "Security agencies still tell everyone to install patches, and to install them faster"
- Rule: 3.2, clipped closing clause for effect. Confidence: medium.

### M8. Slide 9, "Ivy League, 2025" (arrow line and bullet 3)
- Current: "→ 3 of these 5 incidents started with a person, and 1 started with a software flaw." Bullet 3: "at each, a phone call to an employee"
- Proposed: "→ 3 of these 5 incidents started with the deception of an employee, and 1 started with a software flaw." Bullet 3: "a caller deceived an employee at each"
- Reason: "started with a person" is vague, and no speaker says "at each, a phone call." Confidence: medium.

### M9. Slide 51, "Face, fingerprint, or passcode" (bullet 1 and arrow 1)
- Current: "Face or fingerprint is a convenience on top of it" and "→ Use face or fingerprint every day, with a long passcode behind it."
- Proposed: "Face or fingerprint is a faster way to unlock" and "→ Use face or fingerprint every day, and set a long passcode."
- Rule: 3.2, spatial metaphors ("on top of," "behind"). Confidence: low.

### M10. "For the few people whom sophisticated attackers target" (slide 60; `security_checklist.tex` line 55; `index.html` line 48)
- Proposed, all 3 places: "for the few people that sophisticated attackers target"
- Reason: nobody says "whom" aloud in this sentence. Confidence: medium.

### M11. Stiff "X of the Y" phrases (wording that no professor says aloud)
- Slide 42: "the passcode of the phone" → "the phone's passcode".
- Slide 56: "the address of the site" → "the site's address".
- Slide 59: "the list of your password manager" → "your password manager" (the checklists already say this); "the delete option of the site" → "the site's delete option".
- Slide 54 and `index.html` line 36: "the security settings of the account" → "the account's security settings".
- Slide 74: "the safeguards of GLM-5.3" → "GLM-5.3's safeguards".
- Reason: the deck already uses possessives ("Wirecutter's pick," "Microsoft's advice"); the mixed forms sound translated. Confidence: medium.

### M12. Checklists and web page
- `index.html` line 36: "Keep the spare key at home, for the day that you lose the first one." → "Keep the spare key at home, in case you lose the first one." Rule: 3.2, closing clause for effect. Confidence: high.
- `index.html` line 54: "This wait does not apply to phones, laptops, or browsers: update those at once." → "Update phones, laptops, and browsers at once." (the wording of both PDF checklists). Rule: colon reveal; one wording per item across the 3 checklists. Confidence: high.
- `security_checklist.tex`, A2: "The company cannot read your passwords or reset the main password [verify]: write the main password on paper." → "The company cannot read your passwords or reset the main password [verify]. Write the main password on paper." Rule: 3.7, a colon used as a causal connective. Confidence: medium.

## Checked and not reported

- Arrow lines on slides 9, 10, 14, 19, 47, 52, and 63 state a count, a consequence, or an instruction that the bullets do not state. I found no restatement there.
- Bold-label fragments on slide 56 ("HTTPS only," "Few extensions") follow 8.2.
- The lock and puzzle analogy on slide 44 is a teaching analogy (3.10 rule 36).
- The checklists use the same imperative opening in every item; a checklist needs that form.
