# Review: fact check of the university slides

- Language model: claude-fable-5-2
- Prompt version: v1
- Role: factcheck-universities (1 of 25 independent reviewers)
- Date: 2026-11-12

## Scope

Slides checked (handout pages 2, 6, 7, 8, 9, and the section takeaways): "Monday, November 9, 2026", "Universities, fall 2026", "Canvas during finals", "Ivy League, 2025", "Paycheck theft", "Takeaways: recent hacks". Source: `cybersecurity_2026_briefing.tex` lines 121 to 130 and 173 to 256.

Checked against `agent-reports/research/research_university_hacks_2026-11-12.md` (below: UH) and `research_major_hacks_2026_2026-11-12.md` (below: MH).

## What I checked and how

- Every date, name, number, quotation, and attribution on the 6 slides against UH and MH, line by line.
- 1 primary source read directly: Microsoft Security Blog, "Investigating targeted 'payroll pirate' attacks affecting US universities," 2025-10-09 (https://www.microsoft.com/en-us/security/blog/2025/10/09/investigating-targeted-payroll-pirate-attacks-affecting-us-universities/). The page opened with curl (HTTP 200).
- Weekday: November 9, 2026 is a Monday (checked with `date`).

## What I could not check

- Every other source (Axios, The Register, BleepingComputer, The Record, TUM, Daily Lobo, DTU, Instructure, Inside Higher Ed, Daily Pennsylvanian, Harvard Crimson, SecurityWeek, the Maine filing) is on a blocked host. For these I could compare the slides only to the research reports, which themselves rest on search summaries. The "[verify]" flags on these lines should stay.
- I could not confirm which outlet carries each quotation ("potential credential compromise", "reached an agreement", "social engineering"). The findings below report only what the research reports attribute.

## Claims that hold (no change needed)

- Vanderbilt: shutdown instruction on Monday, November 9 (UH entry 1); BYOD claim of more than 1 million Social Security numbers, labeled as a claim; "Vanderbilt has not confirmed that claim" (UH entry 1, MH record 9).
- New Mexico: October 26; closure and suspension of classes and research match the Daily Lobo headline in UH entry 2.
- Copenhagen: about 525,000 people is the university's own figure (UH entry 5).
- Columbia: 868,969, Maine attorney general filing (UH entry 21).
- Penn, October 31: "social engineering" is Penn's phrase (UH entry 22).
- Canvas: defacement during finals and rescheduled exams (UH entry 15, MH record 1); the 275 million and 9,000 figures are labeled as the group's claim.
- Paycheck theft, against the Microsoft post itself: "Since March 2025"; 11 compromised accounts at 3 universities; 25 universities; theft of one-time codes through fake sign-in links; change of the bank account in Workday; post dated October 9, 2025. All confirmed.
- Count "at least 6 universities between September and November 2026": supported. The slide "Universities, fall 2026" lists 6 (Vanderbilt, Munich, New Mexico, Copenhagen, Michigan State, Technical University of Denmark). UH lists 5 more in the same window (Aarhus, UiT, Osaka Metropolitan, Illinois Chicago, Bremen), so "at least 6" is a safe lower bound. One caveat: for Michigan State the university describes only a "potential" compromise, and the data theft is an attacker claim.

## Findings

### Substantive

**S1. "Ivy League, 2025": the count "2 of these 4 cases" (high confidence)**
- Current: "2 of these 4 cases started with a person. 1 started with a software flaw. Columbia did not disclose the entry method"
- Problem: The count treats each bullet as 1 case, but bullet 3 holds 2 separate incidents (Princeton, November 10; Harvard alumni office, discovered November 18). UH Part 6(b) counts 3 incidents that began with deception of a staff member: "Princeton, Harvard alumni office, Penn (31 October)". By incident there are 5 (Columbia, Penn, Princeton, Harvard alumni office, the Oracle campaign).
- Proposed: "3 of these 5 incidents started with a person. 1 started with a software flaw. Columbia did not disclose the entry method"
- Evidence: UH entries 21 to 25; UH Part 6(b) table.

**S2. "Monday, November 9, 2026": date of the Michigan State claim (high confidence)**
- Current: "The same group claimed Michigan State University in October (The Record)"
- Problem: The incident was in October (password reset email on October 1). The group listed Michigan State in November. UH entry 3 title: "October 2026 (claimed by BYOD in November)".
- Proposed: "In November, the same group claimed an October incident at Michigan State University (The Record)"
- Evidence: UH entry 3.

**S3. "Canvas during finals": dates and attribution in bullet 1 (medium confidence)**
- Current: "April 29 to May 12, 2026: a group called ShinyHunters stole data from Instructure, the company that runs Canvas (Instructure)"
- Problems: (a) April 29 is the date Instructure detected the activity, not the start of a theft period. No detailed record supports May 12 as an end date: the defacement was May 7 and the agreement was announced late on May 11 (MH record 1). May 12 appears only in the MH summary table and as the date of a Register article and a Department of Education alert. (b) The reports say ShinyHunters "claimed the attack" (UH entry 15). Neither report says that Instructure named the group, so the citation "(Instructure)" does not cover the name.
- Proposed: "April 29, 2026: Instructure, the company that runs Canvas, detected a break-in (Instructure). A group called ShinyHunters claimed the theft"
- Evidence: UH entry 15; MH record 1.

**S4. "Canvas during finals": attribution of the quotation "reached an agreement" (medium confidence)**
- Current: "Instructure ``reached an agreement'' with the group (Inside Higher Ed, May 11, 2026)"
- Problem: MH record 1 attributes the words to Instructure ("Instructure said it 'reached an agreement' and received proof of data destruction. It did not state that it paid; Inside Higher Ed's headline says it paid."). The slide credits Inside Higher Ed with wording that differs from its headline.
- Proposed: "Instructure said that it ``reached an agreement'' with the group. Inside Higher Ed reported a ransom payment (May 11, 2026)"
- Evidence: MH record 1; the Inside Higher Ed URL ends in "instructure-pays-ransom-canvas-hackers". Note that UH entry 15 says it could not confirm a payment from an official Instructure source, so the payment should stay attributed to Inside Higher Ed.

**S5. "Universities, fall 2026": the 200,000 figure for the Technical University of Denmark (medium confidence)**
- Current: "Technical University of Denmark, about 200,000 people, through a guest account (DTU)"
- Problem: UH entry 6: the university "cannot determine exactly what was taken and treats about 200,000 users as potentially affected". The slide states the figure as a confirmed count, parallel to Copenhagen's confirmed 525,000. Also, the guest-account detail comes from the university's timeline "as relayed by NordiskPost", not from a university page that the research read.
- Proposed: "Technical University of Denmark, up to about 200,000 people, through a guest account (DTU; NordiskPost)"
- Evidence: UH entry 6.

**S6. "Takeaways: recent hacks": "most often a login or a person" (medium confidence)**
- Current: "Where universities named the entry method, the method was most often a login or a person."
- Problems: (a) UH Part 6(b): "Of the 14 entries where a method was stated, 7 began with a person or a login". 7 of 14 is the largest group but is half, and it combines 3 categories. (b) Not every method was named by the university: for example the Penn login detail comes from "reports", and the 14 include PowerSchool, a school vendor. (c) UH warns: "Any claim about 'the most common method' from news reports alone is weak."
- Proposed: "In the 14 cases with a public entry method, 7 started with a login or a person."
- Evidence: UH Part 6(b). The same caution applies to main point 3 ("Most break-ins at universities still start with a password or a person"), which is outside my assignment: the Sophos figure on the next slide is 50%, which is not "most".

### Minor

**M1. "Monday, November 9, 2026": ransom audio (medium confidence).** Current: "Campus computers played the ransom threat aloud (The Register, Nov 10, 2026)". UH entry 1 says "reportedly played an audio message from the gang (The Register, citing the student paper)". Proposed: "Campus computers reportedly played the ransom threat aloud (The Register, Nov 10, 2026)".

**M2. "Universities, fall 2026": Munich wording (medium confidence).** Current: "Technical University of Munich reports reuse of stolen portal passwords (TUM)". UH entry 4: attackers stole the login passwords of everyone registered with the portal and used them against the campus management system. "Reuse" can read as users reusing passwords. The November 9 date is the date of The Register's article; the date of the university's own release is not in the research. Proposed: "Technical University of Munich: attackers stole the passwords of all portal users (TUM; The Register, Nov 9)".

**M3. "Universities, fall 2026": Copenhagen (medium confidence).** October 20 is the detection date; disclosure was October 23. The "configuration error" comes from "secondary reporting" (UH entry 5), and the research does not say that BleepingComputer is that source. The university's own words are that the attacker came in "through one of the university's test environments". Proposed: "University of Copenhagen, about 525,000 people, through a test system that held real personal data (BleepingComputer)".

**M4. "Universities, fall 2026": Michigan State quotation (low confidence).** "Potential credential compromise" is Michigan State's own phrase (UH entry 3). The research does not say whether The Record or the university's status page carries it. Proposed: "Michigan State reports a ``potential credential compromise'' (Michigan State; The Record)". Could not check.

**M5. "Canvas during finals": "records" versus "people" (medium confidence).** UH entry 15 says "about 275 million records"; MH record 1 says "275 million people". The 2 research reports disagree on the unit. Keep "[verify]" and check the unit against the source. Also the institution count is "about 8,800 to 9,000" in both reports; "about 9,000" is acceptable.

**M6. "Canvas during finals": "Instructure gave no count" (medium confidence).** MH record 1 says "I found no count confirmed by Instructure", which is weaker. Proposed: "Instructure confirmed the types of data. We found no count from Instructure".

**M7. "Canvas during finals": Brown (medium confidence).** Current: "Brown was among the Canvas customers with exposed data". UH entry 20: Brown's chief information officer said exposed data "may include" names, emails, student ID numbers, and Canvas messages. No source is cited on the line. Proposed: "Brown was among the affected Canvas customers. Its exposed data may include names, emails, student ID numbers, and Canvas messages (Brown Daily Herald)".

**M8. "Ivy League, 2025": citations (medium confidence).** (a) "(Harvard Crimson)" covers Harvard only. The Princeton source in UH entry 24 is eSecurity Planet. Proposed: "(eSecurity Planet; Harvard Crimson)". UH entry 25 says "a voice phishing call" for Harvard and does not say "to an employee". (b) The SecurityWeek article in UH entry 23 is titled for Penn and Phoenix; the Dartmouth figure is marked "secondary source" and Harvard's source is not named. (c) "that Oracle had not yet fixed": UH says "Unpatched or zero-day". My background knowledge (not rechecked) is that attackers used CVE-2025-61882 before Oracle's patch, so the slide is probably right. Keep "[verify]".

**M9. "Paycheck theft": bullet 4 (high confidence; primary source read).** Current: "They compromised 11 accounts at 3 universities, and they targeted about 6,000 addresses at 25 universities". Microsoft: "11 successfully compromised accounts at three universities that were used to send phishing emails to nearly 6,000 email accounts across 25 universities." Proposed: "They used 11 compromised accounts at 3 universities to send phishing emails to nearly 6,000 addresses at 25 universities". The "[verify]" flag on this slide can be removed for the numbers.

**M10. "Paycheck theft": closing line (high confidence; primary source read).** Current: "A code from a text message or an app did not stop this attack". Microsoft: "In multiple instances, compromised accounts did not have MFA enabled. In other cases, users were tricked into disclosing MFA codes". Microsoft does not say which kind of code. Proposed: "Some accounts had no second step. For the others, a one-time code did not stop this attack".

**M11. "Takeaways: recent hacks": Oracle as a "vendor's breach" (low confidence).** The Oracle case was a flaw in vendor software that the universities ran, not a breach of Oracle. Proposed: "A vendor's breach or flaw can become our breach (Canvas, Oracle)."

## Attacker-claim labels

- Labeled correctly: BYOD's 1 million Social Security numbers; ShinyHunters' 275 million and 9,000.
- Needs a label: the ShinyHunters attribution itself on "Canvas during finals" (S3).
- No unlabeled attacker numbers found on the 6 slides. The slides correctly omit the Michigan State 1.3 million and the Penn 1.2 million claims.

## Reasoning notes

- I rated a finding substantive when the slide states something the research does not support (a date, a count, a quotation's speaker, or a confirmed figure that the source calls potential). I rated wording and citation gaps as minor.
- I did not edit any file other than this report.
