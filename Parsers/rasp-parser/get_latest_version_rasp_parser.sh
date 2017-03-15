cd $HOME_anu_test/Parsers/rasp-parser/PersonalLexiconService
mv rasp3os ../
cd ../
rm -rf PersonalLexiconService

sed -i 's/RASP=\/home\/`whoami`\/rasp3os/RASP=\$HOME_anu_test\/Parsers\/rasp-parser\/rasp3os/g' rasp3os/scripts/rasp.sh
sed -i 's/RASP=\/home\/`whoami`\/rasp3os/RASP=\$HOME_anu_test\/Parsers\/rasp-parser\/rasp3os/g' rasp3os/scripts/rasp_parse.sh

