STANFORD_PATH=$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2014-08-27
MYPATH=`pwd`
cd $HOME_anu_test/Parsers/stanford-parser/src
sh run_penn-pcfg.sh $STANFORD_PATH $HOME_anu_test/miscellaneous/std_tregex/$1 > $HOME_anu_test/miscellaneous/std_tregex/$1_output
cd $MYPATH
sh $HOME_anu_test/miscellaneous/std_tregex/stanford-tregex-2014-08-27/run-tregex-gui.command $HOME_anu_test/miscellaneous/std_tregex/$1_output
