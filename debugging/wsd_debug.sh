 rm $HOME_anu_test/debugging/sentence_debug/* 
 cp $HOME_anu_test/debugging/wsd_debug.clp $HOME_anu_test/debugging/run_wsd_debug.bat  $HOME_anu_test/debugging/sentence_debug/.

# cd $HOME_anu_tmp/tmp/$1_tmp/$2
# cp  sent_type.dat meaning_to_be_decided.dat word.dat original_word.dat root.dat relations.dat lwg_info.dat cat_consistency_check.dat preferred_morph.dat debug_file.dat hindi_meanings.dat global_path.clp compound_phrase.dat $HOME_anu_test/debugging/sentence_debug/.
echo -e "meaning_to_be_decided.dat\nword.dat original_word.dat\nroot.dat\nrelations.dat\nlwg_info.dat\ncat_consistency_check.dat\npreferred_morph.dat\ndebug_file.dat\nhindi_meanings.dat\nglobal_path.clp\ncompound_phrase.dat\nglobal_path.clp" >> $HOME_anu_test/debugging/sentence_debug/dat


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

