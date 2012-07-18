gcc -g -o get_canonical_form-dic.out get_canonical_form-dic.c  myeq.c

#  If dictionaries directory exists then remove it.
  if  [ -e dictionaries ] ; then
        rm -r dictionaries
        mkdir dictionaries
  fi

cp create-gdbm.pl dictionaries/
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
        cp $HOME_anu_test/miscellaneous/SMT/alignment/dictionaries/$line".txt" .
done < list_SMT
