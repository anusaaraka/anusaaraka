
rm $HOME_anu_test/debugging/sentence_debug/*

cp $HOME_anu_test/debugging/wsd_tam_debug.clp  $HOME_anu_test/debugging/run_wsd_tam_debug.bat $HOME_anu_test/debugging/sentence_debug/.

cd $HOME_anu_tmp/tmp/$1_tmp/$2
cp meaning_to_be_decided.dat word.dat original_word.dat root.dat relations.dat revised_preferred_morph.dat debug_file.dat global_path.clp cat_consistency_check.dat tam_id.dat hindi_tam_info.dat $HOME_anu_test/debugging/sentence_debug/.

echo "(defglobal ?*file_name* = $1)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*sent_no* = $2)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp

