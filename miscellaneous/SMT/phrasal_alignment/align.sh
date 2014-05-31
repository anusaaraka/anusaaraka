rm -f $1/wrd-to-wrd.txt
rm -f $1/align_left_over_wrds.txt
ls tmp* > list
len=`wc -l list | awk '{print $1}'`
file_len=$(($len-1))
count=0
while read line
do
#echo $count
if [ $count -lt  $file_len ] ; then
python align-left-over-wrds.py  $line  $1/hnd  $1/left $count $1/left-over-words.txt $1/align_left_over_wrds.txt >> $1/wrd-to-wrd.txt 
count=$(($count+1))
fi
done < list
