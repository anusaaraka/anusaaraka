cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER

 if  [ -e $HOME_anu_test/miscellaneous/SHALLOW_PARSER/shallow-parser-hin-3.0.fc8 ] ; then
     rm -rf shallow-parser-hin-3.0.fc8/
     rm -rf ~/sampark
 fi

tar -xvzf shallow-parser-hin-3.0.fc8.tgz

cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER/shallow-parser-hin-3.0.fc8
make install

echo "Full Parser Compilation:"
tar -xvzf fullparser-hin-1.6.3.tgz

cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER/fullparser-hin-1.6.3
make
cd $setu/src/sl/fullparser_hin-1.6.3
make install
