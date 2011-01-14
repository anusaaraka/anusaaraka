
 if ! [ -d $4/tmp/$1_tmp/$2 ] ; then
    echo "Sentence $2 does not exist in $1"
    exit
 fi

 MYPATH=$4/tmp

 cd $MYPATH/$1_tmp/$2
 echo "(defglobal ?*path* = $HOME_anu_test)" > global_path.clp
 echo "(defglobal ?*provisional_wsd_path* = $HOME_anu_provisional_wsd_rules)" >> global_path.clp

 myclips -f $HOME_anu_test/Anu_clp_files/run_modules_std.bat >  $1.error
 myclips -f $HOME_anu_test/Anu_clp_files/show_std_rel.clp  >> $1.error 
 cat user_std_rel_info.dat

 
 
