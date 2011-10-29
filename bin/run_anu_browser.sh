
 sh $1/shell_scripts/ClipsToAnu_browser_intfc.sh $2 $3 $4
 echo "<html><body>" > $4/$2.txt.html
 cat $3/$2 >>$4/$2.txt.html
 echo "</body></html>" >> $4/$2.txt.html

 cp $3/$2 $3/tmp/$2_tmp/
 sh $1/shell_scripts/frame.sh $2 $4

 mkdir $3/tmp/$2_tmp/anu_html
 cp $1/Browser/img.php $1/Browser/val.js $3/tmp/$2_tmp/anu_html/

 cd $1/Browser
 cp -r help/*htm $4/help/
 cd src
 cp *.html *.js *.css $4

 #To add slashes before(',",(,) etc.. )  inside initialise function(used for google api)
 cd $4
 perl $1/Anu_src/change-html.pl < $4/$2.html > $4/$2-new.html
 cp $4/$2.html $4/$2-old.html
 cp $4/$2-new.html $4/$2.html
