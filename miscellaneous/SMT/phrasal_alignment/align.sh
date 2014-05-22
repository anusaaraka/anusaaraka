rm -f $1/wrd-to-wrd.txt
ls tmp* > list
count=0
while read line
do
#echo $count
python align-left-over-wrds.py  $line  $1/hnd  $1/left $count $1/left-over-words.txt >> $1/wrd-to-wrd.txt 
count=$(($count+1))
done < list
