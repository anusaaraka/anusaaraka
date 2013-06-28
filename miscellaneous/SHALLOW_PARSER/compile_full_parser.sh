 cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER


 if  [ -e $HOME_anu_test/miscellaneous/SHALLOW_PARSER/fullparser-hin-1.6.3 ] ; then
     rm -rf fullparser-hin-1.6.3/
 #    rm -rf ~/sampark
 fi

 tar -xvzf fullparser-hin-1.6.3.tgz

 echo "Full Parser Compilation:"
 cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER/fullparser-hin-1.6.3
 make
 cd $setu/src/sl/fullparser_hin-1.6.3
 make install
