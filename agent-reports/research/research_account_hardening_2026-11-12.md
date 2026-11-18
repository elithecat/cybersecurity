# Research report: personal account hardening steps for professors

- Date: 2026-11-12
- Language model: claude-fable-5-2
- Prompt version: v1
- Purpose: source material for a faculty cybersecurity briefing, section "concrete personal steps, sorted by urgency"

## 0. Read this first: limits of this research

1. **No page could be opened.** In this session every direct fetch failed: WebFetch returned "unable to fetch" for www.nytimes.com and DNS failures (host outside the session's allowed network domains) for support.apple.com, support.google.com, fidoalliance.org, www.ic3.gov and pod.wave.co; curl through the proxy returned 403 on CONNECT (policy denial). All facts below therefore come from **WebSearch result summaries** of the named pages, not from reading the pages. Treat every menu path as "as reported by search summary of the vendor page" and check it on a device before it goes on a slide.
2. **Wirecutter is not reachable at all.** nytimes.com blocks both fetching and the search tool ("domains are not accessible to our user agent"). I could not read any Wirecutter guide. What is reported about Wirecutter comes only from third-party pages (podcast show notes on Apple Podcasts / iHeart) and is marked as such. Wirecutter prices, guide dates, the security key model names, the VPN picks, the browser add-on list and the step order of "simple online security" are all **[unconfirmed]**.
3. **Page dates.** Search summaries rarely show the "Published Date" line of Apple and Google support pages. Where no date is given below, it is [unconfirmed].
4. **OS versions.** Search summaries mix guide editions. The Apple paths below match what Apple's current guides were summarised as saying (the summaries cite Safari 26 and iOS user guide pages), but I could not confirm which exact release (iOS 26.x or later) each path applies to. [unconfirmed] for the version label.
5. To close these gaps, allow these hosts in the session's network settings and rerun: www.nytimes.com, support.apple.com, support.google.com, fidoalliance.org, www.ic3.gov, www.verizon.com, pages.nist.gov, www.cisa.gov.

Legend: **[S]** = from a search summary of the cited page (page itself not opened). **[unconfirmed]** = could not be confirmed. **[judgment]** = my own judgment.

---

## 1. Passkeys

**What it is (plain sentence).** A passkey is a sign-in credential that replaces the password: your device keeps a private key that never leaves it, the website keeps only the matching public key, and you approve sign-in with Face ID, fingerprint or the device PIN, so there is nothing to type and nothing a fake site can capture. [S; wording is mine, built from secondary descriptions of the FIDO definition. The FIDO Alliance page https://fidoalliance.org/passkeys/ could not be opened, so no verbatim FIDO sentence.]

**Adoption numbers (FIDO Alliance, via secondary summaries) [S]**
- "State of Passkeys" report, released 2026-05-07: about 5 billion passkeys in active use (FIDO estimate); 75% of surveyed consumers have enabled a passkey on at least one account. https://fidoalliance.org/wp-content/uploads/2026/05/The-State-of-Passkeys-Global-Consumer-and-Workforce-Report-1.pdf
- Passkey Index, 2026-10-15: passkeys used on 36% of successful sign-ins at participating services (up from 26%). https://fidoalliance.org/wp-content/uploads/2026/10/Passkey-Index-October-2026.pdf

**Google account: create a passkey [S]** (Google Account Help, "Sign in with a passkey instead of a password", https://support.google.com/accounts/answer/13548313; page date [unconfirmed], summary says the page is roughly 20 months old)
1. Go to myaccount.google.com/signinoptions/passkeys (short link g.co/passkeys).
2. Select "Create a passkey", then "Create a passkey" again.
3. Unlock the device (fingerprint, face, or screen lock).
4. Repeat on each further device.
- Google states that adding a passkey "doesn't change or remove any authentication or recovery factors currently on your account". The password still works. The account setting "Skip password when possible" is on by default (Google blog, "Passkeys are now enabled by default for Google users", https://blog.google/innovation-and-ai/technology/safety-security/passkeys-default-google-accounts/).
- A summary also says a newly created passkey may take up to 7 days to be usable at sign-in. [S, check]

**Apple Account [S]**
- Since iOS 17, iPadOS 17 and macOS Sonoma, Apple assigns a passkey to the Apple Account automatically; on icloud.com or account.apple.com you choose "Sign in with Passkey" / "Sign in with iPhone", scan the QR code, and approve with Face ID or Touch ID. Source is 2023 reporting (TechCrunch 2023-06-21 https://techcrunch.com/2023/06/21/apple-will-automatically-assign-an-apple-id-passkey-for-users-with-ios-17-and-macos-sonoma/ ; 9to5Mac 2023-10-11 https://9to5mac.com/2023/10/11/passkey-apple-sites/). No current Apple support page confirming this for today's OS was found. [unconfirmed for 2026]
- Passkeys for other sites: requirements are two-factor authentication and iCloud Keychain on. They are stored in the Passwords app and synced through iCloud Keychain, end-to-end encrypted ("not visible to anyone, including Apple"). Turn on sync: iPhone: Settings > [your name] > iCloud > Passwords > "Sync this iPhone". Mac: System Settings > [your name] > iCloud > Passwords > "Sync this Mac". (https://support.apple.com/guide/iphone/use-passkeys-to-sign-in-to-websites-and-apps-iphf538ea8d0/ios ; https://support.apple.com/en-us/109016 ; https://support.apple.com/en-us/102195)

**Where passkeys live and sync [S]**
| Store | What the vendor says | Source |
|---|---|---|
| iCloud Keychain / Apple Passwords | Synced to all devices on the same Apple Account, end-to-end encrypted | https://support.apple.com/en-us/102195 |
| Google Password Manager | Default on Android; syncs to Chrome on macOS, Windows, Linux, ChromeOS; on iOS/iPadOS 17 or later once Chrome is set as the autofill provider. Protected by the Android screen lock or a "Google Password Manager PIN" (created when you first save a passkey on a computer or iOS device) | https://developers.google.com/identity/passkeys/supported-environments ; https://support.google.com/chrome/answer/13168025 ; https://support.google.com/chrome/answer/16608973 |
| 1Password | Passkeys saved in a Login item, synced like any other item; iOS 17 or later for the iOS app | https://support.1password.com/save-use-passkeys/ |
| Bitwarden | Passkeys stored in Login items in the vault, synced across browser extension and mobile apps | https://bitwarden.com/passwordless-passkeys/ ; https://bitwarden.com/blog/bitwarden-passkeys-mobile/ |

**What stays weak.** Adding a passkey does not remove the old door. Google says so directly (quote above). CISA's "Mobile Communications Best Practice Guidance" (2024-12-18) says: once enrolled in FIDO authentication, disable the other, weaker forms of multi-factor authentication, because SMS is not encrypted and enrolling an authenticator app does not switch SMS off. [S] https://cisa.gov/sites/default/files/2024-12/guidance-mobile-communications-best-practices.pdf . So: a reused password plus SMS recovery remains phishable and SIM-swappable until you (a) make the password long and unique and (b) remove SMS as a second step where the service allows it.

---

## 2. Hardware security keys

**What they are.** A small USB-C / NFC device that holds a FIDO credential; sign-in works only when the key is physically present and only on the real site, so phishing pages get nothing usable.

**Wirecutter picks: NOT CONFIRMED.**
- Confirmed only: a Wirecutter guide exists with the title "The 2 Best Security Key[s] for Multi-Factor Authentication of 2026" (title as listed in the show notes of The Wirecutter Show episode "The End of Passwords", August 2026, guest Max Eddy; https://podcasts.apple.com/us/podcast/the-end-of-passwords/id1762217793?i=1000779843795). [S]
- Model names, prices and the guide date could not be read. [unconfirmed]
- From model memory (training data to mid-2026, NOT from a 2026 page): the long-standing picks were the Yubico Security Key C NFC (top pick) and the Yubico YubiKey 5C NFC (upgrade pick). Do not print this as Wirecutter's current pick without opening the guide. [unconfirmed]
- Non-Wirecutter price evidence [S]: Security Key C NFC listed at $29; YubiKey 5C NFC at $58 "as of September 2026" (third-party review sites, low reliability).

**Why 2 keys [S].**
- Apple requires it: "at least two FIDO Certified security keys"; up to six can be added. https://support.apple.com/en-us/102637
- Yubico: "always recommends adding two keys to each of your online services and accounts; one primary and one secondary as backup in case the primary is lost"; a spare only helps if it was registered before the loss. https://yubico.com/spare
- Google Advanced Protection: after enrolling, a lost key can only be replaced with a backup key or a slower recovery path. https://support.google.com/accounts/answer/7539956

**Which accounts accept them.** Apple Account, Google (any FIDO1 or FIDO2 key), plus many others. I did not reach a vendor catalog page (Yubico "Works with YubiKey") in this session; specific services beyond Apple and Google are [unconfirmed] here.

**Security Keys for Apple Account [S]** (https://support.apple.com/en-us/102637 ; iPhone guide https://support.apple.com/guide/iphone/use-security-keys-iph5acc5b28c/ios ; Mac guide https://support.apple.com/guide/mac-help/use-security-keys-mchld6920426/mac)
- Requirements: at least two FIDO Certified keys; iOS 16.3, iPadOS 16.3 or macOS Ventura 13.2 or later on every device signed in; two-factor authentication on; a device passcode set. Keys with both NFC and USB-C work with most Apple devices.
- iPhone / iPad: Settings > [your name] > Sign-In & Security > Two-Factor Authentication > Security Keys > Add Security Keys, then follow the instructions.
- Mac: System Settings > [your name] > Sign-In & Security > Two-Factor Authentication > next to Security Keys click Set Up (newer guide: Add).
- What changes: the six-digit code sent to trusted devices or by SMS is replaced by the physical key for sign-in on a new device or on the web, for password reset, and for changing keys. Devices not used for more than 90 days are signed out during setup. If you lose all trusted devices and all keys you can be locked out permanently.

**Security keys with Google [S]** (https://support.google.com/accounts/answer/6103523)
- Any FIDO1 or FIDO2 key can be the second step for 2-Step Verification; a key can also hold a passkey. Add under Google Account > Security > "How you sign in to Google" > Passkeys and security keys. [path partly unconfirmed]
- A newly added key may not work at sign-in immediately (anti-abuse delay).

---

## 3. Most secure settings at Google

**Advanced Protection Program (APP) [S]** (https://landing.google.com/advancedprotection/ ; https://support.google.com/accounts/answer/7539956 ; https://support.google.com/accounts/answer/7519408 ; passkey enrolment announced at https://blog.google/technology/safety-security/google-passkeys-advanced-protection-program/ ; Workspace admin pages reported as updated October 2026: https://support.google.com/a/answer/9378686)
- Requires: a passkey **or** a hardware security key to sign in. Plus a fallback: a recovery phone and email, or an additional passkey / security key. Free; keys cost money only if you choose keys.
- Restricts: third-party app access to Gmail and Drive data (only verified / trusted apps); stronger Safe Browsing checks on downloads in Chrome; on Android only apps from verified stores; stricter account recovery with extra steps and delay.
- Enroll: go to the enrollment page (g.co/advancedprotection [short link not confirmed by search results]) > "Get started" > follow the steps with a compatible device and browser.
- Who Google recommends it for: people at high risk of targeted attacks; examples given: journalists, activists, political campaign staff, executives, people in regulated sectors. Google recommends enrolling both work and personal accounts.
- Side effect: accounts in APP cannot use the new Recovery Contacts feature (see below).
- Separate device feature: "Advanced Protection" for Android (Settings > Security & privacy > Advanced Protection > Device protection), https://support.google.com/android/answer/16339980 . Android version: 16 or later [unconfirmed].
- University note: for a Google Workspace (university) account, the admin must allow APP enrolment (https://support.google.com/a/answer/9378768).

**2-Step Verification options, ranked.** Google does not publish one ranked list that I could read. The ranking below combines Google's statements and its 2019 research. [judgment, with evidence]
1. Passkey or hardware security key. Zero users who used security keys exclusively fell to targeted phishing in Google's study.
2. Google prompt on a signed-in phone. Blocked 100% of automated bots, 99% of bulk phishing, 90% of targeted attacks. Google: prompts "can also help protect against SIM swap and other phone number-based hacks".
3. Authenticator app code (not measured separately in the 2019 summary I saw; phishable in real time). [judgment]
4. SMS or voice code. Blocked 100% of automated bots, 96% of bulk phishing, 76% of targeted attacks.
5. Printed backup codes: keep as the offline fallback, stored on paper.
Source for numbers: Google Security Blog, 2019-05-17, "New research: How effective is basic account hygiene at preventing hijacking" https://security.googleblog.com/2019/05/new-research-how-effective-is-basic.html [S]

**Removing SMS as fallback.** The exact current steps for deleting a phone number from 2-Step Verification were not found in search results. [unconfirmed] Expected place: Google Account > Security > "How you sign in to Google" > 2-Step Verification > phones. Check on a live account. Note the trade-off: Google's own research favours keeping a recovery phone for ordinary users; removing it is for people who have at least two passkeys or keys plus backup codes. [judgment]

**Security Checkup.** myaccount.google.com/security-checkup; referenced from "Make your account more secure" https://support.google.com/accounts/answer/46526 . [S, content not read]

**Recovery Contacts (new since October 2025) [S]** (announced 2025-10-15, https://techcrunch.com/2025/10/15/google-now-lets-you-add-friends-as-contacts-for-account-recovery ; help: https://support.google.com/accounts/answer/183723)
- Set up: g.co/recovery-contacts, or Google Account > Security > "How you sign in to Google" > Recovery contacts > Add recovery contact > enter the person's email > Send request.
- Up to 10 contacts; they get no access to the account; 7-day wait after acceptance before the contact can be used.
- Not available for Workspace accounts, child accounts, or accounts in Advanced Protection.

---

## 4. Most secure settings at Apple

**Advanced Data Protection (ADP) for iCloud [S]** (https://support.apple.com/en-us/108756 ; https://support.apple.com/en-us/102651 ; https://support.apple.com/guide/security/advanced-data-protection-for-icloud-sec973254c5f/web)
- What it does: raises the number of iCloud data categories that are end-to-end encrypted from 15 to 25 (Apple's "iCloud data security overview"; Apple's Platform Security guide says 14 to 23; the two Apple pages disagree, as noted by The Mac Observer https://www.macobserver.com/news/advanced-data-protection-icloud-23-encrypted-categories/). Adds iCloud Backup, Photos, Notes, iCloud Drive among others. **Not** end-to-end encrypted even with ADP: iCloud Mail, Contacts, Calendar.
- Requirements: Apple Account with two-factor authentication; device passcode; every signed-in device on iOS 16.2, iPadOS 16.2, macOS 13.1, watchOS 9.2, tvOS 16.2, HomePod 16.0 or later, iCloud for Windows 14.1 or later; at least one recovery method (recovery contact or recovery key). Not for Managed Apple Accounts (many university-issued Apple accounts) or child accounts.
- Steps iPhone / iPad: Settings > [your name] > iCloud > Advanced Data Protection > Turn On Advanced Data Protection; follow prompts (it sends you to Account Recovery first if no recovery method exists).
- Steps Mac: System Settings > [your name] > iCloud > Advanced Data Protection > Turn On.
- Recovery key: a 28-character code (https://support.apple.com/en-us/109345). Recovery contact: https://support.apple.com/en-us/102641 .
- Risk: Apple cannot help recover the data if you lose the devices and the recovery methods.
- Country limit: Apple stopped offering ADP to new users in the **United Kingdom** in February 2025 after a UK government order; not restored as of the latest reports. Apple filed a new complaint at the Investigatory Powers Tribunal, confirmed 2026-08-04 (CNBC, https://www.cnbc.com/2026/08/04/apple-encrypted-data-legal-challenge-uk.html). [S]

**Security Keys for Apple Account.** See item 2.

**Stolen Device Protection [S]** (https://support.apple.com/en-us/120340 ; https://support.apple.com/guide/iphone/use-stolen-device-protection-iph17105538b/ios)
- What it does: when the iPhone is away from familiar locations (home, work), sensitive actions need Face ID or Touch ID with no passcode fallback; the most sensitive ones (changing the Apple Account password, changing the passcode, adding or removing Face ID / Touch ID, turning the feature off) also need a one-hour Security Delay and then a second biometric check.
- Requirements: iOS 17.3 or later; passcode; Face ID or Touch ID; two-factor authentication; Find My on; Location Services (Significant Locations) on.
- Steps: Settings > Face ID & Passcode (or Touch ID & Passcode) > enter passcode > Stolen Device Protection > turn on. Choose "Away from Familiar Locations" (default) or "Always".
- Apple's main article notes it may already be on by default on newer software. [S, check]
- iPhone only.

**Lockdown Mode [S]** (https://support.apple.com/en-us/105120)
- Apple's wording: an optional, extreme protection for "the very few individuals who, because of who they are or what they do, might be personally targeted by some of the most sophisticated digital threats"; "most people are never targeted by attacks of this nature".
- Effect: strict limits on message attachments, web technologies, incoming FaceTime from unknown callers (blocked unless you called that person in the past 30 days), wired connections, configuration profiles.
- Steps iPhone / iPad: Settings > Privacy & Security > Lockdown Mode > Turn On Lockdown Mode > Turn On & Restart > enter passcode.
- Steps Mac: System Settings > Privacy & Security > Lockdown Mode > Turn On > Turn On & Restart.
- Set per device; turning it on for an iPhone also turns it on for the paired Apple Watch.

**iMessage Contact Key Verification [S]** (https://support.apple.com/en-us/118246)
- What: alerts you if an unknown device is added to a contact's iMessage account, and lets two people compare verification codes.
- Requirements: iOS 17.2, iPadOS 17.2, macOS 14.2, watchOS 10.2, visionOS 1.1 or later; iCloud Keychain on; two-factor authentication; passcode on all devices.
- Steps: Settings (System Settings on Mac) > [your name] > Contact Key Verification > turn on "Verification in iMessage".

**Account recovery contact [S]** (https://support.apple.com/en-us/102641)
- Requirements: all your devices on iOS 15, iPadOS 15, macOS Monterey 12 or later; contact has a compatible device; iMessage on for both.
- Steps iPhone / iPad: Settings > [your name] > Sign-In & Security > Recovery Contacts > Add Recovery Contact.
- Steps Mac: System Settings > [your name] > Sign-In & Security > Recovery Contacts.
- The contact gets no access to your account, only the ability to give you a code. Apple does not know who your contacts are.

---

## 5. Phone PINs and the phone number

**Passcode length: vendor advice [S]**
- Apple: default is six digits; "Passcode Options" offers Custom Alphanumeric Code and Custom Numeric Code, which Apple calls the most secure options; a four-digit code is the least secure. Path: Settings > Face ID & Passcode > Change Passcode > Passcode Options. https://support.apple.com/guide/iphone/set-a-passcode-iph14a867ae/ios ; https://support.apple.com/en-us/119586
- Google (Pixel help): "Enter four or more numbers, but a six-digit PIN is recommended for added security. Longer PINs tend to be more secure." "A strong password is the most secure screen lock option." Google's theft protection page advises a PIN of six or more digits. https://support.google.com/pixelphone/answer/2819522 ; https://support.google.com/android/answer/15146908

**Why the phone passcode matters [S]**
- Wall Street Journal, Joanna Stern and Nicole Nguyen, February 2023: thieves watch a person type the passcode in a bar, steal the phone, then use the passcode alone to change the Apple ID password, turn off Find My, read saved passwords in iCloud Keychain and drain bank apps. April 2023 follow-up: thieves set a recovery key to lock the owner out permanently. I could not open the WSJ articles (paywalled and not fetched); confirmed through secondary coverage: MacRumors 2023-02-24 https://www.macrumors.com/2023/02/24/iphone-stolen-passcodes-report/ ; MacRumors 2023-04-19 https://www.macrumors.com/2023/04/19/apple-responds-to-iphone-theft-recovery-key-report/ ; TidBITS 2023-02-26 https://tidbits.com/2023/02/26/how-a-thief-with-your-iphone-passcode-can-ruin-your-digital-life/ .
- Apple's response: Stolen Device Protection in iOS 17.3 (announced December 2023; https://tidbits.com/2023/12/14/apple-to-introduce-stolen-device-protection-in-the-upcoming-ios-17-3/). Limit noted by TidBITS: the passcode still authorises Apple Pay purchases.
- Practical points: use Face ID / Touch ID in public so the passcode is not seen; cover the screen when typing it. [judgment, follows from the WSJ mechanism]

**SIM PIN [S]** (Apple, https://support.apple.com/en-us/118228)
- iPhone: Settings > Cellular > SIM PIN (with Dual SIM: tap the number first, then SIM PIN) > turn on > enter the PIN > Done.
- Warning from Apple: never guess the default carrier PIN; wrong guesses can lock the SIM or eSIM permanently. Get the default PIN from the carrier first.
- Protects against a thief moving the physical SIM to another phone. It does not stop a SIM swap done at the carrier.

**Carrier locks against SIM swap and port-out [S; menu paths come from third-party guides and AT&T's own pages, check in the app]**
- Verizon: two separate switches, "Number Lock" (blocks transfer to another carrier) and "SIM Protection" (blocks moving the line to another SIM or device). Verizon states Number Lock alone does not prevent SIM changes. Turn on in the My Verizon app or website, or dial *611. https://www.verizon.com/about/account-security/how-does-verizon-protect-my-account ; https://www.bleepingcomputer.com/news/security/how-to-protect-your-verizon-number-from-sim-swapping-attacks/
- T-Mobile: "SIM Protection" and "Port Out Protection", both needed, set per line in the T-Life app (reported path: Manage > line > Manage add-ons). https://www.t-mobile.com/support/account/transfer-your-phone-number [exact path unconfirmed]
- AT&T: "Wireless Account Lock", one switch for the whole account, launched July 2025. myAT&T app > Account (person icon) > Wireless account lock > swipe to lock. https://www.att.com/support/article/wireless/000102016/
- FCC rules adopted 2023-11-15 (FCC 23-95): carriers must authenticate the customer securely before a SIM change or port-out, notify the customer immediately of any such request, and offer a free account lock. https://docs.fcc.gov/public/attachments/DOC-398483A1.pdf ; https://docs.fcc.gov/public/attachments/FCC-23-95A1.pdf . Current compliance status not confirmed.
- FBI IC3 2025 annual report: SIM swap 971 complaints, $17,366,758 in losses (2024: 982 complaints, $25,983,946). https://www.ic3.gov/AnnualReport/Reports/2025_IC3Report.pdf [S, via secondary summaries; PDF not opened]
- CISA 2024-12-18: set a PIN and multi-factor authentication on the mobile carrier account. https://cisa.gov/sites/default/files/2024-12/guidance-mobile-communications-best-practices.pdf

**Auto-lock and biometrics.** No Apple recommendation on a specific auto-lock time was found. [unconfirmed] Google says a strong PIN or password still matters with fingerprint or face unlock, because it is the fallback.

**Android equivalents [S]** (https://support.google.com/android/answer/15146908 ; https://blog.google/security/android-theft-protection-identity-check-expanded-features/)
- Path for both: Settings > Google > All services > Theft protection.
- Theft Detection Lock: locks the screen when motion suggests a snatch-and-run. Turn on the switch. Greyed out means unsupported. Android 10 or later.
- Identity Check: outside trusted places, sensitive changes require biometrics (no PIN fallback). Needs a Google Account, a screen lock, class 3 biometrics, and trusted places. First on Pixel with Android 15 and Galaxy devices with One UI 7.
- Google's 2026 Android security post says theft protections will be on by default on new Android 17 devices. https://blog.google/security/whats-new-in-android-security-privacy-2026/ [S]

---

## 6. Password managers

**Wirecutter picks [S, from podcast show notes only; guide not read]**
- Best password manager: **1Password**. Best free password manager: **Bitwarden**. Guide title: "The 2 Best Password Managers of 2026". Source: show notes of The Wirecutter Show, "The End of Passwords" (August 2026), https://podcasts.apple.com/us/podcast/the-end-of-passwords/id1762217793?i=1000779843795
- Wirecutter's printed prices and the guide's update date: [unconfirmed].
- Vendor prices from other sources [S]: Bitwarden Premium $19.80 per year since January 2026 (was $10), from Bitwarden's own announcement https://bitwarden.com/blog/bitwarden-launches-enhanced-premium-plan/ ; Bitwarden free plan still has unlimited passwords and devices. 1Password Individual about $3.99 per month billed yearly ($47.88 per year) per third-party pricing pages dated October 2026; a price change took effect 2026-03-27; figures differ between sources. [unconfirmed, check 1password.com]

**Built-in options [S]**
- Apple Passwords app (iOS 18, macOS 15 and later): passwords and passkeys synced by iCloud Keychain, end-to-end encrypted. https://support.apple.com/en-us/120758
- Google Password Manager: in Chrome and Android, synced to the Google Account; passkeys protected by screen lock or a Google Password Manager PIN. https://support.google.com/accounts/answer/6208650

**What experts say.** I could not read Wirecutter's reasoning on built-in managers. [unconfirmed] What is confirmed: CISA recommends a password manager (2024-12-18 guidance); NIST requires services to allow password managers and autofill. [judgment] For a professor who lives entirely in Apple devices or entirely in Chrome, the built-in manager is far better than none; a cross-platform manager matters if they mix platforms or need sharing. The built-in manager's safety rests on the Apple or Google account and the phone passcode, which is why items 1 to 5 come first.

**NIST SP 800-63B-4 (final, published mid-2025) [S, via secondary summaries; NIST page not opened]**
- Password used as the only factor: at least 15 characters. Used as part of multi-factor authentication: at least 8.
- Services should accept at least 64 characters.
- Services SHALL NOT impose composition rules (for example "one upper case, one digit, one symbol").
- Services SHALL NOT require periodic password changes; they SHALL force a change only on evidence of compromise.
- Services SHALL allow password managers and autofill, and SHOULD allow paste.
- New passwords must be checked against lists of known compromised passwords.
- Primary source to cite: https://pages.nist.gov/800-63-4/sp800-63b.html . Summary used: https://passwork.pro/blog/nist-password-guidelines-2026-what-sp-800-63b-4-requires/

---

## 7. Browser settings and add-ons

**Wirecutter's list of add-ons: [unconfirmed].** No Wirecutter page could be read or found through search.

**HTTPS-only / "Always use secure connections" [S]**
| Browser | Where | Default in late 2026 | Source |
|---|---|---|---|
| Chrome (desktop) | Settings > Privacy and security > Security > under "Secure connections" turn on "Always use secure connections" > "Warns you for insecure public sites" | Google announced default-on for public sites with Chrome 154 in October 2026 (Chrome 147, April 2026, for Enhanced Safe Browsing users). Two secondary articles from late October / November 2026 say it is now live; I did not confirm with Google's release notes. [likely, unconfirmed] | https://support.google.com/chrome/answer/10468685 ; https://blog.google/security/https-by-defau/ ; https://blog.google/security/chrome-now-warns-before-insecure-http-connections/ |
| Firefox | Settings > Privacy & Security > HTTPS-Only Mode > "Enable HTTPS-Only Mode in all windows" (newer versions: under "Connection and software security" > Advanced settings) | HTTPS-Only Mode is **not** on by default (Mozilla). Firefox does upgrade connections where it can (HTTPS-First). | https://support.mozilla.org/en-US/kb/https-only-prefs ; https://support.mozilla.org/en-US/kb/https-upgrades |
| Safari (Mac) | Safari > Settings > Security > the HTTP warning checkbox (exact label not captured). On iOS / iPadOS a similar option is reported as "Not Secure Connection Warning". | Safari 18.2 (iOS 18.2, macOS 15.2) tries HTTPS first by default, per a third-party summary of Apple's release notes. [unconfirmed] | https://support.apple.com/guide/safari/security-ibrw1074/mac |
| Edge | edge://settings/privacy > Security > "Automatically switch to more secure connections with Automatic HTTPS" | Sources conflict on the default and on whether the toggle is visible without a flag. [unconfirmed] | third-party guides only |
- EFF retired the HTTPS Everywhere extension at the start of 2023 because browsers now have this built in; its page now explains the browser settings. https://www.eff.org/https-everywhere/set-https-default-your-browser

**Ad and tracker blockers [S]**
- uBlock Origin (full): no longer runs on Chrome after Chrome dropped Manifest V2; still supported on Firefox (desktop and Android). uBlock Origin Lite: the same developer's Manifest V3 version for Chrome and Edge; also available for Safari. It is less effective on some sites because some filters cannot be expressed in Manifest V3 rules. Source: https://ublockorigin.com/ . A third-party claim that the last Manifest V2 listings were removed from the Chrome Web Store on 2026-08-31 is [unconfirmed].
- Privacy Badger (EFF): free, learns which domains track you and blocks them; sends the Global Privacy Control signal; "primarily a privacy tool, not an ad blocker". Since October 2026 also on Safari for macOS (Safari 26.5 or later). https://privacybadger.org/ ; https://www.eff.org/deeplinks/2026/10/announcing-privacy-badger-safari-macos
- FBI: public service announcement 2022-12-21, "Cyber Criminals Impersonating Brands Using Search Engine Advertisement Services to Defraud Users": "Use an ad blocking extension when performing internet searches"; also type the address of a bank or business directly instead of clicking a search ad. https://www.ic3.gov/PSA/2022/PSA221221 . Repeated in alert I-042425-PSA, 2025-04-24, https://www.ic3.gov/psa/2025/psa250424
- CISA guidance specifically on ad blockers: not found in this session. [unconfirmed]

**Risk of extensions themselves [S]**
- December 2024: a phishing attack on a Cyberhaven employee let attackers publish a malicious update of its Chrome extension, pushed automatically to about 400,000 users; it stole cookies and logged-in sessions. The same campaign hit at least 35 extensions with about 2.6 million users in total. https://techcrunch.com/2024/12/27/cyberhaven-says-it-was-hacked-to-publish-a-malicious-update-to-its-chrome-extension ; https://www.bleepingcomputer.com/news/security/new-details-reveal-how-hackers-hijacked-35-google-chrome-extensions/ ; https://blog.sekoia.io/targeted-supply-chain-attack-against-chrome-browser-extensions/
- Details on 2025 and 2026 extension campaigns were not retrieved. [unconfirmed]
- Advice: keep few extensions, from known developers, and remove the unused ones. [judgment, in line with the cited incident reports]

---

## 8. iCloud Private Relay and VPNs

**iCloud Private Relay [S]** (https://support.apple.com/en-us/102602 ; https://support.apple.com/en-us/102022 ; https://www.apple.com/legal/privacy/data/en/icloud-relay/)
- Does: sends Safari traffic (and unencrypted app traffic and DNS lookups) through two separate relays. The first (Apple) sees your IP address but not the site; the second (a partner) sees the site but not your IP address. "No single entity" can link you and the site.
- Does not: cover other browsers or most app traffic; let you pick a country or get around regional blocks; give access to a campus network. It is not a full VPN.
- Requires: an iCloud+ subscription. iOS, iPadOS, macOS, visionOS only. Not available in all countries.
- Turn on: iPhone / iPad: Settings > [your name] > iCloud > Private Relay. Mac: System Settings > [your name] > iCloud > Private Relay. Per device.
- Campus limit: Apple says networks that must audit traffic or filter it, "such as business or education networks", may not be compatible; you can turn Private Relay off for one Wi-Fi network (the per-network setting "Limit IP Address Tracking"). A university VPN and Private Relay do not run together for the same traffic. [last sentence: judgment]

**Wirecutter VPN picks: [unconfirmed].** Guide not readable. A VPN vendor's blog claims Wirecutter's 2026 list features Mullvad, Proton VPN and IVPN (https://nvovpn.com/en/news/vpn-reviews-compared-wirecutters-2026-best-vpn-picks); it conflicts with another page of the same site and gives no link. Do not cite. From model memory (not a 2026 page): Mullvad was the long-standing top pick and Wirecutter's stance was that many people do not need a VPN at home. [unconfirmed]

**What experts say a VPN does and does not do [S]**
- EFF Surveillance Self-Defense, "Choosing the VPN That's Right for You" (https://ssd.eff.org/module/choosing-vpn-thats-right-you): a VPN hides your traffic from the local network and your internet provider and moves the trust to the VPN company; it is not an anonymity tool; it does not stop tracking by cookies, logins or fingerprinting; with a corporate VPN, the operator of that network sees your traffic.
- CISA, 2024-12-18: "Do not use a personal virtual private network (VPN)": personal VPNs shift the residual risk from the internet provider to the VPN provider, and many free and commercial providers have questionable security and privacy policies; where an organisation requires a VPN client for its data, use that one. https://cisa.gov/sites/default/files/2024-12/guidance-mobile-communications-best-practices.pdf (explanatory clause partly from memory of the document; quoted heading confirmed by search summary)
- University VPN versus commercial VPN [judgment]: the university VPN exists to reach internal systems and library resources and the university can see that traffic; a commercial VPN exists to hide traffic from the local network (hotel, conference, some countries) and gives no access to university systems. With HTTPS nearly everywhere, a commercial VPN adds little against account takeover.

**Encrypted DNS as an alternative [S]**
- Chrome: Settings > Privacy and security > Security > "Use secure DNS" (chrome://settings/security).
- Firefox: Settings > Privacy & Security > DNS over HTTPS; "Default Protection" is on automatically in available regions; "Max Protection" refuses to fall back. Preset providers: Cloudflare and NextDNS. https://support.mozilla.org/en-US/kb/dns-over-https
- It hides only the name lookups, not the IP addresses you connect to. Firefox turns it off when enterprise policy, a VPN or the network signals so.

---

## 9. Hide My Email and equivalents

**Hide My Email (Apple, iCloud+) [S]** (https://support.apple.com/guide/icloud/set-up-hide-my-email-mm9d9012c9e8/icloud ; https://support.apple.com/guide/iphone/create-and-manage-hide-my-email-addresses-iphcb02e76f7/ios ; https://support.apple.com/en-us/105078)
- Does: creates unique random addresses that forward to your real inbox; each can be switched off.
- Requires iCloud+ (or Apple One; Family Sharing members included).
- Create: iPhone / iPad: Settings > [your name] > iCloud > Hide My Email > Create New Address. Or tap "Hide My Email" above the keyboard in an email field in Safari. Mac: System Settings > [your name] > iCloud > Hide My Email. Web: icloud.com/icloudplus > Hide My Email.
- Sign in with Apple: choose "Hide My Email" at sign-up and the app gets an address at @privaterelay.appleid.com. Free, no iCloud+ needed for this part. [last clause from memory, unconfirmed]

**Equivalents [S]**
- Firefox Relay (Mozilla): Mozilla support pages say up to 50 free masks, unlimited with Relay Premium; older pages and the iOS app listing still say 5. [figure conflicting, check relay.firefox.com] https://support.mozilla.org/en-US/kb/create-email-mask-through-firefox-relay
- DuckDuckGo Email Protection: free; one personal address name@duck.com plus unlimited generated private addresses; removes email trackers, then forwards. Set up: DuckDuckGo mobile browser > Settings > Email Protection, or duckduckgo.com/email on desktop with the extension. https://duckduckgo.com/duckduckgo-help-pages/email-protection/what-is-duckduckgo-email-protection
- Fastmail Masked Email (paid Fastmail account): Settings > Masked Email > New Masked Email address; integrates with 1Password and Bitwarden so the password manager creates a new address at sign-up. https://www.fastmail.help/hc/en-us/articles/4406536368911-Masked-Email
- Gmail plus-addressing: add "+anything" before the @ (yourname+shop@gmail.com); all mail arrives in the same inbox. Google notes aliases "aren't private". https://support.google.com/a/users/answer/9308648 . Weakness: the real address is visible and the "+tag" is trivially stripped, so it helps with filtering and with spotting who leaked the address, not with hiding it. [second sentence: judgment]

**Why it limits damage [judgment, standard reasoning].** Breached email and password lists are replayed against other sites (credential stuffing); a unique address per site means the leaked pair matches nothing else. A phishing mail that arrives at the alias you gave only to shop X while claiming to be your bank exposes itself. And a leaked alias can be switched off without changing your real address.

---

## 10. Other items in Wirecutter's "simple online security" guide

**The guide could not be read; its step order is [unconfirmed].** URL given in the brief: https://www.nytimes.com/wirecutter/guides/simple-online-security/ . From model memory (not a 2026 reading), the guide's sections have been, in this order: (1) use a password manager, (2) use two-factor authentication, (3) use browser extensions (ad and tracker blocking), (4) antivirus: the built-in protection is enough, (5) keep software updated automatically, (6) encrypt your computer and phone storage (FileVault, BitLocker / device encryption), (7) back up, (8) other steps such as freezing your credit. Print none of this as Wirecutter's order without opening the page. [unconfirmed]

Confirmed related facts from other sources [S]:
- Automatic updates: CISA's 2024-12-18 guidance lists regularly updating software and using the latest hardware. The 2026 Verizon DBIR puts exploitation of vulnerabilities at 31% of initial access, now the top vector (see section 11).
- Encrypted device storage: setting an iPhone passcode turns on data protection with 256-bit AES encryption (Apple, https://support.apple.com/en-us/119586). Pixel: https://support.google.com/pixelphone/answer/2844831 . Mac (FileVault) and Windows (BitLocker) paths were not researched in this session.
- Credit freeze: free by federal law since 2018-09-21; must be placed separately at Equifax, Experian and TransUnion; placed within one business day and lifted within one hour for online or phone requests; no effect on the credit score. FTC, https://consumer.ftc.gov/articles/credit-freezes-and-fraud-alerts ; FTC consumer alert 2025-09 https://consumer.ftc.gov/consumer-alerts/2025/09/get-credit-freeze-stop-identity-thieves
- Backups: no vendor or Wirecutter facts gathered in this session.

---

## 11. Evidence for the urgency sort

| Evidence | Number | Source | Status |
|---|---|---|---|
| Effect of a second factor on Google accounts | SMS code: blocks 100% of automated bots, 96% of bulk phishing, 76% of targeted attacks. On-device prompt: 100% / 99% / 90%. Security keys: zero successful targeted phishing among users who used only keys | Google Security Blog, 2019-05-17, https://security.googleblog.com/2019/05/new-research-how-effective-is-basic.html | [S], old (2019) but still the only public measurement by challenge type |
| Effect of multi-factor authentication at Microsoft | "reduces the risk of identity compromise by more than 99%"; more than 97% of identity attacks are password spray or brute force | Microsoft Digital Defense Report 2025 (via secondary copies) | [S]. The figures "99.2%" and "99.9%" circulate but were not confirmed against a Microsoft page: do not print them |
| How breaches start (organisations) | Exploitation of vulnerabilities 31% of initial access (up from 20%), first time ahead of credentials; credential abuse 13% as initial vector but present somewhere in 39% of breaches; phishing 16% (one source says 13%) | Verizon 2026 Data Breach Investigations Report, coverage: https://www.helpnetsecurity.com/2026/05/20/verizon-2026-dbir-findings/ ; https://www.descope.com/blog/post/verizon-dbir-2026 | [S], secondary only; the drop in the credential share is partly a method change. Check the report before printing |
| Money lost to cybercrime, United States | 1,008,597 complaints; $20.877 billion in losses in 2025, up 26%. Phishing / spoofing is the top complaint type with 191,561 complaints, losses $215.8 million (2024: $70 million) | FBI IC3 2025 annual report, https://www.ic3.gov/AnnualReport/Reports/2025_IC3Report.pdf ; summary https://spycloud.com/blog/fbi-internet-crime-report-2025/ | [S], PDF not opened |
| SIM swapping | 971 complaints, $17.4 million in 2025 (2024: 982, $26.0 million) | same IC3 report | [S] |
| Phone passcode theft | No count; documented method (WSJ 2023), strong enough for Apple to ship a dedicated feature | see section 5 | qualitative |
| Hijacked browser extensions | about 400,000 users (Cyberhaven), about 2.6 million across at least 35 extensions, December 2024 | see section 7 | [S] |
| Passkey use | 36% of sign-ins at participating services; about 5 billion passkeys | FIDO, 2026 | [S] |

## 12. Proposed urgency sort (all rankings are my judgment, based on the evidence above and on effort)

### A. Do this week (high frequency of the weakness, 5 to 30 minutes each)
1. **Second factor or passkey on the main email, Apple and Google accounts.** Reason: email resets everything else; a second factor stops 76 to 100% of takeover attempts (Google 2019) and more than 99% of identity compromise (Microsoft 2025). Effort: 10 minutes.
2. **Password manager (built-in or 1Password / Bitwarden) and a unique, long password for email, bank and university accounts.** Reason: more than 97% of identity attacks are password guessing or replay (Microsoft 2025); credentials appear in 39% of breaches (DBIR 2026). Effort: 30 minutes to start.
3. **Phone: six digits or more (better: alphanumeric), Stolen Device Protection on (iPhone) or Theft protection / Identity Check on (Android).** Reason: the passcode alone can reset the account password and open saved passwords (WSJ 2023). Effort: 5 minutes.
4. **Automatic updates on for phone, computer and browser.** Reason: vulnerability exploitation is now the top initial access vector at 31% (DBIR 2026). Effort: 2 minutes.
5. **Carrier lock: Verizon Number Lock plus SIM Protection, T-Mobile SIM Protection plus Port Out Protection, AT&T Wireless Account Lock.** Reason: frequency is low (971 complaints) but the average loss per case is about $18,000 and the fix takes 2 minutes; it matters as long as SMS is a recovery path. Effort: 2 minutes. [borderline A / B]

### B. Do this month (strong benefit, more effort or some lock-out risk)
6. **Passkeys on other important accounts; then remove SMS as a second step where there are two other methods.** Reason: SMS stops only 76% of targeted attacks versus effectively all for keys / passkeys (Google 2019); CISA says to disable SMS after enrolling FIDO.
7. **Recovery set-up: recovery contact at Apple and Google, printed backup codes.** Reason: stronger sign-in raises the lock-out risk; do it before item 8 and before Advanced Data Protection.
8. **Two hardware security keys for the Apple and Google accounts.** Reason: only method with zero successful targeted phishing in Google's data; costs money (about $29 to $58 per key, prices unconfirmed) and about 30 minutes.
9. **Browser: HTTPS warning on, one content blocker (uBlock Origin on Firefox, uBlock Origin Lite on Chrome / Edge / Safari), remove unused extensions.** Reason: FBI recommends an ad blocker against fake search ads (2022, 2025); extensions themselves were hijacked for 2.6 million users (2024).
10. **Google Security Checkup and review of third-party app access; same review of devices signed in to the Apple Account.** Reason: finds old devices, old app passwords and forgotten recovery numbers.
11. **Check storage encryption and backups** (FileVault / BitLocker, iCloud or other backup). Reason: protects against loss and theft of the laptop; evidence here is general, no figure gathered.
12. **Credit freeze at the three bureaus.** Reason: free, about 30 minutes, blocks new-account fraud after any data breach (FTC).

### C. When you have time, or if you are at higher risk
13. **Advanced Data Protection for iCloud.** Reason: protects against a breach or legal demand at Apple, a rarer threat than account takeover; real risk of losing data if recovery fails. Not for managed university Apple accounts; not available to new users in the UK.
14. **Google Advanced Protection Program.** Reason: Google aims it at high-risk people (journalists, activists, executives); breaks some third-party apps. Sensible for faculty who work on sensitive topics, with foreign governments, or who are publicly exposed.
15. **Lockdown Mode.** Reason: Apple says it is for the "very few" people targeted by sophisticated spyware; costs convenience.
16. **Contact Key Verification.** Reason: defends against a rare, advanced attack on iMessage.
17. **Hide My Email / email aliases.** Reason: limits spam, tracking and reuse of a breached address; indirect benefit against takeover.
18. **iCloud Private Relay, encrypted DNS, commercial VPN.** Reason: privacy from the local network, not protection of the account; CISA advises against personal VPNs for security purposes; the university VPN is for reaching university systems.
19. **SIM PIN.** Reason: only stops a thief who moves the physical SIM; risk of locking the SIM if set up wrongly.

---

## 13. Queries run (WebSearch; "ext" = extended mode, "std" = standard)

Fetch attempts that failed: WebFetch on 4 Wirecutter URLs (blocked), 6 Apple support URLs, 1 Google support URL, fidoalliance.org, ic3.gov PDF, pod.wave.co (all DNS failure / not allowed); curl on nytimes.com, support.apple.com, support.google.com, landing.google.com (proxy 403).

1. ext: Wirecutter "simple online security" guide steps password manager two-factor updates backups 2026
2. ext: Wirecutter best security keys 2026 Yubico Security Key C NFC pick price
3. ext: Wirecutter best password managers 2026 1Password Bitwarden pick price updated
4. ext: Wirecutter best VPN service 2026 Mullvad pick who needs a VPN updated
5. ext: Wirecutter browser extensions privacy uBlock Origin Lite Privacy Badger recommended 2026
6. std, domain nytimes.com (5 queries: simple online security; security keys; password managers; VPN; ad blockers): all refused, domain not accessible
7. ext, support.apple.com: "Security Keys for Apple Account" requirements steps "Sign-In & Security" add security keys
8. ext, support.apple.com: how to turn on Advanced Data Protection for iCloud steps recovery contact recovery key requirements
9. ext, support.apple.com: About Stolen Device Protection for iPhone turn on steps security delay
10. std, support.apple.com: About Lockdown Mode who it is for how to turn on
11. std, support.apple.com: iMessage Contact Key Verification turn on steps; account recovery contact set up steps
12. ext, support.apple.com: passkeys sign in Apple Account passkey iCloud Keychain Passwords app how to save a passkey
13. ext: Apple iCloud data security overview Advanced Data Protection number of data categories ... United Kingdom unavailable
14. ext, apple.com: iCloud Private Relay what it does two relays Safari not VPN turn on steps network may not support
15. std, support.apple.com: Hide My Email iCloud+ what is it set up steps Sign in with Apple create address
16. ext, support.apple.com: set a passcode iPhone "Custom Alphanumeric Code" Passcode Options six-digit ... auto-lock
17. std, support.apple.com: SIM PIN iPhone turn on steps Settings Cellular SIM PIN
18. ext: Apple Account passkey automatically assigned sign in with passkey iPhone iOS 17
19. ext: Apple Advanced Data Protection United Kingdom withdrawn 2025 2026 status
20. ext, google domains: Google Account Help create a passkey steps ... where stored Google Password Manager
21. ext, google domains: Google Advanced Protection Program requirements passkey or security key enroll restricts ... who should enroll
22. ext, support.google.com: 2-Step Verification second steps passkeys security keys Google prompts Authenticator backup codes remove phone number
23. ext: Google account "Recovery Contacts" feature set up g.co/recovery-contacts 2025 2026
24. ext, google domains: Android "Identity Check" "Theft Detection Lock" turn on steps ... Android version
25. std: Wall Street Journal 2023 Joanna Stern Nicole Nguyen iPhone passcode thieves ... Stolen Device Protection response
26. ext: Verizon Number Lock SIM Protection; T-Mobile SIM Protection port out; AT&T Wireless Account Lock 2026
27. ext: FBI IC3 2025 annual report SIM swap complaints losses phishing complaints total losses
28. std, fcc.gov / ic3.gov / fbi.gov: FCC SIM swap port-out fraud rules consumer guide
29. ext: NIST SP 800-63B-4 final passwords minimum length 15 characters shall not require periodic change
30. ext: Verizon 2026 Data Breach Investigations Report stolen credentials percent phishing percent initial access vector
31. std: Google security blog 2019 "basic account hygiene" SMS code ... security key
32. ext: Microsoft MFA reduces risk of compromise 99.2% "99.9%" Digital Defense Report 2025
33. ext: Chrome "Always use secure connections" enabled by default 2026 Chrome 154; Firefox; Safari; Edge
34. ext: uBlock Origin Chrome Manifest V3 removed Chrome Web Store uBlock Origin Lite 2026 status
35. std: FBI IC3 PSA ad blocking extension search engine advertisements impersonating brands; CISA malvertising
36. ext: browser extensions hijacked malicious update Cyberhaven December 2024 ... advice remove unused extensions
37. std, mozilla: HTTPS-Only Mode Firefox settings
38. ext: Microsoft Edge Automatic HTTPS setting path; Safari 18.2 "Not Secure Connection Warning"
39. std, eff.org / privacybadger.org: HTTPS Everywhere retired; Privacy Badger what it does 2026
40. ext: "Wirecutter" security key picks "Yubico Security Key C NFC" "top pick" Max Eddy 2026
41. ext: "Wirecutter" VPN picks 2026 Mullvad IVPN Proton VPN
42. ext: "Wirecutter" "Every Step to Simple Online Security" list steps
43. ext: "The Wirecutter Show" "The End of Passwords" Max Eddy show notes
44. ext: 1Password individual price 2026; Bitwarden Premium price 2026
45. ext, google domains: Google "Advanced Protection" 2026 enroll with passkey ... Android Advanced Protection
46. std, google domains: Security Checkup; remove 2-Step phone number; backup codes
47. std, google domains: Android set screen lock PIN recommendation; Pixel screen lock
48. ext: Firefox Relay free limit; DuckDuckGo Email Protection; Fastmail Masked Email; Gmail plus addressing
49. std: CISA "Mobile Communications Best Practice Guidance" FIDO ... "do not use a personal VPN"
50. std: FIDO Alliance passkey definition; passkey adoption statistics 2026
51. std, duckduckgo / fastmail / google: Email Protection set up; Masked Email; Gmail plus sign alias
52. std: 1Password passkeys save and sync; Bitwarden passkeys; Google Password Manager passkeys sync
53. ext: Wirecutter passkeys guide Max Eddy 2026; Wirecutter best two-factor authentication app 2026
54. std: EFF Surveillance Self-Defense choosing the VPN; encrypted DNS "Use secure DNS"
55. std, google domains: Chrome Help "Always use secure connections" steps
56. ext: Google "Skip password when possible"; passkeys default; remove phone from 2-Step Verification
57. std: Yubico spare key two keys; services that support security keys
58. ext: Safari settings HTTP warning macOS Safari 18.2 / 26
59. std, cisa.gov / ftc.gov: CISA Secure Our World; FTC credit freeze
60. std, google / bitwarden: Google Password Manager passkeys sync PIN; Bitwarden passkeys
