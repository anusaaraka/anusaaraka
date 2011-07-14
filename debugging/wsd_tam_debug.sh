
rm $HOME_anu_test/debugging/sentence_debug/*

cp $HOME_anu_test/debugging/wsd_tam_debug.clp  $HOME_anu_test/debugging/run_wsd_tam_debug.bat $HOME_anu_test/debugging/sentence_debug/.

echo -e "meaning_to_be_decided.dat\nword.dat\noriginal_word.dat\nrevised_root.dat\nrelations.dat\nrevised_preferred_morph.dat\ndebug_file.dat\nglobal_path.clp\ncat_consistency_check.dat\ntam_id.dat\nhindi_tam_info.dat\nglobal_path.clp" >>$HOME_anu_test/debugging/sentence_debug/dat

var=`cat dat`
 for i in $var;
 do

   if [[ -a  $HOME_anu_tmp/tmp/$1_tmp/$2/$i ]] ; then

     cp $HOME_anu_tmp/tmp/$1_tmp/$2/$i  $HOME_anu_test/debugging/sentence_debug/.

     else
         echo "Creating $i"
           touch $HOME_anu_test/debugging/sentence_debug/$i
   fi
 done;

echo "(defglobal ?*home_anu_tmp* = $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*file_name* = $1)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*sent_no* = $2)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
