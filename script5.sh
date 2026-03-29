#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Knishka Kumari | Reg: 24MEI10067
# Course: Open Source Software
# Description: Asks user 3 questions interactively using read,
#              then generates a manifesto and saves it to a .txt file

echo "============================================================"
echo " OPEN SOURCE MANIFESTO GENERATOR"
echo " Student: Knishka Kumari | Reg: 24MEI10067"
echo "============================================================"
echo ""
echo " Answer three questions to generate your manifesto."
echo ""

# --- Read interactive user input ---
read -p " Q1. Name one open-source tool you use every day: " TOOL
read -p " Q2. In one word, what does freedom mean to you: " FREEDOM
read -p " Q3. Name one thing you would build and share freely: " BUILD

# --- Get current date and username ---
DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)

# --- Output filename using string concatenation ---
OUTPUT="manifesto_${AUTHOR}.txt"

echo ""
echo " Generating your manifesto..."
echo ""

# --- Write manifesto to file using > and >> redirection ---
echo "============================================================" > $OUTPUT
echo " OPEN SOURCE MANIFESTO"                                      >> $OUTPUT
echo " Written by : Knishka Kumari"                                >> $OUTPUT
echo " Date       : $DATE"                                         >> $OUTPUT
echo "============================================================" >> $OUTPUT
echo ""                                                             >> $OUTPUT
echo " I believe the tools we build should belong to everyone."    >> $OUTPUT
echo ""                                                             >> $OUTPUT

# --- String concatenation to compose paragraph ---
echo " Every day I use $TOOL - software someone shared freely"     >> $OUTPUT
echo " with the world, asking only that others do the same."       >> $OUTPUT
echo ""                                                             >> $OUTPUT
echo " To me, freedom means $FREEDOM. The freedom to use,"         >> $OUTPUT
echo " understand, fix, and share what I have learned."            >> $OUTPUT
echo ""                                                             >> $OUTPUT
echo " I want to build $BUILD and release it openly,"              >> $OUTPUT
echo " because someone did the same thing for me."                 >> $OUTPUT
echo ""                                                             >> $OUTPUT
echo " Git taught me this. Built in 10 days because a proprietary" >> $OUTPUT
echo " tool was taken away. Its GPL license ensures that freedom"  >> $OUTPUT
echo " is the kind that can never be revoked."                     >> $OUTPUT
echo ""                                                             >> $OUTPUT
echo " I choose to carry that forward."                            >> $OUTPUT
echo ""                                                             >> $OUTPUT
echo " Signed: Knishka Kumari | $DATE"                             >> $OUTPUT
echo "============================================================" >> $OUTPUT

# --- Display the manifesto using cat ---
echo "------------------------------------------------------------"
echo " YOUR MANIFESTO:"
echo "------------------------------------------------------------"
cat $OUTPUT

echo ""
echo " Saved to: $OUTPUT"
echo "============================================================"
