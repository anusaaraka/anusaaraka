rm $HOME_anu_test/debugging/sentence_debug/* 

 cp $HOME_anu_test/Anu_clp_files/ol_parser_id_mapping.clp  $HOME_anu_test/Anu_clp_files/modify_ol_relations.clp $HOME_anu_test/Anu_clp_files/link_relation_rules.clp $HOME_anu_test/Anu_clp_files/sd_relation_rules.clp $HOME_anu_test/debugging/relation_debug.clp $HOME_anu_test/debugging/run_relation_debug.bat $HOME_anu_test/Anu_clp_files/run_modules_ol.bat  $HOME_anu_test/debugging/sentence_debug/.

 echo -e "global_path.clp\nol_relations.dat\nol_relation_debug.dat\nlink_relation_info_tmp1.dat\nparserid_wordid_mapping.dat\nrelations_debug.dat\nword.dat\nlwg_info.dat\nrelations_tmp.dat\nrelations.dat\nEnglish_sentence.dat\nparser_type.dat\nsd_word.dat\nlwg_info_tmp.dat\nglobal_path.clp" > $HOME_anu_test/debugging/sentence_debug/dat


 var=`cat dat`
 for i in $var;
 do

   if [[ -a  $HOME_anu_tmp/tmp/$1_tmp/$2/$i ]] ; then

     cp $HOME_anu_tmp/tmp/$1_tmp/$2/$i  $HOME_anu_test/debugging/sentence_debug/.

     else
         echo "Creating $i"
           touch $HOME_anu_test/debugging/sentence_debug/$i
          # cp  $i  $HOME_anu_test/debugging/sentence_debug/.
   fi
 done;

echo "(defglobal ?*home_anu_tmp* = $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*file_name* = $1)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*sent_no* = \"$2\")" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp

