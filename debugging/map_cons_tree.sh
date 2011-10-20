 $HOME_anu_test/Anu_src/split_file.out sd-lexicalize_info.txt dir_names.txt constituents
 
 while read line
 do
 cd $line
 
 $HOME_anu_test/debugging/constituency_parse E_constituents_info.dat Node_category_info.dat < constituents
 myclips -f $HOME_anu_test/debugging/get_constituency_tree.clp >  $1.error
 sed  's/LB /(/g' cons_tree.dat |sed 's/RB /)/g' |sed 's/(Cons-tree//g' |sed 's/RB)$/)/g'> constituent_tree.dat
 cat constituent_tree.dat >> ../mapped_constituents
 cd ../
 done < dir_names.txt
