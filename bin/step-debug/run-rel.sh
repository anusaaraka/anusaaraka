if [[ $1 == "link" ]] ;
then
echo "link"
sh link-run-rel-onward.sh $2 $3
else if [[ $1 == "std" ]] ;
then 
echo "stanford"
sh std-run-rel-onward.sh  $2  $3
else if [[ $1 == "ol" ]] ;
then 
echo "openlogos"
sh ol-run-rel-onward.sh  $2 $3
fi
fi
fi
