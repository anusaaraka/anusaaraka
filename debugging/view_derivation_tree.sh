rm mapped_constituents dir_names.txt  sd-lexicalize_info.txt

cp $HOME_anu_tmp/tmp/$1_tmp/dir_names.txt .
cp $HOME_anu_tmp/tmp/$1_tmp/sd-lexicalize_info.txt .

sh $HOME_anu_test/debugging/map_cons_tree.sh
java -jar $HOME_anu_test/debugging/ConstTreeViewer_13_05_10.jar
