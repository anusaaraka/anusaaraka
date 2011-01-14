#!/usr/bin/perl 
#===============================================================================
#
#         FILE:  remove_aper_tag.pl
#
#        USAGE:  ./remove_aper_tag.pl 
#
#  DESCRIPTION:  
#
#      OPTIONS:  ---
# REQUIREMENTS:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:   (), <>
#      COMPANY:  
#      VERSION:  1.0
#      CREATED:  02/03/09 11:06:17 IST
#     REVISION:  ---
#===============================================================================

use warnings;

open(DIR,"< ../tmp/$ARGV[0]_tmp/dir_names.txt") || die "Can't open file $ARGV[0]_tmp/dir_names.txt\n";

while(<DIR>){
	chomp($dir_name=$_);
	open(CAT1,"< ../tmp/$ARGV[0]_tmp/$dir_name/cat1.dat") || die "Can't open file ../tmp/$ARGV[0]_tmp/$dir_name/cat1.dat\n";
	open(CAT_TMP,"> ../tmp/$ARGV[0]_tmp/$dir_name/cat1_tmp.dat") || die "Can't open file ../tmp/$ARGV[0]_tmp/$dir_name/cat1_tmp.dat\n";
	while(<CAT1>){
		if($_ =~ /id_cat\s+/){
			$_ =~ s/id_cat\s+(\d+)\s+</id_cat\ $1\ /; 
			$_ =~ s/id_cat\s+(\d+)\s+(.*)> \)$/id_cat\ $1\ $2\)/; 
			$_ =~ s/></_/g; 
			$_ =~ s/</_/g; 
			$_ =~ s/>/_/g;
			print CAT_TMP $_;
		}
		else{print CAT_TMP $_;}
	}
	close(CAT_TMP);
	system("mv ../tmp/$ARGV[0]_tmp/$dir_name/cat1_tmp.dat ../tmp/$ARGV[0]_tmp/$dir_name/cat1.dat");

}
close(CAT1);
