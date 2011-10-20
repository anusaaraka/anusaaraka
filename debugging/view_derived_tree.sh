rm  *
cd $HOME_anu_tmp/tmp/$1_tmp/$2
cp one_sentence_per_line.txt.std.penn  $HOME_anu_test/debugging/sentence_debug/derived_tree

cd $HOME_anu_test/debugging/sentence_debug/ 


java -jar $HOME_anu_test/debugging/ConstTreeViewer_13_05_10.jar
