#!/bin/ksh
# Tested with ksh version JM 93t+ 2010-03-05
for i in {1..1904}
do
 printf "    <object>objects\\\\"$(awk NR==$i spriteids.txt)"</object>"
 echo ""
done