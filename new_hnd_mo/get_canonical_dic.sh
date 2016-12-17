##Programme to get apertium hindi dictionary in canonical form 
##Added by Roja(18-07-12)

#$HOME_anu_test/Anu_data/canonical_form_dictionary/get_canonical_form-dic.out  $1 > apertium_hn_in_canonical_form.dix_tmp
$HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form.out <  $1 > apertium_hn_in_canonical_form.dix_tmp
sed 's/iye\(["<]\)/ie\1/g ' apertium_hn_in_canonical_form.dix_tmp | sed 's/\(<\/alphabet\)/Z\1/g' | sed -e '2 s/^/<!-- Generated canonical form dictionary -->\n/g' > apertium_hn_in_canonical_form.dix_tmp1
$HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form_correction.out  <  apertium_hn_in_canonical_form.dix_tmp1 > apertium_hn_in_canonical_form.dix_tmp2
$HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_to_conventional.out  <  apertium_hn_in_canonical_form.dix_tmp2 > apertium_hn_in_canonical_form.dix 
rm apertium_hn_in_canonical_form.dix_tmp*
