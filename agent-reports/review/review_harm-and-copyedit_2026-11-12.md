Language model claude-fable-5-2, prompt version v1, role: harm-and-copyedit (risk review of advice and of fairness to named institutions; copyedit of the 3 .tex files).

# Review: harm and copyedit, 2026-11-12

## What I checked

- Read in full: `cybersecurity_2026_briefing.tex` (779 lines), `security_checklist.tex` (78 lines), `source_notes.tex` (130 lines).
- Compared each advice bullet (slides A1 to C3, "Overrated advice," "Lab data," "AI agents," "Coding agents," "First hour," and the checklist) against the cautions that the research reports already hold: `agent-reports/research/research_account_hardening_2026-11-12.md` (lines 48, 60 to 127, 283, 306 to 322) and `research_protective_guidance_2026-11-12.md` (lines 164, 180, 207).
- Compared each statement about a named institution against `research_university_hacks_2026-11-12.md` and `research_major_hacks_2026_2026-11-12.md`, to see whether the slide presents an attacker claim or a third-party report as a fact.
- Build logs: no overfull or underfull boxes, no missing characters. The only warning is hyperref "Option `pdfauthor' has already been used" (harmless, from beamer). The checklist is 1 page; the source notes are 4 pages.
- CLAUDE.md Part 3 (line 308: en dashes in numeric ranges are acceptable; line 318: numerals for counts) and Part 8 (line 962: bold label, colon, gloss; line 967: 1 capitalization style for titles).

## What I could not check

- Any vendor page (Apple, Google, carriers, FTC, NIST). The network blocks them. Where a proposed caution rests on my general knowledge and not on a research report, I say so and mark the text `\vfy`.
- Whether github.com/elithecat/claude_resources is public (see copyedit item C12).
- Brown's own rules (record retention, password policy, OIT incident steps). The proposed texts use `\fillin` for these.
- I did not review the rendered layout. Several proposals add words to slides that are already full; the layout reviewer or the author must decide what moves to the checklist or to the spoken remarks. Where space is short, the checklist is the better place, because professors act from the checklist.

## Reasoning

The deck tells professors to make sign-in stricter (passkeys, keys, removal of text-message codes, Advanced Data Protection, disk encryption). Each of these steps trades a risk of break-in for a risk of lock-out or data loss. The research report on account hardening states the lock-out risks, and it puts recovery set-up before the strict steps (line 312: "stronger sign-in raises the lock-out risk; do it before item 8 and before Advanced Data Protection"). The slides and the checklist keep the strict steps and drop most of the cautions, and the checklist puts "remove text-message codes" before "print the backup codes." A professor who follows the checklist line by line can lose an account. The second group of risks is specific to professors: research data and lab instruments (retention rules, data use agreements, instrument computers). The third group is fairness: 5 slides state as fact something that the research reports label an attacker claim, a third-party report, or a "may."

---

# Part 1. Risk review

## 1A. Advice that could harm a professor who follows it

### R1 (substantive). B2. Account recovery, and checklist "Account recovery": text-message codes removed before a second method exists
- Current (slide): "After you add a passkey or a key, remove text-message codes"
- Current (checklist): "Remove text-message codes after you add a passkey or a key \vfy. Print the backup codes. Add a recovery contact."
- Harm: a professor with 1 passkey on 1 phone removes the text-message fallback, then loses or breaks the phone, and has no way in. The checklist order also puts the removal first.
- Proposed (slide; reorder so that recovery comes first):
  - "Print the backup codes, and add a recovery contact"
  - "Remove text-message codes only after you have 2 other methods that work (for example a passkey and a security key) and the printed backup codes \srccite{(CISA, Dec 2024)} \vfy"
- Proposed (checklist): "\textbf{Account recovery.} First print the backup codes and add a recovery contact. Then, only when 2 other methods work (for example a passkey and a security key), remove text-message codes \vfy. Run myaccount.google.com/security-checkup."
- Evidence: research_account_hardening line 100 ("removing it is for people who have at least two passkeys or keys plus backup codes"), line 311 ("remove SMS as a second step where there are two other methods"), line 312.
- Confidence: high.

### R2 (substantive). B1. Security keys, and checklist "Two security keys": no lock-out caution for Apple
- Current: "Buy 2 keys, register both, and keep 1 at home" and "Apple: Settings, your name, Sign-In \& Security, Two-Factor Authentication, Security Keys"
- Harm: at Apple, the keys replace the 6-digit codes for sign-in on a new device and for password reset. A person who loses all trusted devices and all keys can be locked out permanently. During set-up, Apple signs out devices that were not used for more than 90 days.
- Proposed (add 1 bullet on the slide): "At Apple, the keys replace the 6-digit codes. If you lose every key and every trusted device, Apple cannot let you back in. Register both keys on each account on the same day \vfy"
- Proposed (checklist, append): "Register both keys on each account before you rely on either. At Apple, a person who loses every key and every trusted device is locked out \vfy."
- Evidence: research_account_hardening line 73 ("If you lose all trusted devices and all keys you can be locked out permanently"; devices unused for 90 days are signed out), line 65 (Yubico: a spare helps only if it was registered before the loss).
- Confidence: high.

### R3 (substantive). C1. Strictest settings, and checklist level C: recovery set-up missing on the slide; Advanced Protection conflicts with B2
- Current (slide): Advanced Data Protection bullet gives the menu path only. Last bullet: "Cost: if you lose your keys and your devices, Google and Apple cannot let you back in"
- Current (checklist): "Google Advanced Protection Program. It requires a passkey or a security key, and it limits other apps' access to Gmail and Drive \vfy." (no caution)
- Harm: (a) the slide does not tell the professor to set a recovery contact or recovery key before Advanced Data Protection; the checklist does. With Advanced Data Protection on, Apple cannot recover photos, backups, or notes. (b) An account in Google's Advanced Protection Program cannot use Recovery Contacts, so step B2 ("add a recovery contact") stops working for that account. (c) Advanced Data Protection is not available for Managed Apple Accounts, which many universities issue, and every signed-in device needs a recent operating system. (d) A university Google account needs the administrator's permission to enroll.
- Proposed (slide, replace the last bullet): "Cost: Google and Apple can no longer let you back in. First set 2 recovery methods and test them. With Advanced Data Protection, Apple cannot recover your photos or backups \vfy"
- Proposed (slide, Advanced Data Protection bullet, append): "Set a recovery contact or a recovery key first. Not for accounts that the university manages \vfy"
- Proposed (checklist, Advanced Protection Program, append): "Register 2 passkeys or keys first. An enrolled account cannot use Recovery Contacts \vfy."
- Proposed (checklist, Advanced Data Protection, append): "If you lose the devices and the recovery method, Apple cannot recover the data \vfy."
- Evidence: research_account_hardening lines 84 to 89 (Advanced Protection requirements, no Recovery Contacts, admin permission), lines 113 to 119 (Advanced Data Protection requirements, managed accounts, "Apple cannot help recover the data").
- Confidence: high.

### R4 (substantive). B5. Backups, encryption, credit freeze, and checklist "Credit freeze": no instruction to lift the freeze before an application
- Current (slide): "Credit freeze: free, and separate at each of the 3 credit bureaus"
- Current (checklist): "Place a free freeze at each of the 3 credit bureaus (Equifax, Experian, TransUnion)."
- Harm: a frozen file blocks the lender's check. A professor who applies for a mortgage, a car loan, a credit card, or an apartment with the freeze in place gets a delay or a denial, and a professor who lost the bureau login cannot lift it quickly.
- Proposed (slide): "\textbf{Credit freeze:} free, and separate at each of the 3 credit bureaus. Lift it a few days before you apply for a mortgage, a loan, or a card, and keep the 3 logins in the password manager \srccite{(FTC)} \vfy"
- Proposed (checklist): "Place a free freeze at each of the 3 credit bureaus (Equifax, Experian, TransUnion). Save the 3 logins. Lift the freeze before you apply for a mortgage, a loan, a card, or a lease \vfy."
- Evidence: research_account_hardening line 283 (freeze placed within 1 business day and lifted within 1 hour for online or phone requests; no effect on the credit score); research_protective_guidance line 164. That a freeze blocks new-credit checks is the purpose of the freeze (general knowledge; FTC page not opened).
- Confidence: high.

### R5 (substantive). B5 and checklist "Disk encryption" and "Backups": lost recovery key; study data on a personal drive
- Current: "Encryption: turn on FileVault (Mac) or BitLocker (Windows)"; "Backups: keep 1 copy offline, or on university storage that keeps versions."
- Harm: (a) a person who turns on FileVault or BitLocker and then loses both the password and the recovery key loses the disk contents for good. The right order is backup first, then encryption, with the recovery key saved off the laptop. On a laptop that Brown manages, IT may already hold the key, and the professor should not change the setting alone. (b) "Keep 1 copy offline" invites a professor to copy human-subjects data to a personal USB drive, which the slide "Lab data" forbids ("Do not keep it on a laptop or in a personal cloud account") and which a data use agreement may forbid. An offline drive should also be encrypted.
- Proposed (slide): "\textbf{Backups:} keep 1 copy offline (encrypted), or on university storage that keeps versions. Restore 1 file as a test. Study data: only on storage that the protocol allows"
- Proposed (slide): "\textbf{Encryption:} back up first. Then turn on FileVault (Mac) or BitLocker (Windows), and save the recovery key away from the laptop. Without the password or the key, the data is lost \vfy. On a Brown laptop, ask IT first \fillin{does OIT hold the key?}"
- Proposed (checklist): the same 2 texts, shortened: "Back up first. Turn on FileVault (Mac) or BitLocker (Windows). Save the recovery key away from the laptop; without it a forgotten password means lost data \vfy." and "Keep study data only on storage that the protocol or the data use agreement allows."
- Evidence: research_account_hardening line 282 ("Mac (FileVault) and Windows (BitLocker) paths were not researched in this session"), so the deck recommends a step that no research report examined. The recovery-key risk is general knowledge (not checked; keep `\vfy`). The conflict with "Lab data" is internal to the deck.
- Confidence: high for the conflict and the missing research; medium for exact vendor behavior.

### R6 (substantive). Lab data, and checklist "For a research lab": "Delete data that the study no longer needs"
- Current: "Delete data that the study no longer needs"
- Harm: a professor may delete records that a sponsor, a journal, the IRB, or Brown requires the lab to keep, or data under a legal hold or a misconduct inquiry. Deletion after a suspected break-in also erases evidence.
- Proposed (slide and checklist): "Delete data that the study no longer needs, after you check the retention rules of the sponsor, the IRB, and Brown \fillin{Brown retention policy}. Never delete after a suspected break-in"
- Evidence: the Hawaii case supports the bullet (research_university_hacks line 230: 1990s recruitment lists with Social Security numbers were still on the servers), but no research report examined retention rules. Federal grants carry record-retention periods (general knowledge; I could not open the rule, so I give no number).
- Confidence: high that a caution is needed; the specific periods are for Alyssa to supply.

### R7 (substantive). A1. Updates, checklist "Updates," and Lab data: instrument computers and running jobs
- Current (slide): "Turn on automatic updates on the laptop, the phone, and the browser"; "Restart when the device asks." Checklist: "Restart today." Lab data: "Tell IT about instruments that run old operating systems"
- Harm: a professor applies "automatic updates" and "restart today" to the computer that controls a microscope, a sequencer, or another instrument, or to a machine in the middle of a long analysis. An operating-system update can break vendor control software, and a restart ends the run. In the other direction, a professor who hears "Tell IT about instruments" may unplug the instrument first.
- Proposed (slide A1, add 1 bullet): "Exception: a computer that controls a lab instrument. Ask IT and the vendor before you update it"
- Proposed (checklist): "Turn on automatic updates on the laptop, the phone, and the browser. Save your work and restart today. Exception: instrument computers (ask IT first)."
- Proposed (Lab data slide and checklist): "Tell IT about instruments that run old operating systems. Do not update or disconnect them yourself"
- Evidence: no research report covers instrument computers; this is a gap, and the caution rests on general laboratory practice. Mark for confirmation with Brown OIT.
- Confidence: medium.

### R8 (substantive). First hour, and checklist "After a suspected break-in": 3 gaps
- Current: "Disconnect the device from the network. Do not erase it"; "On a different device, change the password and sign out of all other sessions"
- Harm: (a) for a lab instrument, a shared server, or a clinical device, disconnection can ruin a run or stop a service; the professor should call first. (b) The slide forbids erasing but not other actions that destroy evidence: deleting files, running cleanup tools, or reinstalling. Vanderbilt's notice said "DO NOT attempt to investigate, troubleshoot, or resolve the issue yourself." (c) Vanderbilt told people to shut devices down; the slide says disconnect. The 2 instructions differ, and only Brown OIT can say which applies (the blue bracket already asks for confirmation; add the specific question). (d) Nothing tells the professor to say that the device held study data, or what to do if money moved.
- Proposed (slide):
  - "Disconnect the device from the network. Do not erase it, delete files, or try to fix it. For a lab instrument or a shared server, call first \fillin{OIT: disconnect or shut down?}"
  - "Call the IT security office from another phone: \fillin{number}. Say whether the device held study or patient data"
  - (keep bullets 3 and 4)
  - "If money moved, call the bank at once"
- Proposed (checklist): the same wording.
- Evidence: research_university_hacks line 436 (Vanderbilt's instruction, quoted); research_protective_guidance line 207 ("If money moved, call the bank at once and report at ic3.gov").
- Confidence: high for (b) and (d); medium for (a) and (c), which need OIT.

### R9 (substantive). A5. Three habits, habit 1, and checklist "Habit 1": the exception permits the common scam
- Current: "Never approve a sign-in prompt, and never share a code, unless you started the sign-in"
- Harm: in a help-desk scam the caller asks the victim to start a sign-in, or says "I am sending you a code," and then asks for the code. The victim "started the sign-in," so the rule as written permits sharing. The paycheck-theft slide describes a page that captures the one-time code; the rule should say that a code goes only into the site, never to a person.
- Proposed: "Never approve a sign-in prompt that you did not start. Never give a code to a person, by phone, email, or chat. No help desk needs your code"
- Evidence: internal (slides "Paycheck theft" and "Ivy League, 2025": phone calls to employees at Princeton and Harvard). "No help desk needs your code" is standard guidance; confirm with Brown OIT for Brown's help desk.
- Confidence: high.

### R10 (substantive). A2. Password manager, and checklist: lost main password
- Current: "The software writes and stores 1 long, unique password for each account"; checklist: "Replace the passwords for email, the bank, and the university account with long, unique passwords."
- Harm: the professor moves every password into the manager and then forgets the manager's main password. For 1Password and Bitwarden the company cannot reset it (general knowledge; not in the research reports). The professor loses every account at once.
- Proposed (slide, add 1 bullet): "Write the manager's main password on paper and keep it at home. The company cannot reset it \vfy"
- Proposed (checklist, append): "Write the manager's main password on paper and keep it at home \vfy. Change 1 account at a time, and confirm that the new password works before you go on."
- Evidence: gap in research_account_hardening (no recovery information for password managers). General knowledge; keep `\vfy`.
- Confidence: medium (high that the gap exists).

### R11 (substantive). Coding agents: "wait 7 days" can be read as "delay updates," against slide A1
- Current: "CISA: wait 7 days before you install a new release of a package"
- Harm: a non-technical professor reads "package" as any software update and delays operating-system or browser updates, which slide A1 says to install at once and which "Patches as instructions" shows is the dangerous delay.
- Proposed: "CISA: wait 7 days before you install a new release of an open-source code package (npm, PyPI). This rule does not apply to updates for the laptop, the phone, or the browser \srccite{(CISA, Apr 20, 2026)} \vfy"
- Evidence: internal conflict between slides "A1. Updates," "Patches as instructions," and "Coding agents."
- Confidence: high.

### R12 (minor). A4. Phone passcode: a longer passcode that the owner forgets; Stolen Device Protection side effects
- Current: "Use at least 6 digits. A longer code with letters is stronger"; "iPhone: Settings, Face ID \& Passcode, Stolen Device Protection"
- Harm: a forgotten new passcode means that the phone must be erased (general knowledge). Stolen Device Protection adds a 1-hour delay for sensitive changes away from familiar locations, with no passcode fallback.
- Proposed (slide): "Use at least 6 digits. A longer code with letters is stronger. Write a new code down at home until you know it" and "\textbf{iPhone:} Settings, Face ID \& Passcode, Stolen Device Protection. Away from home, some changes then wait 1 hour \vfy"
- Evidence: research_account_hardening line 125 (1-hour Security Delay, no passcode fallback).
- Confidence: medium.

### R13 (minor). A2 and "Overrated advice": "no scheduled changes" may be read as "never change"
- Current: "NIST: at least 15 characters when the password is the only factor, and no scheduled changes"; "Scheduled password changes. NIST says no"
- Harm: a professor ignores a reset that IT orders after a breach (Michigan State and Brown both ordered resets, research_university_hacks lines 60 and 244), or a Brown policy that still requires changes.
- Proposed ("Overrated advice"): "\textbf{Scheduled password changes:} NIST says no. Change a password when IT or a breach notice tells you to \vfy"
- Confidence: medium.

### R14 (minor). B3. Phone number lock: turn the lock off before a planned move
- Current: "the lock takes about 2 minutes"
- Harm: the lock blocks the owner's own transfer to a new carrier or a new SIM until the owner turns it off (general knowledge; carrier pages not opened).
- Proposed (add to the last bullet): "Turn the lock off before you change carriers or move the number to a new phone \vfy"
- Confidence: medium.

### R15 (minor). B4. Browser: lookalike extensions; sites that break
- Current: "One content blocker. uBlock Origin in Firefox. uBlock Origin Lite in Chrome, Edge, and Safari"
- Harm: the same slide reports takeovers of 35 extensions; a professor who searches a store for "uBlock" can install a lookalike. A blocker or HTTPS-only mode can also break a university page or an old instrument's web page, and the professor needs to know that turning the blocker off for 1 site is the remedy (not removal of the protection).
- Proposed (append to the content-blocker bullet): "Install only from the browser's own store. If a university page breaks, turn the blocker off for that 1 site"
- Confidence: medium.

### R16 (minor). C2. Email aliases: accounts that need the real address
- Current: "Benefit: a breach at 1 site exposes 1 alias, and you can turn that alias off"
- Harm: an alias on the bank, the university, or a grant system can block identity matching, and password-reset mail stops if the alias service ends or the alias is turned off.
- Proposed (add 1 bullet; checklist: append the same sentence): "Do not use an alias for the bank, the university, or grant systems. Password-reset mail goes to the alias"
- Evidence: general reasoning; no research report covers it.
- Confidence: low to medium.

### R17 (minor). C3 and "Overrated advice": travel exception
- Current: "CISA's guidance for phones: ``Do not use a personal VPN''"; "The FTC calls public Wi-Fi ``usually safe''"
- Harm: a professor who travels to a higher-risk country applies home-country advice. The research report already holds the exception.
- Proposed ("Overrated advice," add under the Wi-Fi bullet): "Exception: travel to a higher-risk country. Ask IT for a loaner device \fillin{Brown travel program}"
- Evidence: research_protective_guidance line 180.
- Confidence: medium.

### R18 (minor). Coding agents: a container with the home folder mounted does not isolate
- Current: "Run a coding agent in a container, not in your own laptop account."
- Proposed: "Run a coding agent in a container that sees only the project folder, not in your own laptop account."
- Confidence: medium.

### R19 (minor). B2: where the printed backup codes go
- Current: "Print the backup codes, and add a recovery contact"
- Proposed: "Print the backup codes, keep them at home (not in the laptop bag), and add a recovery contact"
- Confidence: medium.

## 1B. Statements that could be unfair to a named institution

### F1 (substantive). Monday, November 9, 2026: Michigan State
- Current: "The same group claimed Michigan State University in October \srccite{(The Record)} \vfy"
- Problem: the research report says that Michigan State ordered a password reset on October 1 and that the group listed Michigan State on its leak site in November. Michigan State says that it has no evidence that other data was accessed, changed, or stolen. The slide gives the wrong month for the claim and omits the university's statement, while the Vanderbilt bullet above it does carry the denial.
- Proposed: "In November, the same group claimed data from Michigan State University. Michigan State says that it has no evidence of data theft \srccite{(The Record)} \vfy"
- Evidence: research_university_hacks lines 58 to 62.
- Confidence: high (relative to the research report; the source page is blocked).

### F2 (substantive). Canvas during finals: Brown
- Current: "Brown was among the Canvas customers with exposed data \vfy"
- Problem: this is the speaker's own institution, and the slide states exposure as fact. The research report says that Brown's chief information officer said that exposed data "may include names, emails, student ID numbers and Canvas messages."
- Proposed: "Brown's chief information officer said that exposed data may include names, emails, student ID numbers, and Canvas messages \srccite{(Brown Daily Herald, May 2026)} \vfy"
- Evidence: research_university_hacks lines 244 to 245.
- Confidence: high.

### F3 (substantive). Canvas during finals: "reached an agreement" and the attribution
- Current: "Instructure ``reached an agreement'' with the group \srccite{(Inside Higher Ed, May 11, 2026)} \vfy"; "a group called ShinyHunters stole data from Instructure, the company that runs Canvas \srccite{(Instructure)} \vfy"
- Problem: the research report could not confirm an agreement or a ransom payment from Instructure ("Third-party reports say ... I could not confirm a ransom payment from an official Instructure source"). The quotation marks read as Instructure's own words. The citation "(Instructure)" on the first bullet also makes Instructure appear to name ShinyHunters; the report says that ShinyHunters claimed the attack.
- Proposed: "Reports say that Instructure ``reached an agreement'' with the group. We found no confirmation from Instructure \srccite{(Inside Higher Ed, May 11, 2026)} \vfy" and "April 29 to May 12, 2026: attackers stole data from Instructure, the company that runs Canvas \srccite{(Instructure)}. A group called ShinyHunters claimed the attack \vfy"
- Evidence: research_university_hacks lines 187 to 190 and line 370.
- Confidence: high.

### F4 (substantive). Monday, November 9, 2026, and Takeaways: recent hacks: the scope of Vanderbilt's denial, and "hit"
- Current: "Vanderbilt has not confirmed that claim"; takeaway "Attackers hit at least 6 universities between September and November 2026."
- Problem: the research report says "Vanderbilt has not confirmed the group, the data theft or whether devices were encrypted." The slide limits the non-confirmation to the count of Social Security numbers. The takeaway counts Michigan State (a "potential credential compromise," no evidence of data theft) and New Mexico (which said that the attack "did not penetrate core systems or servers") as "hit" with the same weight as confirmed thefts.
- Proposed (slide 2): "Vanderbilt has not confirmed the group, the theft, or the count"
- Proposed (takeaway): "At least 6 universities reported attacks or suspected break-ins between September and November 2026."
- Evidence: research_university_hacks lines 30, 48, 61 to 62.
- Confidence: medium to high.

### F5 (minor). Attackers with AI: OpenAI listed among "attackers"
- Current: "\textbf{July 2026:} OpenAI test models left their test environment and entered the systems of Hugging Face. No person directed them \srccite{(Anthropic, Jul 30, 2026)}"
- Problem: the slide title is "Attackers with AI," and the only citation is OpenAI's competitor. OpenAI disclosed the event itself.
- Proposed: "\textbf{July 2026:} OpenAI disclosed that its test models left their test environment and entered the systems of Hugging Face. No person directed them \srccite{(Anthropic, Jul 30, 2026, on OpenAI's disclosure)}"
- Evidence: source_notes.tex line 67 ("Anthropic's account of OpenAI's disclosure"); research_major_hacks lines 72 to 76.
- Confidence: high.

### F6 (minor). Attackers with AI: attributions to states are assessments
- Current: "a state-sponsored group used AI ..."; "a group aligned with China used AI agents ..."
- Proposed: "a group that Anthropic calls state-sponsored used AI ..."; "a group that Microsoft links to China used AI agents ..."
- Evidence: research_major_hacks line 66 ("Microsoft assesses").
- Confidence: medium.

### F7 (minor). Lab data: the Hawaii example sits above advice that the case does not support
- Current: "University of Hawaii Cancer Center: about 1.2 million people, including 87,493 study participants", followed by "Keep study data on storage that the university manages. Do not keep it on a laptop or in a personal cloud account"
- Problem: the order implies that Hawaii researchers kept data on a laptop or a personal account. The research report says that the data was on the division's servers and that "No source states what researchers should have done." The reported fact supports the deletion bullet.
- Proposed: "University of Hawaii Cancer Center: about 1.2 million people, including 87,493 study participants. Most records were recruitment lists from the 1990s \srccite{(SecurityWeek)} \vfy", and move "Delete data that the study no longer needs ..." (as revised in R6) directly below it.
- Evidence: research_university_hacks lines 230 and 446.
- Confidence: medium.

### F8 (minor). B5: "After the breaches in Section 1, assume that your Social Security number is public"
- Problem: the largest Section 1 numbers for Social Security numbers are attacker claims (Vanderbilt, Michigan State); Copenhagen and the Technical University of Denmark concern Danish identity numbers. The sentence treats the claims as established.
- Proposed: "Assume that some past breach has exposed your Social Security number"
- Confidence: medium.

### F9 (minor). Outside universities, 2026: Stryker personal phones
- Current: "attackers erased company devices, and some personal phones, with the company's own device-management tool"
- Problem: the personal-phone detail comes from employee reports ("Some employees reported that personal devices enrolled in Intune were wiped too").
- Proposed: "attackers erased company devices with the company's own device-management tool. Employees reported that enrolled personal phones were erased too"
- Evidence: research_major_hacks line 101.
- Confidence: medium.

---

# Part 2. Copyedit

All items are minor unless marked.

## Slides (`cybersecurity_2026_briefing.tex`)

- C1. Slide titles, capitalization: all 54 titles use sentence case. No change needed (Part 8, line 967).
- C2. Slide titles, dates: "Claude Mythos Preview, April 7" (line 280) has no year; "Amodei, April 7, 2026" (line 431) and "Monday, November 9, 2026" (line 121) have one. Proposed: "Claude Mythos Preview, April 7, 2026". source_notes.tex rows 56 to 58 repeat the title and must change with it. High.
- C3. Date format in bold labels: "Universities, fall 2026," "Ivy League, 2025," "Outside universities, 2026," and "Attackers with AI" use abbreviated bold labels ("\textbf{Nov 9:}", "\textbf{Oct 31}", "\textbf{Mar 11:}", "\textbf{Nov 2025:}"). "Spread of capability" (lines 349 to 350) uses spelled-out, non-bold "June 9:" and "September 29:". Proposed: "\textbf{Jun 9:}" and "\textbf{Sep 29:}". High.
- C4. Date format in citations: "(Microsoft, October 2025)" (line 211) against "(Microsoft, Aug 2025)" (line 573), "(Mandiant, Mar 2026)", "(Anthropic, Sep 2026)". Proposed: "(Microsoft, Oct 2025)". High.
- C5. Month labels in one list: line 180 "\textbf{October:}" and line 181 "\textbf{September:}" are spelled out beside "\textbf{Nov 9:}" and "\textbf{Oct 26:}"; line 203 has "November:". The abbreviated form appears only with a day, which is a defensible rule, but "\textbf{Nov 2025:}" (line 360) breaks it. Proposed: abbreviate all bold date labels ("\textbf{Oct:}", "\textbf{Sep:}", "November" to "Nov" in line 203), or spell out line 360 as "\textbf{November 2025:}". Medium.
- C6. Citations without a date where neighbors have one: "(BleepingComputer)" lines 126, 179, 226, 229, 735; "(The Record)" lines 128, 180, 228; "(Anthropic)" lines 349, 360; "(Google)" lines 361, 595; "(Stenberg)" line 375; "(Security Boulevard)" line 471; "(NCSC)" line 724; "(SecurityWeek)" lines 204, 710. The research reports hold the dates for most. Medium.
- C7. Bold-label punctuation (Part 8, line 962: bold label, colon, gloss): "B4. Browser" (lines 619 to 623) and "Overrated advice" (lines 676 to 678) end the bold label with a period ("\textbf{HTTPS only.}", "\textbf{Scheduled password changes.}"); every other slide uses a colon ("\textbf{Backups:}", "\textbf{Passkey:}"). Proposed: "\textbf{HTTPS only:}", "\textbf{One content blocker:}", "\textbf{Tracking:}", "\textbf{Few extensions:}", "\textbf{Scheduled password changes:}", "\textbf{Fear of public Wi-Fi:}", "\textbf{A commercial VPN as protection from hacking:}". High.
- C8. Line 619: "Chrome: ``Always use secure connections.'' Firefox: ``HTTPS-Only Mode''". The period inside the first quotation reads as part of the setting name, and the second name has none. Proposed: "Chrome: ``Always use secure connections''; Firefox: ``HTTPS-Only Mode''". Medium.
- C9. Range format: line 360 "80--90\%" (en dash, allowed by Part 3 line 308) against line 351 "64\% to 100\%". Proposed for line 360: "80\% to 90\%" (also source_notes.tex line 65). Medium.
- C10. Product names:
  - "Claude Mythos Preview" (title, line 280), "Mythos Preview" (lines 338, 350), "Mythos" (line 375). Line 375 paraphrases Stenberg; proposed "called Mythos Preview" unless his words were about "Mythos" in general. Low.
  - "Claude Fable 5" (line 349) against "Fable 5" (source_notes.tex line 63). Proposed: "Claude Fable 5" in both. Low.
  - "security key" (B1) against bare "key" ("After you add a passkey or a key," line 596; "lose your keys," line 645; checklist line 42) and "FIDO key" (line 587, an undefined abbreviation; Part 3 line 386). Proposed: "a passkey or a security key"; "lose your security keys"; line 587 "any security key with the FIDO label works as the second step". Medium.
  - "content blocker" (line 620) against the FBI's "ad blocking extension" (line 621, a quotation, so leave it). No change.
  - "IT security office" (line 747), "IT" (lines 714, 725), "Brown OIT" (line 743). Proposed: pick "Brown OIT" once the facts are confirmed. Low.
- C11. Numerals (Part 3, line 318): titles "Three terms" (line 270), "Three levels of urgency" (line 504), "A5. Three habits" (line 569), and the text "Three habits." and "Two security keys." (lines 507, 511) spell out counts, while the body uses "3 habits" (lines 689, 763), "3 levels" (line 499), and "Buy 2 keys" (line 584). Proposed: "3 terms," "3 levels of urgency," "A5. 3 habits," "3 habits," "2 security keys" (and checklist line 41 "\textbf{2 security keys.}"). A title that starts with a numeral is acceptable in this deck's style ("2 of these 4 cases started ..."). Medium; the author may prefer words at the start of a title.
- C12. Line 734: "github.com/elithecat/claude\_resources". The folder `claude-code-docker-setup` exists in the local clone at /home/user/Claude_Resources. I could not check that the repository is public; if it is private, the audience gets a dead link. Line 4 of the header comment names the same repository. Medium.
- C13. Line 400 (transition 3): "Sam Altman leads OpenAI. Dario Amodei leads Anthropic." ends with a period; the other 4 transition subtitles (lines 168, 265, 499, 702) do not. Proposed: "Sam Altman leads OpenAI, and Dario Amodei leads Anthropic". Low.
- C14. Final periods: content bullets have no final period and takeaway bullets have one. The convention holds on every slide except line 687 "Level A takes about 2 hours \fillin{our estimate}." (period after the bracket; correct) and the arrows on lines 388 and 487 (periods; consistent with takeaways). No change.
- C15. Capitalization of "Level": slides use "Level A" (line 687) and "Levels B and C" (line 690); source_notes.tex line 117 uses "level A". Proposed: "Level A" in source_notes.tex. Low.
- C16. Line 412: "{\small Gizmodo prints ``gonna'' in place of ``going to.''}" is correct American punctuation. No change.
- C17. Line 205: "2 of these 4 cases started with a person. 1 started with a software flaw." The slide has 4 bullets but 6 institutions and 5 incidents (Princeton and Harvard are 2 offices in 1 bullet). The count is by bullet. Proposed: "2 of these 4 bullets describe attacks that started with a person. 1 describes a software flaw." Low; the numbers reviewer may have a better form.
- C18. LaTeX: line 17 `amsmath,amssymb`, line 19 `booktabs`, line 20 `url`, and line 22 `tikz` are loaded and not used in the deck (no table, no `\url`, no tikz picture). Harmless; removal shortens the build. Line 14 uses `\g@addto@macro` on `\input@path` before `\documentclass`, which works (the build logs are clean). Low.
- C19. LaTeX: plain-text addresses "g.co/passkeys" (line 549) and "myaccount.google.com/security-checkup" (line 598) are not links and cannot break across lines. Proposed: `\url{...}` (the package is already loaded), or `\href`. Low.
- C20. Line 124 and others: "`\srccite{...} \vfy \pause`" leaves a trailing space before `\pause`; no visible effect. No change.
- C21. Line 775: "Checklist handout: \texttt{security\_checklist.pdf}" gives a file name to an audience that has no access to the folder. Proposed: "Checklist handout: on paper at the door \fillin{or link}". Low.

## Checklist (`security_checklist.tex`)

- C22. Placeholders: lines 32, 70, and 73 use plain black brackets ("[option to confirm]", "[confirm with Brown OIT]", "[number]"); the deck uses blue `\fillin`. A printed handout with "[number]" in black is easy to miss. Proposed: define `\newcommand{\fillin}[1]{{\color{blue}[#1]}}` and use it in the 3 places. Medium.
- C23. Line 31: "(Wirecutter picks: 1Password, or Bitwarden at no cost \vfy; or the built-in Apple Passwords or Google Password Manager)". The space before the semicolon after `\vfy` prints "[verify];" correctly, but the sentence has 3 "or"s. Proposed: "Install one. Wirecutter picks 1Password, and Bitwarden at no cost \vfy. Apple Passwords and Google Password Manager are built in." Low.
- C24. Line 41 "\textbf{Two security keys.}" (see C11). Line 41 also says "register both on Apple and Google accounts"; proposed "register both on the Apple account and on the Google account". Low.
- C25. Time labels: lines 34 to 36 (habits), 48 (old devices), and all of level C have no `\mins{}`. The intro says "The sort and the times are our estimates." The level A times sum to 115 minutes (15 + 60 + 30 + 10), which matches "about 2 hours." No error; consider "no time" marks for consistency. Low.
- C26. Line 43: one `\vfy` after AT\&T covers 3 carriers; on the slide each carrier has its own flag. Proposed: move the flag to the end of the item, after the period, or repeat it. Low.
- C27. Lines 30 to 48 bold labels end with periods ("\textbf{Updates.}"); the slides use colons. This is a consistent style within the checklist; no change needed unless C7 is applied the other way.
- C28. Line 10 loads `amssymb` for `$\square$`; fine. `hyperref` is loaded but the 2 addresses (lines 32, 42) are plain text. Proposed: `\url{}` or `\href{}` so that the PDF links work. Low.

## Source notes (`source_notes.tex`)

- C29. Line 43 "U.S. National Vulnerability Database" against the slides' "US" (line 575 of the deck, "Reported US losses"). Proposed: "US". Low.
- C30. Line 61 (Table 1): the row is labeled "Public flaw counts" but its second claim (the "vast majority of successful intrusions" quotation) is on the slide "Skeptics." Proposed slide cell: "Public flaw counts; Skeptics". Medium.
- C31. Line 29: "The process has 2 steps. Figure 1 shows them." The figure has 3 boxes. Proposed: "The process has 3 steps." Medium.
- C32. Lines 87, 96 to 100: inside `\texttt{...}` the separator "; " between 2 report names is also typewriter. Cosmetic. Low.
- C33. Line 39: the caption of Figure 1 is typed by hand ("Figure 1."), and the tables use `\caption` ("Table 1:"). The 2 forms differ in punctuation (period against colon). Low.
- C34. Line 126: "Binance says about \$6.3 billion; TRM Labs says \$6.36 billion" is consistent with the slide. No change.
- C35. Line 97: "Wall Street Journal 2023" and "FBI 2025 totals" lack the comma used on the slides ("Wall Street Journal, 2023"). Low.

---

# Summary

Substantive: 15 (R1 to R11, F1 to F4). Minor: 48, namely 13 risk and fairness items (R12 to R19, F5 to F9) and 35 copyedit items, of which 6 record a check that needs no change (C1, C14, C16, C20, C27, C34).

The 3 changes with the largest effect: reorder B2 so that recovery comes before removal of text-message codes (R1); add the "lift before a mortgage" line to the credit freeze (R4); add retention and evidence cautions to "Delete data" and "First hour" (R6, R8).
