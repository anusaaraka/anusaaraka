MYPATH=`pwd`
cd $HOME_anu_tmp/tmp/$1_tmp/$2
cp relations_tmp1.dat original_word.dat cat_consistency_check.dat lwg_info.dat $MYPATH/

cd $MYPATH 
myclips -f paninian_to_conllx_format.clp

java -jar DepTreeeViewer_17_06_10.jar
