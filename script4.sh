#!/bin/bash
# Script 4: Log File Analyzer
# Author: Knishka Kumari | Reg: 24MEI10067
# Course: Open Source Software
# Description: Reads a log file line by line using while read loop,
#              counts keyword occurrences and prints matching lines

# --- Create a sample Git server log file ---
echo " Creating sample Git server log file..."

cat > mylog.txt << EOF
2025-03-01 10:01:22 INFO git-daemon started
2025-03-01 10:02:11 INFO clone request from 192.168.1.5
2025-03-01 10:03:45 ERROR authentication failed for user deploy
2025-03-01 10:04:00 INFO push accepted from 192.168.1.10
2025-03-01 10:05:33 WARNING disk usage at 80 percent
2025-03-01 10:06:19 ERROR repository not found old-project.git
2025-03-01 10:07:44 INFO fetch completed in 0.3s
2025-03-01 10:08:55 ERROR permission denied user guest
2025-03-01 10:09:01 INFO git-daemon running normally
2025-03-01 10:10:30 WARNING slow network detected
2025-03-01 10:11:00 ERROR pack file corrupted checksum mismatch
2025-03-01 10:12:45 INFO backup completed successfully
EOF

echo " Log file created: mylog.txt"
echo ""

# --- Variables ---
LOGFILE="mylog.txt"
KEYWORD="error"
COUNT=0

echo "============================================================"
echo " LOG FILE ANALYZER"
echo " Student: Knishka Kumari | Reg: 24MEI10067"
echo "============================================================"
echo ""
echo " Log File : $LOGFILE"
echo " Keyword  : $KEYWORD"
echo ""

# --- while read loop to read file line by line ---
while IFS= read -r LINE; do
    # if-then to check if line contains keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # increment counter variable
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print results ---
echo " Keyword '$KEYWORD' found $COUNT times"
echo ""
echo "------------------------------------------------------------"
echo " MATCHING LINES:"
echo "------------------------------------------------------------"

# --- Print last 5 matching lines using grep and tail ---
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "============================================================"
echo " Analysis complete."
echo "============================================================"
