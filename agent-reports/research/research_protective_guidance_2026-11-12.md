# Protective guidance for professors and research labs when AI finds flaws faster than vendors patch

- Language model: claude-fable-5-2
- Prompt version: v1
- Research date: 2026-11-12
- Status: draft for a faculty briefing. Read section 0 before citing any number.

## 0. How far to trust this report

**Access limits in this session.** The session's network policy blocked direct fetching of most government sites (cisa.gov, nist.gov, ncsc.gov.uk, ic3.gov, ftc.gov, owasp.org, openai.com, educause.edu, apple.com, security.googleblog.com, red.anthropic.com). Only anthropic.com, code.claude.com, microsoft.com and cloud.google.com could be fetched. The web search tool also hit its per-turn limit before topics 5, 7, 8 and 9 were fully covered. Nothing was worked around.

Each claim below carries one of these labels:

| Label | Meaning |
|---|---|
| **[fetched]** | I fetched the primary page and read the figure there. |
| **[primary snippet]** | The search tool returned text from the primary domain (for example a cisa.gov page), but I could not open the page. Check wording before quoting. |
| **[secondary]** | Only a third-party source reported it. Do not cite without checking the primary source. |
| **[unconfirmed]** | Not confirmed in this session. Some of these come from my background knowledge and are marked as such. |

**Before publication, someone should open each [primary snippet] URL and confirm the wording.** The URLs are real result URLs from the search tool; none was invented.

## 1. Software updates

### What changed in 2026

| Finding | Source and date | Label |
|---|---|---|
| Anthropic announced Project Glasswing on 7 April 2026. Its page says Claude Mythos Preview "has already found thousands of high-severity vulnerabilities". Launch partners were AWS, Apple, Broadcom, Cisco, CrowdStrike, Google, JPMorganChase, the Linux Foundation, Microsoft, NVIDIA and Palo Alto Networks, plus over 40 more organisations. Examples given: a 27-year-old OpenBSD flaw and a 16-year-old FFmpeg flaw, both since patched. | https://www.anthropic.com/glasswing (7 Apr 2026, updated 6 Oct 2026) | [fetched] |
| Anthropic's red-team write-up advised defenders to shorten patch cycles, enable automatic updates where possible, and treat dependency updates that carry a CVE as urgent. It reported that Mythos Preview built working privilege-escalation exploits for more than half of 40 candidate Linux kernel CVEs it selected from 100. | https://red.anthropic.com/2026/mythos-preview/ (Apr 2026), as reported by Help Net Security and techAU | [secondary] (primary page blocked) |
| As of 2 October 2026, maintainers had patched 516 of 6,157 vulnerabilities Anthropic had disclosed to them (about 8%). | Software Improvement Group blog, October 2026 update: https://www.softwareimprovementgroup.com/blog/mythos-project-glasswing-security/ | [secondary] [unconfirmed against Anthropic] |
| UK NCSC, "Preparing for a 'vulnerability patch wave'" by CTO Ollie Whitehouse, 1 May 2026. It expects a "forced correction" of technical debt across open-source, commercial and SaaS software. Advice: shrink the internet-facing attack surface first; adopt "update by default", ideally automatic, with exceptions for safety-critical systems; replace end-of-life technology because it cannot be patched. | https://www.ncsc.gov.uk/blogs/prepare-for-vulnerability-patch-wave | [primary snippet] |
| CISA Binding Operational Directive 26-04, "Prioritizing Security Updates Based on Risk", issued 10 June 2026; implementation guidance updated 25 August 2026. It binds US federal civilian agencies only. Urgency depends on four variables: public exposure, known exploitation (KEV listing), whether exploitation can be automated, and technical impact. The highest tier (exposed, automatable, total impact) has a 3-day deadline plus forensic triage. Low-risk items can wait for the next system upgrade. | https://www.cisa.gov/news-events/directives/bod-26-04-prioritizing-security-updates-based-risk and https://www.cisa.gov/news-events/directives/bod-26-04-implementation-guidance-prioritizing-security-updates-based-risk | [primary snippet]. I did not see the full timeline table. I found no CISA text that names Mythos or Glasswing as the reason. |
| CISA's "Patch Smarter, Not Harder" article, citing Verizon's 2026 Data Breach Investigations Report: organisations fully remediated only 26% of KEV-listed vulnerabilities in 2025, down from 38% the year before; median time to full resolution rose to 43 days. | https://www.cisa.gov/news-events/news/patch-smarter-not-harder (2026) | [primary snippet] |
| CISA Binding Operational Directive 26-02, "Mitigating Risk From End-of-Support Edge Devices", 5 February 2026. Federal agencies must inventory unsupported edge devices within 3 months and remove all of them within 18 months. CISA, FBI and UK NCSC "strongly encourage" other organisations to follow it. | https://www.cisa.gov/news-events/directives/bod-26-02-mitigating-risk-end-support-edge-devices ; fact sheet https://www.cisa.gov/resources-tools/resources/reducing-attack-surface-end-support-edge-devices | [primary snippet] |
| Mandiant M-Trends 2026 (23 March 2026, based on over 500,000 hours of 2025 incident investigations): exploits were the most common initial infection vector for the sixth year, at 32% of intrusions. Mean time to exploit fell to an estimated -7 days, "meaning exploitation is routinely occurring before a patch is even released." | https://cloud.google.com/blog/topics/threat-intelligence/m-trends-2026 | [fetched] |

### Recommendations for a professor

1. **Turn on automatic updates for the operating system, browser, phone and apps.** NCSC's 2026 position is "update by default", ideally automatically [primary snippet].
2. **Restart when asked.** Browser and operating-system updates do not take effect until the restart. I found no measured figure for restart delay in this session [unconfirmed]; the recommendation follows from how updates install.
3. **Replace anything that no longer receives updates**, with home routers first. An unsupported device cannot be patched at all (NCSC, 1 May 2026; CISA BOD 26-02, 5 Feb 2026) [primary snippet]. The federal 18-month removal deadline shows how seriously CISA rates it, though it does not apply to universities.
4. **Internet-facing things first.** Both NCSC and CISA BOD 26-04 rank exposure to the internet as the first sorting question [primary snippet]. For a lab, that means any server, instrument controller, or network storage reachable from outside.

**Honest limit.** A -7 day mean time to exploit means updating cannot stop attacks that use flaws with no patch yet. Updates close the far larger set of flaws that are already public. This is why the later sections (sign-in, backups, least access) matter.

## 2. Sign-in

| Finding | Source and date | Label |
|---|---|---|
| Google, NYU and UC San Diego study: an SMS code blocked 100% of automated bots, 96% of bulk phishing and 76% of targeted attacks. An on-device prompt blocked 100%, 99% and 90%. | https://security.googleblog.com/2019/05/new-research-how-effective-is-basic.html (17 May 2019) | [primary snippet]. The data are from 2019, before today's adversary-in-the-middle kits. |
| Same study: no account that used security keys exclusively fell to targeted phishing. | Same post, as reported by secondary coverage | [secondary]; the primary snippet I saw did not include the security-key figure |
| Microsoft Research (Meyer et al., May 2023), Azure Active Directory accounts showing suspicious activity: MFA reduced the risk of compromise by 99.22% across the population and by 98.56% where credentials had leaked. Over 99.99% of MFA-enabled accounts stayed secure. Authenticator apps outperformed SMS. | https://www.microsoft.com/research/publication/how-effective-is-multifactor-authentication-at-deterring-cyberattacks/ | [fetched] |
| Microsoft's widely quoted "MFA can block over 99.9 percent of account compromise attacks" comes from a 20 August 2019 marketing blog post that cites no study or method. | https://www.microsoft.com/en-us/security/blog/2019/08/20/one-simple-action-you-can-take-to-prevent-99-9-percent-of-account-attacks/ | [fetched]. Prefer the 2023 paper's 99.22%. |
| Microsoft Digital Defense Report 2025 (October 2025): more than 97% of identity attacks are password attacks; phishing-resistant MFA can stop over 99% of them. | https://blogs.microsoft.com/on-the-issues/2025/10/16/mddr-2025/ | [primary snippet] |
| UK NCSC changed its consumer advice in April 2026: make passkeys the first choice where offered; otherwise a strong unique password plus two-step verification. Its technical paper classes SMS codes, email codes, app codes and push approvals as phishable. | https://www.ncsc.gov.uk/blogs/passkeys-are-more-secure-than-traditional-ways-to-log-in (23 Apr 2026); https://www.ncsc.gov.uk/paper/traditional-user-and-fido2-credentials-personal-use ; https://www.ncsc.gov.uk/collection/top-tips-for-staying-secure-online/password-managers (updated 21 May 2026) | [primary snippet] |
| CISA Mobile Communications Best Practice Guidance: hardware FIDO security keys are the most effective; passkeys are an acceptable alternative; enrol Google, Apple and Microsoft accounts and then disable weaker methods. SMS is not phishing-resistant. Add a PIN to the mobile carrier account. | https://www.cisa.gov/sites/default/files/2025-12/guidance-mobile-communications-best-practices_508c.pdf (Dec 2024, reissued Dec 2025) | [primary snippet] |
| CISA Scattered Spider advisory (updated 29 July 2025): attackers talked help desks into resetting passwords and moving MFA to their own device, sent repeated push prompts until someone pressed Accept, and had carriers move phone numbers to their SIM. FIDO/WebAuthn is "not susceptible to push bombing or SIM swap attacks". | https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-320a | [primary snippet] |
| NIST SP 800-63B-4 (final, July 2025): a password used as the only factor must be at least 15 characters; within multi-factor sign-in the minimum is 8. Verifiers should accept at least 64 characters. No composition rules. No periodic change; change only on evidence of compromise. Passwords must be checked against a blocklist of common and breached values. Paste must be allowed so password managers work. | https://csrc.nist.gov/pubs/sp/800/63/B/4/final ; https://pages.nist.gov/800-63-4/sp800-63b.html ; FAQ https://pages.nist.gov/800-63-4-Implementation-Resources/faqs/ | [primary snippet] |
| Microsoft, 9 September 2026: attackers now run passkey-themed social engineering, so a prompt to "set up your passkey" from an email link is itself a lure. | https://www.microsoft.com/en-us/security/blog/2026/09/09/passkey-themed-social-engineering-leads-identity-cloud-compromise/ | [primary snippet] (title and summary only) |

### Recommendations

1. **Use a passkey or a FIDO2 security key on the accounts that unlock everything else**: university single sign-on, primary email, Apple/Google/Microsoft account, password manager. Then remove SMS as a sign-in method where the service allows it.
2. **Use a password manager and a unique password everywhere else.** A password that is the only factor should be 15 characters or longer (NIST).
3. **Never approve a sign-in prompt you did not start, and never read a code to anyone.** The FBI repeats this in its 2025 impersonation alert (see section 3).
4. **Protect the recovery path.** NCSC flags account recovery and the sync account behind passkeys as the likely next target [primary snippet].

## 3. Phishing and impersonation in 2026

| Finding | Source and date | Label |
|---|---|---|
| FBI IC3 2025 annual report (published April 2026): 1,008,597 complaints, up from 859,532 in 2024; reported losses passed $20 billion. | https://www.ic3.gov/AnnualReport/Reports/2025_IC3Report.pdf | [primary snippet]. Exact total $20.877 billion and "up 26%" appear in secondary sources and an FBI press-release snippet. |
| Same report: business email compromise losses $3,046,598,558; phishing/spoofing 191,561 complaints; ransomware more than 3,600 complaints with losses over $32 million (excludes indirect costs). | Same PDF | [primary snippet] |
| Same report, first dedicated AI section: 22,364 complaints mentioned AI, with adjusted losses near $893 million. | Same PDF; FBI release https://www.fbi.gov/news/press-releases/cryptocurrency-and-ai-scams-bilk-americans-of-billions | [primary snippet] |
| FTC: people reported losing $3.5 billion to imposter scams in 2025, from more than 1 million reports; about 80% of those reports involved no money lost. | https://www.ftc.gov/news-events/news/press-releases/2026/06/ftc-data-show-people-reported-losing-3-point-5-billion-imposter-scams-2025 (June 2026) | [primary snippet] for the $3.5 billion headline; the breakdown is [secondary] (CNBC, 26 June 2026) |
| FTC total reported fraud losses for 2025: $15.9 billion from about 3 million fraud reports. | Finextra and others | [secondary] |
| Mandiant M-Trends 2026: "highly interactive voice phishing" rose to 11% of intrusions, the second most common vector. Email phishing fell to 6%. | https://cloud.google.com/blog/topics/threat-intelligence/m-trends-2026 (23 Mar 2026) | [fetched] |
| FBI PSA, 3 December 2024: "Create a secret word or phrase with your family to verify their identity." | https://www.ic3.gov/PSA/2024/PSA241203 | [primary snippet] |
| FBI alert on impersonation of senior US officials by text and AI voice message: verify identity independently, and never give a two-factor code to anyone who asks. | https://www.fbi.gov/investigate/cyber/alerts/2025/senior-us-officials-continue-to-be-impersonated-in-malicious-messaging-campaign (2025) | [primary snippet] |
| Microsoft, 6 April 2026, "Inside an AI-enabled device code phishing campaign": the page shows a real device code and asks the victim to type it into Microsoft's genuine sign-in page. The attacker then holds valid tokens without ever stealing a password. Generative AI wrote role-specific lures. Codes last 15 minutes. User advice: do not paste device codes into pages reached from an email link; check that the prompt names the app you expect. | https://www.microsoft.com/en-us/security/blog/2026/04/06/ai-enabled-device-code-phishing-campaign-april-2026/ | [fetched] |
| Microsoft, 21 August 2025, ClickFix: fake CAPTCHA or error pages tell users to paste a command into the Windows Run box or a terminal. Campaigns target "thousands of enterprise and end-user devices globally every day" and affect Windows and macOS. Microsoft, 28 August 2026, describes a "TerminalFix" variant using Windows Terminal. | https://www.microsoft.com/en-us/security/blog/2025/08/21/think-before-you-clickfix-analyzing-the-clickfix-social-engineering-technique/ [fetched]; https://www.microsoft.com/en-us/security/blog/2026/08/28/terminalfix-campaign-deploys-reverse-tunnel-through-multistage-intrusion/ [primary snippet] | as marked |
| FTC QR-code alerts: scammers cover parking-meter QR codes with their own; do not scan a code on an unexpected package; preview the link before opening. | https://consumer.ftc.gov/consumer-alerts/2026/09/see-qr-code-parked-somewhere-dont-scan-ityet (Sep 2026); https://consumer.ftc.gov/consumer-alerts/2025/01/scam-alert-qr-code-unexpected-package (Jan 2025) | [primary snippet] |

### Recommendations

1. **Verify by a second channel that you choose.** For any request involving money, credentials, grades, data, or a sign-in approval, call back on a number you already have. Do not use contact details in the message.
2. **Agree a code word** with family and with the lab group for urgent requests (FBI, Dec 2024).
3. **No real CAPTCHA or error message asks you to paste a command.** Close the page (Microsoft, Aug 2025).
4. **Type no code into a sign-in page you reached from an email**, and approve no app-consent screen you did not start (Microsoft, Apr 2026).
5. **IT will not ask for your code or ask you to approve a prompt.** If the university help desk calls you, hang up and call the published number.

I found no confirmed figure for deepfake video-call losses in this session [unconfirmed].

## 4. Backups and ransomware

| Finding | Source and date | Label |
|---|---|---|
| CISA #StopRansomware Guide: "Maintain offline, encrypted backups of critical data, and regularly test the availability and integrity of backups in a disaster recovery scenario." Ransomware actors look for reachable backups and delete or encrypt them. Cloud sync can copy encrypted files over good ones. | https://www.cisa.gov/stopransomware/ransomware-guide (Oct 2023 edition, PDF reposted March 2025) | [primary snippet] |
| UK NCSC, "Offline backups in an online world": 3-2-1 (three copies, two devices, one off-site) is the baseline, but it "does not require any backup location to be offline", so NCSC adds an offline rule. Do not rely on several copies inside a single cloud service. Cloud storage should keep earlier versions that cannot be deleted at once. | https://www.ncsc.gov.uk/blog-post/offline-backups-in-an-online-world ; https://www.ncsc.gov.uk/guidance/mitigating-malware-and-ransomware-attacks (PDF dated July 2026); https://www.ncsc.gov.uk/collection/ransomware-resistant-backups | [primary snippet] |
| Mandiant M-Trends 2026: backup environments should be separated from the main directory domain and use immutable storage. | https://cloud.google.com/blog/topics/threat-intelligence/m-trends-2026 | [fetched] |

### Recommendations

1. **Keep research data on university-managed storage** that has version history and central backup, not only on a laptop, a USB drive, or a personal cloud account. I could not fetch an EDUCAUSE or NIH page stating this in these words [unconfirmed as a quoted recommendation]; it follows from the CISA and NCSC points above.
2. **Keep one copy that the laptop cannot reach or alter**: an external drive that is unplugged after backup, or storage with versions that cannot be deleted.
3. **Restore one file every term.** A backup that has never been restored is untested (CISA).
4. **Ask IT whether lab storage has immutable snapshots and how long they are kept.**

## 5. Research data

Coverage here is thinner than elsewhere because the search limit was reached.

| Finding | Source and date | Label |
|---|---|---|
| NIH Security Best Practices for Users of Controlled-Access Data, effective 25 January 2025: approved users must attest that their institution's systems comply with NIST SP 800-171 (or ISO/IEC 27001/27002 for non-US users). Third-party and cloud systems need their own attestation. | https://grants.nih.gov/grants/guide/notice-files/NOT-OD-24-157.html ; https://grants.nih.gov/sites/default/files/flmngr/NIH-Security-BPs-for-Users-of-Controlled-Access-Data.pdf | [primary snippet] |
| NIH issued a draft Controlled-Access Data Policy for comment (NOT-OD-26-023). I did not confirm whether it is final. | https://grants.nih.gov/grants/guide/notice-files/NOT-OD-26-023.html | [primary snippet] [status unconfirmed] |
| Microsoft Digital Defense Report 2026: research and academia is the most targeted state, local and education sector, at 38% of observed attacks in that group. | https://www.microsoft.com/en-us/corporate-responsibility/cybersecurity/microsoft-digital-defense-report-2025/ (page now shows the 2026 report; no date printed) | [fetched] |
| EDUCAUSE 2026 Top 10 ranks "Collaborative Cybersecurity" first. One example: research departments carry cyber risks on their own risk registers. Arizona State University built self-service tools so researchers can classify and place data. | https://er.educause.edu/articles/2025/10/2026-educause-top-10-1-collaborative-cybersecurity (Oct 2025); https://er.educause.edu/articles/2026/1/how-asu-built-a-pair-of-tools-to-help-nontechnical-users-classify-and-secure-data (Jan 2026) | [primary snippet] |
| HIPAA: health information encrypted to NIST standards, with the key not compromised, counts as "secured", so a lost encrypted laptop generally does not trigger breach notification. | HHS breach notification guidance | [unconfirmed] (from background knowledge; the search was cut off) |
| FERPA requirements for student records in research. | US Department of Education | [unconfirmed] (not searched) |
| NCSC: operational technology and safety-critical systems are the stated exception to "update by default". | https://www.ncsc.gov.uk/blogs/prepare-for-vulnerability-patch-wave (1 May 2026) | [primary snippet] |

### Recommendations (several rest on general practice, as marked)

1. **Know which class each dataset is in** (public, internal, restricted) using the university's scheme, and store it where that class is allowed.
2. **Turn on full-disk encryption** on every laptop and removable drive (FileVault, BitLocker). The HIPAA benefit is [unconfirmed] here.
3. **Human-subjects and controlled-access data**: read the data use agreement. For NIH controlled-access data the system must meet NIST SP 800-171, which a personal laptop or consumer cloud account will not.
4. **Give each student a named account.** Shared lab logins mean no audit trail and no way to remove one person. Remove access when people leave. [general practice; no source fetched]
5. **Delete or archive data you no longer need.** Data that is not there cannot be stolen. [general practice; no source fetched]
6. **Instruments on old operating systems**: take them off the general network, block internet access, move data by a controlled route, and tell IT they exist. NCSC accepts that such systems are exceptions to automatic updating and says unsupported technology should be replaced or brought back into support, above all where it faces the internet [primary snippet]. I found no EDUCAUSE guidance specific to lab instruments [unconfirmed].

## 6. AI tools and agents

| Finding | Source and date | Label |
|---|---|---|
| UK NCSC: because a language model has "no inherent distinction between 'data' and 'instruction'", prompt injection "may never be totally mitigated". Aim to reduce impact. | https://www.ncsc.gov.uk/blog-post/prompt-injection-is-not-sql-injection (date not confirmed; I believe December 2025) | [primary snippet] |
| UK NCSC, "Thinking carefully before adopting agentic AI", 15 May 2026: an agent should never have unrestricted access to sensitive data or critical systems. | https://www.ncsc.gov.uk/sites/default/files/2026-06/Thinking-carefully-before-adopting-agentic-AI.pdf | [primary snippet] |
| CISA, NSA, Australia's ACSC and partners, "Careful Adoption of Agentic AI Services" (30 April 2026): avoid broad access; use agentic AI only for low-risk, non-sensitive tasks. | https://www.cisa.gov/news-events/news/cisa-us-and-international-partners-release-guide-secure-adoption-agentic-ai ; https://media.defense.gov/2026/Apr/30/2003922823/-1/-1/0/CAREFUL%20ADOPTION%20OF%20AGENTIC%20AI%20SERVICES_FINAL.PDF | [primary snippet] |
| OpenAI: prompt injection "is unlikely to ever be fully 'solved'". For research that needs no account access, use the agent's logged-out mode. | https://openai.com/index/hardening-atlas-against-prompt-injection/ (Dec 2025); https://openai.com/index/prompt-injections/ | [primary snippet] |
| Anthropic, 24 November 2025: against an adaptive attacker given 100 attempts per environment, browser-agent attack success with improved safeguards was 1.4% for Claude Opus 4.5 (8.0% for the model alone). "No browser agent is immune to prompt injection." "A 1% attack success rate... still represents meaningful risk." | https://www.anthropic.com/research/prompt-injection-defenses | [fetched] |
| Anthropic's first Claude for Chrome pilot: 23.6% attack success without mitigations, 11.2% with them. Later figures on Anthropic pages are below 1% (for example 0.07%, 2 of 2,800 attempts, for a later model in computer use). These come from different test sets and are all vendor self-tests. | https://claude.com/blog/claude-for-chrome (2025); https://www.anthropic.com/transparency ; https://support.claude.com/en/articles/12902428-use-claude-in-chrome-safely | [primary snippet] |
| Claude Code documentation: "You're responsible for reviewing proposed code and commands for safety before approval." For untrusted content: "Use virtual machines (VMs) to run scripts and make tool calls". For more isolation, run the whole process in a sandbox runtime or dev container. "No system is completely immune to all attacks." Anthropic "does not security-audit or manage any MCP server". | https://code.claude.com/docs/en/security (read 12 Nov 2026) | [fetched] |
| Claude Code sandboxing: the operating system limits which files and network domains shell commands can reach. By default writes are limited to the working directory, but reads still cover "most of the machine, including credential files such as ~/.ssh and ~/.aws/credentials". The sandbox covers shell commands only, not file tools, MCP servers or hooks. | https://code.claude.com/docs/en/sandboxing (read 12 Nov 2026) | [fetched] |
| OWASP Top 10 for LLM Applications: prompt injection is item LLM01 in both the 2025 and 2026 lists; "Excessive Agency" is LLM06:2025. OWASP Top 10 for Agentic Applications (9 December 2025) includes Agent Goal Hijack, Tool Misuse, Identity and Privilege Abuse, Agentic Supply Chain Vulnerabilities and Unexpected Code Execution. | https://genai.owasp.org/2025/12/09/owasp-top-10-for-agentic-applications-the-benchmark-for-agentic-security-in-the-age-of-autonomous-ai/ ; https://genai.owasp.org/ | [primary snippet] |
| Microsoft, October 2026: Microsoft 365 Copilot now routes untrusted content through a restricted path; "no single mitigation prevents every indirect prompt injection attempt". Microsoft Digital Defense Report 2026: apply least privilege to data that AI systems and agents can reach. | https://techcommunity.microsoft.com/blog/microsoft-copilot-blog/building-trust-aware-controls-for-ai-differentiated-handling-of-untrusted-conten/4562160 [primary snippet]; MDDR 2026 page [fetched] | as marked |
| CISA alert, 23 September 2025: the self-replicating "Shai-Hulud" worm compromised over 500 npm packages. CISA alert, 20 April 2026 (Axios compromise): set `ignore-scripts=true` and `min-release-age=7` so only packages at least 7 days old install. CISA alert, 28 May 2026 (Nx Console): rotate secrets. | https://www.cisa.gov/news-events/alerts/2025/09/23/widespread-supply-chain-compromise-impacting-npm-ecosystem ; https://www.cisa.gov/news-events/alerts/2026/04/20/supply-chain-compromise-impacts-axios-node-package-manager ; https://www.cisa.gov/news-events/alerts/2026/05/28/supply-chain-compromises-impact-nx-console-and-github-repositories | [primary snippet] |
| Spracklen et al., USENIX Security 2025: across 576,000 code samples from 16 models, models recommended packages that do not exist. Secondary sources give rates of about 5.2% for commercial models and 21.7% for open-source models, and 205,474 distinct invented names. Attackers can register those names. | https://arxiv.org/abs/2406.10279 | Study design [primary snippet]; the rates are [secondary]. Check the paper's tables. |
| GitHub: more than 1 billion pushes scanned by push protection in 2025. I found no confirmed count of leaked secrets. | https://github.com/security/advanced-security/secret-protection | [primary snippet]; leak counts [unconfirmed] |

### Recommendations

1. **Treat anything an AI agent reads as able to give it instructions**: web pages, emails, PDFs, shared documents, code repositories. Three vendors and the NCSC say this cannot be fully fixed.
2. **Do not connect an AI agent to your main email or drive unless IT has approved the product**, and then with the narrowest access offered. Use a logged-out or separate browser profile for AI browsing (OpenAI; NCSC; CISA joint guide).
3. **Put restricted data only into tools the university has a contract for.** Consumer terms differ from commercial terms; Anthropic's own documentation separates them [fetched]. Check what your institution has licensed.
4. **Do not run coding agents with all permission checks off on a machine that holds credentials or research data.** Use the built-in sandbox, a container, or a virtual machine, and keep keys out of reach (Claude Code docs) [fetched].
5. **Before installing a package an AI suggested, confirm it exists and is the one you mean.** Add a 7-day minimum release age where the package manager supports it (CISA, Apr 2026).
6. **Keep API keys out of code and notebooks.** Use environment variables or a secret store, turn on push protection, and rotate any key that reached a repository.

## 7. Personal exposure

| Finding | Source and date | Label |
|---|---|---|
| FTC: a credit freeze is free (since 21 September 2018), does not affect the credit score, and must be requested at each of Equifax, Experian and TransUnion. A fraud alert is free, lasts one year, and one bureau tells the others. | https://consumer.ftc.gov/consumer-alerts/2025/09/get-credit-freeze-stop-identity-thieves (Sep 2025); https://consumer.ftc.gov/credit-freeze-or-fraud-alert-right-you | [primary snippet] |
| FCC rules adopted November 2023 (FCC 23-95): carriers must authenticate customers before a SIM change or port-out, notify the customer at once, and offer a free account lock. Compliance dates were partly waived in 2024; I did not confirm the current status. | https://docs.fcc.gov/public/attachments/FCC-23-95A1.pdf | [primary snippet] [status unconfirmed] |
| CISA: add a PIN and MFA to the mobile carrier account. | https://www.cisa.gov/sites/default/files/2025-12/guidance-mobile-communications-best-practices_508c.pdf | [primary snippet] |
| FBI IC3 SIM-swap figures: the search returned 971, 982 and 1,075 complaints and losses of $17.4 million, $26.0 million and $48.8 million without clear year labels. | https://www.ic3.gov/AnnualReport/Reports/2025_IC3Report.pdf | [unconfirmed]; do not cite until checked against the PDF |
| Apple Lockdown Mode is "an extreme, optional protection" for the very few people who may be personally targeted by highly sophisticated attacks. It limits attachments, web features and incoming calls. | https://support.apple.com/en-my/105120 ; https://support.apple.com/guide/security/lockdown-mode-security-sec2437264f0/web | [primary snippet] |
| Google Advanced Protection Program for higher-risk users. | https://landing.google.com/advancedprotection/ | [unconfirmed] (search returned nothing; URL from background knowledge) |
| US National Counterintelligence and Security Center, travel guidance (October 2024): "have no expectation of privacy on your devices when traveling abroad"; take only the data the trip needs. "Safeguarding Academia" (25 August 2025): reconsider carrying a device that holds sensitive research; encrypt all devices. UK NPSA Trusted Research: it may be easier and safer to take a "clean" device if the institution offers one. | https://archive.dni.gov/files/NCSC/documents/SecureInnovation/10252024_Final_Travel-Security-Guidance.pdf ; https://archive.dni.gov/files/NCSC/documents/SafeguardingOurFuture/NCSC_SOF_2025-08-25_Safeguarding-Academia.pdf ; https://www.npsa.gov.uk/system/files/NPSA%20TR%20Countries%20and%20Conferences_2025web_0.pdf | [primary snippet] |
| Microsoft, 31 July 2026, "CaptiveCrunch": the state actor Midnight Blizzard targeted travellers for malware delivery and credential theft. | https://www.microsoft.com/en-us/security/blog/2026/07/31/captivecrunch-midnight-blizzard-targets-travelers-worldwide-for-malware-delivery-and-credential-theft/ | [primary snippet] (title only) |
| Data-broker removal services: I found no authoritative measurement of their effect. | none | [unconfirmed] |

### Recommendations

1. Freeze credit at all three bureaus (free).
2. Set a carrier account PIN and turn on the carrier's SIM or port-out lock.
3. Keep work and personal accounts apart. Do not use the university email as the recovery address for personal banking, or the reverse.
4. Review recovery settings on the primary email account: remove old phone numbers and addresses, save recovery codes offline.
5. For researchers in sensitive fields or who travel to higher-risk countries: ask for a loaner device, carry only needed data, and consider Lockdown Mode or Advanced Protection. Apple says most people do not need Lockdown Mode.

## 8. What to ask IT for, and the first hour after a suspected compromise

### Ask the university IT or security office

Each request maps to a source in the sections above.

1. A FIDO2 security key or passkey for single sign-on, with SMS and push removed for your account (CISA mobile guidance; Microsoft, Apr 2026).
2. Whether device-code sign-in and user app consent are blocked or restricted (Microsoft, Feb 2025 through Sep 2026).
3. How the help desk proves identity before resetting a password or MFA device (CISA Scattered Spider advisory, July 2025).
4. Managed storage with immutable versions for lab data, and the retention period (CISA; NCSC).
5. Managed, encrypted, auto-updating laptops for the lab, including students.
6. A segregated network for instruments on unsupported systems (NCSC, May 2026; CISA BOD 26-02).
7. Which AI tools are licensed for which data classes, and whether a sandboxed setup exists for coding agents (NCSC, May 2026; CISA joint guide, Apr 2026).
8. Loaner devices for travel (US NCSC; UK NPSA).
9. The 24-hour number to report an incident. Save it in your phone now.

### The first hour

I could not fetch a university or EDUCAUSE first-hour checklist, so the order below is my own synthesis from the cited sources.

1. **Call the security office on the saved number.** Speed matters: Mandiant measured a median of 22 seconds between initial access and hand-off to a second attacker group in 2025 [fetched].
2. **Disconnect the device from the network but do not wipe it or switch it off** unless IT says so. CISA BOD 26-04 guidance warns to collect evidence before patching because patching can destroy it [primary snippet].
3. **From a different, clean device, change the password for the affected account and sign out all sessions.** Microsoft notes that revoked tokens can stay valid for up to an hour, so IT may need to disable the account briefly [fetched].
4. **Check for mail forwarding rules, new MFA devices, and newly registered devices or app consents** (Microsoft, Apr 2026) [fetched].
5. **If restricted or human-subjects data may be involved, say so in the first call.** Notification deadlines can apply.
6. **If money moved, call the bank at once and report at ic3.gov.** For identity theft, follow IdentityTheft.gov: contact the companies involved, place a fraud alert, report to the FTC [primary snippet].
7. **Write down what happened and when**, including what you clicked, typed or approved.

## 9. Honest counterpoints

| Claim that is overrated or wrong | What the sources say | Label |
|---|---|---|
| "Change passwords every 90 days." | NIST SP 800-63B-4 (July 2025) says periodic changes are not to be required; change on evidence of compromise. Composition rules are also barred. | [primary snippet] |
| "Public Wi-Fi is dangerous." | FTC: "Most websites do use encryption to protect your information, so connecting through a public Wi-Fi network is usually safe." | https://consumer.ftc.gov/articles/are-public-wi-fi-networks-safe-what-you-need-know [primary snippet]. One 2026 exception: Microsoft's CaptiveCrunch report on travellers being targeted (title only seen). |
| "Buy a personal VPN." | CISA: "Do not use a personal virtual private network (VPN). Personal VPNs simply shift residual risks from the internet service provider (ISP) to the VPN provider, often increasing the attack surface." The guidance is written for highly targeted people; a university-required VPN is a different case. | https://www.cisa.gov/sites/default/files/2025-12/guidance-mobile-communications-best-practices_508c.pdf [primary snippet] |
| "Any MFA is enough." | SMS, app codes and push are all phishable (NCSC, 2026). Device-code and adversary-in-the-middle attacks capture tokens after MFA succeeds (Microsoft, Apr 2026). Still, any MFA is far better than none: 99.22% risk reduction (Microsoft Research, 2023). | [primary snippet] / [fetched] |
| "MFA blocks 99.9% of attacks." | The 2019 source cites no method. Use the 2023 paper. | [fetched] |
| "Passkeys solve it." | NCSC: security depends on the credential manager and sync account, and recovery is the likely target. Microsoft (Sep 2026) reports passkey-themed lures. | [primary snippet] |
| "Email phishing is the main way in." | In Mandiant's 2025 investigations, exploits were 32% of intrusions, voice phishing 11%, email phishing 6%. This is an enterprise incident-response sample, not individuals. | [fetched] |
| "Patch everything immediately." | CISA's 2026 directive sorts by exposure, exploitation, automation and impact; low-risk items can wait. For an individual the simpler rule holds: automatic updates on everything. | [primary snippet] |
| "Cloud sync is a backup." | CISA: sync can copy encrypted files over clean ones. NCSC: 3-2-1 does not by itself require an offline copy. | [primary snippet] |
| "Annual phishing training fixes it." | A 2025 study at UC San Diego Health reported very small benefit from mandatory phishing training. | [unconfirmed] (from background knowledge; search limit reached) |
| "AI vendors have fixed prompt injection." | NCSC, OpenAI and Anthropic each say it is not solved. Published success rates are vendor self-tests on different test sets. | [primary snippet] / [fetched] |
| "Updating protects against AI-found flaws." | Only once a patch exists. Mean time to exploit was -7 days in 2025 (Mandiant), and about 8% of Glasswing-disclosed flaws were patched by 2 October 2026 [secondary, unconfirmed]. | as marked |

## 10. Draft priority list: 10 actions ranked by risk reduction per hour

All time figures are **my own estimates** for a professor with one laptop, one phone and typical accounts. None comes from a source. The ranking is my judgement, based on the evidence strength above.

| # | Action | Time (own estimate) | Why it ranks here | Supporting source |
|---|---|---|---|---|
| 1 | Turn on automatic updates on laptop, phone and browser; restart today. | 15 min | Exploits were 32% of intrusions in 2025; NCSC says update by default. | Mandiant M-Trends 2026 [fetched]; NCSC 1 May 2026 [primary snippet] |
| 2 | Add a passkey or security key to university sign-in and primary email; remove SMS where possible. | 30 to 45 min | Phishing-resistant sign-in defeats push fatigue, SIM swap and most phishing kits. | CISA mobile guidance; NCSC Apr 2026; Microsoft Research 2023 |
| 3 | Adopt two rules: never approve a prompt or share a code you did not start; never paste a command or device code a web page gives you. | 10 min to learn | Costs nothing; stops ClickFix, device-code and push-fatigue attacks that bypass MFA. | Microsoft Aug 2025 and Apr 2026 [fetched]; FBI 2025 alert |
| 4 | Install a password manager; make the passwords for email, bank and university unique and 15+ characters. | 60 min to start | Over 97% of identity attacks are password attacks. | Microsoft MDDR 2025; NIST SP 800-63B-4 |
| 5 | Move lab data to university-managed storage with versions; make one offline copy; restore one file as a test. | 60 to 90 min | The only control that works after an attacker gets in. | CISA #StopRansomware Guide; NCSC offline backups |
| 6 | Agree a call-back rule and code word with family and the lab for urgent money, credential or data requests. | 15 min | Voice phishing was 11% of intrusions; $3.5 billion lost to imposters in 2025. | FBI PSA Dec 2024; FTC June 2026; Mandiant |
| 7 | Replace any router or device that no longer gets updates; tell IT about lab instruments on old systems. | 30 min plus purchase | Unsupported devices cannot be patched at all. | NCSC 1 May 2026; CISA BOD 26-02 |
| 8 | Check AI tool connections: remove agents' access to main email and drive unless IT-approved; run coding agents in a sandbox or container; rotate any API key that is in code. | 30 to 60 min | Prompt injection is unsolved by every vendor's own account. | NCSC May 2026; CISA joint guide Apr 2026; Claude Code docs [fetched]; OpenAI |
| 9 | Freeze credit at three bureaus; set a carrier PIN and port-out lock; clean up email recovery settings. | 45 min | Free; limits damage from data already leaked and blocks SIM-swap takeover. | FTC Sep 2025; CISA mobile guidance; FCC 23-95 |
| 10 | Turn on disk encryption; give each student a named account; remove access for people who left; delete data no longer needed. Save the security office's number. | 60 min | Shrinks what one stolen laptop or one phished student can expose. | NIH controlled-access rules; EDUCAUSE 2026 Top 10; general practice |

Total: roughly 6 to 7 hours (own estimate).

## 11. Gaps to close before publication

1. Open every [primary snippet] URL and confirm wording and numbers, above all the IC3 totals, NIST wording, and BOD 26-04 timeline table.
2. Confirm or drop: Google's 2019 security-key result; IC3 SIM-swap figures; FTC $15.9 billion total; Glasswing 516 of 6,157; USENIX hallucinated-package rates; HIPAA encryption safe harbour; the UC San Diego phishing-training study.
3. Not researched because the search limit was reached: FERPA; NCSC's own statement on password expiry; Google Advanced Protection; lab-instrument guidance from EDUCAUSE or REN-ISAC; data-broker removal evidence; deepfake video-call loss figures; ENISA guidance (none found or searched).
4. The briefing's premise needs one caution. The sources support "AI is shortening the time to find and exploit flaws" (NCSC, CISA, Mandiant, Anthropic). I found no CISA document that names Mythos or Glasswing as the cause of its June 2026 directive.

## 12. Queries run

Web search (45 run; 3 further queries refused at the per-turn limit). Domain restrictions are shown in brackets:

1. Claude Mythos Preview Project Glasswing vulnerabilities patch timelines CISA NCSC guidance
2. NCSC 2026 AI vulnerability discovery patching faster guidance "patch" frontier AI time to exploit
3. FBI IC3 2025 Internet Crime Report losses complaints phishing business email compromise released 2026
4. FTC Consumer Sentinel 2025 data fraud losses impersonation scams reported 2026
5. NIST SP 800-63B-4 final password length 15 characters no periodic rotation phishing-resistant
6. Google security blog "security keys" account takeover SMS 100% automated bots 76% targeted attacks on-device prompt study
7. ncsc.gov.uk blog "patch wave" prepare vulnerability AI (ncsc.gov.uk only)
8. Preparing for a vulnerability patch wave update by default end-of-life external attack surface (ncsc.gov.uk only)
9. CISA 2026 AI-discovered vulnerabilities patch remediation timeline KEV directive faster patching frontier AI (cisa.gov only)
10. CISA Binding Operational Directive 26-02 end-of-support edge devices remove unsupported (cisa.gov only)
11. 2025 Internet Crime Report complaints losses phishing/spoofing business email compromise ransomware artificial intelligence (ic3.gov, fbi.gov)
12. SP 800-63B-4 passwords "minimum of 15 characters" "SHALL NOT require" change periodically password managers (nist.gov)
13. New research: How effective is basic account hygiene at preventing hijacking security key SMS on-device prompt percent (googleblog.com, blog.google)
14. Microsoft Digital Defense Report 2025 phishing-resistant MFA blocks identity attacks percent password attacks per second adversary-in-the-middle device code phishing ClickFix (microsoft.com)
15. BOD 26-04 Prioritizing Security Updates Based on Risk timeline table 3 days 14 days automatable exposed June 2026 (cisa.gov)
16. CISA Vulnerability Review Fiscal Years 2024 and 2025 KEV remediated percent median days time to exploit AI (cisa.gov)
17. Mobile Communications Best Practice Guidance FIDO phishing-resistant "do not use a personal VPN" SMS telco PIN password manager (cisa.gov)
18. red.anthropic.com Mythos Preview advice for defenders shorten patch cycles enable auto-update N-day exploits
19. M-Trends 2026 time to exploit negative days exploits most common initial infection vector percent Mandiant (cloud.google.com)
20. NCSC passkeys recommend 2026 "passkeys" default guidance consumers stronger than passwords and 2SV (ncsc.gov.uk)
21. FBI PSA generative AI fraud voice cloning "secret word" family verify deepfake senior officials impersonation (ic3.gov, fbi.gov)
22. Microsoft Threat Intelligence ClickFix social engineering technique paste command Run dialog fake CAPTCHA recommendations (microsoft.com)
23. Microsoft Security blog device code phishing Storm-2372 OAuth consent phishing 2026 recommendations block device code flow (microsoft.com)
24. Microsoft research "How effective is multifactor authentication at deterring cyberattacks" 99.22% reduction risk of compromise
25. Google passkeys 2025 2026 statistics sign-in success rate ... Advanced Protection Program passkey (google domains)
26. Scattered Spider advisory help desk social engineering password reset MFA push bombing SIM swap recommendations phishing-resistant MFA updated 2025 (cisa.gov)
27. FTC QR code scams quishing unexpected package parking meter advice; FTC "family emergency" voice cloning scam advice (ftc.gov)
28. #StopRansomware Guide offline encrypted backups test restoration 3-2-1 immutable backups recommendation (cisa.gov)
29. NCSC offline backups ransomware "3-2-1" principles for ransomware-resistant cloud backups immutable (ncsc.gov.uk)
30. EDUCAUSE research data security guidance faculty data classification research labs unsupported instruments 2026 Top 10 cybersecurity (educause.edu)
31. HHS HIPAA encryption lost stolen laptop breach safe harbor research data; NIH data management security controlled-access data NIST SP 800-171 requirement 2025 (hhs.gov, nih.gov, ed.gov)
32. OWASP Top 10 for LLM Applications 2025 prompt injection LLM01; OWASP Top 10 for Agentic Applications 2026 list least agency (owasp.org)
33. NCSC prompt injection "is not SQL injection" may never be fully mitigated agentic AI guidance 2026 (ncsc.gov.uk)
34. OpenAI prompt injection browser agent Atlas hardening "unlikely to ever be fully solved" recommendations logged-out mode confirm actions (openai.com)
35. Anthropic prompt injection browser use attack success rate Claude in Chrome mitigations percent (anthropic.com, claude.com)
36. CISA alert npm supply chain compromise Shai-Hulud self-replicating worm packages recommendations rotate credentials pin dependencies (cisa.gov)
37. CISA NSA joint guidance AI data security 2025 OR 2026 agentic AI careful adoption guidance (cisa.gov, nsa.gov, defense.gov)
38. GitHub secret scanning 2025 OR 2026 number of secrets leaked public repositories push protection millions (github.blog, github.com)
39. slopsquatting package hallucination LLM study percent hallucinated packages USENIX "We Have a Package for You"
40. Microsoft security blog 2026 indirect prompt injection Copilot agents email connectors defense guidance users least privilege (microsoft.com)
41. FTC credit freeze free how to place fraud alert identity theft what to do IdentityTheft.gov steps (ftc.gov)
42. FCC SIM swap port-out fraud rules account lock PIN carrier; FBI IC3 SIM swapping losses 2025 (fcc.gov, ic3.gov, fbi.gov)
43. Apple Lockdown Mode "extreme, optional protection" who should use; Google Advanced Protection Program ... (apple.com, google.com)
44. international travel researchers loaner device guidance academia foreign travel electronic devices ... (dni.gov, fbi.gov, cisa.gov, ncsc.gov.uk, nsf.gov, educause.edu, npsa.gov.uk)
45. FTC public Wi-Fi "encryption" safe to use public wifi most websites; CISA "do not use a personal virtual private network" increase attack surface (ftc.gov, cisa.gov)

Refused at the search limit (not run): NCSC password expiry and three random words; UC San Diego phishing-training efficacy study; HHS breach-notification encryption guidance.

Pages fetched successfully: anthropic.com/glasswing; anthropic.com/research/prompt-injection-defenses; code.claude.com/docs/en/security; code.claude.com/docs/en/sandboxing (first 100,000 characters); cloud.google.com M-Trends 2026 blog; Microsoft 2019 MFA blog; Microsoft Research MFA paper page; Microsoft ClickFix blog (Aug 2025); Microsoft AI-enabled device-code phishing blog (Apr 2026); Microsoft Digital Defense Report page (now 2026 edition).

Fetches blocked by network policy: ncsc.gov.uk, ic3.gov, ftc.gov, pages.nist.gov, security.googleblog.com (and, by a connectivity check, cisa.gov, nist.gov, owasp.org, genai.owasp.org, openai.com, educause.edu, support.apple.com, blog.google, red.anthropic.com, fidoalliance.org).
