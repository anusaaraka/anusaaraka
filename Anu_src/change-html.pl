$i=0;
$prev_para=1;
%para_txt="";
$para=0;
undef $/;
$text=<STDIN>;
@html_text=split(/\n/,$text);
foreach $s (@html_text){
	if($s =~ /<td class="[^>]+">.*onclick="javascript:initialize/){
		$s =~ /<td class="[^>]+">([^<]+).*onclick="javascript:initialize\('([^']+)'\).*"> <span/;

		$sent_info=$1;
		$sen=$2;
		$sen =~ s/\'/\\'/g;
		$sen =~ s/\(/\\\(/g;
		$sen =~ s/\)/\\\)/g;


		if($sent_info =~ /(\d+)\.(\d+)\..*/){
			$para=$1;
			$sid=$2;
			$para_txt{$para}=$para_txt{$para}.$sen;
		}


	}
}

foreach $s (@html_text){
	if($s =~ /<td class="[^>]+">.*onclick="javascript:initialize/){
		$s =~ /(\s+)<td class="([^>]+)">([^<]+)<a(.*)onclick="javascript:initialize\('([^;]+);(.*)"> <span id="popup_link_([^"]+)"(.*)/;



		$bef=$1;
		$bef1=$2;
		$sent_info=$3;
		$bef2=$4;
		$sen=$5;
		$fetch=$6;
		$pid=$7;
		$aft=$8;
		$sen =~ s/\'\)\s*$//;
		$sen =~ s/\'/\\'/g;
		$sen =~ s/\(/\\\(/g;
		$sen =~ s/\)/\\\)/g;


		if($sent_info =~ /(\d+)\.(\d+)\..*/){
			$para=$1;
			$sid=$2;
		}
		if($fetch =~ /fetchshabd\('(\w)([^']+)/){ $let =lc($1);$word=$2;}

		print "$bef<td class=\"$bef1\"> <a onclick=\"javascript:initialize(\'$sen\'); initializep(\'$para_txt{$para}\')\"> <span id=\"popup_link_$pid-sen\" class=\"popup_link\">$sent_info </span><script type=\"text/javascript\"> new Popup('popup_3','popup_link_$pid-sen',{position:'below',trigger:'click'}); </script>  </a> <a $bef2 onclick=\"javascript:fetchshabd$let('$let$word') \"> <span id=\"popup_link_$pid\" $aft\n";
	}

	elsif($s =~ /(.*)<td class=(.*)fetchshabd\('([^']+)'\)(.*)/){
		$wbef=$1;
		$wbef1=$2;
		$wd=$3;
		$waft=$4;
		$wd =~ /(\w)/;
		$let=$1;
		print "$wbef<td class=$wbef1 fetchshabd$let('$wd')$waft";
	}


	else {
		print "$s\n";
	}
}

