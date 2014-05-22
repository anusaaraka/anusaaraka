$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2014-01-04/run_multiple_parse_penn.sh $1 > $1_output
sed -i '1,1d' $1_output
sh $HOME_anu_test/miscellaneous/std_tregex/stanford-tregex-2014-01-04/run-tregex-gui.command $1_output
