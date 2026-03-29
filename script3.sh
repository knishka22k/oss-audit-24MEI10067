#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Knishka Kumari | Reg: 24MEI10067
# Course: Open Source Software
# Description: Loops through system directories and reports
#              permissions, ownership and disk usage using a for loop

# --- List of directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "============================================================"
echo " DISK AND PERMISSION AUDITOR"
echo " Student: Knishka Kumari | Reg: 24MEI10067"
echo "============================================================"
echo ""
echo " STANDARD SYSTEM DIRECTORIES"
echo "------------------------------------------------------------"

# --- for loop to go through each directory ---
for DIR in "${DIRS[@]}"; do
    # Check if directory exists using if-then-else
    if [ -d "$DIR" ]; then
        # Extract permissions and owner using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get directory size using du
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo " $DIR"
        echo "   Permissions & Owner : $PERMS"
        echo "   Size                : $SIZE"
        echo ""
    else
        echo " $DIR does not exist on this system"
        echo ""
    fi
done

echo "------------------------------------------------------------"
echo " GIT-SPECIFIC PATHS"
echo "------------------------------------------------------------"

# --- Check Git binary location ---
if [ -f "/usr/bin/git" ]; then
    echo " /usr/bin/git"
    ls -l /usr/bin/git | awk '{print "   Perms & Owner: "$1, $3, $4}'
    echo ""
fi

# --- Check Git core library directory ---
if [ -d "/usr/lib/git-core" ]; then
    echo " /usr/lib/git-core"
    ls -ld /usr/lib/git-core | awk '{print "   Perms & Owner: "$1, $3, $4}'
    echo ""
fi

# --- Check Git system config file ---
if [ -f "/etc/gitconfig" ]; then
    echo " /etc/gitconfig"
    ls -l /etc/gitconfig | awk '{print "   Perms & Owner: "$1, $3, $4}'
else
    echo " /etc/gitconfig : not found"
fi

echo ""
echo "============================================================"
echo " Audit complete."
echo "============================================================"
