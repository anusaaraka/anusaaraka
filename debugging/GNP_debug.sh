 cp $HOME_anu_test/debugging/GNP_debug.clp $HOME_anu_test/debugging/run_GNP_debug.bat  $HOME_anu_test/debugging/sentence_debug/.

 cd $HOME_anu_tmp/tmp/$1_tmp/$2
 cp  word.dat English_sentence.dat global_path.clp GNP_debug.dat apertium_input_debug.dat id_Apertium_input.dat GNP_agmt_info.dat  id_Apertium_output.dat $HOME_anu_test/debugging/sentence_debug/.

 echo "(defglobal ?*home_anu_tmp* = $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*file_name* = $1)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*sent_no* = $2)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp

