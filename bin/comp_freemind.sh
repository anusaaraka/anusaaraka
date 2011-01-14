PATH1=$HOME_anu_tmp/tmp
PATH2=$HOME_anu_test


cp $1 $1-link
cp $1 $1-ol
Anusaaraka.sh $1-link
Anusaaraka_ol.sh $1-ol

if ! [ -d $HOME_anu_tmp/tmp/tmp_freemind ] ; then
echo " $HOME_anu_tmp/tmp/tmp_freemind  directory does not exist "
echo "Creating  $HOME_anu_tmp/tmp/tmp_freemind"
mkdir $HOME_anu_tmp/tmp/tmp_freemind
fi


cd $PATH1/$1-ol_tmp/$2
perl $PATH2/debugging/make_comp_freemind_ol.pl  $PATH2/Anu_clp_files/run_modules_ol.bat $PATH2/Anu_clp_files/run_modules_link.bat > $PATH1/tmp_freemind/$1_debug_comp.mm
cd $PATH1/$1-link_tmp/$2
perl $PATH2/debugging/make_comp_freemind_link.pl  $PATH2/Anu_clp_files/run_modules_link.bat $PATH2/Anu_clp_files/run_modules_link.bat >> $PATH1/tmp_freemind/$1_debug_comp.mm

freemind $PATH1/tmp_freemind/$1_debug_comp.mm
