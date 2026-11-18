# Review: hidden actors, voice, and tense

Language model claude-fable-5-2, prompt version v1, role: writing-hidden-actors (CLAUDE.md 3.3 subject test, 3.4 voice and tense, 3.13 pass 1).

## What I checked

- I read CLAUDE.md 3.3, 3.4, and 3.13.
- I read the rendered text (pdftotext -layout) of all 54 slides in cybersecurity_2026_briefing_handout.pdf, of security_checklist.pdf, and of source_notes.pdf (4 pages, with Figure 1 and Tables 1 to 3). For each clause I read the subject and the verb, and I searched for the banned verbs in 3.3.
- I did not view slide images, and I did not read the 1-page-per-click PDF. The .tex source has no \note text, so the handout holds all slide text.
- I did not check any fact. Each proposed text keeps the facts of the current text.

## Reasoning for the classes I accepted

- Language models and AI agents as subjects ("AI models find flaws," "The model wrote 181 working exploits," "OpenAI test models left their test environment"). 3.3 treats a language-model agent as an actor, and these sentences report what the models did. Accepted.
- Institutions as subjects (Vanderbilt told, Anthropic built, NIST says, Gizmodo prints, the FTC calls). 3.3 says to name the institution. Accepted.
- Software mechanisms ("your device stores a secret key," "a VPN hides traffic," "a new passkey does not remove the old password," "malware ... spread," "text-message codes stopped 76% of targeted attacks," "the patch removes the flaw"). 3.3 answer 2 allows statements of a mechanism. Accepted.
- Display verbs (the slides show, Table 2 lists, each row gives, the slide states). Accepted.
- Verbless slide fragments and imperative advice. Accepted (8.1, 8.2; 3.4 "you" in advice).
- Passives inside direct quotations ("that we believe was developed with AI"). Not editable.
- "The video was reportedly posted" and "Amodei reportedly said" (source notes, Known conflicts). These are passives or adverbs without an actor. I could not name the outlet without a fact that the notes do not give, so I propose no text. Alyssa or the fact-check reviewers can name the outlet from research_altman_quotes and research_amodei_mythos.

I marked a finding "substantive" when the clause has a banned verb from 3.3 or a verb that 3.3 reserves for a human subject ("using"), or when an object does an action that an attacker did. I marked the other findings "minor."

## Substantive findings

1. Slide "Outside universities, 2026" (tex line 226).
   - Current: "The attack started with a fake job interview that put malware on an engineer's laptop"
   - Proposed: "Attackers staged a fake job interview and put malware on an engineer's laptop"
   - Evidence: 3.3 answer 3. An interview cannot put malware on a laptop; the attackers did. The same bullet can also change "about $6.3 billion stolen" to "attackers stole about $6.3 billion" (minor, fragment).
   - Confidence: high.

2. Slide "Takeaways: AI and software flaws" (tex line 387).
   - Current: "So far, most real break-ins still use passwords and people."
   - Proposed: "So far, most real break-ins still start with a password or a person."
   - Evidence: 3.3, "Choosing, selecting, preferring, reading, and using always have a human subject." The proposed text is the deck's own wording on "Main points" and "Takeaways," so the 3 slides then agree.
   - Confidence: high.

3. Slide "A5. Three habits" (tex line 574) and checklist "Habit 3" (security_checklist.tex line 36).
   - Current: "When an email, a call, or a video asks for money or a password, call back on a number that you already have"
   - Proposed: "When someone asks for money or a password by email, call, or video, call back on a number that you already have"
   - Evidence: 3.3 banned verb "asks" with a non-human subject. A person sends the email.
   - Confidence: high.

4. Slide "A1. Updates" (tex line 526).
   - Current: "Restart when the device asks. An update that waits for a restart is not installed"
   - Proposed: "Restart when you see the restart prompt. An update is not installed until the device restarts"
   - Evidence: 3.3 banned verb "asks" with the subject "device"; "waits" also implies a person. "Is not installed" states a condition and can stay.
   - Confidence: medium (the prompt on a device is a literal request, but the rule gives no exception).

## Minor findings

5. Slide "Three terms" (tex line 274). Current: "Exploit: a working attack that uses one flaw". Proposed: "Exploit: a working attack on one flaw". Evidence: 3.3, "using" has a human subject. The definition above it already has the correct form ("a flaw in software that an attacker can use"). Confidence: high.

6. Slide "Paycheck theft" (tex line 215). Current: "The fake sign-in page captures the password and the one-time code". Proposed: "The attackers capture the password and the one-time code with a fake sign-in page". Evidence: 3.3; the bullets before and after have the group or the attackers as the subject. The current text is defensible as a software mechanism. Confidence: medium.

7. Slide "C3. Private Relay and VPNs" (tex line 666) and checklist "VPN" (line 58). Current: "A commercial VPN moves your trust from the network to the VPN company" (checklist: "A commercial VPN moves your trust to the VPN company."). Proposed, slide: "With a commercial VPN, you trust the VPN company in place of the network". Proposed, checklist: "With a commercial VPN, you trust the VPN company in place of the network." Evidence: 3.3; the person who trusts is "you" (3.4, "you" in advice). Confidence: medium.

8. Slide "A5. Three habits" (tex about line 572) and checklist "Habit 2". Current: "Never paste a command that a web page or a "CAPTCHA" gives you". Proposed: "Never paste a command that you copied from a web page or a "CAPTCHA"". Evidence: 3.3; a page does not give. Confidence: low (the current text is clear to a listener).

9. Slide "Takeaways: the meantime". Current: "Passkeys, a password manager, and 3 habits address the entry methods that attackers use most." Proposed: "Passkeys, a password manager, and 3 habits block the entry methods that attackers use most." Evidence: 3.3; "address" is a person's verb, and "block" is a mechanism. Confidence: low.

10. Slide "Outside universities, 2026". Current: "Oracle Health: records of 19.9 million patients, copied with a stolen login". Proposed: "Oracle Health: an attacker copied the records of 19.9 million patients with a stolen login". Evidence: 3.4, past participle without an actor. The fragment is acceptable under 8.2. Confidence: low.

11. Slide "Universities, fall 2026" (tense). Current: "Technical University of Munich reports reuse of stolen portal passwords"; "University of New Mexico Health Sciences Center closes and suspends classes and research". Proposed: "Technical University of Munich reported reuse of stolen portal passwords"; "University of New Mexico Health Sciences Center closed and suspended classes and research". Evidence: 3.4, past tense for results; all other dated events in Section 1 are in the past tense. Confidence: medium. I could not check whether the closure continues.

12. Slide "Monday, November 9, 2026". Current: "Campus computers played the ransom threat aloud". Proposed: "Attackers played the ransom threat aloud through campus computers". Evidence: 3.3; the attackers did the action. Confidence: low (the current text is a correct mechanism).

13. Slide "Entry methods in higher education", source line. Current: "95 higher-education organizations hit by ransomware". Proposed: "95 higher-education organizations with a ransomware attack". Evidence: 3.4 participle without an actor. Confidence: low.

14. source_notes.tex line 43. Current: "The script code/briefing_figures.R draws both figures." Proposed: "We drew both figures with the script code/briefing_figures.R." Evidence: 3.3 names "script" as a subject to rewrite; 3.4 past tense for methods. Confidence: high.

15. source_notes.tex lines 24 and 25. Current: "The slides mark each such claim with "[verify]"." and "The slides mark these with blue brackets." Proposed: "We marked each such claim on the slides with "[verify]"." and "We marked these facts on the slides with blue brackets." Evidence: 3.3; we did the marking. Confidence: medium ("the slides show" in the same list is a display verb and can stay).

16. source_notes.tex line 39, Figure 1 caption. Current: "A claim receives no flag only if we found its exact words or its number in the text of the source page on November 12, 2026. A blocked page always leads to the flag "[verify]"." Proposed: "We left a claim without a flag only if we found its exact words or its number in the text of the source page on November 12, 2026. We always flagged a claim with "[verify]" when its page was blocked." Evidence: 3.3, 3.4. Confidence: medium.

17. source_notes.tex line 77, Table 2 caption. Current: "because the session could not open the source pages". Proposed: "because we could not open the source pages". Evidence: 3.3; the checklist already says "a source that we could not open." Confidence: high.

18. source_notes.tex, Table 3, row "B1. Security keys". Current: "(nytimes.com was blocked)". Proposed: "(the network rules blocked nytimes.com)". Evidence: 3.4 avoidable passive; the Overview has this active form. Confidence: medium.

19. source_notes.tex, Table 1 cell, row "Spread of capability". Current: "safeguards bypassed 64% to 100% of the time". Proposed: "testers bypassed safeguards 64% to 100% of the time". Evidence: 3.4; the slide has the active form. Confidence: medium.

## Outside my assignment (for the relevant reviewer)

- source_notes Overview says "The process has 2 steps. Figure 1 shows them," and Figure 1 has 3 boxes (the third box is the outcome). I did not count this as a finding.

## Could not check

- The facts behind any sentence (not my role, and the network blocks most sources).
- Who reported the items marked "reportedly" in the source notes.
