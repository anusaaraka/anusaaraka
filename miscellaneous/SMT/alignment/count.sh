wc -w manual_hindi_sen.dat | cut -f1 -d' ' > org_count
wc -w final_maual_sen.dat | cut -f1 -d' '  > rem_count

while read line        
do        
	while read line1
	do 
		line=`expr $line - 2`
		line1=`expr $line1 - 2`    		
		x=`expr $line - $line1`
		y=`expr $x \* 100`
		z=`expr $y / $line`
		echo "Matching Percentage"  $z"%" > percentage.dat
	done <rem_count
done <org_count
