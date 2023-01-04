#!/bin/ksh
# Tested with ksh version JM 93t+ 2010-03-05
for i in {1..404}
do
 printf "    <room>rooms\\\\"$(awk NR==$i spriteids.txt)"</room>"
 echo ""
done