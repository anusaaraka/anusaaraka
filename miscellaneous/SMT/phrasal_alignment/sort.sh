rm -f $1
ls tmp* > list
while read line
do
 sort -n -k2  $line >> $1
done < list 
