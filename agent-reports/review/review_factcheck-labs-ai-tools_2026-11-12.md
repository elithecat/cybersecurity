language model claude-fable-5-2, prompt version v1, role: factcheck-labs-ai-tools

# Fact check: "Lab data", "AI agents", "Coding agents", "First hour", final "Takeaways"

Reviewer 1 of 25. Date: 2026-11-12. I edited no file except this report. I did not commit or push.

Abbreviations for evidence: PG = agent-reports/research/research_protective_guidance_2026-11-12.md; UH = research_university_hacks_2026-11-12.md; MH = research_major_hacks_2026_2026-11-12.md. Line numbers of the slide source refer to cybersecurity_2026_briefing.tex.

## What I checked

- Slide source lines 707 to 765, the matching rows of source_notes.tex (lines 73, 100, 118), and the checklist lines 63 to 73.
- Each claim against PG (sections 5, 6, 8), UH (entry 19 and the entry-method count, lines 410 to 432), and MH (entry 8).
- https://www.anthropic.com/research/prompt-injection-defenses (downloaded today, HTTP 200).
- https://code.claude.com/docs/en/security.md, sandboxing.md, devcontainer.md (downloaded today, HTTP 200).
- The repository: the GitHub API (api.github.com/repos/elithecat/claude_resources), `git ls-remote`, `git ls-tree origin/main`, and the local folder /home/user/Claude_Resources/claude-code-docker-setup (README.md, SECURITY.md).

## What I could not check

- SecurityWeek, BleepingComputer, NCSC, CISA, and NSA pages (blocked; the slides already carry "[verify]" for these).
- Whether SecurityWeek itself prints the number 87,493. UH line 232 gives the number without naming which of 5 sources prints it.
- Whether BleepingComputer itself prints "about 170" packages. MH line 109 attributes the counts to security firms (169 + 2; 172; "over 170" from Tenable). The BleepingComputer URL in MH line 112 is the article on OpenAI's confirmation.
- Any first-hour checklist from a university. PG line 200 says that the order of steps is the research agent's own synthesis.

## Claims that hold

- AI agents, bullet 2. The Anthropic page is dated "Nov 24, 2025". It contains "A 1% attack success rate—while a significant improvement—still represents meaningful risk. No browser agent is immune to prompt injection". The test used an internal attacker "given 100 attempts per environment". The slide's quotation "No browser agent is immune" is an exact part of the sentence. "About 1%" agrees with the page's own words (PG line 141 reads 1.4% for Claude Opus 4.5 from the chart; the chart is an image and I could not read the number from the page text).
- Coding agents, bullet 1, advice. code.claude.com/docs/en/security: "For additional isolation, run the whole Claude Code (local mode) process inside the sandbox runtime or a dev container". code.claude.com/docs/en/sandboxing: by default the built-in sandbox still lets commands read "Most of the machine, including credential files such as ~/.ssh and ~/.aws/credentials". These support "in a container, not in your own laptop account".
- Coding agents, bullet 1, repository. The repository is public (GitHub API: full_name "elithecat/Claude_Resources", private false, default branch main). The folder claude-code-docker-setup is on origin/main (36 entries through the API; 40 tracked files locally). GitHub ignores letter case in the owner and repository name, so the lowercase address on the slide opens. The folder's README says: "scripts that run Claude Code inside a Docker container on your computer"; the container gets a copy of 1 project folder and not the other files on the computer. The slide's description ("One setup" for running a coding agent in a container) is correct.
- Coding agents, bullet 2. MH entry 8: first activity April 29, main wave May 11, later waves May 19 and June 1, so "spring 2026" holds. "About 170" agrees with all 3 counts. "OpenAI confirmed that employee devices were compromised" (MH line 108).
- Lab data, bullet 1. UH line 232: about 1.2 million, of which 87,493 are confirmed study participants.
- Lab data, bullets 2 to 5. They match PG section 5, items 1, 4, 5, 6. PG labels them general practice with no fetched source; the slide attributes them to no one, which is correct.
- First hour, bullets 1 and 3. They match PG lines 203 and 204.
- Takeaways 3. It matches the titles of slides A1 to A5.
- source_notes.tex line 73 (Anthropic quotes, checked) and line 100 (unchecked claims of these slides) are correct.

## Findings

### 1. Takeaways (final slide), point 2. Substantive. Confidence: high.

- Current text: "Most break-ins at universities still start with a password or a person."
- Problem: "Most" means more than half. The 2 sources of the deck both give exactly half, and both are narrower than "break-ins at universities". Sophos (slide "Entry methods in higher education"): 27% + 23% = 50% of 95 higher-education organizations hit by ransomware. UH lines 429 to 432: "Of the 14 entries where a method was stated, 7 began with a person or a login", and "Any claim about 'the most common method' from news reports alone is weak." In 13 of 27 incidents the method is not public.
- Proposed text: "About half of the ransomware attacks on universities still start with a stolen login or a phishing email."
- The same sentence is on the slide "Main points" (line 141): "Most break-ins at universities still start with a password or a person. We can fix those this week." Proposed text there: "About half of the ransomware attacks on universities still start with a stolen login or a phishing email. We can fix those this week."
- Evidence: slide source lines 237 to 241; UH lines 429 to 432.

### 2. Takeaways (final slide), point 1. Substantive. Confidence: high for the hedge, medium for "builders".

- Current text: "AI models find software flaws faster than people fix them, and the builders of the models say that the fixing will take years."
- Problem: the only statement about years in the deck and in the research reports is Anthropic's: "The work of defending the world's cyber infrastructure might take years" (slide "Anthropic on timing", Apr 7, 2026). Anthropic says "might", not "will". The Altman report (research_altman_quotes) has no statement by Altman about years; a search of that file for "years" returns nothing. "The builders" (plural) therefore assigns Anthropic's statement to OpenAI too.
- Proposed text: "AI models find software flaws faster than people fix them, and Anthropic says that the fixing might take years."
- The slide "Main points", point 2 (line 139) has the same problem: "The heads of OpenAI and Anthropic say that the fixing will take years." Proposed text there: "Anthropic says that the fixing might take years. The head of OpenAI says that we cannot patch all the flaws."
- Evidence: slide source lines 447 and 408; research_altman_quotes_2026-11-12.md.

### 3. AI agents, bullet 5. Minor. Confidence: medium.

- Current text: "CISA and NSA: use agents for low-risk tasks without sensitive data"
- Problem: PG line 139 reports the guide as "use agentic AI only for low-risk, non-sensitive tasks". Without "only", the slide reads as an encouragement and not as a limit.
- Proposed text: "CISA and NSA: use agents only for low-risk tasks without sensitive data"
- Evidence: PG line 139 (label: primary snippet; the page itself is blocked).

### 4. Coding agents, bullet 3. Minor. Confidence: medium.

- Current text: "CISA: wait 7 days before you install a new release of a package"
- Problem: PG line 147 reports that the alert of April 20, 2026 concerns npm (the Axios compromise) and names 2 npm settings, `ignore-scripts=true` and `min-release-age=7`. The slide presents the advice as general. The audience mostly uses R and Python, and the reports give no CISA statement about CRAN or PyPI.
- Proposed text: "CISA, after an attack on an npm package: install only releases that are at least 7 days old"
- Evidence: PG line 147.

### 5. Coding agents, bullet 2, source label. Minor. Confidence: low.

- Current text: "about 170 open-source packages and reached OpenAI employees' devices (BleepingComputer)"
- Problem: MH line 109 attributes the package counts to security firms (Tenable: "over 170 packages"), and the BleepingComputer article in MH line 112 is the one about OpenAI. I could not open either page.
- Proposed text: "(Tenable; BleepingComputer)", or keep the label and confirm at the "[verify]" step that BleepingComputer prints the count.
- Evidence: MH lines 108 to 112.

### 6. First hour, bullet 1. Minor. Confidence: medium.

- Current text: "Disconnect the device from the network. Do not erase it"
- Problem: PG line 203 reads "do not wipe it or switch it off unless IT says so". The slide drops the second half. The checklist (line 72) has the same shortened text.
- Proposed text: "Disconnect the device from the network. Do not erase it or turn it off"
- Evidence: PG line 203 (the research agent's synthesis; the CISA basis is a search excerpt). The blue bracket on the slide already asks Alyssa to confirm the steps with Brown OIT.

### 7. First hour, bullets 2 and 4. Minor. Confidence: low.

- Current text: "Call the IT security office from another phone" and "Tell your lab and your co-investigators to distrust recent messages from your account"
- Problem: neither "from another phone" nor the step about co-investigators appears in the research reports (PG lines 202 to 208). PG says "Call the security office on the saved number." Both steps are sensible, and both have no source. PG line 206 has a step that fits this audience and that the slide omits: "If restricted or human-subjects data may be involved, say so in the first call."
- Proposed text for bullet 2: "Call the IT security office from a device that you trust: [number]. Say whether study data is involved". Keep bullet 4, and include it in the list that Brown OIT confirms.
- Evidence: PG lines 200 to 208.

### 8. Lab data, bullet 1. Minor. Confidence: medium.

- Current text: "University of Hawaii Cancer Center: about 1.2 million people, including 87,493 study participants"
- Problem: the bullet does not say what happened, and the next bullet (university storage) is not the lesson of this case. UH lines 228 to 233 and 446: ransomware hit research servers of the university, and most of the 1.2 million people were in recruitment lists from the 1990s that used Social Security numbers. "No source states what researchers should have done." The case supports bullet 4 (delete data), not bullet 2.
- Proposed text: "University of Hawaii Cancer Center: ransomware on the servers of 1 study exposed about 1.2 million people, most of them in lists from the 1990s. 87,493 were study participants", and move "Delete data that the study no longer needs" to the second position.
- Evidence: UH lines 227 to 233, 407, 446.

## Note outside my assignment

The local copy of the public repository (/home/user/Claude_Resources, branch claude/great-einstein-mu9gu9) holds 2 commits that are not on GitHub (91f9b68 and 0d4a4cb). They add research reports of this briefing (5 files, 1,503 lines). The repository elithecat/Claude_Resources is public. If someone pushes this branch, the draft research becomes public. The user's request names the private repository (setup) as the place for commits.

## Count

2 substantive findings, 6 minor findings.
