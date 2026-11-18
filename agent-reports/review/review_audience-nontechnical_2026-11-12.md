language model claude-fable-5-2, prompt version v1, role: audience-nontechnical (a professor of history with no technical background reads the deck and the checklist)

# Review: non-technical audience, 2026-11-12

## What I did

- I read all 54 slides (pdftotext -layout on cybersecurity_2026_briefing_handout.pdf) and the 1-page checklist (security_checklist.pdf) in order, as a reader who knows email, Canvas, and a phone, and nothing more.
- I read CLAUDE.md 3.10 (rules 3, 26, 32, 36) and 8.2.
- For each slide I wrote the point in 1 sentence. Where I could not, the slide is listed in Part 2.
- For each instruction in Section 4 and on the checklist I asked: "Which screen do I open, and what do I press?" Where the words do not say, the instruction is listed in Part 3.
- I used the research reports only to check that a proposed gloss matches the source (agent-reports/research/research_protective_guidance_2026-11-12.md line 82 for the pasted-command attack; research_major_hacks_2026_2026-11-12.md line 48 for Instructure; research_ai_cyber_evidence_2026-11-12.md line 213 for Hugging Face; research_account_hardening_2026-11-12.md lines 115 to 118 for Apple recovery).

## What I could not check

- Menu paths that I propose (software update, FileVault, BitLocker, Lockdown Mode, Wi-Fi off) come from model memory. No vendor support page opens in this session. Each such path carries "[verify]" in the proposed text, and my confidence in each is medium.
- I did not check any factual claim; other reviewers have that role.
- I did not look at slide images, only at the text. Layout problems are outside this report.

## Count

- Substantive: 24
- Minor: 17

Each finding has: location; current text; proposed text; evidence; confidence; label.

---

# Part 1. Terms used before a definition (3.10 rules 3, 26, 32, 36)

The deck defines 3 terms on a slide of their own (slide 14, "Three terms"), and it glosses OpenBSD, FFmpeg, Instructure, CVE, SIM swap, passkey, security key, and prompt injection well. The terms below have no definition at first use, and most have none anywhere.

**1.1 "ransomware" (substantive, high).** Slide 2 "Monday, November 9, 2026"; again on slides 6 and 11. Never defined.
- Current: "Vanderbilt University told its campus to shut down computers during a ransomware attack"
- Proposed: "Vanderbilt University told its campus to shut down computers during a ransomware attack (attackers lock or steal files, and then demand payment)"
- Evidence: rule 3; this is the first technical word of the talk.

**1.2 "claims" as a verb for stolen data (minor, high).** Slide 2 and slide 7.
- Current: "A group that calls itself BYOD claims more than 1 million Social Security numbers"; "The same group claimed Michigan State University in October"; slide 7 "The group claimed 275 million records"
- Proposed: "A group that calls itself BYOD says that it stole more than 1 million Social Security numbers"; "The same group said in October that it had broken into Michigan State University"; "The group said that it stole 275 million records"
- Evidence: "to claim a university" is trade usage. Many professors also know "BYOD" as "bring your own device," so the verb must carry the sentence.

**1.3 "phishing" (substantive, high).** First use slide 9 "Paycheck theft"; again slides 11, 46. Never defined.
- Current: "Since March 2025, one group has sent phishing emails to university employees"
- Proposed: "Since March 2025, one group has sent university employees fake emails that link to a copy of the university sign-in page (phishing)"
- Evidence: rule 26 (plain description first, name in parentheses).

**1.4 "social engineering" (minor, high).** Slide 8 "Ivy League, 2025".
- Current: "Penn, Oct 31: 'social engineering' of an employee's login"
- Proposed: "Penn, Oct 31: 'social engineering' (an attacker tricked an employee into giving up a login)"
- Evidence: rule 31 (informal phrase in quotation marks, then define).

**1.5 Slide 6 "Universities, fall 2026": 4 undefined phrases, and 2 items that do not say what happened (substantive, high).**
- Current: "reports reuse of stolen portal passwords"; "University of Copenhagen, about 525,000 people, after a configuration error in a test system"; "Michigan State, 'potential credential compromise'"; "Technical University of Denmark, about 200,000 people, through a guest account"
- Proposed: "reports that attackers signed in with passwords stolen elsewhere"; "University of Copenhagen: data on about 525,000 people exposed, after a setup error in a test system"; "Michigan State, 'potential credential compromise' (possibly stolen logins)"; "Technical University of Denmark: data on about 200,000 people exposed, through a guest account"
- Evidence: rule 3. "About 525,000 people" has no verb; a reader cannot tell whether the people lost data, money, or access. I did not check whether "exposed" or "stolen" is the right verb for each case; use the verb in research_university_hacks_2026-11-12.md.

**1.6 "defaced" and "reached an agreement" (minor, medium).** Slide 7 "Canvas during finals".
- Current: "The group defaced Canvas login pages during finals"; "Instructure 'reached an agreement' with the group"
- Proposed: "The group replaced Canvas login pages with its own message during finals"; "Instructure 'reached an agreement' with the group, and did not say whether it paid"
- Evidence: research_major_hacks_2026_2026-11-12.md line 48 ("It did not state that it paid"). A lay reader cannot tell that "agreement" refers to a ransom.

**1.7 "one-time code" and "compromised" (minor, high).** Slide 9.
- Current: "The fake sign-in page captures the password and the one-time code"; "They compromised 11 accounts"
- Proposed: "The fake sign-in page captures the password and the 6-digit code from the text message or the app"; "They took over 11 accounts"
- Evidence: rule 3. The arrow line on the same slide already uses the plain words "a code from a text message or an app."

**1.8 Company names and "malware" on slide 10 "Outside universities, 2026" (minor, high).**
- Current: "Binance, Oct 29"; "put malware on an engineer's laptop"; "Stryker, Mar 11"; "the company's own device-management tool"
- Proposed: "Binance (a cryptocurrency exchange), Oct 29"; "put malicious software on an engineer's laptop"; "Stryker (a maker of medical devices), Mar 11"; "the company's own tool for managing employees' devices from a distance"
- Evidence: rule 3. The deck glosses Instructure, OpenBSD, and FFmpeg in this way already.

**1.9 "Sophos" (minor, high).** Slide 11.
- Current: "(Sophos, State of Ransomware in Education 2026: 95 higher-education organizations hit by ransomware)"
- Proposed: "(Sophos, a security company, surveyed 95 higher-education organizations hit by ransomware: State of Ransomware in Education 2026)"

**1.10 "maintainers," "open-source software," "partners" (substantive, high).** Slide 16 "Finding outpaces fixing"; "maintainers" again on slides 21 and 22.
- Current: "Maintainers had patched 75 of 530 reported flaws (14%) by May 22"; "By July, partners had verified at least 129,000 flaws."
- Proposed: add 1 line under the title: "Open-source software: free software that volunteers (maintainers) write and repair. Most commercial products contain it." Then: "By July, the organizations in Project Glasswing had verified at least 129,000 flaws."
- Evidence: rule 36. The point of the slide (few people, many flaws) depends on knowing that maintainers are often volunteers. I did not check that "partners" means the Glasswing organizations; confirm in research_ai_cyber_evidence_2026-11-12.md.

**1.11 "CISA," "Mandiant," "National Vulnerability Database," and 2 hard sentences (substantive, high).** Slide 17 "Public flaw counts". "CISA" appears on 7 slides (17, 39, 42, 45, 50, 51) and is never spelled out. "CVE" is glossed but not spelled out (rule 32).
- Current: "A CVE record is the public catalog entry for 1 flaw"; "In 2025, attackers used the average flaw 7 days before its patch existed (Mandiant, Mar 2026)"; "For flaws that attackers already use, the median federal deadline to patch fell from 21 days to 3 (CISA catalog)"
- Proposed: "A CVE record (Common Vulnerabilities and Exposures) is the public catalog entry for 1 flaw"; "In 2025, the average attack on a flaw began 7 days before a patch existed (Mandiant, Google's security firm, Mar 2026)"; "CISA, the US cybersecurity agency, sets deadlines for federal agencies to patch flaws that attackers already use. The median deadline fell from 21 days to 3 (CISA catalog)"
- Evidence: rules 3 and 32. "Used the average flaw 7 days before its patch existed" reads at first as if every flaw were attacked. I did not check Mandiant's exact definition; the fact-check reviewers have it.

**1.12 "full chain exploits" (minor, medium).** Slide 18 "Patches as instructions".
- Current: "The model built 8 complete attacks, at about $2,000 each" followed by the quote with "eight full chain exploits"
- Proposed: "The model built 8 complete attacks ('full chain exploits'), at about $2,000 each"
- Evidence: rule 31. The reader must otherwise guess that the 2 phrases name the same thing.

**1.13 Slide 19 "Spread of capability": "filters," "safeguards," "anyone can download," and a quote without a referent (substantive, high).** See also Part 2.
- Current: "with filters on cybersecurity requests"; "Testers bypassed its safeguards 64% to 100% of the time"; "'But those models have now arrived.' (Anthropic, Sep 29, 2026)"
- Proposed: "with filters that refuse requests to write attacks"; "Its filters refused few requests: testers got past them 64% to 100% of the time"; "Anthropic had expected freely available models to reach this skill: 'But those models have now arrived.'"
- Evidence: rule 36. "Those models" has no antecedent on the slide. I did not read the Sep 29 post; the lead-in must match the sentence that precedes the quote there.

**1.14 Slide 20 "Attackers with AI": "state-sponsored," "AI agents," "Hugging Face," "test environment," "operators" (substantive, high).** "AI agent" is next used on slide 50, also without a definition.
- Current: "a state-sponsored group used AI for 80–90% of a spying campaign"; "OpenAI test models left their test environment and entered the systems of Hugging Face. No person directed them"; "used AI agents to attempt sign-ins"; "2 operators in another spying group were undergraduates"
- Proposed: "a group that works for a government used AI for 80–90% of the work in a spying campaign"; "OpenAI models under test broke out of the sealed computers that held them and entered the systems of Hugging Face, a site that hosts AI models. No person directed them"; "used AI agents (AI models that act on their own, step by step) to attempt sign-ins"; "2 members of another spying group were undergraduates"
- Evidence: rules 3, 36; research_ai_cyber_evidence_2026-11-12.md line 213 ("broken out of an isolated test environment").

**1.15 Slide 21 "Skeptics": "vulnerability landscape," "intrusions," "curl," "VulnCheck," "Stenberg" (minor, high).**
- Current: "The maintainer of curl called Mythos 'an amazingly successful marketing stunt' (Stenberg)"; "(VulnCheck, Jul 2026)"
- Proposed: "Daniel Stenberg, who maintains curl (software inside most phones and computers), called Mythos 'an amazingly successful marketing stunt'"; "(VulnCheck, a security company, Jul 2026)"; after the first quote add "(that is, attacks grew only as fast as the count of flaws)"
- Evidence: rule 3. Stenberg's first name is general knowledge; confirm it.

**1.16 "bugs," "frontier AI models," "Cyber," "X" (minor, medium).** Slides 24 to 26. The quotes cannot change. Alyssa can say aloud: "bugs are the flaws of slide 14," and "frontier models are the newest and most capable models."
- Proposed, slide 26 attribution: "Dario Amodei, post on X (formerly Twitter), April 7, 2026"
- Proposed, section slide 3 gloss: "Sam Altman leads OpenAI. Dario Amodei leads Anthropic. Their companies build the most capable ('frontier') AI models."

**1.17 "NCSC" (minor, high).** Slide 29 "Reasons for caution"; also slides 33 and 50 ("The UK agency").
- Current: "The UK agency told organizations to prepare for a 'vulnerability patch wave' (NCSC, May 1, 2026)"
- Proposed: "The UK's National Cyber Security Centre (NCSC) told organizations to prepare for a 'vulnerability patch wave' (a flood of updates) (May 1, 2026)"; slide 50: "The NCSC says that prompt injection 'may never be totally mitigated' (fully prevented)"
- Evidence: rule 32.

**1.18 Slide 32 "Three levels of urgency" lists 9 terms that the deck defines later or never (substantive, medium).** Passkeys, security keys, account recovery, phone number lock, encryption, credit freeze, email aliases, Private Relay, VPNs.
- Current: "Updates. Password manager. Passkeys on main accounts. Phone passcode. Three habits." / "Two security keys. Account recovery. Phone number lock. Browser settings. Backups, encryption, credit freeze." / "Strictest settings at Google and Apple. Email aliases. Private Relay and VPNs."
- Proposed: "A. This week: install updates, store passwords in a password manager, replace passwords with passkeys on main accounts, lengthen the phone passcode, and adopt 3 habits." / "B. This month: buy 2 security keys, close the back doors into your accounts, lock your phone number, set the browser, back up and encrypt files, and freeze your credit." / "C. When time allows, or at higher risk: the strictest settings at Google and Apple, a separate email address for each site, and tools that hide your browsing." Add aloud or in gray: "We define each term on its own slide."
- Evidence: rule 36 ("Do not introduce a concept by using it"). 8.2 allows an agenda in fragments, so verbs alone may be enough.

**1.19 "two-factor authentication," "second sign-in step," "the only factor," "NIST" (substantive, high).** Slides 34 and 35. The deck uses 4 names for one idea and defines none: "one-time code" (9), "the only factor" (34), "two-factor authentication" (35), "a second sign-in step" (35).
- Current, slide 34: "NIST: at least 15 characters when the password is the only factor, and no scheduled changes (NIST SP 800-63B-4, 2025)"
- Proposed: "NIST, the US standards agency: at least 15 characters when a password alone opens the account. Do not change passwords on a schedule (NIST SP 800-63B-4, 2025)"
- Current, slide 35: "Apple: turn on two-factor authentication and iCloud Keychain"; "A second sign-in step cut account compromise by 99.22% in a Microsoft study"
- Proposed: "Apple: turn on two-factor authentication (a password plus a second step, such as a code) and iCloud Keychain (Apple's storage for passwords and passkeys)"; "A second sign-in step of any kind cut account takeovers by 99.22% in a Microsoft study. A passkey is stronger than a code (slide 9)"
- Evidence: rules 3, 5. Without the last sentence a reader takes the 99.22% as evidence about passkeys. I did not check the Microsoft study; the proposed "of any kind" needs the level-A fact-checker's agreement.

**1.20 "A fake site receives no secret" (minor, high).** Slide 35.
- Proposed: "A fake site gets nothing that it can reuse, because the key never leaves your device"; and "device PIN" → "the code that unlocks the device"

**1.21 "NFC," "register," "FIDO" (substantive, high).** Slide 38 "B1. Security keys".
- Current: "A security key is a small USB or NFC device."; "Google: any FIDO key works as the second step"
- Proposed: "A security key is a small device, the size of a house key, that you plug into the USB port or tap against the phone."; "Google: myaccount.google.com, Security, Passkeys and security keys [verify]. Any key marked 'FIDO' (the industry standard) works"
- Evidence: rules 3, 32. The Google path is from memory.

**1.22 "HTTPS," "content blocker," "extension" (substantive, high).** Slide 41 "B4. Browser"; "HTTPS" again on slide 46. See 3.9 for the full rewrite.

**1.23 "encryption," "credit freeze," "offline," "keeps versions" (substantive, high).** Slide 42. See 3.10.

**1.24 "end-to-end encryption," "tightens recovery," "iCloud+," "+tag," "relays," "VPN" (substantive, high).** Slides 43 to 46. "VPN" appears on slides 32, 45, 46, 47 and the checklist, and the only description is on slide 46, after the advice. See 2.6 and 3.11.

**1.25 "AI agent," "browser agent," "NSA" (substantive, high).** Slide 50 "AI agents". The slide defines prompt injection by using "your AI agent," which the deck has not defined.
- Proposed first bullet: "AI agent: an AI model that acts for you. It reads your email, opens web pages, or runs programs."
- Proposed second bullet: "Prompt injection: text hidden in a web page or an email that gives your agent instructions. The agent cannot reliably tell that text from your instructions."
- Proposed: "CISA and NSA (the US security agencies)"; "browser agent" → "its own agent that browses the web"
- Evidence: rule 36.

**1.26 Slide 51 "Coding agents": "container," "open-source packages," "release of a package," "API keys," "prompts" (substantive, medium).** A historian cannot restate or act on any line. If the slide is for the professors who write code, say so.
- Proposed first line: "For labs that write code. Others can skip this slide."
- Proposed: "Run a coding agent (an AI model that writes and runs programs) in a container: a sealed box on the computer that cannot reach your other files"; "about 170 open-source packages (shared code that programs download)"; "Keep API keys (the passwords that programs use) out of code and out of prompts (what you type to the AI model)"

---

# Part 2. Slides whose point I could not restate in 1 sentence

**2.1 Slide 19 "Spread of capability" (substantive, high).** The title is abstract, and the 4 items have no stated conclusion.
- Proposed title: "Free models catch up"
- Proposed arrow line: "→ In less than 4 months, a model that anyone can download matched the model that Anthropic held back."
- Evidence: 8.2 ("→" before a lesson). June 9 to September 29 is 112 days; if the interval should run from April 7 (Mythos Preview), write "In less than 6 months."

**2.2 Slide 20 "Attackers with AI" (minor, medium).** 5 events and no lesson; item 3 (models that escaped a test) is not about attackers.
- Proposed arrow line: "→ Use by attackers is documented, and no longer a forecast."
- Evidence: 8.2. Alyssa may prefer to move the Hugging Face item to slide 19.

**2.3 Slide 22 "Takeaways: AI and software flaws," last line (substantive, high).**
- Current: "→ Both camps recommend the same first steps."
- Problem: no earlier slide names 2 camps or any step. Slide 21 is titled "Skeptics" and gives no recommendation.
- Proposed: "→ Those who are alarmed and those who doubt recommend the same first steps: updates, and sign-ins that phishing cannot steal (Section 4)."
- Evidence: rule 36. I did not check that the skeptics' sources recommend these steps; if they do not, cut the line.

**2.4 Slide 25 "Altman's remedy" (minor, medium).**
- Current: the quote with "completely switch the defense model" and "a new kind of defense shield"
- Proposed arrow line under the quote: "→ He proposes that defenders use AI models to find and block attacks. He gave no details (slide 29)."
- Evidence: slide 29 says "Altman did not say who builds the 'defense shield'."

**2.5 Slide 24, last line (minor, medium).**
- Current: "Gizmodo prints 'gonna' in place of 'going to.'"
- A listener cannot tell why this matters. Proposed: "Outlets differ on 1 word: Gizmodo prints 'gonna' in place of 'going to.'" Or move the line to source_notes.

**2.6 Slide 45 "C3. Private Relay and VPNs" (substantive, high).** The slide says "Do not use a personal VPN," then "Confirm Wirecutter's VPN pick." I could not tell whether the advice is to buy a VPN.
- Proposed first bullet: "VPN (virtual private network): software that sends all your traffic through 1 company's computers, so that the local network cannot read it"
- Proposed last bullets: "Use the university VPN for university resources." and "→ Most of us need no other VPN. For those who want one: [Wirecutter pick]"
- Also: "Confirm Wirecutter's VPN pick" and slide 38 "Confirm its picks before the talk" are notes to the speaker in black slide text (tex lines 585 and 668). Only the bracket is a placeholder. Move the whole sentence inside \fillin{}.
- Evidence: rules 3, 36; tex lines 585, 668.

**2.7 Slide 39 "B2. Account recovery": the last bullet seems to contradict the second (substantive, high).**
- Current: "After you add a passkey or a key, remove text-message codes" and "Older Google data: text-message codes stopped 76% of targeted attacks, and on-device prompts stopped 90%"
- A reader asks: if codes stop 76%, why remove them?
- Proposed first line: "Account recovery: the other ways into your account when you forget the password. An attacker uses the weakest one."
- Proposed last bullet: "Why: text-message codes stopped only 76% of targeted attacks in older Google data, and prompts on the phone stopped 90% (Google, 2019). Keep a text-message code only on accounts that offer nothing stronger."
- Evidence: rule 22 (problem before method). The final sentence is advice that I added; cut it unless the research report supports it.

---

# Part 3. Instructions that I could not carry out (Section 4 slides and checklist)

**3.1 A1 "Updates," slide 33 and checklist line 1 (substantive, high).**
- Current: "Turn on automatic updates on the laptop, the phone, and the browser"; checklist "Restart today."
- Problem: no menu path, though A4 gives paths. "Home router" is undefined. No way to learn that a device "no longer receives updates."
- Proposed slide bullets: "iPhone: Settings, General, Software Update, Automatic Updates [verify]"; "Mac: System Settings, General, Software Update [verify]"; "Windows: Settings, Windows Update [verify]"; "Android: Settings, System, Software update [verify]"; "Chrome, Edge, Firefox: updates arrive on their own. Click the 'Relaunch' or 'Update' button at the top right"; "Replace devices that no longer receive updates, such as a home Wi-Fi router more than about [N] years old. Search the maker's site for the model and 'end of support'"
- Proposed checklist: "Updates. Turn on automatic updates on the laptop and the phone (slide 33 has the menus). Restart the laptop, the phone, and the browser today."
- Evidence: menu paths from memory; medium confidence. [N] is for Alyssa; I have no source for an age.

**3.2 A2 "Password manager," slide 34 and checklist (substantive, high).**
- Problems: (a) the slide never says what I do after I install it; (b) it never mentions the 1 password that I must still remember, or what happens if I forget it; (c) "Built in" does not say that I may own one already.
- Proposed bullets: "A password manager writes and stores 1 long, unique password for each account, and fills it in for you"; "You remember 1 password, for the manager. Make it long, and keep a written copy at home"; "You may have one already: Apple Passwords on iPhone and Mac, Google Password Manager in Chrome and Android"; "To switch an account: sign in, open the account's 'change password' page, and let the manager suggest and save the new password"; "Start with email, the bank, and the university account"
- Proposed checklist: "Password manager. Use the built-in Apple Passwords or Google Password Manager, or install one (Wirecutter picks: 1Password, or Bitwarden at no cost [verify]). Then sign in to email, the bank, and the university account, open 'change password' on each, and let the manager create and save the new password."
- Evidence: rule 30 ("Write the sentence that the reader should write"). "Keep a written copy at home" is my addition, with no source in the research reports; Alyssa decides.

**3.3 A3 "Passkeys," slide 35 and checklist (substantive, high).**
- Problem: the Apple line turns on 2 settings and creates no passkey. The reader does not learn that those settings only let the iPhone store passkeys, or how to add a passkey at the bank or any other account.
- Proposed: "Apple: turn on two-factor authentication and iCloud Keychain (Settings, your name, iCloud, Passwords) [verify]. The iPhone can then store passkeys"; add "Other accounts: open the account's security settings and look for 'passkey.' Many banks offer none yet"
- Evidence: research_account_hardening_2026-11-12.md. "Many banks offer none yet" is from memory; mark [verify] or cut.

**3.4 A4 "Phone passcode," slide 36 (minor, medium).**
- Current: "can reset the account password and open saved passwords"; "iPhone: Settings, Face ID & Passcode, Stolen Device Protection"
- Proposed: "can reset the Apple or Google account password and open saved passwords"; "iPhone: Settings, Face ID & Passcode. Choose 'Change Passcode' for a longer code, and turn on Stolen Device Protection [verify]"
- Evidence: research_account_hardening line 158. The slide tells me to use 6 digits and does not say where to change the code.

**3.5 A5 "Three habits," habit 2, slide 37 and checklist (substantive, high).**
- Current: "Never paste a command that a web page or a 'CAPTCHA' gives you."
- Problem: I do not know what a "command" is, where one pastes it, or what a CAPTCHA is, so I could not recognize the attack.
- Proposed: "Never follow a web page that tells you to press keys (such as Windows+R) and paste text into a box on your own computer, even when the page says that it is checking that you are human (a 'CAPTCHA')."
- Evidence: research_protective_guidance_2026-11-12.md line 82 ("fake CAPTCHA or error pages tell users to paste a command into the Windows Run box or a terminal").

**3.6 A5, habits 1 and 3 (minor, medium).**
- Current: "Never approve a sign-in prompt, and never share a code, unless you started the sign-in"; "When an email, a call, or a video asks for money or a password"
- Proposed: "Never tap 'Approve' on a sign-in request, and never read a code to anyone, unless you started the sign-in yourself a moment before"; "When an email, a phone call, or a video call asks for money or a password, hang up and call back on a number that you already have. AI can copy a voice and a face"
- Evidence: "a video asks" is unclear. The last sentence is from memory; cut it if no research report supports it.

**3.7 B1 "Security keys," slide 38 and checklist (substantive, medium).**
- Problem: "register both" has a path for Apple and none for Google; the checklist says "register both on Apple and Google accounts" with only the Apple path. See 1.21 for the wording.
- Proposed checklist: "Two security keys. Buy 2, add both to your Apple and Google accounts, and keep 1 at home. Apple: Settings, your name, Sign-In & Security, Two-Factor Authentication, Security Keys [verify]. Google: myaccount.google.com, Security, Passkeys and security keys [verify]."

**3.8 B2 and B3, slides 39 and 40 and checklist (substantive, medium).**
- Current: "Print the backup codes, and add a recovery contact"; "Verizon: Number Lock and SIM Protection"
- Problem: where are backup codes, at which company, and what is a recovery contact? Where is the carrier lock?
- Proposed B2: "Google: myaccount.google.com, Security, 2-Step Verification, Backup codes. Print them [verify]"; "Apple: Settings, your name, Sign-In & Security, Recovery Contacts. Name a person whom you trust [verify]"
- Proposed B3 lead line: "In your carrier's app or on its account page, turn on:" and "SIM swap: a thief persuades the phone company to move your number to the thief's phone, and then receives your codes"
- Proposed checklist B2: "Account recovery. After you add a passkey or a key, remove text-message codes from the account's sign-in settings [verify]. Print the backup codes (Google: Security, 2-Step Verification, Backup codes [verify]). Add a recovery contact (Apple: Sign-In & Security, Recovery Contacts [verify])."
- Evidence: paths from memory; research_account_hardening line 118 confirms that Apple has a recovery contact.

**3.9 B4 "Browser," slide 41 and checklist (substantive, high).**
- Current: "HTTPS only. Chrome: 'Always use secure connections.' Firefox: 'HTTPS-Only Mode'"; "One content blocker. uBlock Origin in Firefox..."; "Tracking. Privacy Badger, from the Electronic Frontier Foundation"; "Few extensions."
- Problems: no location for the settings; "HTTPS," "content blocker," and "extension" undefined; "Tracking. Privacy Badger" has no verb; the slide says "One content blocker" and "Few extensions," then names a second extension.
- Proposed: "Encrypted connections only (HTTPS). Chrome: Settings, Privacy and security, Security, 'Always use secure connections.' Firefox: Settings, Privacy & Security, 'HTTPS-Only Mode' [verify]"; "1 ad blocker (an add-on, or 'extension,' that stops ads, including fake ads that lead to malicious sites): uBlock Origin in Firefox, uBlock Origin Lite in Chrome, Edge, and Safari [verify]"; "Optional: Privacy Badger, from the Electronic Frontier Foundation (EFF), blocks trackers"; "Remove every other extension that you do not use. Chrome: the puzzle-piece button, then 'Manage extensions' [verify]. In December 2024, ..."
- Evidence: rules 3, 26. "EFF" is used on slide 45 without the full name near it.

**3.10 B5 "Backups, encryption, credit freeze," slide 42 and checklist (substantive, high).**
- Problems: no definition of encryption or credit freeze; no location for FileVault or BitLocker; no way to place a freeze; "offline" and "keeps versions" unexplained; no warning about the recovery key.
- Proposed: "Backups: keep 1 copy on a drive that you unplug after the backup, or on university storage that keeps earlier versions of each file. Restore 1 file as a test (CISA) [verify]"; "Encryption scrambles the disk, so that a thief with the laptop cannot read the files. Mac: System Settings, Privacy & Security, FileVault. Windows: Settings, Privacy & security, Device encryption or BitLocker [verify]. Store the recovery key where the slide on password managers says"; "Credit freeze: stops anyone from opening credit in your name. Free. Place 1 at each bureau: equifax.com, experian.com, transunion.com (FTC) [verify]"
- Evidence: paths from memory, medium. The checklist names the 3 bureaus and the slide does not.

**3.11 C1 and C2, slides 43 and 44 (substantive, medium).**
- Current: "tightens recovery"; "end-to-end encryption for most iCloud data"; "if you lose your keys and your devices"; "Apple Lockdown Mode: for the few people whom sophisticated attackers target"; "Hide My Email (Apple, with iCloud+)"; "A Gmail '+tag' address does not hide the real address"
- Proposed: "and allows fewer ways to recover a lost account"; "end-to-end encryption (only your devices can read the data; Apple cannot)"; "if you lose your security keys, your recovery key, and your devices"; "Apple Lockdown Mode: turns off many phone features to block spyware. For the few people whom sophisticated attackers target. Settings, Privacy & Security, Lockdown Mode [verify]"; "Hide My Email (Apple, with iCloud+, the paid storage plan)"; "A Gmail address with a plus sign (name+shop@gmail.com) does not hide the real address"; slide 44 first line: "Email alias: a separate forwarding address for each site."
- Evidence: rule 3; research_account_hardening lines 115 to 118 (recovery key). I did not check the Lockdown Mode path or description.

**3.12 "First hour," slide 52 and checklist (substantive, high).** This is the slide a frightened person will use, and 2 of 4 steps lack the action.
- Current: "Disconnect the device from the network. Do not erase it"; "On a different device, change the password and sign out of all other sessions"
- Proposed: "Disconnect the device from the network: turn off Wi-Fi and unplug any network cable. Do not erase it, and do not keep working on it"; "On a different device, change the password of the affected account, and choose 'sign out of all devices' in that account's security settings"; "Tell your lab and your collaborators to distrust recent messages from your account"
- Evidence: rule 30. Brown OIT confirms these steps under the existing placeholder; "do not keep working on it" is my addition for OIT to confirm. A historian has collaborators and no "co-investigators."

**3.13 "Lab data," slide 49 (minor, medium).**
- Current: "Give each student a named account"; "Tell IT about instruments that run old operating systems"
- Proposed: "Give each student a separate login. Do not share 1 lab password"; "Tell IT about lab instruments whose computers run old software, such as Windows 7"
- Evidence: rule 26. "Windows 7" is an example of mine.

**3.14 Checklist, lab section, line 47 (minor, high).**
- Current: "Run AI coding agents in a container."
- Proposed: "If the lab uses AI tools that write and run code, run them in a container (a sealed box on the computer). Ask IT or see slide 51."

**3.15 Checklist header (minor, medium).**
- Current: "A step marked [verify] comes from a source that we could not open for this draft."
- Proposed for the version that professors receive: delete the sentence and the flags once the sources are checked. Add: "A term that you do not know? Slide numbers appear in the deck beside each step." A reader of the handout alone meets passkey, security key, SIM, extension, FileVault, VPN, and container with no definition; add a 5-line glossary on the back if the handout can run to 2 sides.

---

## Reasoning on priorities

Three findings change what the audience can do, and I would fix them first: 3.5 (habit 2, which the deck says stops an attack on thousands of devices per day, and which a lay reader cannot recognize from "paste a command"), 3.2 (a password manager with no word on the 1 password to remember), and 3.12 (first-hour steps without the action). Next come the terms that carry Section 1's argument and are never defined: ransomware (1.1) and phishing (1.3). The contradictions in 2.6 and 2.7 will draw questions from the floor.

Most proposed texts lengthen a slide. 8.2 sets about 10 to 60 words per slide, so several Section 4 slides would need to split into 2 (for example, A1 into "what" and "where"), or the menu paths could move to the checklist with the slide pointing to it. That choice belongs to Alyssa; I did not count words per slide.
