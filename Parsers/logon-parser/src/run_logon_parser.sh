if [ -s $LOGONTMP/$1_logon.gz ] ; then
	rm $LOGONTMP/$1_logon.gz 
fi

if [ -s $LOGONTMP/$1_logon ] ; then
        rm $LOGONTMP/$1_logon
fi


#rm $LOGONTMP/$1_logon.gz $1_logon
time $LOGONROOT/parse --erg+tnt --binary --target $1_logon --best 1 --text $1 > /dev/null
time $LOGONROOT/redwoods --binary --erg --default --composite --target $LOGONTMP --export triples,derivation,dependencies --active all $1_logon > /dev/null

gunzip $LOGONTMP/$1_logon.gz


#sed -e "/\[[1][:][0]\][ ][(]active[)]/d"  $LOGONTMP/$1_logon |sed -n -e "H;\${g;s/]\n\n/]\n\n;~~~~~~~~~~\n/g;p}" | sed -n -e "H;\${g;s/[[][1][]][ ][(][1][ ]of[ ][1][)][ ][{][1][}][ ][\`]\(.*\)[']\(.*\)\n[;]\~\~\~\~\~\~\~\~\~\~\n/\`\1\'\2\n;\~\~\~\~\~\~\~\~\~\~\n\`\1\'\n/g;p}" | awk '/^\014/{sub("\014","")}1' |  sed -n -e "H;\${g;s/\n\n[\n]*/\n/g;p}" >$LOGONTMP/$1_logon.txt
