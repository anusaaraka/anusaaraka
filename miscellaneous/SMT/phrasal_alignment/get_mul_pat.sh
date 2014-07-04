cut -f2 -d' ' $1 > tmp_1
sort -u tmp_1 > tmp_2 
sed 's/ \[/\t[/'  tmp_2 | sed 's/ /##/g' | sed 's/__/_/g'  | sed 's/^_//g' | sed 's/_$//g' | sed 's/"/\\"/g' > tmp
$HOME_anu_test/multifast-v1.0.0/src/get_word_count.out  tmp > tmp1
sed 's/##//g' tmp1 | sed 's/\t/_",0, {stringy: "/g' | sed 's/^/\t{"_/g' | sed 's/$/"}},/g' > tmp2
sed '1i\AC_PATTERN_t allpattern[] = {'  tmp2 > tmp3
sed '$a\};'   tmp3  > $2

