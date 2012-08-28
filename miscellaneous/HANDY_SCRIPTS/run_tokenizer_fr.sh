$HOME_anu_test/miscellaneous/HANDY_SCRIPTS/tokenizer.perl -l fr < $1 |sed 's/` `/"/g' |sed 's/`/\x27/g' 
