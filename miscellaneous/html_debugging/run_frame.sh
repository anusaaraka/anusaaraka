#sh run_frame.sh eng_file man_file
#Ex: sh run_frame_new.sh lay hin_lay
rm $HOME_anu_output/$2.txt.html

MYPATH=`pwd`
./line_count.out $2 > $HOME_anu_output/$2.1
#cp $2  $HOME_anu_output/

cd $HOME_anu_output/

echo "<html lang=\"hi\"><body>" > $2.txt.html
echo "<meta http-equiv=\"Content-Language\" content=\"hi\">" >> $2.txt.html
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">" >> $2.txt.html

wx_utf8 < $2.1 > $2.txt_utf8

while read line
   do
         echo $line >> $2.txt.html
         echo "<BR>" >> $2.txt.html
   done < $2.txt_utf8

echo "</body></html>" >> $2.txt.html
cd $MYPATH
sh frame.sh $1 $HOME_anu_output $2
