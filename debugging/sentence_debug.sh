cp $HOME_anu_test/debugging/sentence_debug.clp $HOME_anu_test/debugging/run_sentence_debug.bat  $HOME_anu_test/debugging/sentence_debug/.

 cd $HOME_anu_tmp/tmp/$1_tmp/$2
 cp global_path.clp word.dat English_sentence.dat parser_type.dat sd-relations_tmp1.dat relations_tmp1.dat $HOME_anu_test/debugging/sentence_debug/.

echo "(defglobal ?*home_anu_tmp* = $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*file_name* = $1)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*sent_no* = \"$2\")" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp

cd $HOME_anu_test/debugging/sentence_debug
myclips -f run_sentence_debug.bat
