MYPATH=`pwd`

cd $HOME_anu_test/Parsers/stanford-parser/src
sh run_penn-pcfg.sh $HOME_anu_test/miscellaneous/std_tregex/$1 > $HOME_anu_test/miscellaneous/std_tregex/$1_output

cd $MYPATH
#Modified below command by Roja (26-03-16) according to new version 3.6.0. This version takes additional library files to load the gui.
#So giving the command here instead of calling shell 'run-tregex-gui.command'
java -mx300m -cp "`dirname $0`/stanford-tregex-2015-12-09/stanford-tregex.jar:`dirname $0`/stanford-tregex-2015-12-09/lib/*:" edu.stanford.nlp.trees.tregex.gui.TregexGUI $HOME_anu_test/miscellaneous/std_tregex/$1_output

#sh $HOME_anu_test/miscellaneous/std_tregex/stanford-tregex-2014-08-27/run-tregex-gui.command $HOME_anu_test/miscellaneous/std_tregex/$1_output
