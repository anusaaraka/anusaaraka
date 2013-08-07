#$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2013-06-20/run_multiple_parse_penn.sh $HOME_anu_test/miscellaneous/std_tregex/$1 > $HOME_anu_test/miscellaneous/std_tregex/$1_output
$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2013-06-20/run_penn-pcfg.sh $HOME_anu_test/miscellaneous/std_tregex/$1 > $HOME_anu_test/miscellaneous/std_tregex/$1_output
#sed -i '1,1d' $HOME_anu_test/miscellaneous/std_tregex/$1_output
sh $HOME_anu_test/miscellaneous/std_tregex/stanford-tregex-2013-06-20/run-tregex-gui.command $HOME_anu_test/miscellaneous/std_tregex/$1_output
