PATH1=$HOME_anu_tmp/tmp
PATH2=$HOME_anu_test


Anusaaraka_ol.sh $1

if ! [ -d $HOME_anu_tmp/tmp/tmp_freemind ] ; then
echo " $HOME_anu_tmp/tmp/tmp_freemind  directory does not exist "
echo "Creating  $HOME_anu_tmp/tmp/tmp_freemind"
mkdir $HOME_anu_tmp/tmp/tmp_freemind
fi


cd $PATH1/$1_tmp/$2
perl $PATH2/debugging/make_freemind_ol.pl  $PATH2/Anu_clp_files/run_modules_ol.bat  > $PATH1/tmp_freemind/$1_debug_ol.mm

freemind $PATH1/tmp_freemind/$1_debug_ol.mm
