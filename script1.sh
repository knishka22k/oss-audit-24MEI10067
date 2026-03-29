#!/bin/bash
# Script 1: System Identity Report
# Author: Knishka Kumari | Reg: 24MEI10067
# Course: Open Source Software
# Description: Displays system information and OS license details

# --- Variables ---
STUDENT_NAME="Knishka Kumari"
REG_NUMBER="24MEI10067"

# --- System Info using command substitution ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATETIME=$(date '+%d %B %Y')
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
ARCH=$(uname -m)
HOST=$(hostname)

# --- Display Report ---
echo "================================"
echo " OPEN SOURCE AUDIT - Git"
echo "================================"
echo "Student : $STUDENT_NAME"
echo "Reg No  : $REG_NUMBER"
echo "Date    : $DATETIME"
echo "Kernel  : $KERNEL"
echo "Distro  : $DISTRO"
echo "Arch    : $ARCH"
echo "Host    : $HOST"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "================================"

# --- License Information ---
echo "OS License: GNU GPL v2"
echo "Freedom 0: Run for any purpose"
echo "Freedom 1: Study and modify"
echo "Freedom 2: Redistribute freely"
echo "Freedom 3: Share modifications"
echo "================================"
