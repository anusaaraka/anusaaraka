#!/usr/bin/perl

$MYPATH = $ARGV[1];
open(SENT,">> $MYPATH\/tmp/tmp_stdenglish/$ARGV[0]") || die "Can't open $ARGV[0].std";
#open(SENT,">> $ARGV[0].std") || die "Can't open $ARGV[0].std";

$count=0;
while($in = <STDIN>)
{
  @line = split(/\n/,$in);
  foreach $lines (@line)
   { 
	if($lines =~ /[^0-9 ][.][ ][A-Z]/) 
	{ 
		$count++;
		print STDERR "This line contains more than one sentence. Please Check it.\n";
		print STDERR "-----------------------------------------------------------\n$count).\"$lines\"\n";
		print STDERR "===========================================================\n";
	}
	else 
	{
	      print SENT "$lines\n"; 
	}
   }
}
   close(SENT);
 
