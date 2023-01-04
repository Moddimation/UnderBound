#!/bin/ksh
# Tested with ksh version JM 93t+ 2010-03-05
for i in {1..2500}
do
 printf "    <sprite>sprites\\"$(awk NR==$i spriteids.txt)"</sprite>"
 echo ""
done