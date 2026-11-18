Language model: claude-fable-5-2. Prompt version: v3. Topic: ai-tells. Reviewer number: 1.

# Review 3, signs of generated text, reviewer 1 (2026-11-18)

## Summary

- Files read: all 75 slides of `cybersecurity_2026_briefing_clean_handout.pdf` (text from `pdftotext -layout`), `security_checklist.pdf`, `security_checklist_detailed.pdf`, and `checklist_page/index.html`.
- I did not render slide images. All findings are about wording, from the extracted text.
- Findings: 4 substantive, 15 minor.
- Most of the deck has no sign of generated text. I found no em dashes, no evaluative adjectives outside quotes, no rhetorical questions as transitions (the section question is settled), and no stacked qualifiers.
- The remaining signs are of 4 kinds: paired sentences arranged as a contrast, lines that describe the talk, abstract summary nouns on the takeaways slides, and short closing sentences.
- The 2 PDF checklists are plain. I found 3 minor points in the checklists and the web page.

Slide numbers are the page numbers of the clean handout.

## Substantive findings

### S1. "How worried should we be?" (slide 38), arrow line
- Current: "→ We cannot fix the internet. We can make our own accounts and devices hard to break into"
- Proposed: "→ We can make our own accounts and devices hard to break into"
- Rule: 3.2, "not X but Y" form and an epigram at the end of a section; 3.5, matched sentences. The first sentence exists only to set up the second sentence. This slide is the turning point of the talk, and the audience will remember this line.
- Confidence: high.

### S2. Lines that describe the talk (slides 15, 27, 43)
- Rule: 3.2, comments about the text. In 2 of the 3 lines, the talk or the slides are the actor (3.3). A section divider follows slides 15 and 27, and the divider already announces the next part.
- Slide 15 "Takeaways" (Recent hacks).
  - Current: "→ Software flaws were the smaller share in that survey. The next part of the talk explains why that share may grow."
  - Proposed: "→ Software flaws were the smaller share in that survey. AI may raise that share."
- Slide 27 "Takeaways" (Hacks with AI).
  - Current: "→ Next: predictions, from “big mess” to “breaking the internet”."
  - Proposed: delete the line. The divider "Predictions" and the slide "Range of predictions" follow.
- Slide 43 "A3. Sign-in methods".
  - Current: "The next 4 slides explain each method, from strongest to weakest"
  - Proposed: "Strength, from most to least: security key or passkey, app code, text-message code" (the wording of the handout).
- Confidence: high for slides 15 and 27, medium for slide 43.

### S3. "Passkey storage" (slide 46), first bullet
- Current: "You do not add a second step to a passkey. You protect the place that stores it"
- Proposed: "A passkey needs no second step. Protect the place that stores it"
- Rule: 3.2, "not X but Y" form; 3.5, matched sentences with the same subject and the same length. The proposed text states the fact and then gives the instruction.
- Confidence: medium.

### S4. "Takeaways" (slide 66, What you can do right now)
- Rule: 3.2, nouns made from verbs and vague verbs; wording that a professor does not say aloud. All 4 bullets are single short sentences of similar length (uniform-sentence rule).
- Current: "Updates shorten the exposure to new flaws."
  - Proposed: "Updates remove new flaws from your devices sooner."
- Current: "Passkeys, a password manager, and 3 habits address stolen passwords and phishing."
  - Proposed: "Passkeys, a password manager, and 3 habits protect against stolen passwords and phishing."
- Current: "Levels B and C limit the damage of 1 failure."
  - Proposed: "Levels B and C limit what an attacker gets after 1 break-in."
- Confidence: medium. If Alyssa prefers a smaller change, change only the last bullet.

## Minor findings

### M1. "Energy" (slide 21), first bullet
- Current: "A person tires, sleeps, and loses interest. An AI agent does not"
- Proposed: "A person needs sleep and loses interest. An AI agent can work all day and all night"
- Rule: 3.2, a list of three for rhythm (tires and sleeps are 1 item) and a short contrast sentence for effect.
- Confidence: medium.

### M2. "AI lowers the skill that an attack needs, and an AI agent does not tire" (slides 3, 27, 38, 71)
- The same sentence appears 4 times. Slides 3 and 71 are the opening and closing takeaways, which 8.2 supports. Slides 27 and 38 are 11 slides apart.
- Proposed for slide 38: "AI lowers the skill that an attack needs. Anyone can now download such a model" (drop the clause about tiring on this slide only).
- Reason: a repeated slogan. Confidence: low.

### M3. "Takeaways" (slide 37, Predictions), first bullet
- Current: "Nobody on this line predicts that the problem goes away."
- Proposed: "Every person on this line predicts more break-ins."
- Rule: 3.2, dramatic phrase of zero. Confidence: medium.

### M4. "Range of predictions" (slide 29), note under the line
- Current: "Skeptics sit to the left of this line: they call the warnings marketing."
- Proposed: "Skeptics are to the left of this line. They call the warnings marketing."
- Rule: 3.6 ("sit at"); a colon that joins 2 sentences. Confidence: high.

### M5. "Passkeys" (slide 44), fourth bullet
- Current: "You never see or type the secret, and it works only at the real address of the site. A fake site gets nothing"
- Proposed: "You never see or type the secret. It works only at the real address of the site, and a fake site receives no answer"
- Rule: 3.2, short closing sentence for effect. Confidence: medium.

### M6. "Security keys" (slide 45), second bullet
- Current: "A sign-in works only on the real site, with the key in your hand"
- Proposed: "A sign-in works only on the real site, and only with the physical key"
- Rule: 3.2, a closing phrase for effect. Confidence: low.

### M7. "Sign-in methods compared" (slide 48), arrow line
- Current: "→ A passkey or a security key can replace the password. A code only adds a step after the password. Use a passkey or a key where the site offers one"
- Proposed: "→ Use a passkey or a security key where the site offers one"
- Reason: the first 2 sentences restate bullets of slides 43 and 44 ("A passkey replaces the password and the second step"; "An app code or a text-message code adds a step after the password"). Confidence: medium.

### M8. "Face, fingerprint, or passcode" (slide 51)
- Current: "Face or fingerprint is a convenience on top of it"
  - Proposed: "Face or fingerprint is a faster way to unlock"
- Current: "→ Use face or fingerprint every day, with a long passcode behind it."
  - Proposed: "→ Use face or fingerprint every day, and set a long passcode."
- Rule: 3.2, spatial metaphors ("on top of," "behind"). Confidence: medium.

### M9. "Passkey storage" (slide 46), second bullet
- Current: "because the passcode can stand in for your face or fingerprint (A4)"
- Proposed: "because the passcode can replace your face or fingerprint (A4)"
- Rule: 3.2, idiom. Confidence: medium.

### M10. "Reasons for caution" (slide 36), fourth bullet
- Current: "Security agencies still tell everyone to install patches, and faster"
- Proposed: "Security agencies still tell everyone to install patches, and to install them faster"
- Rule: 3.2, a clipped closing clause; 3.12, do not drop words. Confidence: medium.

### M11. "Ivy League, 2025" (slide 9), arrow line
- Current: "→ 3 of these 5 incidents started with a person, and 1 started with a software flaw."
- Proposed: "→ 3 of these 5 incidents started with deception of an employee, and 1 started with a software flaw."
- Reason: "started with a person" is a compressed phrase that needs a second reading. Confidence: medium.

### M12. "Three terms" (slide 17), first bullet
- Current: "The quotes also say “bug”"
- Proposed: "Some sources call it a “bug”"
- Rule: 3.2, comment about the text; a professor does not say "the quotes say." Confidence: medium.

### M13. "Energy" (slide 21), last bullet
- Current: "Defenders gain the same energy."
- Proposed: "Defenders can use the same agents."
- Rule: 3.2, a metaphor that extends the slide title into the text. The title is settled; the bullet is not. Confidence: low.

### M14. "B3. Browser" (slide 56), last bullet
- Current: "Few extensions. In December 2024, attackers took over at least 35 Chrome extensions with about 2.6 million users"
- Proposed: "Remove the extensions that you do not use. In December 2024, attackers took over at least 35 Chrome extensions with about 2.6 million users" (the wording of the handout)
- Rule: 3.2, a 2-word fragment as a label. The other 3 labels on the slide name an object; this label is an instruction without a verb. Confidence: low.

### M15. Checklists and web page
- `checklist_page/index.html`, line 36. Current: "Keep the spare key at home, for the day that you lose the first one." Proposed: "Keep the spare key at home, in case you lose the first key." Rule: 3.2, closing clause for effect. Confidence: medium.
- `security_checklist.pdf`, step A2. Current: "The company cannot read your passwords or reset the main password: write the main password on paper." Proposed: "The company cannot read your passwords or reset the main password. Write the main password on paper." Reason: a colon that joins a fact and an instruction; slide 42 uses 2 sentences. Confidence: medium.
- Slide 60, `security_checklist.pdf` step C1, and web line 48. Current: "for the few people whom sophisticated attackers target". Proposed: "for the few people whom skilled attackers target directly". Rule: 3.2, evaluative adjective; low confidence, because "sophisticated" may follow Apple's wording.

## Checked and not reported

- The triple "Never" on slide 52 and in the checklists: these are 3 real instructions.
- The slide shapes: content slides have 3 to 6 bullets, and 12 slides have an arrow line. The shapes vary enough. The 4 section takeaways slides each have exactly 4 bullets; I do not propose a change, because each bullet states a different fact.
- The arrow lines on slides 10, 14, 47, 52, and 63 each add a consequence or a number that the bullets do not state.
- "Secret," "lock," and "puzzle" on slide 44 are a teaching analogy with a stated mapping. I leave this point to the mannered-prose reviewers.
