#!/usr/bin/perl -w

$i=1;
$prev_eng_word="";
while(<STDIN>){
	chomp($_);
	$_ =~ /([^\t]+)\t(.+)/;
	$eng=$1;
	$hnd=$2;
	@eng_words = split(/\s+/,$eng);
	if ($eng_words[0] eq $prev_eng_word){
		print "\t\t$i\.$eng\t$hnd";$i++;
	}
	else {
		$i=1;
		print "\n$eng_words[0]\t$i\.$eng\t$hnd";$i++;
	}
	$prev_eng_word=$eng_words[0];
}

