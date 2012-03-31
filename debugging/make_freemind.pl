#bin/perl

print "<map version=\"0.7.1\">\n";
print "<node TEXT=\"run_sentences.sh\">\n";
print "<node TEXT=\"run_modules_std.bat\">\n";
$i=0;
while(<STDIN>){
	if(($_ =~ /([^\/"]*\.[b]?clp)"/) && ($_ !~ /^;/) && ($_ !~ /global_path/)) {
#		if($IN eq 0){	
#			print "<\/node>\n";
#		}
		if($OUT eq 0){	
			print "<\/node>\n";
			#if($IN eq 1){print "<\/node>\n";}
			print "<node TEXT=\"OUTPUT\" FOLDED=\"true\">\n";
			print "<\/node>\n";
		}
		if($i ne 0){
			if($OUT eq 1){print "<\/node>\n";	print "<\/node>\n";}
			else{print "<\/node>\n";}
		}
		$i++;
		print "<node TEXT=\"$1\" FOLDED=\"true\">\n";
		print "<node TEXT=\"INPUT\" FOLDED=\"true\">\n";
		$IN=0;
		$In_comp=0;
		$OUT=0;
	}
	elsif(($_ =~ /load-facts\s+"([^"]*)\.dat"/)&&($_ !~ /^\s*;/)){
		$IN=1;
		print "<node TEXT=\"$1\.dat\" FOLDED=\"true\">\n";
		open(IN,"< $1\.dat")|| die"Can't open $1\.dat\n";
		print "<node TEXT=\"";
		while(<IN>){
			chomp($_);
			$_ =~ s/"//g;
			print "&#xa;$_";
		}
		print "\">\n";
		print "<\/node>\n";
		print "<\/node>\n";
	
	}
	elsif((($_ =~ /open\s+"([^"]*)\.dat"/)||($_ =~ /save-facts\s+"([^"]*)\.dat"/))&& ($_ !~ /^;/)){
		if($OUT eq 0){	
			print "<\/node>\n";$In_comp=1;
			#if($IN eq 1){print "<\/node>\n";}
			print "<node TEXT=\"OUTPUT\" FOLDED=\"true\">\n";
		}
		$OUT=1;
		print "<node TEXT=\"$1\.dat\" FOLDED=\"true\">\n";
		open(OUT,"< $1\.dat")|| die"Can't open $1\.dat\n";
		print "<node TEXT=\"";
		while(<OUT>){
			chomp($_);
			$_ =~ s/"//g;
			print "&#xa;$_";
		}
		print "\">\n";
		print "<\/node>\n";
		print "<\/node>\n";
	}
}
if($In_comp eq 0){print "<\/node>\n";}
if($OUT eq 0){	
	print "<node TEXT=\"OUTPUT\" FOLDED=\"true\">\n";
}
print "<\/node>\n";
print "<\/node>\n";
print "<\/node>\n";
print "<\/node>\n";
print "<\/map>";
