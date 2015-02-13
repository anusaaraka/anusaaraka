
export scriptdir=$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2014-08-27


java  -mx900m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.trees.TreePrint -options "lexicalize" $1
