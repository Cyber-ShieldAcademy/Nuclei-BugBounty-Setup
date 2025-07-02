# Nuclei Bug Bounty Setup 🎯

[![GitHub Pages](https://img.shields.io/badge/Docs-Live-blue?logo=github)](https://Cyber-ShieldAcademy.github.io/Nuclei-BugBounty-Setup/)

<p align="center">
  <img src="docs-site/docs/images/banner.png" alt="Banner" width="80%"/>
</p>

<p align="center">
  <a href="https://github.com/Cyber-ShieldAcademy/Nuclei-BugBounty-Setup/stargazers"><img src="https://img.shields.io/github/stars/Cyber-ShieldAcademy/Nuclei-BugBounty-Setup?style=social" alt="Stars"/></a>
  <a href="https://github.com/Cyber-ShieldAcademy/Nuclei-BugBounty-Setup/network/members"><img src="https://img.shields.io/github/forks/Cyber-ShieldAcademy/Nuclei-BugBounty-Setup?style=social" alt="Forks"/></a>
  <a href="https://github.com/Cyber-ShieldAcademy/Nuclei-BugBounty-Setup/blob/main/LICENSE"><img src="https://img.shields.io/github/license/Cyber-ShieldAcademy/Nuclei-BugBounty-Setup" alt="License"/></a>
  <a href="https://github.com/Cyber-ShieldAcademy/Nuclei-BugBounty-Setup/actions"><img src="https://github.com/Cyber-ShieldAcademy/Nuclei-BugBounty-Setup/workflows/Daily%20Nuclei%20Template%20Update/badge.svg" alt="CI Status"/></a>
</p>

---
---

![Last Scan](https://img.shields.io/badge/Last%20Scan-2025--07--02-blueviolet?style=flat&logo=nuclei)

---
---

![Auto Scan](https://github.com/Cyber-ShieldAcademy/Nuclei-BugBounty-Setup/actions/workflows/auto-scan.yml/badge.svg)
![Deploy Docs](https://github.com/Cyber-ShieldAcademy/Nuclei-BugBounty-Setup/actions/workflows/deploy-docs.yml/badge.svg)

## 📊 Dashboard Overview

| Metric        | Value                            |
|---------------|----------------------------------|
| 🔁 Last Scan  | 2025-07-02                        |
| ✅ Findings   | 0 critical issues                 |
| 📂 Templates  | CVEs only (filtered)             |
| 📄 Report     | [HTML Report](results/2025-07-02_08-18_cves.html) |

> 🔄 This dashboard can be auto-updated in future using scripts or CI workflows.

---

## 📄 Last Scan Summary

- 🔍 Target: https://example.com  
- 📅 Date: 2025-07-02  
- 📁 Text Report: [View results/2025-07-02_08-18_cves.txt](results/2025-07-02_08-18_cves.txt)



📊 **Last Scan Summary**

- 🔍 Target: https://example.com
- 📅 Date: 2025-07-02
- 📁 Report: [View results/2025-07-02_08-18_cves.txt](results/2025-07-02_08-18_cves.txt)

## 🚀 Features

- ✅ Daily Nuclei template updates (via GitHub Actions)
- 🧠 Custom scripts for scanning, logging, and auto-categorizing
- 🖥️ Easy CLI installer with `setup/install.sh`
- 🧩 Ready-to-go template structure
- 🧪 Ideal for bug bounty hunters and red teamers

---

## 🛠 Setup

### 1. Clone the repo:
```bash
git clone https://github.com/Cyber-ShieldAcademy/Nuclei-BugBounty-Setup.git
cd Nuclei-BugBounty-Setup

## 🚫 Ignored Templates

To reduce noise and irrelevant results, we exclude some templates using `nuclei-ignore.yaml`.

Example:

```yaml
id:
  - cves/2020/CVE-2020-0000
tags:
  - headless
  - fuzz

## Path: ~/Downloads/Nuclei-BugBounty-Setup/README.md

### 🚀 Sample Workflow
```bash
subfinder -d example.com | naabu -silent | httpx -silent | nuclei -t ~/nuclei/nuclei-templates
```

### 🔄 Updating Tools
Run periodically:
```bash
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
nuclei -ut -update-templates
```

### 📦 Included Tools
| Tool | Function |
|------|----------|
| Nuclei | Template-based scanning |
| Subfinder | Subdomain discovery |
| ... | ... |

