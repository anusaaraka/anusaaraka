
sed 's/ / \n/g' $1 | sed 's/^\!//g' | sed 's/^;//g' | sed 's/^&//g' | sed 's/\?//g' | sed 's/^\#//g' | sed 's/\.//g' | sed 's/^@//g' | sed 's/)//g' | sed 's/(//g' | sed 's/,//g' | sed 's/\///g' | sed 's/\[//g' | sed 's/\]//g' | sed "s/'//g" | sed 's/"//g' | sed 's/://g' | sed 's/>//g' | sed 's/<//g' | sed 's/=//g' | sed 's/^-//g' | sed 's/{//g' | sed 's/}//g' | sed 's/%//g' | sed 's/\|//g' | sed 's/\\//g' | sed 's/*//g' | sed 's/\+//g' > h

grep -v "^[0-9]" h > h1
grep -v "^[ ]*$" h1 > $2/hindi_words

#wc -l h-1

rm -f h h1

