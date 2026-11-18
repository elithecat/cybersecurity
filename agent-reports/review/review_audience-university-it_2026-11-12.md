language model claude-fable-5-2, prompt version v1, role: audience-university-it (a university chief information security officer reads Section 4, Section 5, and the checklist)

# Review: conflicts with university policy and managed devices

## What I read

- `cybersecurity_2026_briefing.tex`, lines 494 to 775 (Section 4, Section 5, final takeaways).
- `security_checklist.tex`, all lines.
- `source_notes.tex`, the table of local facts (lines 105 to 122).
- `agent-reports/research/research_account_hardening_2026-11-12.md` (line 320) and `research_protective_guidance_2026-11-12.md` (lines 105, 191, 192, 205), for statements about managed accounts and incident steps.
- The existing reviews, searched for "managed", "ask IT", and "OIT", to avoid repeats.

## What I could not check

- Any Brown policy or Brown OIT page. The network blocks brown.edu. I do not know which password manager Brown approves or licenses, whether Brown sign-in accepts passkeys or security keys, whether Brown manages faculty laptops, whether Brown holds FileVault recovery keys, whether Brown allows Google Advanced Protection on Brown Google accounts, how Brown wants phishing reported, or Brown's first-hour steps. Each proposal below therefore carries a blue bracket for the Brown fact. I did not invent one.
- My statements about "common university policy" come from my general knowledge of how university security offices work (managed devices, key escrow, data classification, incident response). They are not from a source in this folder. Alyssa should confirm each one with Brown OIT. I mark this as the reason for "medium" confidence throughout.

## Reasoning in brief

Section 4 addresses the professor as the owner of personal devices and personal accounts. The same professor holds a university account, often a university-owned laptop, and research data under contracts. The slides mix the 2 cases in 6 places (A1, A2, B4, B5, C1, First hour). In each place a professor who follows the slide on a university device or account can break something the security office depends on: the recovery key, the audit trail, the list of approved software, or the evidence after an incident. The repair is 1 general sentence early in Section 4, then a short clause at each of the 6 places. The deck already has 2 good models: "Use the university VPN for university resources" (C3) and "without approval from IT" (AI agents).

Section 4 also never tells the professor to report anything to the security office until the last slide. A security office wants the report more than any other single action.

---

## Substantive findings

### S1. "Three levels of urgency" (tex line 504; checklist line 26): no statement of scope

- Current text (last line of the slide): "We sorted by 2 criteria: how often attackers use the weakness, and how long the step takes. The sort is a judgment."
- Problem: the slide does not say that the steps are for personal devices and personal accounts. Every later conflict follows from this gap.
- Proposed text, added as a final line on the slide: "These steps are for your own devices and your own accounts. On a Brown-owned device or a Brown account, OIT sets most of them. Ask OIT before you change one \fillin{OIT contact}."
- Proposed text for the checklist, at the end of the opening paragraph: "The steps are for your own devices and accounts. On a Brown-owned device or a Brown account, ask OIT before you change a setting: [contact]."
- Evidence: my knowledge of managed-device practice; `research_protective_guidance` line 192 already assumes "Managed, encrypted, auto-updating laptops for the lab." Not checked against Brown policy.
- Confidence: high that the scope is missing; medium on the wording.

### S2. "A2. Password manager" (tex line 540; checklist line 31): the university password goes into a personal product

- Current text: "Start with email, the bank, and the university account". Checklist: "Replace the passwords for email, the bank, and the university account with long, unique passwords."
- Problem: many universities restrict where the institutional password may be stored, and some license one manager for staff. "Google Password Manager" stores the Brown password in a personal Google account that Brown cannot protect or recover. A manager in the browser of a shared lab computer exposes the password to the next user.
- Proposed slide text: "Start with email and the bank. For the Brown password, use \fillin{the password manager that OIT approves or provides}".
- Proposed checklist text: "Replace the passwords for email and the bank with long, unique passwords. Brown account: [manager that OIT approves]."
- Evidence: general practice; not checked for Brown.
- Confidence: medium.

### S3. "A2. Password manager" (line 541) and "Overrated advice" (line 676): "no scheduled changes" reads as permission to ignore a required reset

- Current text: "NIST: at least 15 characters when the password is the only factor, and no scheduled changes"; "Scheduled password changes. NIST says no".
- Problem: a professor will quote this slide when the university requires a reset. The deck's own research says that Brown told Canvas users to reset passwords (`research_university_hacks` line 440). NIST's guidance addresses the organisation that sets the rule; it also requires a change after evidence of compromise. Some universities still require periodic changes for contract or insurance reasons.
- Proposed text, "Overrated advice": "Scheduled password changes with no cause. NIST advises organizations against them \vfy. Still change a password when Brown asks, and at once after a breach".
- Proposed text, A2: "NIST: at least 15 characters when the password is the only factor. Change a password after a breach, not on a schedule".
- Evidence: the slide's own NIST SP 800-63B-4 citation (marked [verify]; I could not open it); `research_university_hacks` line 440.
- Confidence: high that the wording invites the conflict; medium on the NIST detail, which I state from memory.

### S4. "A1. Updates" (line 525; checklist line 30): managed computers and university-owned old devices

- Current text: "Turn on automatic updates on the laptop, the phone, and the browser"; "Replace devices that no longer receive updates, such as an old home router".
- Problem: on a managed computer the university schedules updates, and the common failure is that the professor postpones them. An old university-owned computer holds data and must go back to IT for erasure, not to a closet or a recycler.
- Proposed added bullet: "On a Brown-owned computer, OIT sends the updates. Do not postpone them \fillin{confirm with OIT}".
- Proposed change to the last bullet: "Replace your own devices that no longer receive updates, such as an old home router. Return an old Brown-owned device to OIT, which erases it".
- Evidence: general practice; not checked for Brown.
- Confidence: medium.

### S5. "B4. Browser" (lines 620 to 623; checklist line 43): extensions on managed machines

- Current text: "One content blocker. uBlock Origin in Firefox. uBlock Origin Lite in Chrome, Edge, and Safari"; "Tracking. Privacy Badger, from the Electronic Frontier Foundation"; "Few extensions."
- Problems: (a) A content blocker can read every page, including the student-record, payroll, and health-record systems. Many security offices allow extensions only from a list, and a managed browser may block installs. (b) The slide says "One content blocker" and then recommends a second extension (Privacy Badger) 2 bullets later, against its own last bullet.
- Proposed added clause on the content-blocker bullet: "On a Brown-owned computer, ask OIT first \fillin{OIT's approved extensions}".
- Proposed change for (b): drop the Privacy Badger bullet, or write "uBlock Origin already blocks most trackers. A second extension is not needed".
- Proposed checklist text: "Install 1 content blocker on your own computer: ... On a Brown-owned computer, ask OIT first."
- Evidence: the slide's own December 2024 figure (35 extensions, 2.6 million users) is the reason offices limit extensions. I did not check the claim that uBlock Origin covers what Privacy Badger covers; Alyssa should confirm it or simply drop the bullet.
- Confidence: medium.

### S6. "B5. Backups, encryption, credit freeze" (line 632; checklist line 45): FileVault and BitLocker on a managed computer

- Current text: "Encryption: turn on FileVault (Mac) or BitLocker (Windows)". Checklist: "Turn on FileVault (Mac) or BitLocker (Windows)."
- Problem: on a managed computer the university turns on encryption and holds the recovery key. A professor who turns it on alone holds the only key. If the professor forgets the password, the data are gone and IT cannot help. On a personal computer the slide also omits the recovery key.
- Proposed slide text: "Encryption: on your own computer, turn on FileVault (Mac) or BitLocker (Windows), and save the recovery key in the password manager. On a Brown-owned computer, OIT turns it on and keeps the key \fillin{confirm with OIT}".
- Proposed checklist text: the same 2 sentences, with "[confirm with OIT]".
- Evidence: general practice of key escrow; not checked for Brown. BitLocker is not in every Windows edition (from memory; not checked).
- Confidence: medium to high.

### S7. "B5. Backups" (line 631; checklist line 44): an offline copy of research data can break a data agreement

- Current text: "Backups: keep 1 copy offline, or on university storage that keeps versions."
- Problem: the slide sits in the personal section, but professors will apply it to research data. A copy of study data on a personal USB drive at home contradicts the deck's own "Lab data" slide ("Do not keep it on a laptop or in a personal cloud account") and can break an IRB protocol or a data use agreement. Unencrypted external drives are a classic source of reportable breaches.
- Proposed slide text: "Backups: for your own files, keep 1 encrypted copy offline. For research and student data, use only storage that Brown approves for that data \fillin{Brown storage}. Restore 1 file as a test".
- Proposed checklist text: "Backups. Your own files: 1 encrypted copy offline. Research and student data: only storage that Brown approves for that data. Restore 1 file as a test."
- Evidence: "Lab data" slide, tex line 711; `research_protective_guidance` line 105; the level B fact-check already notes that CISA says "offline, encrypted backups" (`review_factcheck-level-b` line 58).
- Confidence: high on the internal contradiction; medium on policy detail.

### S8. "C1. Strictest settings" (lines 642 to 646; checklist lines 52 to 54): settings that a university account cannot use, or that hide university data from the university

- Current text: the 3 settings, then "Cost: if you lose your keys and your devices, Google and Apple cannot let you back in".
- Problems: (a) Advanced Data Protection is not available for managed Apple Accounts (`research_account_hardening` line 320: "Not for managed university A..."; the level C fact-check, item M1, raises the same point). (b) A professor who keeps university records in a personal iCloud account under end-to-end encryption puts them beyond the university's backup, legal hold, and records duties. (c) For a university Google account, the administrator decides whether users may enroll in Advanced Protection, and the program blocks third-party apps that a lab may depend on.
- Proposed added last bullet: "These are for personal accounts. Advanced Data Protection does not work on a managed Apple Account \vfy. For a Brown Google account, ask OIT \fillin{whether Brown allows Advanced Protection}".
- Proposed checklist line at the top of section C: "For personal accounts. For a Brown account, ask OIT first."
- Evidence: `research_account_hardening` line 320; (b) and (c) from my general knowledge, not checked.
- Confidence: medium.

### S9. "B2. Account recovery" (line 608; checklist line 41): removing fallbacks on the university account

- Current text: "After you add a passkey or a key, remove text-message codes".
- Problem: the university sets the second-step methods for its own sign-in, and the help desk carries the cost of lockouts. A professor who strips methods from the Brown account and then loses a phone abroad cannot teach. The slide should limit the step to personal accounts and name the Brown route.
- Proposed text: "On personal accounts, after you add a passkey or a key, remove text-message codes \srccite{(CISA, Dec 2024)} \vfy. For Brown sign-in: \fillin{the methods that OIT supports, and what to do when you lose a phone}".
- Evidence: general practice; `source_notes` already lists the Brown sign-in option as a fact to supply (line 114).
- Confidence: medium.

### S10. "A5. Three habits" (lines 572 to 575; checklist lines 34 to 36): no instruction to report

- Current text: 3 habits, each a refusal. None says to report.
- Problem: this is the largest omission from a security office's view. One report lets the office pull the same message from every inbox and block the site. The deck's own "Paycheck theft" slide describes 11 compromised accounts used to reach about 6,000 addresses at 25 universities; early reports are how an office stops that. Professors also need to hear that a report after a mistake is welcome.
- Proposed added bullet (and retitle "A5. Four habits", or fold into habit 3): "Report a suspicious message to \fillin{Brown's phishing report address or button}, even after you clicked. An early report protects your colleagues".
- Proposed added checklist item: "Habit 4. Report a suspicious message to [Brown address], even after you clicked."
- If the title changes, "3 habits" also appears in "Three levels of urgency" (line 507), "Takeaways: the meantime" (line 690), and the final takeaway 3 (line 762).
- Evidence: tex "Paycheck theft" slide (line 210); `source_notes` line 89.
- Confidence: high that the advice is missing.

### S11. "First hour" (lines 742 to 751; checklist lines 68 to 73): self-directed incident steps

- Current text:
  1. "Disconnect the device from the network. Do not erase it"
  2. "Call the IT security office from another phone: [number]"
  3. "On a different device, change the password and sign out of all other sessions"
  4. "Tell your lab and your co-investigators to distrust recent messages from your account"
- Problems:
  - Order. The call comes second. A security office wants the call first and gives the other steps itself.
  - "Disconnect." Offices differ. Many now isolate a managed computer remotely with their own security software, and that software needs the network. Almost all ask that the device stay powered on, because memory holds evidence. The slide says neither.
  - "Change the password." A password change does not remove a sign-in device, a mail forwarding rule, or an app consent that the attacker added. The deck's research lists these checks (`research_protective_guidance` line 205, Microsoft, April 2026). The office does them; the slide should say so, or the professor will think the account is clean.
  - "Tell your lab and your co-investigators." A warning about fake messages is useful. A statement to outside co-investigators that "we had a breach" is a notification with legal and contract effects (sponsor, IRB, data provider), and the university decides it. The slide should separate the 2.
  - Missing: tell the office what data the device or account holds; do not reply to or pay the attacker; a lost or stolen device counts.
- Proposed text:
  - "Call the IT security office first, from another phone: \fillin{number}. Call even when you are not sure"
  - "Leave the device on. Do not erase it, and do not keep working on it. Disconnect it from the network \fillin{only if OIT says so; confirm}"
  - "Say what the device or account holds: study data, student records, health data"
  - "On a different device, change the password. OIT also removes sign-in devices and mail rules that the intruder added"
  - "Warn your lab to distrust recent messages from your account. OIT and \fillin{Brown office} decide who else must be told. Do not answer or pay the intruder"
- The checklist section takes the same 5 lines.
- Evidence: `research_protective_guidance` lines 203 to 205; the nontechnical review (line 261) proposes "do not keep working on it"; the labs fact-check (line 86) proposes "Say whether study data is involved." The rest is general incident-response practice, which Brown OIT must confirm under the existing blue bracket.
- Confidence: high that the order and the notification wording need a change; medium on the disconnect instruction, which depends on Brown's tools.

### S12. "Lab data" (lines 710 to 714) and "AI agents" (line 725): data levels, approved AI tools, and the word "main"

- Current text: "Keep study data on storage that the university manages. Do not keep it on a laptop or in a personal cloud account"; "Do not connect an agent to your main email or drive without approval from IT".
- Problems: (a) "Storage that the university manages" is not 1 thing. Universities sort data into levels, and health or contract-restricted data may go only on some systems. (b) The section never mentions the most common new leak: a professor or student pastes study data or student records into a consumer AI tool. (c) "Main" suggests that a second account with Brown data is fine. The rule that an office wants is about Brown accounts and Brown data, and it covers any third-party app, not only agents.
- Proposed text, Lab data bullet 2: "Keep study data on storage that Brown approves for that kind of data \fillin{Brown's data levels and storage list}. Do not keep it on a laptop or in a personal cloud account".
- Proposed added bullet, AI agents (or Lab data): "Before you give study data or student records to an AI tool, check \fillin{Brown's list of approved AI tools}".
- Proposed text, AI agents bullet 4: "Do not connect an agent or another outside app to Brown email or Drive without approval from OIT. Use the same caution with personal accounts".
- Checklist line 65, proposed: "Run AI coding agents in a container. Do not connect an AI agent or another outside app to Brown email or Drive without approval from OIT. Check [Brown's approved AI tools] before you give a tool study data or student records."
- Evidence: general practice; not checked for Brown.
- Confidence: medium.

---

## Minor findings

### M1. "A3. Passkeys" (line 550; checklist line 32): iCloud Keychain on a university-owned Mac
- Current: "Apple: turn on two-factor authentication and iCloud Keychain".
- Problem: this signs a personal Apple Account into a university-owned Mac and syncs personal passwords onto it. Some offices disallow it; a managed Apple Account may not offer Keychain.
- Proposed added words: "(on your own devices)". Confidence: low to medium. Not checked.

### M2. "A4. Phone passcode" (line 557): lost phone
- Missing: the phone is usually the second step for the university sign-in and holds university mail.
- Proposed added bullet: "A lost phone or laptop with Brown mail on it: tell OIT the same day \fillin{contact}". Confidence: medium.

### M3. "B1. Security keys" (line 580; checklist line 40)
- Current: Apple and Google only. Proposed added bullet: "Brown: \fillin{whether Brown sign-in accepts a security key}". If A3's bracket already covers it, repeat the answer here. Confidence: medium.

### M4. "C2. Email aliases" (line 650; checklist line 55)
- Missing: aliases and personal mail services are for personal sign-ups. Proposed added bullet: "For personal sign-ups only. Do not forward Brown email to a personal account \fillin{confirm Brown's rule}". Many universities restrict automatic forwarding; not checked for Brown. Confidence: medium.

### M5. "C3. Private Relay and VPNs" (line 668)
- Current: "Use the university VPN for university resources. Confirm Wirecutter's VPN pick [pick]".
- Problem: the same bullet endorses the university VPN and promises a commercial pick, 1 line after CISA's "Do not use a personal VPN". On a managed computer a commercial VPN can hide the device from the university's protections.
- Proposed: "Use the Brown VPN for Brown resources. Do not install a commercial VPN on a Brown-owned computer \fillin{confirm with OIT}". Move any Wirecutter pick to its own bullet or drop it. Confidence: medium.

### M6. "C3" (line 665): "Private Relay can fail on campus networks"
- Problem: "fail" invites help-desk tickets that blame the network. Proposed: "Some campus networks turn Private Relay off, because they must inspect traffic \srccite{(Apple)} \vfy". I could not open the Apple page; the reason clause needs the same [verify]. Confidence: low.

### M7. "Overrated advice" (line 677): public Wi-Fi
- Current: "Fear of public Wi-Fi. The FTC calls public Wi-Fi 'usually safe'".
- Proposed added clause: "For restricted research data off campus, use the Brown VPN". Confidence: medium.

### M8. "Coding agents" (line 733)
- Current: "Run a coding agent in a container, not in your own laptop account."
- Problem: container software needs administrator rights, which a managed computer may not give. Proposed added clause: "On a Brown-owned computer, ask OIT to install the container software". Also "Keep API keys out of code and out of prompts" could add "and tell OIT when a key leaks", since a leaked key for a university cloud account is an incident. Confidence: medium.

### M9. "Lab data" (line 712): accounts for outside collaborators
- Current: "Give each student a named account. Remove access when a person leaves".
- Proposed: "Give each student and each outside collaborator a named account through OIT. Never share a password. Remove access when a person leaves". Confidence: medium.

### M10. Missing C-level item: travel
- A security office usually asks to hear before a professor takes research data or a university laptop to a high-risk country (loaner devices, export rules). Proposed 1 line on C1 or the checklist section C: "Before travel with research data: ask OIT about a loaner device \fillin{Brown's travel guidance}". Not checked for Brown. Confidence: low to medium.

### M11. Checklist heading (line 68)
- Current: "After a suspected break-in [confirm with Brown OIT]". Once OIT confirms, add the reporting address for phishing and the lost-device contact in the same box, so that the page has every OIT contact in 1 place. Confidence: medium.

---

## Counts

12 substantive, 11 minor.
