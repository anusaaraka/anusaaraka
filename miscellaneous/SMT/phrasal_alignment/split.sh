rm tmp*
csplit -s -f "tmp" $1 /\;~~~~~~~~~~/ {*}
