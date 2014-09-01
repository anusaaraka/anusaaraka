cd $1 
export scriptdir=`dirname $0`

java -mx900m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.trees.TreePrint -options "lexicalize" $2
