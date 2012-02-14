echo "<html><head><title>$1_tran</title></head>"> $2/$1_tran_frame.html
echo "<frameset rows="50%,50%">">> $2/$1_tran_frame.html
echo "<frame src="\"$1.txt.html"\" name=\"English Text\"\>" >> $2/$1_tran_frame.html
echo "<frame src="\"$1_tran.html"\" name=\"AnusaarakaOutput\"\>" >> $2/$1_tran_frame.html
echo "</frameset>" >> $2/$1_tran_frame.html
echo "</html>" >> $2/$1_tran_frame.html
