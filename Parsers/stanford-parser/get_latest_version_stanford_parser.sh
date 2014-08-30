cd $HOME_anu_test/Parsers/stanford-parser
unzip $1
echo $1 > tmp 
sed -i 's/.zip//g' tmp
var=`cat tmp`
rm tmp
cd $var
jar -xf stanford-parser-3.4.1-models.jar
