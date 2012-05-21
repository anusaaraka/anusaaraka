sed 's/(manual_hin_sen //g' < manual_hindi_sen.dat | sed 's/)$//g' | wc -w | cut -f1 -d' ' > org_count
sed 's/(manual_hin_sen //g' < final_maual_sen.dat | sed 's/)$//g' | wc -w | cut -f1 -d' ' > rem_count

while read line        
do        
	while read line1
	do 
		x=`expr $line - $line1`
		y=`expr $x \* 100`
                if [ "$y" -eq "0" ] | [ "$line" -eq "0" ]; then
                echo "Matching Percentage"  "0%" > percentage.dat 
                else
		z=`expr $y / $line`
		echo "Matching Percentage"  $z"%" > percentage.dat
                fi
	done <rem_count
done <org_count
