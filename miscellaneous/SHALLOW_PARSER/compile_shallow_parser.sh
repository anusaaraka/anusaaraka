cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER

 if  [ -e $HOME_anu_test/miscellaneous/SHALLOW_PARSER/shallow-parser-hin-3.0.fc8 ] ; then
     rm -rf shallow-parser-hin-3.0.fc8/
     rm -rf ~/sampark
 fi

tar -xvzf shallow-parser-hin-3.0.fc8.tgz

cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER/shallow-parser-hin-3.0.fc8/bin/sl/
mv old-morph/ old-morph-bkp/
mv morph/ morph-bkp/
cp -r old-morph-bkp/ morph

cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER/shallow-parser-hin-3.0.fc8/data_bin/sl
echo `pwd`
mv old-morph/ old-morph-bkp/
mv morph/ morph-bkp/
cp -r old-morph-bkp/ morph

cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER/shallow-parser-hin-3.0.fc8
make install
