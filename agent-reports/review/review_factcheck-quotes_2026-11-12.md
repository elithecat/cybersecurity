# Review: fact check of Section 3 quotations (role slug: factcheck-quotes)

- Language model: claude-fable-5-2
- Prompt version: v1
- Role: fact checker for Section 3, "Altman and Amodei" (handout slides 23 to 30), plus the framing on the "Main points" slide
- Date: 2026-11-12

## What I checked, and how

1. Read the slide source (cybersecurity_2026_briefing.tex, lines 395 to 490, and line 139) and the rendered handout text (pdftotext, pages 23 to 30).
2. Compared each quotation, character by character, with agent-reports/research/research_altman_quotes_2026-11-12.md and research_amodei_mythos_2026-11-12.md.
3. Fetched 3 pages from www.anthropic.com today with curl and compared the 3 company quotations on "Anthropic on timing" with the live page text: /glasswing, /news/anthropic-cyber-mission, /news/expanding-project-glasswing.
4. Decoded the dates built into the X post ID numbers (an X post ID encodes its creation time). The 3 Amodei posts on the slides (IDs ending 0340032995821, 0341794615631, 0343472337145) all decode to 2026-04-07, 18:14 UTC. This is an independent check of the date "April 7, 2026"; it is not a check of the wording.
5. Checked each ellipsis against the full sentence in the research report or on the live page.
6. Checked that each quote or claim that no one read at its source carries the [verify] flag.

## What I could not check

- Every Altman quote (Stanford video, The Next Web, Yahoo Tech, Gizmodo, Axios, Forbes, Security Boulevard, Gear Live): the hosts are blocked. The research report itself took the wording from search-result excerpts. My check confirms only that the slides match the research report.
- The wording of the Amodei X posts on x.com (blocked). The research report took the text from the search index.
- The CNBC article of May 5, 2026 (blocked).
- The NCSC blog post of May 1, 2026 (blocked; it appears in research_protective_guidance_2026-11-12.md, line 32, with the title "Preparing for a 'vulnerability patch wave'").

## Results that need no change (verified or consistent)

| Slide | Text | Result |
|---|---|---|
| Altman at Stanford | "I no longer think we're going to be able to just patch all the bugs." | Matches research version 1 (The Next Web) exactly. Flag present. The attribution "video posted October 21, 2026" follows the research report's caution on the date. |
| Altman's remedy | "I think we're going to have to completely switch the defense model to using the same technology for a new kind of defense shield." | Matches research version 2 (Yahoo Tech) exactly. Flag present. See minor finding M3. |
| Altman's remedy | "I think that's totally possible" (Axios, Apr 6, 2026) | Matches the research report. Flag present. The slide says "major," not Axios's "world-shaking," as the research report advised. |
| Amodei, April 7, 2026 | "Cyber is the first clear and present danger from frontier AI models, but it won't be the last." | Matches post 6 exactly; the quoted words are a complete sentence. Flag present. Date confirmed from the post ID. |
| Amodei, April 7, 2026 | "... patching and securing the world's software infrastructure will be the work of months and years ..." | Matches post 4. The front cut removes "Glasswing is just the first step:"; the back cut removes ", and will require even broader cooperation across AI companies, cyberdefenders, software providers, governments, and more." Neither cut changes the meaning. Flag present. "Same day" is correct (same thread). |
| Anthropic on timing | "The work of defending the world's cyber infrastructure might take years; frontier AI capabilities are likely to advance substantially over just the next few months." | Verified today on https://www.anthropic.com/glasswing, exact. The page carries the date April 7, 2026 (it now also has an October 6, 2026 note at the top). No flag needed. |
| Anthropic on timing | "... we haven't yet achieved a sufficient reduction in cyber risk." | Verified today on https://www.anthropic.com/news/anthropic-cyber-mission ("Published Oct 8, 2026"), exact. The cut removes "As part of Project Glasswing, partners uncovered many vulnerabilities, but"; no change in meaning. |
| Anthropic on timing | "Our forecast is that in two years, AI will favor defense ... But in the near term, that may not be true." | Verified today on the same page, exact. The cut removes ": it will be easier to catch bugs before they ship, write fundamentally secure software from scratch, and actively defend systems with models." No change in meaning. |
| Hopeful version | "... if we get it right, there is a real opportunity to create a fundamentally more secure internet and world than we had before the advent of AI-powered cyber capabilities." | Matches post 5. Flag present. See minor finding M6 on the cut. |
| Hopeful version | "a moment of danger" (CNBC, May 5, 2026) | The 3 words with the article "a" appear in the CNBC sentence in the research report ("This is about a moment of danger where..."). Flag present. |
| Reasons for caution | "vulnerability patch wave" (NCSC, May 1, 2026) | Consistent with research_protective_guidance, line 32. Flag present. |
| Reasons for caution | "We found no statement from Amodei that patching fails." | Consistent with the research report. A TechCrunch-reported quote ("There are only so many bugs to find") points the same way. |
| Transition | "Sam Altman leads OpenAI. Dario Amodei leads Anthropic." | Correct. |

The slide "Anthropic on timing" attributes the 3 statements to the company and not to Amodei. That is correct: none of the 3 is signed by him.

## Substantive findings

### S1. "Main points": the "years" claim is supported for Amodei and not for Altman
- Slide: "Main points" (tex line 139). The claim returns in Section 3.
- Current text: "The heads of OpenAI and Anthropic say that the fixing will take years."
- Problem: Amodei wrote "will be the work of months and years" (post 4). That supports the sentence for him, with a [verify] flag on the source. No Altman statement in the research report gives a duration. His claim is different and stronger: he no longer thinks that patching all the bugs is possible, and he wants a different defense model. The slide "Reasons for caution" already separates the two men ("We found no statement from Amodei that patching fails"). The main point merges them.
- Proposed text: "The head of OpenAI says that we cannot patch every flaw. The head of Anthropic says that the fixing will take years."
- Evidence: research_altman_quotes, quotes A1 to A5 (no duration); research_amodei_mythos, section 1.1, post 4.
- Confidence: high.

### S2. "Reasons for caution": an unverified claim about Altman has no source and no [verify] flag
- Current text: "Altman did not say who builds the ``defense shield''"
- Problem: this is a claim about what a 48-minute interview does not contain. No one in this project watched the video. The research report gives it as a paraphrase of 1 outlet (Gear Live), seen only in a search summary.
- Proposed text: "One outlet noted that Altman did not say who builds the ``defense shield'' \srccite{(Gear Live)} \vfy"
- Evidence: research_altman_quotes, "What critics said," item 3.
- Confidence: high.

### S3. "Reasons for caution": the "arms-dealer dynamic" criticism was about OpenAI, and the slide attaches it to both men
- Current text: "Both men sell the models, and both sell the defense. One outlet reported the criticism of an ``arms-dealer dynamic'' \srccite{(Security Boulevard)} \vfy"
- Problem: the research report says that observers applied the phrase to OpenAI alone (OpenAI as "both the source of high-capability vulnerability discovery and the provider of automated defence"). After "Both men," the listener hears a criticism of both. Also, the first sentence has no source. The research supports it in part: Anthropic sells Claude Security and OpenAI sells Codex Security (research_ai_cyber_evidence, lines 124 and 325), but no slide or source note says so.
- Proposed text: "Both companies sell the models, and both sell defensive products. One outlet reported the criticism that OpenAI's position ``mirrors an arms-dealer dynamic'' \srccite{(Security Boulevard)} \vfy"
- Evidence: research_altman_quotes, "What critics said," item 2. The same report (last line) notes that the Security Boulevard piece may be aggregator text; the flag should stay.
- Confidence: medium (the phrase itself is unverified).

### S4. "Takeaways: Altman and Amodei": bullet 1 gives Altman's view to both men
- Current text: "The builders of the models expect more flaws than anyone can patch, for now."
- Problem: "more flaws than anyone can patch" is close to Altman's statement. It is not a statement by Amodei. The slide before it says "We found no statement from Amodei that patching fails." Anthropic's company statement is about speed: "Now it's limited by how quickly we can verify, disclose, and patch" (May 22, 2026). Also, "for now" has no support in the Altman quotes; he proposed to change the defense model.
- Proposed text: "Altman expects more flaws than anyone can patch. Anthropic says that finding now outpaces fixing, and that the fixing will take years."
- Evidence: research_altman_quotes A1, A2; research_amodei_mythos 1.1 (post 4), 2.1, 2.3.
- Confidence: medium.

## Minor findings

### M1. "Takeaways: Altman and Amodei": "about 2 years" reads the forecast too precisely
- Current text: "``The meantime'' is about 2 years, by Anthropic's own forecast."
- Problem: the forecast says that in two years AI "will favor defense." It does not say that the fixing ends then. The same page says "This will take years" and, for operational technology, "in some rare cases, this might take decades" (verified today on /news/anthropic-cyber-mission). The forecast dates from October 8, 2026, so 2 years means about October 2028.
- Proposed text: "``The meantime'' is at least 2 years: Anthropic forecasts that AI will favor defense by about October 2028."
- Confidence: medium.

### M2. "Reasons for caution": "takes years" against "months and years"
- Current text: "He says that patching takes years"
- Proposed text: "He says that patching will take ``months and years''"
- Evidence: post 4. The flag on the slide "Amodei, April 7, 2026" covers it.
- Confidence: high.

### M3. "Altman's remedy": a second wording exists and the slide does not say so
- Current text: quote in the Yahoo Tech wording, with no note.
- Problem: the research report lists a wording with hesitations ("to sort of using the same technology for sort of a new kind of defense shield") and calls it closest to speech. The slide "Altman at Stanford" notes its variant; this slide does not. The meaning is the same.
- Proposed text: add under the attribution, in the same small type as on the previous slide: "Another report prints ``sort of'' twice in this sentence. \vfy"
- Evidence: research_altman_quotes A2; source_notes.tex line 94 already says "2 wordings exist for each."
- Confidence: medium.

### M4. "Altman at Stanford": the Gizmodo note has no [verify] flag
- Current text: "Gizmodo prints ``gonna'' in place of ``going to.''"
- Proposed text: "Gizmodo prints ``gonna'' in place of ``going to.'' \vfy"
- Evidence: the Gizmodo page was not opened (research_altman_quotes, top section). The Gizmodo URL itself contains "were-gonna-be-able-to-just-patch-all-the-bugs," which supports the note.
- Confidence: medium.

### M5. "Reasons for caution": "Forbes called"
- Current text: "Forbes called his April warning ``overblown''"
- Problem: the word comes from a headline ("Why Sam Altman's Warning About A Big Cyberattack In 2026 Is Overblown"), and the URL path (forbes.com/sites/timkeary/) is the form of a contributor page. I could not open the page to confirm the author's status.
- Proposed text: "A Forbes article called his April warning ``overblown''"
- Confidence: low.

### M6. "Hopeful version": the cut removes the warning half of the sentence
- Current text: "\ldots if we get it right, there is a real opportunity ..."
- Full sentence: "The dangers of getting this wrong are obvious, but if we get it right, there is a real opportunity ..."
- Assessment: the condition "if we get it right" stays, and the slide title says "Hopeful version," so the cut does not mislead. Alyssa could say the first half aloud. No change required.
- Confidence: high.

### M7. "Altman's remedy": "In April, Axios asked him"
- Current text: "In April, Axios asked him whether a major cyberattack was possible this year"
- Problem: April 6 is the publication date. The interview date is not in the research report.
- Proposed text: "In an Axios interview published on April 6, he was asked whether a major cyberattack was possible this year"; the citation "(Axios, Apr 6, 2026)" can then be dropped.
- Confidence: low.

## Reasoning on the framing question

The assignment asked whether "The heads of OpenAI and Anthropic say that the fixing will take years" holds for each man separately.

- Amodei: yes, with a flag. "patching and securing the world's software infrastructure will be the work of months and years" (X, April 7, 2026; text from the search index). Anthropic's company pages say "might take years" (April 7) and "This will take years" (October 8); both are verified, but they are company voice.
- Altman: no. No quote in the research report contains a duration. His statement is that patching all the bugs will not be possible. Finding S1 gives a sentence that keeps the two positions apart.
