#Programme to generate canonical form WSD rules.
#Added by Roja(17-07-12)

#  If canonical_form_wsd_rules directory exists then remove it.
  if  [ -e canonical_form_wsd_rules ] ; then
        rm -r canonical_form_wsd_rules
  fi
	mkdir canonical_form_wsd_rules

ls *.clp > list

while read line
do
./get_canonical_form_in_wsd.out  < $HOME_anu_test/WSD/wsd_rules/$line  >   canonical_form_wsd_rules/$line.1
$HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form_correction.out < canonical_form_wsd_rules/$line.1 > canonical_form_wsd_rules/$line.2
./canonical_to_conventional_in_wsd.out  < canonical_form_wsd_rules/$line.2 > canonical_form_wsd_rules/$line
done < list

rm canonical_form_wsd_rules/*.1 canonical_form_wsd_rules/*.2
