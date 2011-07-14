 rm $HOME_anu_test/debugging/sentence_debug/*

 cp $HOME_anu_test/debugging/lwg_debug.clp $HOME_anu_test/debugging/run_lwg_debug.bat $HOME_anu_test/debugging/sentence_debug/. 

 cp $HOME_anu_test/Anu_clp_files/verb_chunk.clp $HOME_anu_test/Anu_clp_files/sd_lwg_rules.clp $HOME_anu_test/debugging/sentence_debug/.

 echo -e "parser_type.dat\nword.dat\nsd_word_tmp.dat\nlinkid_word_tmp.dat\nlink_relation_info_tmp1.dat\nlink_name_expand.dat\nparserid_wordid_mapping.dat\nlwg_debug.dat\nlwg_info.dat\nglobal_path.clp\nEnglish_sentence.dat\nsd-relations_tmp1.dat" >> dat
 
var=`cat dat`
 for i in $var;
 do

   if [[ -a  $HOME_anu_tmp/tmp/$1_tmp/$2/$i ]] ; then

     cp  $HOME_anu_tmp/tmp/$1_tmp/$2/$i  $HOME_anu_test/debugging/sentence_debug/.

     else
         echo "Creating empty file $i"
           touch $i
   fi
 done;
