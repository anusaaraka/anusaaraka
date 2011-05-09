 cp  $HOME_anu_test/Anu_clp_files/pada.clp  $HOME_anu_test/debugging/pada_debug.clp $HOME_anu_test/debugging/run_pada_debug.bat  $HOME_anu_test/debugging/sentence_debug/.

 cd $HOME_anu_tmp/tmp/$1_tmp/$2
 ls  pada_info_debug.dat pada_id_info.dat word.dat lwg_info.dat relations.dat English_sentence.dat parser_type.dat global_path.clp  agmt_control_fact.dat  pada_control_fact.dat > dat


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



echo "(defglobal ?*home_anu_tmp* = $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*file_name* = $1)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*sent_no* = $2)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp

