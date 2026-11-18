# Cyberattacks on universities, research institutions and their vendors, January 2025 to November 2026

- Language model: claude-fable-5-2
- Prompt version: v1
- Report date: 2026-11-12
- Purpose: source list for a university faculty briefing on cybersecurity

## How far to trust this report (read first)

**Page fetching was blocked in this session.** Every direct fetch (WebFetch and curl through the proxy) of bleepingcomputer.com, insidehighered.com, vanderbilthustler.com, dailylobo.com and vanderbilt.edu was refused by the network policy. Everything below therefore rests on **web search results and the search tool's extracts of the pages**, not on my own reading of the full articles or of any university notice or attorney general filing.

What that means in practice:

- "Verified" in this report means: the incident appears in search results from at least one named, established outlet or the institution's own page, and the details agree across results. It does not mean I read the primary document.
- Exact figures, dates and quotations should be checked against the linked page before they go on a slide.
- Items I could not confirm are marked **[unconfirmed]**. Items that come partly from my own background knowledge and were not re-checked in this session are marked **[not re-verified this session]**.
- Wikipedia was not used as a source.
- To lift this limit, the hosts above (and other news and .edu hosts) need to be allowed in the session's network settings.

A second general caution: for the newest incidents (Vanderbilt, University of New Mexico, Michigan State) the large numbers come from the attackers, not from the universities.

---

## Part 1. 2026 incidents (most weight)

### 1. Vanderbilt University, ransomware, 9 November 2026 (ongoing)

- **What happened:** A ransomware attack was detected on Monday 9 November. The university told students, faculty and staff to shut down university devices and leave campus Wi-Fi. A gang calling itself BYOD claimed the attack.
- **How they got in:** Not stated by any source found.
- **Number affected:** The attackers claim more than 1 million Social Security numbers plus research, student and employee records. **Attacker claim only.** Vanderbilt has not confirmed the group, the data theft or whether devices were encrypted.
- **Disruption:** The university said classes proceeded as scheduled, but students reported professors cancelling classes or switching to printed handouts and phone hotspots. Wi-Fi, Okta, Outlook, Brightspace, Zoom and YES were declared safe again on Tuesday 10 November. PeopleSoft and CampusPrint stayed restricted. The university said full recovery could take "multiple weeks". Campus computers reportedly played an audio message from the gang (The Register, citing the student paper). IT staff reportedly went into classrooms to tell faculty not to use university devices.
- **Research data:** The attackers claim access to research data [unconfirmed]. Nashville Scene reported the attack reached cloud storage (OneDrive and Box). Local reporting quoted one person whose research on university systems was inaccessible and who fell back on personal backups. Faculty with grant deadlines were reportedly directed to the research office.
- **Other:** FBI Nashville confirmed it is involved. A class action was filed by a former master's student. Vanderbilt Health says it is a separate legal entity and is aware of the incident.
- **Sources:**
  - https://www.bleepingcomputer.com/news/security/vanderbilt-university-hit-in-byod-ransomware-attack-data-theft-claimed/
  - https://www.theregister.com/cyber-crime/2026/11/10/ransomware-threat-blares-from-vanderbilt-university-computers-during-cyberattack/5308687
  - https://www.axios.com/2026/11/09/vanderbilt-university-attack-phone-devices-computer
  - https://www.insidehighered.com/news/tech-innovation/administrative-tech/2026/11/11/ransomware-gang-says-it-hacked-vanderbilt
  - https://cyberscoop.com/vanderbilt-university-ransomware-attack-byod/
  - https://vanderbilthustler.com/2026/11/09/breaking-vanderbilt-wi-fi-networks-reportedly-hacked-vuit-yet-to-confirm/
  - https://www.nashvillescene.com/news/pithinthewind/vanderbilt-university-ransomware-hack-update/article_2c82fa08-50e2-4642-9826-13003a662adc.html
  - https://www.newschannel5.com/news/vanderbilt-university-resumes-normal-schedule-amid-after-campus-wide-cybersecurity-incident

### 2. University of New Mexico Health Sciences Center, 26 October 2026

- **What happened:** A cyberattack on Monday 26 October forced the health system to divert ambulances and cancel all appointments and outpatient surgeries that day. The same BYOD gang claimed it (found by BleepingComputer).
- **How they got in:** Not stated. The university has not called it ransomware.
- **Number affected:** None confirmed. The gang claims Social Security numbers and patient and appointment data. UNM Health urged skepticism and said the attack "affected some end-user devices but did not penetrate core systems or servers."
- **Disruption:** Classes at the health sciences schools were cancelled on 26 and 27 October. The student paper's headline says research was suspended through Tuesday. Hospitals and appointments resumed on Tuesday.
- **Research data:** Not reported.
- **Sources:**
  - https://www.bleepingcomputer.com/news/security/unm-health-ransomware-attack-disrupts-patient-care-surgeries/
  - https://www.dailylobo.com/article/2026/10/cyberattack-forces-closure-of-unm-hsc-and-suspension-of-classes-research-through-tuesday
  - https://www.helpnetsecurity.com/2026/10/27/university-of-new-mexico-hospitals-cyberattack/
  - https://www.hipaajournal.com/university-new-mexico-health-system-cyberattack/
  - https://www.abqjournal.com/news/unm-health-computer-systems-back-online-after-cyberattack/3149586

### 3. Michigan State University, October 2026 (claimed by BYOD in November)

- **What happened:** On 1 October MSU emailed all users to reset their NetID password (minimum 15 characters) after suspicious activity. In November the BYOD gang listed MSU on its leak site.
- **How they got in:** MSU describes a "potential credential compromise" and says evidence does not show a successful compromise of central Active Directory.
- **Number affected:** The gang claims data on 1.3 million current and former students (The Record) or "more than 1 million" / 1.03 million (other outlets). **Attacker claim only.** MSU says there is no evidence other data was accessed, changed or stolen.
- **Disruption:** University-wide password reset. Status page marked resolved 30 October.
- **Research data:** Not reported.
- **Sources:**
  - https://therecord.media/michigan-state-university-byod-gang-cyber-incident
  - https://servicestatus.msu.edu/incidents/956460
  - https://wwmt.com/news/state/ransomware-group-claims-theft-of-data-tied-to-13m-spartans-as-msu-investigates

### 4. Technical University of Munich (TUM), reported 9 November 2026

- **What happened:** Attackers stole the central login passwords of everyone registered with the myTUM portal, including an administrator's, and used them to attack the campus management system TUMonline, which was taken offline.
- **How they got in:** Initial entry not disclosed. The follow-on attack used the stolen passwords. One report says accounts protected by multi-factor authentication were not affected [single secondary source].
- **Number affected:** Not given by TUM. A figure of about 60,000 appears in one blog [unconfirmed].
- **Disruption:** TUMonline offline. All users must change passwords and set up two-factor authentication before logging in.
- **Research data:** Not reported.
- **Sources:**
  - https://www.tum.de/en/news-and-events/all-news/press-releases/details/it-security-incident-at-tum
  - https://www.theregister.com/cyber-crime/2026/11/09/portal-breach-at-germanys-top-university-exposes-every-registered-users-password/5308380

### 5. University of Copenhagen, detected 20 October 2026, disclosed 23 October

- **What happened:** An attacker reached a database of personal data through one of the university's test environments. The university said "It was a mistake to store a dataset of this nature in a test environment."
- **How they got in:** A configuration error in a test environment (per secondary reporting).
- **Number affected:** About 525,000 people (names, national identity numbers, phone numbers, personal email), **stated by the university**. On 25 October it added about 20,000 staff and students whose door PIN codes were exposed.
- **Disruption:** Physical access to some critical campus locations was restricted until new access codes were issued. Reported to the Danish Data Protection Agency. The student council chair criticised the three-day delay.
- **Research data:** The university says it has no reason to believe research data was accessed.
- **Sources:**
  - https://www.bleepingcomputer.com/news/security/university-of-copenhagen-data-breach-exposes-data-of-525-000-people/
  - https://www.teiss.co.uk/news/university-of-copenhagen-confirms-hackers-accessed-test-environment-holding-data-on-525000-people-18364
  - https://omnibus.au.dk/en/archive/show/artikel/ku-er-ogsaa-blevet-ramt-af-hackerangreb

### 6. Technical University of Denmark (DTU), 15 to 20 September 2026, disclosed 2 October

- **What happened:** Attackers got into DTUBasen, the university's identity and access system, and downloaded a large amount of data. The intrusion went unnoticed for about five days.
- **How they got in:** According to DTU's timeline as relayed by NordiskPost, a compromised external guest account, followed by exploitation of the identity system to gain administrator rights.
- **Number affected:** DTU says it cannot determine exactly what was taken and treats about 200,000 users as potentially affected (about 40,000 active, about 160,000 former). Data includes national identity numbers, names, addresses.
- **Disruption:** Not reported.
- **Research data:** Not reported.
- **Sources:**
  - https://www.dtu.dk/english/newsarchive/2026/10/cyberattack-on-dtu_notification-of-a-personal-data-breach
  - https://www.nordiskpost.com/2026/10/17/danish-university-cyberattack-five-days/
  - https://omnibus.au.dk/en/archive/show/artikel/dtu-udsat-for-alvorligt-hackerangreb

### 7. Aarhus University, discovered 19 October 2026

- **What happened:** An intruder accessed one university server and targeted the passwords of about 1,700 current and former students and staff. The university says the attempts failed.
- **How they got in:** Not stated.
- **Number affected:** About 1,700 accounts targeted, per the university. No confirmed leak.
- **Sources:** https://www.nordiskpost.com/2026/10/23/cyberattack-aarhus-university-1700-passwords/

### 8. UiT The Arctic University of Norway, detected 29 October 2026

- **What happened:** UiT reported a targeted attack by a well-resourced, unidentified actor. Some servers were entered and taken offline. Some library and language services were still down on 3 November.
- **How they got in / numbers:** Not stated.
- **Confidence:** Low. Found only in secondary sources [unconfirmed against UiT or NRK directly].
- **Sources:** https://www.cybergensecurity.com/university-of-copenhagen-breach-525000-uit-tromso-targeted-attack

### 9. Osaka Metropolitan University (Japan), 2 October 2026

- **What happened:** A suspected ransomware attack stopped about 500 servers. Classes were cancelled across faculties for several days. Email and administrative systems were down.
- **How they got in:** Not stated.
- **Number affected:** The affected systems hold at least 130,000 personal records, per the university. Theft not confirmed. One source says much of the backup data was also encrypted [unconfirmed]. A monthly vendor roundup attributes the claim to BYOD [unconfirmed].
- **Confidence:** Medium-low. English-language sources are secondary.
- **Sources:**
  - https://news.sbs.co.kr/english/article.do?news_id=N1008780894
  - https://www.blackfog.com/the-state-of-ransomware-october-2026/

### 10. University of Illinois Chicago, College of Medicine, disclosed about 5 October 2026

- **What happened:** UIC confirmed a ransomware attack on its College of Medicine with data theft and temporary disruption of internal systems. A group called Booba claimed 344 GB.
- **How they got in:** Not stated.
- **Number affected:** Not disclosed by UIC. The 344 GB is an attacker claim. Intrusion date of August 2026 comes from a vendor roundup [unconfirmed].
- **Disruption:** Main network and UI Health patient care reportedly unaffected.
- **Research data:** Not stated.
- **Sources:**
  - https://dysruptionhub.com/uic-college-medicine-ransomware/
  - https://www.blackfog.com/the-state-of-ransomware-october-2026/
  - (The Record was cited as the original report. I did not find its URL.)

### 11. University of Texas at San Antonio, 15 to 16 August 2026

- **What happened:** The university detected unauthorized activity at the edge of its network the weekend before term and took systems offline as a precaution.
- **How they got in:** Not stated. The university says the activity was stopped before core systems.
- **Number affected:** None. The university says there is no evidence data was accessed or taken.
- **Disruption:** The start of the fall semester was delayed three days, to 24 August. Phones, email and network access were affected. All students had to reset passphrases in staggered windows.
- **Why it matters:** A blocked attack still cost three teaching days.
- **Sources:**
  - https://www.insidehighered.com/news/tech-innovation/administrative-tech/2026/08/20/cyber-threat-delays-start-classes-ut-san
  - https://www.tpr.org/education/2026-08-17/ut-san-antonio-systems-go-offline-after-attempted-cybersecurity-breach
  - https://www.helpnetsecurity.com/2026/08/19/ut-san-antonio-cyberattack-fall-semester-delay/

### 12. Newcastle University (UK), alerted 27 July 2026

- **What happened:** An extortion group called ExfilSquad listed the university on 26 July. The university confirmed unauthorized access to personal information.
- **How they got in:** The university says a configuration issue on one of its admissions systems.
- **Number affected:** The attackers claim about 440,000 records including admissions information. **Attacker claim.** The university has not confirmed the number and says the data was limited to names, addresses, emails and phone numbers, with no admissions or exam data.
- **Research data:** Not involved, as far as reported.
- **Sources:**
  - https://www.computing.co.uk/news/2026/security/newcastle-university-data-breach-exfilsquad
  - https://www.intelligentciso.com/2026/08/10/newcastle-university-confirms-unauthorised-access-to-personal-data/

### 13. University of Nottingham (UK), 9 June 2026

- **What happened:** The ShinyHunters group listed the university on its leak site. The university confirmed that "a significant amount of data in our student record system has been accessed by a well-known cybercriminal group."
- **How they got in:** Sources disagree. One says a zero-day flaw in the internet-facing Oracle PeopleSoft Campus Solutions system. Another says the university attributed it to a vulnerability in Oracle WebLogic underneath that system. Both point to a software vulnerability. [exact flaw unconfirmed]
- **Number affected:** About 454,600 to 455,000 unique email addresses, counted by Have I Been Pwned from the leaked files. Not a university count. Data reportedly includes passport numbers, disabilities, ethnicity and fee payment details. The attackers claimed more than 40 GB.
- **Research data:** Not reported.
- **Sources:**
  - https://www.theregister.com/cyber-crime/2026/06/11/shinyhunters-raids-nottingham-uni-for-student-alumni-data/5253961
  - https://www.bleepingcomputer.com/news/security/nottingham-university-data-breach-affects-over-450-000-students/
  - https://www.securityweek.com/university-of-nottingham-confirms-breach-after-hackers-leak-data/
  - https://haveibeenpwned.com/Breach/UniversityOfNottingham

### 14. University of Oxford, CareerConnect careers platform, breached 28 May 2026

- **What happened:** A careers platform run by an outside supplier (Group GTI) was breached. Names, emails and, for some users, encrypted passwords were exposed.
- **How they got in:** Through the vendor. Oxford's own systems were not compromised. Users who signed in with single sign-on were not affected.
- **Number affected:** Not found.
- **Note:** The student paper called it Oxford's second major breach of the term (the first being Canvas).
- **Sources:**
  - https://cherwell.org/2026/06/04/oxford-hit-by-second-major-data-breach-of-the-term/
  - https://www.bleepingcomputer.com/news/security/oxford-university-discloses-data-breach-after-careerconnect-platform-hack/

### 15. Instructure Canvas (learning-management vendor), 29 April to mid-May 2026

- **What happened:** Instructure detected unauthorized activity in Canvas on 29 April. On 7 May the same actor used a second vulnerability to change the login pages users saw, at institutions including Harvard, Princeton, Penn and Brown, during final exams at some campuses. ShinyHunters claimed the attack and demanded payment.
- **How they got in:** Through Canvas "Free-For-Teacher" accounts (confirmed by Instructure, per a US Department of Education alert), then a second Canvas vulnerability.
- **Number affected:** The attackers claim about 275 million records and 3.65 TB from about 8,800 to 9,000 institutions. **Attacker claim.** One count puts defaced login portals at roughly 330 institutions. Instructure says the data was usernames, names, email addresses, student ID numbers, course names, enrollment data and Canvas inbox messages, with no evidence of passwords, birth dates, government IDs or financial data.
- **Ransom:** Third-party reports say Instructure reached an agreement with the group around 11 May and that the data was returned or destroyed. I could not confirm a ransom payment from an official Instructure source. [unconfirmed]
- **Research data:** Not reported. Course messages between faculty and students were in scope.
- **Sources:**
  - https://www.instructure.com/incident_update
  - https://fsapartners.ed.gov/knowledge-center/library/electronic-announcements/2026-05-12/technology-security-alert-ongoing-cybersecurity-incident-involving-canvas-learning-management-system-updated-may-29-2026
  - https://www.insidehighered.com/news/tech-innovation/administrative-tech/2026/05/05/pay-or-leak-hackers-target-big-higher-ed-vendor
  - https://www.browndailyherald.com/article/2026/05/brown-canvas-hacked-in-nationwide-cyberattack
  - https://it.umd.edu/security-privacy-audit-risk-and-compliance-services-sparcs/topic-week/2026-canvas-data-breach-what-we-know
  - https://www.umass.edu/it/instructure-incident

### 16. University of Mississippi Medical Center, 19 February 2026

- **What happened:** A ransomware attack took down the network, including the Epic medical record system. All 35 clinics statewide closed for several days and elective surgeries were cancelled. Hospitals and emergency departments stayed open.
- **How they got in / numbers:** Not stated in results found.
- **Disruption:** Reports say the impact reached the medical schools in Jackson as well.
- **Sources:**
  - https://www.mpbonline.org/blogs/news/the-university-of-mississippi-medical-center-hit-by-ransomware-attack-closes-clinics-statewide/
  - https://www.mississippifreepress.org/university-of-mississippi-medical-center-hit-by-ransomware-attack-closes-clinics-and-cancels-services/
  - https://www.hipaajournal.com/ummc-ransomware-attack/

### 17. Sapienza University of Rome, about 2 February 2026

- **What happened:** A cyberattack took the university's network, website and student system (Infostud) offline for days. Students could not book exams or check tuition payments.
- **How they got in:** Not stated. Italian press reported ransomware and named a group (Femwar02). Neither is officially confirmed.
- **Number affected:** Not stated.
- **Sources:**
  - https://www.timeshighereducation.com/node/741263
  - https://www.scworld.com/brief/la-sapienza-university-hit-by-ransomware-attack-operations-disrupted
  - https://www.techradar.com/pro/security/winter-olympics-hit-by-suspected-russian-origin-cyberattack-as-one-of-europes-largest-universities-also-reports-major-cybersecurity-incident

### 18. University of Bremen (Germany), announced 22 September 2026

- **What happened:** Attackers exploited a previously unknown software flaw on a small number of departmental systems, which were taken offline and patched. The university says central services and student data were not affected. A separate report describes attackers accessing one chair's server on 16 to 18 September and threatening to publish its data [unconfirmed whether it is the same event].
- **How they got in:** Zero-day software vulnerability (university statement).
- **Research data:** Possibly, if the chair-server report is the same event [unconfirmed].
- **Sources:** https://www.uni-bremen.de/en/university/university-communication-and-marketing/all-news/details/cyberangriff-auf-universitaet-bremen

### 19. University of Hawaii Cancer Center (attack August 2025, disclosed January to March 2026)

- **Correction to the lead:** The intrusion was 31 August **2025**, not August 2026. Public disclosure and notification came in 2026.
- **What happened:** Ransomware encrypted servers of the Epidemiology Division supporting one research project and files were stolen. Clinical care and the medical record system were not affected.
- **How they got in:** Not stated.
- **Number affected:** About 1.2 million. Breakdown reported as 87,493 confirmed study participants plus about 1.15 million people in historical records (1990s recruitment lists that used Social Security numbers as identifiers). Sources cite 1.15 million, 1.2 million and 1.24 million.
- **Ransom:** BleepingComputer's account, per the search extract, says the university paid to get a decryption tool and a promise the data was destroyed. Another search result could not confirm the payment. Treat as reported, not settled.
- **Research data:** Yes. This is the clearest case in the period of research participant data being stolen and held to ransom. People were not notified for about four months (Spectrum News).
- **Sources:**
  - https://www.bleepingcomputer.com/news/security/university-of-hawaii-cancer-center-hit-by-ransomware-attack/
  - https://www.securityweek.com/1-2-million-affected-by-university-of-hawaii-cancer-center-data-breach/
  - https://www.bankinfosecurity.com/cancer-center-research-study-hack-affects-12m-a-30912
  - https://spectrumlocalnews.com/hi/hawaii/news/2026/01/12/hackers-accessed-university-of-hawaii-cancer-center-patient-data--they-weren-t-immediately-notified
  - https://www.hipaajournal.com/university-of-hawaii-cancer-center-ransomware-data-breach/

### 20. Brown University: two separate items

- **Brown University and Canvas, May 2026:** Brown was among the schools hit in the Canvas incident (entry 15). Brown's chief information officer said exposed data may include names, emails, student ID numbers and Canvas messages. Users who logged in during a specific window were told to reset their Brown passwords.
  - https://www.browndailyherald.com/article/2026/05/brown-canvas-hacked-in-nationwide-cyberattack
- **Brown University Health (formerly Lifespan), access December 2025, disclosed mid-2026:** Unauthorized access to a historic file server at a Lifespan Physician Group location in Massachusetts. More than 311,000 patients affected per the Boston Globe (another source says about 200,000). This is the affiliated health system, not the university's academic network. Entry method not stated.
  - https://www.bostonglobe.com/2026/08/06/metro/brown-lifespan-medical-data-breach-massachusetts-vermont/
- **Not found:** Any separate 2025 cyberattack on Brown University's own network. [unconfirmed that none exists]

---

## Part 2. 2025 incidents

### 21. Columbia University, May to June 2025

- **What happened:** An outsider had access to Columbia's network from about 16 May 2025. Reported discovery dates vary (an outage on 24 June; one source says 8 July).
- **How they got in:** Not disclosed by Columbia.
- **Number affected:** 868,969, **confirmed by Columbia in its Maine attorney general filing**. Applicants, students, employees and family members. Data included Social Security numbers. No medical center patient records.
- **Attacker claim:** 460 GB stolen. A politically motivated hacker told Bloomberg the aim was admissions data [not re-verified this session].
- **Sources:**
  - https://www.securityweek.com/columbia-university-data-breach-impacts-860000/
  - https://securityaffairs.com/180948/data-breach/columbia-university-data-breach-impacted-868969-people.html

### 22. University of Pennsylvania, 31 October 2025 (email blast and data theft)

- **What happened:** Attackers sent offensive mass emails from Graduate School of Education addresses and said they had taken donor and alumni data.
- **How they got in:** Penn said "a sophisticated identity impersonation commonly known as social engineering." Reports say an employee's single sign-on account was used to reach development and alumni systems and the mass-mailing platform.
- **Number affected:** The attackers claimed about 1.2 million donors, alumni and students. **Attacker claim.** Later figures conflict: one outlet reports about 624,000 [unconfirmed]; a February 2026 Daily Pennsylvanian story includes a statement that the incident "impacted less than 10 people" for notification purposes [attribution unconfirmed]. I could not reconcile these.
- **Follow-up:** In February 2026 ShinyHunters appeared to take responsibility and released more internal files. Penn said it was adding training against social engineering. Multiple class actions.
- **Sources:**
  - https://www.thedp.com/article/2025/11/penn-gse-emails-hack-security-breach-donors
  - https://www.thedp.com/article/2026/02/penn-hack-gse-cybersecurity-breach-trump
  - https://www.inquirer.com/education/upenn-data-breach-hack-email-20251104.html

### 23. Oracle E-Business Suite campaign (Harvard, Penn, Dartmouth, University of Phoenix and others), August to December 2025

- **What happened:** The Clop extortion group exploited a flaw in Oracle's E-Business Suite (finance and HR software), tracked as CVE-2025-61882, and stole data from many organizations.
- **How they got in:** Unpatched or zero-day vendor software.
- **Numbers:**
  - University of Phoenix: 3,489,274 people (university filing).
  - Dartmouth: more than 35,000, including Social Security numbers and bank details [secondary source; date given inconsistently].
  - Penn: 1,488 Maine residents per the Maine attorney general; total not disclosed.
  - Harvard: confirmed it affected "a limited number of parties associated with a small administrative unit." The attackers posted a claimed 1.3 TB.
  - Others named in results: Tulane, University of the Witwatersrand, Baker University [not checked].
- **Sources:**
  - https://www.securityweek.com/penn-and-phoenix-universities-disclose-data-breach-after-oracle-hack/
  - https://www.thedp.com/article/2025/12/penn-cybersecurity-breach-oracle-business-hack
  - https://therecord.media/university-of-phoenix-data-breach
  - https://www.infosecurity-magazine.com/news/university-phoenix-breach-clop/

### 24. Princeton University, 10 November 2025

- **What happened:** The Advancement (alumni and donor) database was accessed after a phone-based phishing attack on an employee with access to it. Records cover alumni, donors, students, faculty and parents.
- **How they got in:** Phone call to an employee.
- **Number affected:** Not given. Princeton advised people to assume their contact information may be involved.
- **Sources:** https://www.esecurityplanet.com/threats/princeton-university-confirms-data-breach-affecting-advancement-records/

### 25. Harvard University, Alumni Affairs and Development, discovered 18 November 2025

- **What happened:** Alumni and development systems were accessed after a voice phishing call.
- **How they got in:** Phone call.
- **Number affected:** Harvard's notice gave no number that I could confirm. A figure of 851,000 accounts appears in TechRadar and others [unconfirmed against Harvard].
- **Sources:**
  - https://www.thecrimson.com/article/2025/11/22/alumni-affairs-data-breach/
  - https://techradar.com/pro/security/harvard-university-reveals-data-breach-exposed-851-000-accounts

### 26. PowerSchool (K-12 student information vendor), intrusion late 2024, reported January 2025

- **What happened:** A 19-year-old used a contractor's stolen login to enter PowerSchool's customer support portal and took records of about 60 million students and about 10 million educators, then demanded about $2.9 million. PowerSchool paid a ransom. He was sentenced to four years in prison in October 2025.
- **How they got in:** Stolen contractor credential. Earlier reporting said the account lacked multi-factor authentication [not re-verified this session].
- **Relevance:** K-12 rather than higher education, but the model case for a vendor breach.
- **Sources:**
  - https://cyberscoop.com/powerschool-hacker-matthew-lane-sentenced/
  - https://www.the74million.org/article/powerschool-hacker-thankful-i-got-caught-sentenced-to-4-years-in-prison/

---

## Part 3. Attacks aimed at individual faculty and researchers

### 27. "Payroll pirate" salary diversion (Microsoft, October 2025; still active in 2026)

- **What happened:** A group Microsoft tracks as Storm-2657 has targeted US university employees since March 2025. A phishing email leads to a fake login page that also captures the one-time code. The attackers then log into Workday through single sign-on, change the direct deposit bank account, and set inbox rules that delete the warning emails.
- **Scale (Microsoft):** 11 compromised accounts at 3 universities were used to send phishing emails to nearly 6,000 addresses at 25 universities.
- **Lures:** Fake campus illness alerts, misconduct accusations, compensation notices.
- **2026 continuation:** UC Davis (September 2026) warned of rising account takeovers meant to redirect paychecks, sometimes sent from real compromised campus accounts. NC State added controls on direct deposit changes. Seton Hall warned in April 2026.
- **Sources:**
  - https://www.microsoft.com/en-us/security/blog/?p=142956 (Microsoft post, short link from search results)
  - https://www.theregister.com/2025/10/10/microsoft_payroll_pirate/
  - https://therecord.media/universities-phishing-payroll-pirates
  - https://iet.ucdavis.edu/technews/phishing-attempts-target-uc-davis-accounts

### 28. State-linked targeting of researchers with fake invitations (2026)

- **China-aligned (Proofpoint, October 2026, group "TA419"):** Emails impersonating a former White House science official, an economist and an AI company employee invited AI policy experts at universities, think tanks and law firms to advise. After a reply, the attackers sent links that stole Microsoft 365 sessions.
  - https://www.proofpoint.com/us/blog/threat-insight/hallucinating-credibility-china-aligned-ta419-impersonates-its-way-us-ai-policy
  - https://cyberscoop.com/china-cyber-espionage-ta419-phishing-us-ai-policy-experts/
- **Taiwan research affiliates (Cisco Talos, October 2026):** Fake event invitations with a fake Google Forms link that harvested Google passwords and one-time codes.
  - https://thehackernews.com/2026/10/uat-11985-uses-fake-event-invites-to.html
- **Russia-linked (Google and Microsoft reports, 2026):** Fake conference registration pages that end in a Microsoft "device code" prompt. A late May 2026 wave aimed at US-based academics and Russia researchers. Microsoft reported at least 13 campaigns by the group Star Blizzard from January to August 2026, most with event-invitation subject lines. [Found only through secondary summaries. Primary vendor posts not located.]
  - https://securityaffairs.com/197630/apt/fake-conferences-oauth-and-whatsapp-inside-russias-new-espionage-tactics.html
  - https://thehackernews.com/2026/09/russias-star-blizzard-targets-100.html
- **North Korea-linked (Genians, August 2026):** Conference invitations offering travel and an honorarium, with a disguised file in the follow-up. Targets were Ukrainian experts. [secondary source]
- **Common pattern across reports:** The first email is harmless and only asks for a reply. The harmful link or file comes later.

### 29. Fake journal and editor emails

- No 2026 campaign using fake peer-review invitations to steal passwords was found. [unconfirmed that none exists]
- Found: a journal (Journal of International Students, May 2026) warning that fraudsters were impersonating its editors from Gmail accounts and asking for wire transfers. A 2025 paper lists red flags for predatory-journal phishing.
  - https://www.ojed.org/jis/announcement/view/150
  - https://link.springer.com/article/10.1007/s10805-025-09679-z

### 30. Voice-clone and deepfake impersonation

- **No documented case** was found of a named professor, chair or dean being voice-cloned to defraud a university in 2025 to 2026. [unconfirmed]
- Found: general higher-education guidance (EdTech Magazine, June 2026); a credit-rating agency view that generative AI has "sharply amplified" phone-based social engineering against universities (Moody's, via trade press); and an account by Dartmouth professor Hany Farid that his own voice was cloned to call an attorney (Science News).
  - https://edtechmagazine.com/higher/article/2026/06/higher-ed-institutions-ramp-defenses-against-deepfakes
  - https://www.sciencenews.org/article/voice-clone-deep-end-podcast
  - https://www.secureworld.io/industry-news/ai-higher-education-cyber-risk
- The best documented real cases of phone-based deception at universities are Princeton and Harvard in November 2025 (entries 24 and 25). No source says those calls used cloned voices.

---

## Part 4. Leads checked and dropped or corrected

- **University of Hawaii Cancer Center "August 2026":** Wrong year. Intrusion was 31 August 2025 (entry 19).
- **Howard University ransomware "2026":** Dropped. The coverage that surfaced is the September 2021 attack.
- **Vanderbilt "Wi-Fi networks hacked":** Early student-paper headline only. No source states how the attackers got in.
- **Mount Royal University (Canada), June 2026; University of Sydney code repository, December 2025; Monmouth University; University of Dallas; Nelson University; Western Sydney University 2025 to 2026:** Appeared in trackers or law-firm pages only. Not verified. Not counted.
- **K-12 vendor items (Infinite Campus, March 2026; ETS, September 2026):** Appeared in one secondary source each. Not verified. Not counted.
- **Canvas ransom payment:** Reported by third parties, not confirmed from Instructure.

---

## Part 5. Sector statistics (with year and denominator)

| Source | Year | Figure | Denominator / basis |
|---|---|---|---|
| Sophos, State of Ransomware in Education 2026 | Survey January to March 2026 | Higher education: compromised credentials were the top entry route at 27%, phishing 23%; exploited vulnerabilities 13% (35% the year before). 69% restored from backups. 53% said they lacked skills to detect and stop the attack in time (35% across all sectors). Leadership changed after the attack at 29%. | 95 higher-education organizations hit by ransomware in the prior 12 months (plus 131 lower-education) |
| Same | 2026 | Identity-based techniques involved in 85% of education ransomware attacks (79% across sectors). Average recovery cost $2.26 million (cross-sector $1.7 million). | 226 education organizations (all levels) |
| Verizon Data Breach Investigations Report 2026, Educational Services | 2026 edition | 1,302 incidents, 1,252 with confirmed data disclosure. System intrusion 52% of breaches. External actors 78%, internal 22%. Motive: financial 78%, espionage 21%. Stolen credentials in 65% of breaches that involved hacking. | 1,252 breaches (all education, worldwide, not only universities) |
| Comparitech education ransomware roundups | H1 2026 | 104 ransomware attacks on education worldwide (120 in H2 2025). Higher education up more than 8%, K-12 down 26%. | Publicly claimed or confirmed attacks tracked by Comparitech |
| Same | Q3 2026 | 77 attacks on education (50 in Q2). Higher education 45, up from 24. Note: its monthly roundups sum to 80, so the quarter figure is inconsistent by 3. | Same |
| Moody's (with Bitsight), via K-12 Dive | Reported 2026 | 57% of education-sector debt issuers surveyed reported a third-party (vendor) cyber incident since 2020, against 40% across all industries. | Moody's-rated issuers surveyed; sample size not found |
| Moody's cross-sector note, 1 April 2026 | 2026 | Educational institutions show the highest prevalence of unresolved known-exploited vulnerabilities. | Qualitative; figure not found |
| EDUCAUSE 2026 Top 10 | Published October 2025 | Issue number 1 is "Collaborative Cybersecurity": shared responsibility and end-user awareness. | 450 complete survey responses |
| EDUCAUSE 2026 Students and Technology Report | 2026 | 46% of surveyed students encountered a security threat in the previous academic year. | Sample size not found |

Statistics sources:
- https://www.sophos.com/en-us/blog/state-of-ransomware-in-education-2026
- https://www.verizon.com/business/resources/T343/reports/2026-dbir-data-breach-investigations-report.pdf
- https://www.verizon.com/business/resources/executivebriefs/2026-dbir-executive-summary.pdf
- https://www.comparitech.com/news/education-ransomware-roundup-h1-2026-stats-on-attacks-ransoms-and-data-breaches/
- https://www.comparitech.com/news/education-ransomware-roundup-q3-2026-stats-on-attacks-ransoms-and-data-breaches/
- https://www.govtech.com/education/k-12/ransomware-attacks-on-k-12-trend-down-higher-ed-trend-up-in-2026
- https://www.k12dive.com/news/cybersecurity-incidents-hit-over-50-of-schools-and-districts-in-past-year/872783/
- https://er.educause.edu/articles/2025/10/2026-educause-top-10-making-connections

All statistics were read from search extracts and secondary coverage, not from the reports themselves. Check before quoting.

---

## Part 6. Closing analysis

### (a) The incidents that would mean the most to professors

1. **Vanderbilt, November 2026.** Happening this week at a peer research university. Faculty were told mid-class to stop using their computers, a lab reportedly lost access to a semester of work, and recovery is expected to take weeks.
2. **University of Hawaii Cancer Center (2025 attack, 2026 disclosure).** A single research project's servers held 1990s participant lists with Social Security numbers. About 1.2 million people were affected by data a research group had kept for decades.
3. **Canvas, April to May 2026.** The course platform itself was breached during finals. Messages between faculty and students were among the exposed data, and no university could have prevented it.
4. **Payroll pirate (2025, continuing 2026).** The attack is aimed at the professor personally: one convincing email and the next paycheck goes to someone else, with the warning emails silently deleted.
5. **Princeton and Harvard, November 2025.** One phone call to one employee opened the donor and alumni database at each. No technical flaw was involved.
6. **Fake invitations from state-linked groups, 2026.** The lure is what academics say yes to: an invitation to speak, advise or attend, with a harmless first email.
7. **University of Texas at San Antonio, August 2026.** The attack was stopped and no data was lost, yet the semester started three days late.
8. **University of Copenhagen, October 2026.** Real personal data for 525,000 people was copied into a test environment. The same habit is common with research and teaching datasets.

### (b) Entry methods across the incidents verified

Counted: 27 entries (20 from 2026 in Part 1, entries 21 to 26 from 2025, and the payroll pirate campaign). The Oracle E-Business Suite campaign is counted once. Each entry is assigned its first reported entry method.

| Entry method | Count of 27 | Entries |
|---|---|---|
| Not stated publicly | 13 | Vanderbilt, UNM, Aarhus, UiT, TUM, Osaka, UIC, UTSA, Mississippi, Sapienza, Hawaii, Brown Health, Columbia |
| Software vulnerability (unpatched or zero-day) | 4 | Nottingham, Bremen, Canvas, Oracle E-Business Suite campaign |
| Deceiving a staff member by phone or impersonation | 3 | Princeton, Harvard alumni office, Penn (31 October) |
| Stolen or compromised login | 3 | Michigan State (described as potential), DTU (guest account), PowerSchool (contractor login) |
| Misconfiguration | 2 | Copenhagen, Newcastle |
| Vendor platform breached, university not at fault | 1 | Oxford careers platform |
| Phishing email | 1 | Payroll pirate |

Reading across categories:
- Of the 14 entries where a method was stated, 7 began with a person or a login (phone deception 3, stolen login 3, phishing 1).
- 4 of 27 originated at a vendor (Canvas, Oxford's careers platform, Oracle E-Business Suite, PowerSchool).
- In nearly half (13 of 27) the public still does not know how the attackers got in. Any claim about "the most common method" from news reports alone is weak. The Sophos survey (27% compromised credentials, 23% phishing among 95 higher-education victims) is the better basis.

### (c) What faculty did or could have done, only where a source says so

- **Vanderbilt:** The university told people to shut down devices, leave Wi-Fi, close Word documents and OneDrive and Dropbox folders, watch for unexpected file or permission changes and sign-in prompts, and "DO NOT attempt to investigate, troubleshoot, or resolve the issue yourself." One researcher reportedly continued working from personal backups. Instructors reportedly taught from printed handouts and phone hotspots.
- **Payroll pirate:** Microsoft says the attacks exploit the lack of phishing-resistant multi-factor authentication and that attackers create inbox rules to delete payroll warnings. UC Davis tells staff to reach the payroll site by typing the address, not clicking a link, and to deny login approval prompts they did not start.
- **DTU:** Advises people to be alert to suspicious emails, texts and calls, never to give a password on request, and not to approve unexpected login requests.
- **TUM:** Requires a password change and two-factor setup, and tells users to change the same password anywhere else they reused it. One report says accounts with multi-factor authentication were not affected.
- **Brown (Canvas):** Users who logged in during the affected window were told to reset their passwords.
- **Newcastle:** People were told to be alert for scams impersonating the university.
- **Penn:** The university said it would add training against impersonation attempts.
- **State-linked invitations:** The vendor reports advise verifying an unexpected invitation through a separate, known channel before replying or clicking.
- **Fake journal emails:** The affected journal asked recipients to report the messages and not engage; check the journal's official site.
- **Copenhagen:** The university itself said storing real personal data in a test environment was a mistake.
- **Hawaii:** No source states what researchers should have done. The reported facts are that 1990s files with Social Security numbers were still on research servers.
- **Princeton and Harvard:** No source found states what the individual employee could have done differently.

---

## Queries run

WebSearch (mode in brackets):

1. Vanderbilt University ransomware attack November 2026 [extended]
2. University of Hawaii Cancer Center ransomware research participants data breach [extended]
3. University of Copenhagen data breach October 2026 test environment [extended]
4. Newcastle University data breach 2026 records hackers claim [extended]
5. University of New Mexico Health Sciences Center cyberattack 2026 [extended]
6. Vanderbilt cyberattack classes labs research disrupted VUIT statement how attackers gained access Vanderbilt University Medical Center [extended]
7. BYOD ransomware gang universities victims 2026 initial access method [extended]
8. Technical University of Denmark DTU cyberattack 2026 Aarhus University cyberattack October 2026 [extended]
9. Canvas Instructure data breach 2026 ShinyHunters universities [extended]
10. Brown University cyberattack data breach 2025 2026 [extended]
11. university cyberattack 2026 ransomware classes canceled research data stolen [extended]
12. Michigan State University cybersecurity incident NetID password reset 2026 State News [extended]
13. university data breach notification 2026 attorney general filing ransomware (January OR February OR March OR April) 2026 university confirms [extended]
14. university cyberattack (June OR July OR August OR September) 2026 systems offline semester start [extended]
15. Columbia University data breach 2025 868,969 Maine attorney general hacktivist [standard]
16. University of Pennsylvania breach October 2025 social engineering SSO PennKey 1.2 million donors Oracle EBS [standard]
17. Princeton University November 2025 advancement database breach phone phishing employee; Harvard alumni affairs vishing November 2025 [standard]
18. Penn data breach final count Maine attorney general filing "fewer than 10" OR 624,000 Inquirer Daily Pennsylvanian Oracle E-Business Suite [extended]
19. Harvard Oracle E-Business Suite Clop breach October 2025 universities affected Dartmouth Phoenix count [standard]
20. PowerSchool breach December 2024 stolen credential no MFA 62 million students Matthew Lane sentenced [standard]
21. Microsoft "payroll pirate" Storm-2657 universities Workday direct deposit phishing [standard]
22. state-sponsored hackers target university researchers professors 2026 spear phishing fake conference invitation academics [extended]
23. Sophos State of Ransomware in Education 2026 higher education statistics [extended]
24. Verizon 2026 Data Breach Investigations Report educational services sector incidents breaches numbers [extended]
25. Comparitech education ransomware attacks 2026 count schools universities first half Q3 [extended]
26. Moody's higher education cyber risk 2026 report; EDUCAUSE 2026 Top 10 cybersecurity [extended]
27. university research data stolen ransomware lab 2026 researchers lost data grant unpublished [extended]
28. professor deepfake OR "voice clone" impersonation scam university faculty 2026 dean department chair gift card AI [extended]
29. 2026 breach student information system OR research software vendor universities Ellucian OR Blackbaud OR Turnitin OR Qualtrics OR Workday OR Anthology OR "Salesforce" universities data theft [extended]
30. Instructure Canvas security incident update May 2026 official statement Free-For-Teacher what data agreement unauthorized actor [extended]
31. konbriefing cyber attacks universities 2026 list student record system external party accessed significant amount of data [extended]
32. Howard University ransomware 2026 classes canceled TechCrunch [extended]
33. University of Hawaii Cancer Center notice ransomware legislature report phishing OR "how" attackers access paid ransom 1.2 million epidemiology study [standard]
34. The Record OR Inside Higher Ed university cyberattack 2026 (January OR February OR March) ransomware university confirms breach students notified [extended]
35. Penn GSE email hack October 31 2025 Penn notification number affected Daily Pennsylvanian final investigation donors [standard]
36. Sapienza University Rome ransomware February 2026 systems down [standard]
37. University of Mississippi Medical Center ransomware February 2026 clinics closed [standard]
38. British university discloses breach June 2026 week before Nottingham ShinyHunters university UK [extended]
39. UT San Antonio cyberattack August 2026 update investigation cause data [extended]
40. Nottingham University data breach 454,600 students how attackers gained access statement research data [extended]
41. Vanderbilt cyberattack update November 12 2026 faculty research office grant deadlines OneDrive Box labs [extended]
42. Register portal breach Germany's top university exposes every registered user's password November 2026 [extended]
43. UiT Arctic University of Norway targeted attack October 2026; University of Bremen zero-day September 2026; Oxford CareerConnect breach June 2026 [extended]
44. university payroll direct deposit phishing faculty 2026 paychecks diverted professors Workday university warns [extended]
45. Microsoft Star Blizzard 2026 academics fake event invites backdoor universities researchers; Proofpoint TA419 AI researchers universities October 2026 [extended]
46. University of Phoenix Oracle EBS breach 3.5 million; Dartmouth Oracle EBS breach; Western Sydney University breach 2025 2026 [standard]
47. university ransomware 2026 (April OR May OR June OR September) "university" confirms cyberattack classes research disrupted Record OR BleepingComputer -Vanderbilt -Canvas [extended]
48. University of Illinois Chicago College of Medicine ransomware August 2026 Booba notification number affected [extended]
49. Osaka Metropolitan University cyberattack 2026 classes suspended 500 servers [extended]
50. Register "Vanderbilt" ransomware threat blares from computers audio ransom note BYOD printers video details faculty told [extended]
51. phishing emails impersonating journal editors peer review invitation researchers credential theft 2026 academics warning fake collaborator [extended]
52. DTU cyberattack DTUBasen guest account compromised official notification what happened research data; Mount Royal University cyberattack June 2026 [extended]

Page fetches attempted and refused by network policy: bleepingcomputer.com (3), vanderbilthustler.com, insidehighered.com, dailylobo.com, vanderbilt.edu.
