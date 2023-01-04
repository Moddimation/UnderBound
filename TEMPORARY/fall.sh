#!/bin/ksh
# Tested with ksh version JM 93t+ 2010-03-05
for i in {0..700}
do
 grep -r -i -h -o "($i/\* scr.* \*/" ../ | head -1
done