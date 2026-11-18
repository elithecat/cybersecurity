# Review: mannered prose and editorializing

Language model claude-fable-5-2, prompt version v1, role: writing-mannered-prose.

Assignment: apply CLAUDE.md 3.2 (mannered prose) and 3.5 (editorializing) to every sentence on the slides, the checklist, and the source notes, from the rendered text. Words inside quotation marks from sources are exempt.

## What I checked

- I read CLAUDE.md 3.2 to 3.6 and 8.2.
- I read the `pdftotext -layout` output of `cybersecurity_2026_briefing_handout.pdf` (54 slides), `security_checklist.pdf` (1 page), and `source_notes.pdf` (4 pages), sentence by sentence.
- I used grep on `cybersecurity_2026_briefing.tex` and `security_checklist.tex` for line numbers, and on `agent-reports/research/` for the source wording behind 3 phrases.
- The deck has no speaker notes (`\note` does not occur in the .tex file).

## What I could not check

- I did not open any web page. Where a proposed text changes the content of a claim (findings 2, 7, 13), I state the basis in the research reports, and I did not confirm it against the source.
- I did not look at slide images. Line fit of the proposed texts is not tested.

## Summary

7 substantive findings and 9 minor findings. Most of the text is literal and plain. I found no "not X but Y" construction that the rules prohibit, no list of three for rhythm (each list of three has 3 real items), no rhetorical question as a transition, no comment about the text, and no banned intensifier outside quotation marks. The source notes have no finding.

Phrases that I examined and accept:

- "An update that waits for a restart is not installed" (A1): short, but literal and informative.
- "Private Relay is not a VPN": a plain correction (3.2 allows it).
- "We found no statement from Amodei that patching fails. He says that patching takes years": the refutation of X is a separate sentence with its evidence, as 3.2 requires.
- "Skeptics," "Reasons for caution," "Three habits": factual labels.
- "defense shield," "arms-dealer dynamic," "landscape," "fundamental," "drastically," "just": inside source quotations.
- "Cost:" and "Benefit:" and "Test:" are list labels in the 8.2 form (bold label, colon, gloss), not colon reveals.

## Substantive findings

### 1. Takeaways: recent hacks (tex line 252)

- Current: "A vendor's breach can become our breach (Canvas, Oracle)."
- Proposed: "A breach at a vendor exposed university data (Canvas, Oracle)."
- Evidence: 3.2, epigrams and quotable sentences; the repeated word "breach" is a contrast arranged for effect. The proposed text states the fact that the 2 examples on the earlier slides show.
- Confidence: high.

### 2. Takeaways: recent hacks (tex line 251)

- Current: "Attackers hit at least 6 universities between September and November 2026."
- Proposed: "At least 6 universities reported security incidents between September and November 2026."
- Evidence: 3.2, "hit" is a word from combat. The verb is also inexact: the slide "Universities, fall 2026" attributes the Copenhagen case to "a configuration error in a test system," and gives no attacker for New Mexico. I did not check the 6 cases against their sources.
- Confidence: medium.
- Related, minor: "Entry methods in higher education" has "95 higher-education organizations hit by ransomware." Proposed: "95 higher-education organizations that had a ransomware attack."

### 3. Slide titles "Hopeful version" and "Overrated advice" (tex lines 454, 673)

- Current: "Hopeful version"; "Overrated advice".
- Proposed: "Amodei on the opportunity"; "Advice to drop".
- Evidence: 3.5, "Do not give case studies editorial labels" and "Do not add subtitles or labels that the source does not have." "Hopeful" and "overrated" are the deck's evaluations. "Version" also has no referent (version of what). 8.2 asks for a noun phrase of 1 to 4 words; both proposals fit.
- Confidence: medium. Alyssa may prefer another factual label for the second slide; "Advice to drop" matches the 3 items (scheduled password changes, fear of public Wi-Fi, a commercial VPN as protection).

### 4. Slide titles "Finding outpaces fixing" and "Patches as instructions" (tex lines 293, 333)

- Current: "Finding outpaces fixing"; "Patches as instructions".
- Proposed: "Flaws reported and patched"; "Attacks built from patches".
- Evidence: 3.2, use the literal term. "Outpaces" comes from racing, and the title is an alliterative epigram. A patch is not a set of instructions; the first bullet of the slide gives the literal content ("A patch shows an attacker where the flaw was"). The first proposal matches the 2 bars of the figure (530 reported, 75 patched).
- Confidence: medium.
- If the first title changes, change the 3 references in `source_notes.tex` (the "Figures on the slides" paragraph and Table 1) to match.

### 5. Main points, item 3 (tex line 142)

- Current: "Most break-ins at universities still start with a password or a person. We can fix those this week."
- Proposed: "Most break-ins at universities still start with a password or a person. We can reduce both risks this week."
- Evidence: 3.4, no pep talks; 3.2, literal term. "Fix those" says that we fix a password and a person, and it promises more than level A delivers. The closing "Takeaways" slide already uses a plain form for the same point ("This week: updates, a password manager, passkeys, a phone passcode, and 3 habits").
- Confidence: medium.

### 6. Takeaways: AI and software flaws (tex lines 387 to 388)

- Current: "So far, most real break-ins still use passwords and people." and "→ Both camps recommend the same first steps."
- Proposed: "So far, most break-ins still start with a password or a person." and "→ The AI companies and the skeptics recommend the same first steps."
- Evidence: 3.2, "real" is an empty intensifier; a break-in does not "use people"; "camps" is a word from combat. The first proposal repeats the wording of Main points item 3, so the audience hears 1 form of the claim. The second sentence is also a vague generality (3.5): no earlier slide in Section 2 states which steps either group recommends. `research_ai_cyber_evidence_2026-11-12.md` line 34 gives Anthropic's position as "shorten patch cycles, add basic controls"; I could not confirm what the skeptics recommend, so I do not propose a list of steps. Either name the steps with a source, or delete the line.
- Confidence: high for the wording; medium for the comment on content.

### 7. C3. Private Relay and VPNs (tex line 666) and checklist (line 58)

- Current (slide): "A commercial VPN moves your trust from the network to the VPN company (EFF) [verify]". Current (checklist): "A commercial VPN moves your trust to the VPN company."
- Proposed (slide): "A commercial VPN hides your traffic from the local network. The VPN company can then see it (EFF) [verify]". Proposed (checklist): "With a commercial VPN, the VPN company can see your traffic."
- Evidence: 3.2. Trust is not an object that software moves, and a professor without a security background cannot tell from the sentence what the VPN company gains. `research_account_hardening_2026-11-12.md` line 247 summarizes the EFF page as "a VPN hides your traffic from the local network and your internet provider and moves the trust to the VPN company." The second proposed sentence is my reading of that summary; I could not open ssd.eff.org, so keep "[verify]".
- Confidence: medium.

## Minor findings

### 8. Slide title "Altman's remedy" (tex line 417)

- Current: "Altman's remedy". Proposed: "Altman's proposal".
- Evidence: 3.2, "remedy" comes from medicine and implies that the proposal works. Confidence: medium.

### 9. Reasons for caution (tex line 474)

- Current: "Security agencies still tell everyone to patch, and faster."
- Proposed: "Security agencies still tell organizations to patch, and to patch faster."
- Evidence: 3.2, closing clause added for effect; "everyone" is an overstatement that the next sentence narrows to "organizations." Confidence: medium.

### 10. Takeaways: Altman and Amodei (tex line 485)

- Current: "“The meantime” is about 2 years, by Anthropic's own forecast."
- Proposed: "Anthropic forecasts that this period lasts about 2 years."
- Evidence: 3.2, "own" is an empty intensifier here; the quotation marks around "The meantime" mark no source (the phrase is the deck's Section 4 title, which the audience has not yet seen as a section). Confidence: medium.

### 11. Takeaways: Altman and Amodei (first item)

- Current: "The builders of the models expect more flaws than anyone can patch, for now."
- Proposed: "Altman and Amodei expect that patching will take years."
- Evidence: 3.2, "builders" is a word from construction for 2 company heads, "than anyone can patch" is a dramatic phrase, and "for now" is a closing clause. The proposal matches Main points item 2 and the quotations on the slides "Altman at Stanford" and "Amodei, April 7, 2026." Confidence: medium. A fact-check reviewer should decide whether 1 sentence can cover both men: Altman's quote says that patching all bugs is not possible, and Amodei's says months and years.

### 12. Overrated advice (tex line 676)

- Current: "Scheduled password changes. NIST says no [verify]"
- Proposed: "Scheduled password changes. NIST advises against them [verify]"
- Evidence: 3.2, dramatic fragment. Confidence: medium.

### 13. C1. Strictest settings (tex line 644) and checklist (line 55)

- Current: "Apple Lockdown Mode: for the few people whom sophisticated attackers target"
- Proposed: "Apple Lockdown Mode: for the few people whom spyware operators target personally"
- Evidence: 3.2, "sophisticated" is an evaluative adjective. It follows Apple's wording ("the most sophisticated digital threats," `research_account_hardening_2026-11-12.md` line 132), so an alternative is to quote Apple directly. Line 322 of that report says "targeted by sophisticated spyware." I could not open the Apple page. Confidence: low.

### 14. C1. Strictest settings (tex line 642)

- Current: "and tightens recovery". Proposed: "and makes account recovery stricter".
- Evidence: 3.2, literal term. Confidence: medium.

### 15. Three levels of urgency

- Current: "The sort is a judgment."
- Proposed: "The sort is our estimate."
- Evidence: 3.2, a short thesis sentence at the end of a paragraph; the checklist states the same point as "The sort and the times are our estimates." Use 1 wording in both files. Confidence: low.

### 16. Roadmap and Section 1 title "Recent hacks"

- Current: "Recent hacks". Proposed: "Recent break-ins".
- Evidence: 3.2 and Orwell's rule 5 (everyday word). The deck uses "break-in" in every sentence; "hacks" appears only in titles. The Copenhagen case (a configuration error) fits neither word well, so "Recent incidents" is an alternative. Confidence: low.

## Reasoning

I applied 2 tests to each sentence. First, for each noun and verb, I asked whether the word has its literal sense for the subject (3.2). Second, I asked whether the sentence or the title evaluates rather than reports (3.5). Because the audience is professors outside computer science, I rated a finding substantive when it is on a title, a main point, or a takeaway (the text that the audience keeps), or when the figurative word hides the content of the claim (finding 7). I rated the others minor.
