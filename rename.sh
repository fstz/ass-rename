#!/bin/bash
a=0
cat mkv |  while read myline

do
#echo ${a}"LINE:"$myline
a=$[$a+1]
b="0"$a
if [ ${#b} -eq 3 ];then
b=${b:1:2}
fi

echo ${a}+${b}+${myline}
rename "${b}" "$myline" "${b}.ass"
done
