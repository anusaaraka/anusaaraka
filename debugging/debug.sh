 PATH1=$HOME_anu_tmp/tmp
 PATH2=$HOME_anu_test

cd $PATH1/$1_tmp/$2
perl $PATH2/debugging/make_freemind.pl < $PATH2/Anu_clp_files/run_modules.bat > $PATH2/debugging/debug.mm
