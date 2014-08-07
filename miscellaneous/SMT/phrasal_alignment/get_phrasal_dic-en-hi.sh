MYPATH=`pwd`
Phrasal_align_path=$HOME_anu_test/miscellaneous/SMT/phrasal_alignment
Multifast_path=$HOME_anu_test/multifast-v1.0.0/src

### Creating Phrase dictionary::
export LC_ALL=C
sort -u $1 > $1.sort
./phrase_gdbm_dict.out $1.sort $Phrasal_align_path/en-hi-gdbm-dict.txt1
cut -f1 $Phrasal_align_path/en-hi-gdbm-dict.txt1 > f1
cut -f2 $Phrasal_align_path/en-hi-gdbm-dict.txt1 > f2
sed "s/'_s_/'s_/g" f1 > f1-1
paste f1-1 f2 > $Phrasal_align_path/en-hi-gdbm-dict.txt2
grep -v "^$" $Phrasal_align_path/en-hi-gdbm-dict.txt2 > $Phrasal_align_path/en-hi-gdbm-dict.txt

### Creating Word to word dictionary::
python create_SL-TL_dict_using_phrase_table.py  $1  en  hi
cut -f1 -d'|' $1 > f1
cut -f4 -d'|' $1 > f4
paste f1 f4 > f1-4
sed 's/ /_/g' f1-4 | sed 's/^/_/g' | sed 's/\t//g' > f1-4.txt
paste f1-4.txt en-hi_dict.txt  > $Phrasal_align_path/Word-to-Word-dict.txt

### Creating Multifast format dictionary::
cd $Multifast_path
cut -f1  $Phrasal_align_path/en-hi-gdbm-dict.txt  > f1
grep -v "^$" f1 > f1-1
sed 's/ \[/\t[/'  f1-1 | sed 's/ /##/g' | sed 's/__/_/g'  | sed 's/^_//g' | sed 's/_$//g' | sed 's/"/\\"/g' > tmp
./get_word_count_single.out  tmp > tmp1
sed 's/##//g' tmp1 | sed 's/\t/_",0, {stringy: "/g' | sed 's/^/\t{"_/g' | sed 's/$/"}},/g' > tmp2
sed '1i\AC_PATTERN_t allpattern[] = {'  tmp2 > tmp3
sed '$a\};'   tmp3  > extract_key.c
rm tmp* f1 f1-1


rm $Phrasal_align_path/en-hi-gdbm-dict.txt1 $Phrasal_align_path/en-hi-gdbm-dict.txt2 f1 f2 f4 f1-4.txt 
