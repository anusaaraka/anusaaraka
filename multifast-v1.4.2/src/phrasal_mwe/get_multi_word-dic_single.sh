#Converting dictionary to multifast dictionary format

grep -v "^#" $1 > multi.tmp-1
#./get_word_count multi.tmp-1 > multi.tmp
.././get_word_count_single.out multi.tmp-1 > multi.tmp
#grep -v "^#" multi.tmp  > multi.tmp1
sed 's/\t/_",0, {stringy: "/g' multi.tmp | sed 's/^/\t{"_/g' | sed 's/$/"}},/g' > multi.tmp1
sed '1i\AC_PATTERN_t sample_patterns[] = {'  multi.tmp1 > multi.tmp2
sed '$a\};'   multi.tmp2  > $2
rm multi.tmp* 
