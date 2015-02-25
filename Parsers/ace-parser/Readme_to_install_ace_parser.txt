#Readme_to_install_ace_parser.txt
#################################
1. Copy ACE_PARSER.tgz in $HOME_anu_test/Parsers/ace-parser folder
2. tar -xvzf ACE_PARSER.tgz
3. gedit ~/.bashrc
	In export PATH variable add the following path: 
		$HOME_anu_test/Parsers/ace-parser/LINGO/delphin/lkb/bin/linux.x86.64
		Ex: export PATH=$HOME/jdk1.7.0/bin:$HOME_anu_test/bin:$HOME/bin:$HOME_anu_test/Parsers/ace-parser/LINGO/delphin/lkb/bin/linux.x86.64:$PATH
	In export LD_LIBRARY_PATH add the following path:
		$HOME_anu_test/Parsers/ace-parser/OPENCCG/lib:$HOME/ACE_PARSER/LINGO/delphin/lkb/lib/linux.x86.32
		Ex: export LD_LIBRARY_PATH=/usr/local/lib/:/usr/lib/x86_64-linux-gnu:$HOME_anu_test/Parsers/ace-parser/OPENCCG/lib:$HOME/ACE_PARSER/LINGO/delphin/lkb/lib/linux.x86.32
	export DELPHINHOME=$HOME_anu_test/Parsers/ace-parser/LINGO/delphin
4. source ~/.bashrc
5. cd $HOME_anu_test/Parsers/ace-parser/LINGO
6. sh install.sh $HOME_anu_test/Parsers/ace-parser/LINGO/delphin
7. cd $HOME_anu_test/Parsers/ace-parser/
8. tar -xvzf ace-0.9.19-x86-64.tar.gz
