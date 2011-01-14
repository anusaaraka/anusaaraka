 cd $HOME_anu_test/Anu_clp_files/
 
 cp $HOME_anu_test/Anu_clp_files/ol_parser_id_mapping.clp  $HOME_anu_test/Anu_clp_files/modify_ol_relations.clp $HOME_anu_test/Anu_clp_files/link_relation_rules.clp $HOME_anu_test/Anu_clp_files/sd_relation_rules.clp $HOME_anu_test/debugging/relation_debug.clp $HOME_anu_test/debugging/run_relation_debug.bat $HOME_anu_test/Anu_clp_files/run_modules_ol.bat  $HOME_anu_test/debugging/sentence_debug/.

 cd $HOME_anu_tmp/tmp/$1_tmp/$2
 
 ls ol_relations.dat  ol_relation_debug.dat link_relation_info.dat parserid_wordid_mapping.dat relations_debug.dat word.dat lwg_info.dat relations_tmp1.dat relations.dat English_sentence.dat parser_type.dat sd-relations_tmp1.dat sd_word.dat lwg_info_tmp.dat > dat

# cp link_relation_info.dat relations_id_map_debug.dat parserid_wordid_mapping.dat relations_debug.dat word.dat lwg_info.dat relations_tmp1.dat relations.dat English_sentence.dat parser_type.dat sd-relations_tmp1.dat sd_word.dat lwg_info_tmp.dat $HOME_anu_test/debugging/sentence_debug/.

 var=`cat dat`
 for i in $var;
 do

   if [[ -a  $i ]] ; then

     cp  $HOME_anu_tmp/tmp/$1_tmp/$2/$i  $HOME_anu_test/debugging/sentence_debug/.

     else
         echo "Creating $i"
           touch $i
           cp  $i  $HOME_anu_test/debugging/sentence_debug/.
   fi
 done;
