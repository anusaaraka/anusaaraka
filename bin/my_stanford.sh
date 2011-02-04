 #/bin/sh
 source ~/.bashrc

 export LC_ALL=
 export LC_ALL=en_US.UTF-8

 if ! [ -d $HOME_anu_tmp ] ; then
     echo $HOME_anu_tmp " directory does not exist "
     echo "Creating "$HOME_anu_tmp 
    mkdir $HOME_anu_tmp
 fi

 MYPATH1=`pwd`
 MYPATH=$HOME_anu_tmp
 cp $1 $MYPATH/. 

 if ! [ -d $MYPATH/tmp ] ; then
    echo "tmp  does not exist "
    echo " Creating tmp "
    mkdir $MYPATH/tmp
 fi

 if ! [ -d $MYPATH1/help ] ; then
    echo "help dir  does not exist "
    echo "Creating help dir"
    mkdir $MYPATH1/help
 fi

 if  [ -e $MYPATH/tmp/$1_tmp ] ; then
    rm -rf $MYPATH/tmp/$1_tmp
 fi

 mkdir $MYPATH/tmp/$1_tmp

 echo "Saving Format info ..."

 $HOME_anu_test/Anu/stdenglish.sh $1 $MYPATH
 $HOME_anu_test/Anu/pre_process.sh $1 $MYPATH
 $HOME_anu_test/Anu/save_format.sh $1 $MYPATH

 echo "Saving word information"
 cd $HOME_anu_test/Anu_src
 ./word.out < $MYPATH/tmp/tmp_save_format/$1.fmt_split $MYPATH/tmp $1
 ./rm_tags.out < $MYPATH/tmp/$1_tmp/new_text.txt > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt
 ./punct.out $MYPATH/tmp/tmp_save_format/$1.fmt_split $MYPATH/tmp/$1_tmp/punctuation.txt

  echo "Saving morph information"
  cd $HOME_anu_test/apertium/
  apertium-destxt $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt | lt-proc -a en.morf.bin | apertium-retxt > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.morph
  perl morph.pl $MYPATH $1 < $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.morph

  echo "Calling POS Tagger and Chunker (APERTIUM)" 
  cd $HOME_anu_test/apertium
  sh run_chunker_and_tagger.sh $1

  cd $HOME_anu_test/Anu_src
  ./aper_chunker.out $MYPATH/tmp/$1_tmp/chunk.txt < $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.chunker

  echo "Calling Link Parser"
  cd $HOME_anu_test/LINK/link-grammar-4.5.7/link-grammar
  ./link-parser $HOME_anu_test/LINK/link-grammar-4.5.7/data/en $MYPATH/tmp $1 $2 <$MYPATH/tmp/$1_tmp/one_sentence_per_line.txt 


  echo "Calling Stanford parser"
  cd $HOME_anu_test/stanford-parser/stanford-parser-2010-11-30/
  sh ./run_stanford-parser.sh $1 $MYPATH > /dev/null
 
  cd $MYPATH/tmp/$1_tmp
  sed 's/&/\&amp;/g' one_sentence_per_line.txt|sed -e s/\'/\\\'/g |sed 's/\"/\&quot;/g' |sed  "s/^/(Eng_sen \"/" |sed -n '1h;2,$H;${g;s/\n/\")\n;~~~~~~~~~~\n/g;p}'|sed -n '1h;2,$H;${g;s/$/\")\n;~~~~~~~~~~\n/g;p}' > one_sentence_per_line_tmp.txt
  $HOME_anu_test/Anu_src/split_file.out one_sentence_per_line_tmp.txt dir_names.txt English_sentence.dat
  $HOME_anu_test/Anu_src/split_file.out link_relation_info.txt dir_names.txt link_relation_info_tmp.dat
  $HOME_anu_test/Anu_src/split_file.out link_name_expand.txt dir_names.txt link_name_expand.dat
  $HOME_anu_test/Anu_src/split_file.out linkid_word.txt dir_names.txt linkid_word_tmp.dat
  $HOME_anu_test/Anu_src/split_file.out link_word_cat.txt dir_names.txt linkid_word_cat.dat
  $HOME_anu_test/Anu_src/split_file.out link_numeric_word.txt dir_names.txt link_numeric_word_tmp.dat
  $HOME_anu_test/Anu_src/split_file.out linkage_count.txt dir_names.txt linkage_count
  $HOME_anu_test/Anu_src/split_file.out punctuation.txt dir_names.txt punctuation.dat
  $HOME_anu_test/Anu_src/split_file.out chunk.txt dir_names.txt chunk.dat 
  $HOME_anu_test/Anu_src/split_file.out sd-relation.txt dir_names.txt sd-relations_tmp.dat
  $HOME_anu_test/Anu_src/split_file.out sd_word.txt dir_names.txt sd_word.dat
  $HOME_anu_test/Anu_src/split_file.out sd_numeric_word.txt dir_names.txt sd_numeric_word.dat
  $HOME_anu_test/Anu_src/split_file.out sd_category.txt dir_names.txt sd_category.dat

  echo 'matching compounds......'
  perl $HOME_anu_test/Anu_src/Compound-dict.pl $HOME_anu_test/Anu_databases/compound.gdbm  one_sentence_per_line.txt > compound_phrase.txt
  perl $HOME_anu_test/Anu_src/Match-sen.pl $HOME_anu_test/Anu_databases/Complete_sentence.gdbm  one_sentence_per_line.txt > sen_phrase.txt

  $HOME_anu_test/Anu_src/split_file.out sen_phrase.txt dir_names.txt sen_phrase.dat
  $HOME_anu_test/Anu_src/split_file.out compound_phrase.txt dir_names.txt compound_phrase.dat
 
 cd $HOME_anu_test/bin
 while read line
 do

    			echo "Hindi meaning using Stanford parser" $line
			./only_std.sh $1 $line 1 $MYPATH
			echo ""





 done < $MYPATH/tmp/$1_tmp/dir_names.txt
 

