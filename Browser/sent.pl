open(NAME,"$ARGV[1]/../dir_names.txt") || die "Can't open file dir_names.txt\n";
@dir="";
$i=0;
while(<NAME>){
	chomp($_);
	$dir[$i]=$_;
	$i++;
}
$i=0;
while(<STDIN>){
	if($_ =~ /title|nextline/) {$write=1;}
	if($_ =~ /<title words/) {
		$title=1;
		open(SEN,">>$ARGV[1]/$dir[$i].xml")|| print"Can't open file $dir[$i].xml\n"; 
		$i++;	
		print SEN "<\?xml version=\"1.0\" encoding=\"UTF-8\"\?>\n<\?xml-stylesheet type=\"text\/xsl\" href=\"xhtml_unicode.xsl\"\?>\n<rt rows=\"9\">\n<p>\n";
	}
	if( $_ =~ /<nextline words/){
		if($title){
			print SEN "</title>\n<\/p>\n</rt>";
			$title=0;
		}
		else {
			print SEN "</nextline>\n<\/p>\n";
			print SEN "</rt>";
		}
                close(SEN);
		$j=$i-1;
		system("xsltproc $ARGV[0]/Browser/src/xhtml_unicode_local.xsl - < $ARGV[1]/$dir[$j].xml >$ARGV[1]/$dir[$j].html_tmp");

		system("$ARGV[0]/shell_scripts/sed.sh $ARGV[1]/$dir[$j].html_tmp > $ARGV[1]/$dir[$j].html");
		system("rm $ARGV[1]/$dir[$j].xml");
		system("rm $ARGV[1]/$dir[$j].html_tmp");

                open(SEN,">>$ARGV[1]/$dir[$i].xml")|| print"Can't open file $dir[$i].xml\n"; 
                $i++;
                print SEN "<\?xml version=\"1.0\" encoding=\"UTF-8\"\?>\n<\?xml-stylesheet type=\"text\/xsl\" href=\"xhtml_unicode.xsl\"\?>\n<rt rows=\"9\"><p>\n";
                print SEN $_;
	}
	elsif(($write) && ($_ !~ /<\/title>|<p>|<\/nextline|<\/p>|<\/rt>/)){ print SEN $_;}
}

 print SEN "</nextline>\n<\/p>\n";
 print SEN "</rt>";
 close(SEN);

$j=$i-1;
                system("xsltproc $ARGV[0]/Browser/src/xhtml_unicode_local.xsl - < $ARGV[1]/$dir[$j].xml >$ARGV[1]/$dir[$j].html_tmp");

                system("$ARGV[0]/shell_scripts/sed.sh $ARGV[1]/$dir[$j].html_tmp > $ARGV[1]/$dir[$j].html");
                system("rm $ARGV[1]/$dir[$j].xml");
                system("rm $ARGV[1]/$dir[$j].html_tmp");


