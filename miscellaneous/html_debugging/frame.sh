echo "<html><head><title>$1</title></head>"> $2/$1_frame1.html
echo "<frameset rows="50%,25%,25%">">> $2/$1_frame1.html
echo "<frame src="\"$1"_sample2.html\"" " name=\"English\"\>" >> $2/$1_frame1.html       #changed this
echo "<frame src="\"$1"_trnsltn.html\"" "name=\"HindiTranslation\">" >> $2/$1_frame1.html
python this.py $2/$3.txt.html $2 $1 #added this
echo "<frame src="\"$1"_sample1\"" "name=\"ManHindiTranslation\">" >> $2/$1_frame1.html     #changed this
echo "</frameset>" >> $2/$1_frame1.html
echo "</html>" >> $2/$1_frame1.html
