#!/usr/bin/perl

$file_name = $ARGV[0]."_trnsltn";

while($in = <STDIN>){
$in =~ s/ZZZZZZZZ/$file_name/;
print $in;
}
