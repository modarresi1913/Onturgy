# Ablation Corpus (N=50)

> The 50 documented architectural failures used for the ablation tests in Passes II–IV.

## Categories

The corpus spans eight categories:
- Software (e.g., Log4Shell, Knight Capital, CrowdStrike)
- Platforms (e.g., Twitter/X, Reddit, Apple App Store)
- Governance (e.g., OpenAI board, FTX, WeWork)
- Autonomous systems (e.g., Uber self-driving, Tesla Autopilot)
- Physical systems with software control (e.g., Boeing 737 MAX, Peloton, Galaxy Note 7)
- Data infrastructures (e.g., 23andMe, Strava, Cambridge Analytica)
- AI systems with stated missions (e.g., Microsoft Tay, ChatGPT, YouTube)
- Identity/communication platforms (e.g., Mozilla Persona, Google Reader, Hangouts)

## The 50 cases

| # | Failure | Year | Declared? | Failure type | Value-load? |
|---|---|---|---|---|---|
| 1 | Facebook emotional contagion experiment | 2014 | Yes | declared-operational gap | **Yes** |
| 2 | Boeing 737 MAX MCAS flight-control override | 2018-19 | Yes | declared-operational gap | **Yes** |
| 3 | Google+ shutdown with non-portable data | 2019 | Yes | Exit failure | No |
| 4 | Apple App Store guideline changes (retroactive) | 2020-22 | Yes | Authority failure | No |
| 5 | Twitter/X API access revocation | 2023 | Yes | Exit failure | No |
| 6 | Stable Diffusion license restriction (retroactive) | 2023 | Yes | Contestability failure | No |
| 7 | Reddit API pricing changes | 2023 | Yes | Exit failure | No |
| 8 | OpenAI board dismissal and reinstatement | Nov 2023 | Yes | Authority failure | No |
| 9 | Cambridge Analytica / Facebook data sharing | 2018 | Yes | declared-operational gap | **Yes** |
| 10 | Strava heatmap exposing military base locations | 2018 | Yes | declared-operational gap | **Yes** |
| 11 | Equifax data breach (unpatched Apache Struts) | 2017 | No | implementation failure | No |
| 12 | Theranos Edison testing-device architecture | 2014-18 | Yes | declared-operational gap | **Yes** |
| 13 | Healthcare.gov initial launch failure | 2013 | Yes | implementation failure | No |
| 14 | Knight Capital trading-software bug ($440M loss) | 2012 | No | implementation failure | No |
| 15 | Volkswagen diesel emissions cheat software | 2015 | Yes | declared-operational gap | **Yes** |
| 16 | Microsoft Tay chatbot (no audit, no override) | 2016 | Yes | declared-operational gap | **Yes** |
| 17 | YouTube recommendation radicalization pattern | 2016-19 | Yes | declared-operational gap | **Yes** |
| 18 | TikTok algorithm and teen mental health | 2021-23 | Yes | declared-operational gap | **Yes** |
| 19 | Apple Maps launch (rushed architecture) | 2012 | No | implementation failure | No |
| 20 | Samsung Galaxy Note 7 battery-fire software | 2016 | No | implementation failure | No |
| 21 | CrowdStrike global IT outage (update architecture) | Jul 2024 | No | implementation failure | No |
| 22 | 23andMe credential-stuffing data breach | 2023 | No | implementation failure | No |
| 23 | Uber Greyball (software to evade regulators) | 2017 | Yes | declared-operational gap | **Yes** |
| 24 | Wells Fargo cross-selling incentive architecture | 2016 | Yes | declared-operational gap | **Yes** |
| 25 | FTX collapse (commingled customer funds) | 2022 | Yes | declared-operational gap | **Yes** |
| 26 | Log4Shell (logging-library remote code execution) | 2021 | No | implementation failure | No |
| 27 | SolarWinds supply-chain compromise | 2020 | No | implementation failure | No |
| 28 | Boeing Starliner OFI software defect | 2024 | Yes | implementation failure | No |
| 29 | Zillow iBuyer algorithm-driven pricing loss | 2021 | Yes | declared-operational gap | **Yes** |
| 30 | Clearview AI facial-recognition scraping | 2020 | Yes | declared-operational gap | **Yes** |
| 31 | Uber self-driving car fatality (Tempe) | 2018 | Yes | declared-operational gap | **Yes** |
| 32 | Disney+ launch crash | 2019 | Yes | implementation failure | No |
| 33 | Apple CSAM scanning proposal | 2021 | Yes | declared-operational gap | **Yes** |
| 34 | Robinhood GameStop trading halt | Jan 2021 | Yes | declared-operational gap | **Yes** |
| 35 | Cloudflare global outage | Jul 2020 | Yes | implementation failure | No |
| 36 | Fastly global CDN outage | Jun 2021 | Yes | implementation failure | No |
| 37 | Adobe Creative Cloud subscription-only model | 2013 | Yes | Exit failure | No |
| 38 | Peloton Tread+ recall (software-controlled safety) | 2021 | Yes | declared-operational gap | **Yes** |
| 39 | WeWork failed IPO (governance architecture) | 2019 | Yes | Authority failure | No |
| 40 | Epic Games vs Apple marketplace lawsuit | 2020-21 | Yes | Authority failure | No |
| 41 | Tesla Autopilot crashes (multiple) | 2016-24 | Yes | declared-operational gap | **Yes** |
| 42 | Mozilla Persona identity shutdown | 2016 | Yes | Exit failure | No |
| 43 | Google Reader shutdown | 2013 | Yes | Exit failure | No |
| 44 | Hangouts shutdown with no migration path | 2022 | Yes | Exit failure | No |
| 45 | Spotify Discovery Mode pay-for-play | 2020 | Yes | declared-operational gap | **Yes** |
| 46 | Apple sideloading restrictions in EU | 2024 | Yes | declared-operational gap | **Yes** |
| 47 | Microsoft Teams global outage | 2023 | Yes | implementation failure | No |
| 48 | LastPass breach (encrypted vaults stolen) | 2022 | No | implementation failure | No |
| 49 | T-Mobile customer data breach | 2021, 2023 | No | implementation failure | No |
| 50 | Samsung SmartThings hub vulnerability | 2018 | No | implementation failure | No |

## Summary

- **Total:** 50 cases
- **Declared-objective:** 30 (60%)
- **Undeclared-objective:** 20 (40%)
- **Value-load:** 17 (34%)
- **Value-redundant:** 33 (66%)

## Selection bias

The corpus was selected by a single AI auditor with access to English-language sources. The bias is named but not corrected. Cases were selected to span categories (software, platforms, governance, autonomous systems, physical systems, data infrastructures, AI, identity platforms) rather than randomly.

## See also
- [boundary-cases.md](./boundary-cases.md) — the 8 boundary cases examined in Pass IV
- [results/pass3-findings.md](../results/pass3-findings.md) — binary prediction verification
- [results/pass4-findings.md](../results/pass4-findings.md) — ternary refinement
