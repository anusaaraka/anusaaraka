#!/usr/bin/perl -w

print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
print "<html xmlns=\"http://www.w3.org/1999/xhtml\">\n";
print "<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />" ;
print "\n</head>\n" ;
#print "<BODY LANG=\"en-US\" DIR=\"LTR\">
#        <TABLE  BORDER=1 CELLPADDING=1 CELLSPACING=0 STYLE=\"page-break-before: always\">
#        <THEAD>
#                <TR VALIGN=bottom>
#                </TR>
#        </THEAD>";
#

print "<BODY LANG=\"en-US\" DIR=\"LTR\">
        <TABLE  BORDER=1 CELLPADDING=1 CELLSPACING=0 >
        <THEAD>
                <TR VALIGN=bottom>
                </TR>
        </THEAD>";




while (<STDIN>){
	@line=split(/\t\t/,$_);
	foreach $line (@line){
			print "<TR> "; 
			@words=split(/\t/,$line);
			foreach $wrd (@words) {
				print "\n<TD> ";
				print "$wrd";
				print "</TD> ";
			}
			print "</TR>\n";
	}
}	
print "</TABLE>\n</BODY>\n</HTML>\n";

