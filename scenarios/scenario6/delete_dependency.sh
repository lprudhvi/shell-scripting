#!/bin/sh 
for f in $1;
do
if [ -d $f ]
then
cd "$f"
project_name=$( basename "$PWD" )
  if grep $2 pom.xml;
  then
  linenumber=`grep -n "$2" pom.xml | sed 's/^\([0-9]\+\):.*$/\1/'`
  startlinenumbertodelete=`head -n $linenumber pom.xml| grep -n "<dependency>" | tail -1 | sed 's/^\([0-9]\+\):.*$/\1/'`
  templastlinenumbertodelete=`tail -n +$linenumber pom.xml | grep -n "</dependency>"| head -1|sed 's/^\([0-9]\+\):.*$/\1/'`
  lastlinenumbertodelete=`expr "$linenumber" + "$templastlinenumbertodelete" - 1`
  sed -i -e "${startlinenumbertodelete},${lastlinenumbertodelete}d" pom.xml
   echo "in $project_name, $2 deleted"  >> /root/shellscripting/scenarios/scenario6/report.txt
  else
  echo "in $project_name, $2 is not found"  >> /root/shellscripting/scenarios/scenario6/report.txt
  fi
fi
done
