#MYPATH=~/tmp_anu_dir
apertium-deswxml $HOME_anu_tmp/tmp/tmp_stdenglish/$1.tmp2 | lt-proc -a $HOME_anu_test/apertium/en.morf.bin |  apertium-rewxml | perl $HOME_anu_test/Anu_src/split-line.pl

