echo "<html><head><title>$1</title></head>"> $2/$1_frame.html
echo "<frameset rows="80%,20%">">> $2/$1_frame.html
echo "<frameset cols="30%,70%">">> $2/$1_frame.html
echo "<frame src="\"$1.txt.html"\" name=\"English Text\"\>" >> $2/$1_frame.html
echo "<frame src="\"$1.html"\" name=\"AnusaarakaOutput\"\>" >> $2/$1_frame.html
echo "</frameset>" >> $2/$1_frame.html
echo "<frame src="\"$1_trnsltn.html\" "name=\"HindiTranslation\">" >> $2/$1_frame.html
echo "</frameset>" >> $2/$1_frame.html
echo "</html>" >> $2/$1_frame.html
