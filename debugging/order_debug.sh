rm *
cd $HOME_anu_test/Anu_clp_files/
cp $HOME_anu_test/debugging/order_debug.clp $HOME_anu_test/debugging/run_order_debug.bat  $HOME_anu_test/debugging/sentence_debug/.

cd $HOME_anu_tmp/tmp/$1_tmp/$2
cp global_path.clp pada_info.dat punctuation_info.dat English_sentence.dat word.dat  lwg_info.dat Eng_id_order.dat $HOME_anu_test/debugging/sentence_debug/.

echo "(defglobal ?*home_anu_tmp* = $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*file_name* = $1)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*sent_no* = $2)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp

