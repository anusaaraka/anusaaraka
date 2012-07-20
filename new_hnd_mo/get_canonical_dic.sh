##Programme to get apertium hindi dictionary in canonical form 
##Added by Roja(18-07-12)

sed -n '1,'$2' p'   $1  > $1.tmp
sed -n '/<e lm/p'   $1  > $1.tmp1
sed '$!N;$!D'       $1  > $1.tmp2
sed 's/\(<\/i>\)/"\1/g' $1.tmp1  > entries
cut -f1 -d'"' entries   > entries-1
cut -f2 -d'"' entries   > entries-wrd
cut -f3 -d'"' entries   > entries-rt
cut -f4-6 -d'"' entries > entries-4-6

$HOME_anu_test/Anu_data/canonical_form_dictionary/./get_canonical_form-dic.out  entries-wrd > entries-wrd_in_canonical
$HOME_anu_test/Anu_data/canonical_form_dictionary/./get_canonical_form-dic.out  entries-rt  > entries-rt_in_canonical
paste entries-1  entries-wrd_in_canonical  entries-rt_in_canonical  entries-4-6  > entries_in_canonical.tmp

sed 's/\t/"/g'  entries_in_canonical.tmp  | sed 's/"\(<\/i>\)/\1/g' > entries_in_canonical.tmp1
cat $1.tmp entries_in_canonical.tmp1 $1.tmp2 >  entries_in_canonical.tmp2
sed 's/^"""//g'  entries_in_canonical.tmp2   >  apertium_hn_in_canonical_form.dix

rm $1.tmp* entries* 
