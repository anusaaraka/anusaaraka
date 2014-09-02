STANFORD_PATH=$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2014-08-27
MYPATH=`pwd`
cd $HOME_anu_test/Parsers/stanford-parser/src
sh run_multiple_parse_penn.sh $STANFORD_PATH $MYPATH/$1 > $MYPATH/$1_output
sed -i '1,1d' $MYPATH/$1_output
cd $MYPATH
sh $HOME_anu_test/miscellaneous/std_tregex/stanford-tregex-2014-08-27/run-tregex-gui.command $1_output
