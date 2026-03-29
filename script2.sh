#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Knishka Kumari | Reg: 24MEI10067
# Course: Open Source Software
# Description: Checks if open-source packages are installed
#              and prints philosophy notes using a case statement

# --- Package to inspect ---
PACKAGE="git"

# --- Check if package is installed using if-then-else ---
echo "============================================================"
echo " FOSS PACKAGE INSPECTOR - Git Audit"
echo " Student: Knishka Kumari | Reg: 24MEI10067"
echo "============================================================"
echo ""

# --- if-then-else to check installation status ---
if command -v $PACKAGE &>/dev/null; then
    echo " $PACKAGE is INSTALLED"
    echo " Version: $(git --version)"
else
    echo " $PACKAGE is NOT installed"
fi

echo ""

# --- case statement to print philosophy note ---
case $PACKAGE in
    git)
        echo " Git: Built by Linus in 10 days after BitKeeper was revoked. GPL v2."
        ;;
    httpd)
        echo " Apache: the web server that built the open internet."
        ;;
    mysql)
        echo " MySQL: open source at the heart of millions of apps."
        ;;
    vlc)
        echo " VLC: Built by Paris students who wanted to stream video."
        ;;
    firefox)
        echo " Firefox: Nonprofit browser fighting for an open web."
        ;;
    python3)
        echo " Python: Shaped entirely by community. PSF licensed."
        ;;
    *)
        echo " Unknown package."
        ;;
esac

echo ""
echo "============================================================"
echo " Inspection complete."
echo "============================================================"
