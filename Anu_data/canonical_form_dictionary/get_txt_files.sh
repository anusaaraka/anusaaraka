gcc -g -o get_canonical_form-dic.out get_canonical_form-dic.c  myeq.c
$HOME_anu_test/Anu_src/comp.sh canonical_form_correction
$HOME_anu_test/Anu_src/comp.sh canonical_to_conventional

#  If dictionaries directory exists then remove it.
  if  [ -e dictionaries ] ; then
        rm -r dictionaries
  fi
  mkdir dictionaries

cp $HOME_anu_test/Anu_data/create-gdbm.pl dictionaries/
while read line
do
        cp $HOME_anu_test/Anu_data/$line".txt" .
done < list_Anu_data

while read line
do
        cp $HOME_anu_test/Anu_data/compound-matching/$line".txt" .
done < list_Anu_data_compound

while read line
do
        cp $HOME_anu_test/miscellaneous/SMT/MINION/dictionaries/$line".txt" .
done < list_SMT

while read line
do
	cp $HOME_anu_test/Anu_data/domain/$line".txt" .
done < list_Anu_data_domain

while read line
do
        cp $HOME_anu_test/Anu_data/domain/multi_word_dic/$line".txt" .
done < list_Anu_data_multi_domain
