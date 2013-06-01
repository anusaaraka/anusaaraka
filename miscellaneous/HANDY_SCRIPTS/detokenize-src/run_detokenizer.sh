MYPATH=$HOME_anu_test/miscellaneous/HANDY_SCRIPTS
$MYPATH/detokenizer.perl -l en < $1 |sed 's/` `/"/g' |sed 's/`/\x27/g' > $1_detokenized
