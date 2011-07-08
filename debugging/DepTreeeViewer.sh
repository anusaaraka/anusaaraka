rm *
cd $HOME_anu_tmp/tmp/$1_tmp/$2
cp relations_tmp1.dat original_word.dat cat_consistency_check.dat lwg_info.dat $HOME_anu_test/debugging/sentence_debug/.

cd $HOME_anu_test/debugging/sentence_debug/ 
cp $HOME_anu_test/debugging/paninian_to_conllx_format.clp .

myclips -f paninian_to_conllx_format.clp

java -jar $HOME_anu_test/debugging/DepTreeeViewer_17_06_10.jar
