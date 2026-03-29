# Open Source Audit — Git
**Student Name:** Knishka Kumari
**Registration Number:** 24MEI10067
**Course:** Open Source Software
**Slot:** E11
**Chosen Software:** Git

---

## Scripts Overview

### script1.sh — System Identity Report
Displays system information including kernel version, distro, uptime, current user, and the GNU GPL v2 license freedoms.

### script2.sh — FOSS Package Inspector
Checks if Git is installed on the system and uses a case statement to print a philosophy note about the package.

### script3.sh — Disk and Permission Auditor
Loops through important system directories using a for loop and reports permissions, ownership, and disk usage.

### script4.sh — Log File Analyzer
Creates a sample log file and reads it line by line using a while read loop, counting and displaying lines containing a keyword.

### script5.sh — Open Source Manifesto Generator
Asks the user three questions interactively using read, then generates a personalized manifesto and saves it to a .txt file.

---

## How to Run on Linux

### Dependencies
- bash
- git
- coreutils (pre-installed on all Linux systems)

### Steps
git clone https://github.com/knishka22k/oss-audit-24MEI10067.git
cd oss-audit-24MEI10067
chmod +x *.sh
./script1.sh
./script2.sh
./script3.sh
./script4.sh
./script5.sh
