#!/bin/sh
#Modified this shell by Roja(08-06-2013)
export scriptdir=$HOME_anu_test/Parsers/stanford-parser/stanford-ner-2016-10-31

java -mx700m -cp "$scriptdir/stanford-ner.jar:" edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier $scriptdir/classifiers/english.all.3class.distsim.crf.ser.gz -textFile $HOME_anu_tmp/tmp/$1_tmp/$1 1> $HOME_anu_tmp/tmp/$1_tmp/ner_org 2> /dev/null

perl run-ner.pl < $HOME_anu_tmp/tmp/$1_tmp/ner_org > $HOME_anu_tmp/tmp/$1_tmp/ner.txt
