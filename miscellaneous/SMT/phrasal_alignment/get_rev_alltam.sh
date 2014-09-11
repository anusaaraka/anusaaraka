#Programme to get AllTam.txt in reverse format.
cut -f1 $1 > f1 
cut -f2 $1 > f2
sed 's/,.*//g' f1 > f1-1
paste f2 f1-1 > f1-2
sort -u f1-2 > $2 
