#Programme to generate canonical form WSD rules.
#Added by Roja(17-07-12)

#  If canonical_form_wsd_rules directory exists then remove it.
  if  [ -e canonical_form_wsd_rules ] ; then
        rm -r canonical_form_wsd_rules
	mkdir canonical_form_wsd_rules
  fi

ls *.clp > list

while read line
do
./get_canonical_form_in_wsd.out  < $HOME_anu_test/WSD/wsd_rules/$line  >   canonical_form_wsd_rules/$line
done < list

