Language model claude-fable-5-2, prompt version v3, topic bilinski-style, reviewer 1.

# Review 3: Bilinski talk style, reviewer 1 (2026-11-18)

## Method

- I read the 75 slides of `cybersecurity_2026_briefing_clean_handout.pdf` with `pdftotext -layout`, and the frame list of `cybersecurity_2026_briefing.tex`.
- I read CLAUDE.md section 8.2 and Part 3.
- I read her 2 decks: `llms_2026_research_slides.tex` (all frames) and `section1_intro.tex` (all frames).
- I did not read the reports of other reviewers. I did not fact-check. I did not review the 3 checklist files, because they are handouts and not slides.
- I did not render slide images. Every proposed text is close to the length of the current text or shorter, but nobody has compiled it.

## How she writes on slides (from the 2 decks)

- Fragments of 3 to 12 words: "Getting much better, fast"; "What failed last month may work next month"; "Verification costs rise."
- First person for her own judgment: "I worry much less about fake citations than I used to"; "AI writing is fine with me, if it is good writing"; "I learn something every time I teach."
- Contractions and imperatives: "Don't overestimate AI"; "But don't be stupid"; "So, don't zone out during the basics!"
- Dry humor in plain words: "Annoying to have an RA that solves Erdős problems in its spare time"; "Anything good is from him. Anything confusing is from me."
- Questions and tasks for the audience: "What do we mean by causality?"; "Challenge: Give me some interesting questions that do not involve causal relationships."
- Takeaways of 2 to 5 words: "Raise the ceiling"; "Don't settle for a lazy floor."

## Counts in this deck

- The word "I" appears 0 times outside quotations. "We" or "our" appears 9 times.
- Contractions appear 0 times outside quotations. "Do not," "does not," "cannot," and "did not" appear 29 times (some inside quotations).
- The sentence "AI lowers the skill that an attack needs, and an AI agent does not tire" appears on 4 slides (Main points, Takeaways of "Hacks with AI," "How worried should we be?," final Takeaways).

## Substantive findings

**S1. Main points (slide 3).** Confidence: high.
- Current: 3 items of 2 sentences each (24, 17, and 25 words).
- Her deck states the points as bold lines of 3 to 6 words ("Six things to keep in mind").
- Proposed:
  1. "Attacks need less skill now, and AI agents don't tire."
  2. "Predictions run from a "big mess" to "breaking the internet." Be very worried."
  3. "About half of university ransomware starts with a stolen password or phishing. You can fix that this week."
- Reason: 8.2 (thesis in 1 to 3 sentences; 10 to 60 words per slide). The current slide has 66 words.

**S2. Takeaways after "Recent hacks" (slide 15).** Confidence: high.
- Current arrow: "Software flaws were the smaller share in that survey. The next part of the talk explains why that share may grow."
- Proposed arrow: "Software flaws were the smaller share. With AI, that share may grow."
- Reason: "the talk explains" has a non-human actor (3.3) and is a comment about the text (3.2). She does not announce sections in a bullet.
- Current bullets and proposed bullets:
  - "At least 6 universities reported security incidents between September and November 2026." -> "At least 6 universities reported incidents this fall."
  - "In 4 weeks, PHP and Java each needed an urgent fix on servers worldwide." -> keep.
  - "A break-in at a vendor (Canvas) and a flaw in vendor software (Oracle) exposed university data." -> "Vendors hold your data too (Canvas, Oracle)."
  - "In the higher-education survey, about half of ransomware attacks started with a stolen password or a phishing email." -> "About half of ransomware attacks started with a stolen password or phishing."

**S3. Takeaways after "Hacks with AI" (slide 27).** Confidence: medium.
- Current: 4 sentences with opening attribution clauses ("By the model builders' own counts, …"; "For 2025, Mandiant tied most break-ins to basic failures, not to AI.").
- Proposed:
  - "AI finds flaws faster than people patch them (the builders' own counts)."
  - "Attacks need less skill, and agents don't tire."
  - "Anyone can download a model that scored near Mythos Preview in 1 test."
  - "Most 2025 break-ins still came from basic failures, not from AI (Mandiant)."
- Reason: she puts the claim first and the source in parentheses. The limits of scope stay.

**S4. Takeaways after "Predictions" (slide 37).** Confidence: medium.
- "The people who build the models make the most severe predictions, and they have a commercial interest." -> "The most severe predictions come from the people who sell the models."
- "Anthropic forecasts that AI will favor defense in 2 years. We found no independent check of that forecast." -> "Anthropic says AI will favor defense in 2 years. I found no independent check."
- Keep "Nobody on this line predicts that the problem goes away." This line sounds like her.

**S5. Takeaways after "What you can do right now" (slide 66).** Confidence: medium.
- "Updates shorten the exposure to new flaws." -> "Updates cut the time that a new flaw can hurt you."
- "Passkeys, a password manager, and 3 habits address stolen passwords and phishing." -> "Passkeys, a password manager, and 3 habits protect you from stolen passwords and phishing."
- "Levels B and C limit the damage of 1 failure." -> "Levels B and C limit the damage when 1 step fails."
- "Level A takes about 2 hours (our estimate)." -> "Level A takes about 2 hours (my estimate)."
- Reason: "shorten the exposure," "address," and "the damage of 1 failure" are report nouns (3.2, nouns made from verbs). She writes the verb and "you."

**S6. No contractions in advice (whole deck).** Confidence: high that the contraction is her voice; medium that she wants the change everywhere.
- Change "Do not" to "Don't" and "cannot" to "can't" in her own advice and in her own claims. Leave quotations unchanged.
- Examples:
  - A1: "Do not postpone them." -> "Don't postpone them."
  - First hour: "Do not erase the device, delete files, or try to repair it" -> "Don't erase the device, delete files, or try to repair it"
  - How worried should we be?: "We cannot fix the internet. We can make our own accounts and devices hard to break into" -> "We can't fix the internet. We can make our own accounts and devices hard to break into"
  - Coding agents: "It does not make the agent safe" -> "It doesn't make the agent safe"
  - AI agents: "Do not connect an agent to Brown email or Drive without approval from OIT" -> "Don't connect an agent to Brown email or Drive without approval from OIT"
- Reason: her 2026 deck uses "Don't" in 3 of 6 section names. Part 3 does not ban contractions.

**S7. No first person for her own judgments (whole deck).** Confidence: medium.
- CLAUDE.md 3.4 gives "we" for the research in a talk. Her 2026 deck uses "I" for her own judgment, and this talk has 1 speaker.
- Proposed:
  - Canvas during finals: "We found no count from Instructure" -> "I found no count from Instructure"
  - Range of predictions: "The positions are our reading of each person's statements." -> "The positions are my reading of each person's statements."
  - Reasons for caution: "We found no statement from Amodei that patching fails" -> "I found no statement from Amodei that patching fails"
  - A6: "(our estimate)" -> "(my estimate)"
  - Skeptics: "Much of the evidence in this section comes from Anthropic, which sells these models" -> "Much of my evidence here comes from Anthropic, which sells these models"
- Keep "we" where it means the audience ("How worried should we be?," "We can't fix the internet").

**S8. No statement of her own practice in the second half.** Confidence: medium.
- Her 2026 deck says what she does ("What I verify, and how, keeps changing"). Levels A to C give 16 steps and never say which ones she did.
- I cannot supply these facts. Proposed lines with brackets for her to fill or delete:
  - A2, after the Wirecutter bullet: "I use [password manager]"
  - Levels of urgency, last line: "If you do 1 step today: [her pick]"
  - A6, last bullet: "Rare attack, 5-minute fix (my estimate). [I did this in month, year]"
- Reason: 8.2 ("Show Alyssa's own errors as evidence, in the first person"); integrity rule 1.1 requires brackets for facts that I do not have.

**S9. No questions to the audience in the second half.** Confidence: medium.
- Her lecture asks the room ("Challenge: …"; "Pair up with your neighbor"). 8.2: "Show a question or a 1-line statement alone, and then add the answer."
- Proposed first lines, each on its own click before the bullets:
  - Entry methods: "How did the attackers get in?"
  - A2. Password manager: "Who here uses a password manager?"
  - Passkeys: "Who has set up a passkey?"
- Each question is a real question to the room, not a transition (3.2 allows a question that the reader faces).

**S10. A3. Sign-in methods (slide 43).** Confidence: high.
- Current: "The next 4 slides explain each method, from strongest to weakest"
- Problems: slides are the actor (3.3); the line is a comment about the text (3.2); and the order is wrong. The next slides are Passkeys, Security keys, Passkey storage, and App codes and text-message codes, and the Security keys slide says that security keys are the strongest method.
- Proposed: "Next: the 4 methods" (or delete the bullet).

**S11. Passkeys (slide 44).** Confidence: medium.
- Current: 5 bullets of 2 to 3 full sentences, about 115 words. The slide reads like a paragraph of a report. I keep every point.
- Proposed:
  - "A secret that your phone or computer creates for 1 site. The site gets only a matching lock"
  - "To sign in, the site sends a puzzle that only the secret can solve. You approve with your face, fingerprint, or PIN"
  - "2 factors in 1 step: the device, and your face, fingerprint, or PIN. No password, no code"
  - "Works only at the real address of the site. A fake site gets nothing"
  - "A break-in at the site exposes only the lock. Nobody can sign in with the lock"

**S12. Reasons for caution (slide 36).** Confidence: medium.
- "One outlet reported the criticism that OpenAI's position "mirrors an arms-dealer dynamic"" -> "One critic: OpenAI's position "mirrors an arms-dealer dynamic""
- "Another outlet noted that Altman did not say who builds the "defense shield"" -> "Altman didn't say who builds the "defense shield""
- Reason: "reported the criticism that" and "noted that" are report phrases. On the first item, check that the source attributes the words to a critic; if the outlet wrote them itself, use "One outlet: …".

**S13. Face, fingerprint, or passcode (slide 51).** Confidence: medium.
- "In the United States, the legal protection against a forced unlock is weaker for a face or fingerprint than for a passcode" -> "US law protects a passcode from a forced unlock more than a face or fingerprint"
- "The passcode always works as the fallback. Face or fingerprint is a convenience on top of it" -> "The passcode always works. Face or fingerprint is a convenience"
- Reason: "the legal protection against … is weaker for … than for" is a noun chain; she writes the actor and the verb.

**S14. A4. Phone passcode (slide 50).** Confidence: high.
- Current: "This is a reason to keep passwords in a separate manager. The thief then needs 1 more secret: the main password"
- Proposed: "Keep passwords in a separate manager. The thief then needs 1 more secret: the main password"
- Reason: unclear "This" (3.12); she gives the instruction as an imperative.

## Minor findings

**M1. A2. Password manager.** "For that reason, the company cannot reset the main password. Write it on paper" -> "The company can't reset the main password. Write it on paper". Reason: "For that reason" is a paper connective. Confidence: high.

**M2. Energy.** "A person tires, sleeps, and loses interest. An AI agent does not." -> "People get tired. AI agents don't." Reason: a list of 3 and a contrast arranged for effect (3.2); her version is 6 words. Confidence: medium.

**M3. Three terms.** "The quotes also say "bug"" -> "Same as "bug" in the quotes". Reason: quotes cannot say (3.3). Confidence: medium.

**M4. A5. Habits.** "Report a suspicious message to OIT, even after you clicked" -> "Clicked already? Still tell OIT". Reason: she speaks to the person who made the error; the question is answered in the next 3 words. Confidence: low.

**M5. A6. Phone number lock.** "This attack is rare, and the lock takes about 5 minutes (our estimate)" -> "Rare attack, 5-minute fix (my estimate)". Reason: fragment, as in "Getting much better, fast." Confidence: medium. (Combine with S8 if she adds her own date.)

**M6. How worried should we be? (slide 38).** The second bullet repeats the Main points sentence for the third time. Proposed: "Attacks need less skill, and anyone can download the model". Reason: she restates takeaways at the start and the end (8.2), not 4 times in the same words. Confidence: medium.

**M7. Final Takeaways (slide 71).** After S1, use the same 3 short lines here, and keep item 3 as the list of steps: "This week: updates, a password manager, passkeys and 2FA, a phone passcode, a phone number lock, and 3 habits." Confidence: medium.

**M8. A1. Updates.** "The UK security agency: update by default" is good and matches her label-colon-gloss form. No change. "Restart when you see the restart prompt. An update is not installed until the device restarts" -> "Restart when the device asks. The update isn't installed until you restart". Confidence: medium.

**M9. B6. Old accounts.** "Each old account holds your data and can appear in a breach" -> "Each one holds your data and can appear in a breach". Confidence: low.

## Slides that already sound like her (no change)

- "How worried should we be?" with "Very worried."
- "Advice to drop."
- "First hour."
- Coding agents: "A container limits the damage."
- B3: "Fake sites use HTTPS too. Still check the address of the site."
- Predictions takeaways: "Nobody on this line predicts that the problem goes away."

## Handoff

- `git status --short`: not run; `/home/user/setup/cybersecurity_briefing` is not a git repository in this session.
- Tests: none. Render: none (I changed no source file).
- Files written: this report only.
