#!/usr/bin/perl -w


##############################################################################
#  Copyright (C) 2002-2005 Amba Kulkarni (amba at iiit dot net)
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either
#  version 2 of the License, or (at your option) any later
#  version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

##############################################################################



while($in = <STDIN>){
	if($in =~ /^[\*	 ]+$/){
	   $in =~ s/[\*	 ]//g;
	#Special case for GUTENBERG texts.
        }
	if($in =~ /[#\^\~\`\&\*€-ÿ_]/){
	   print STDERR "\tTEXT CONTAINS SOME SPECIAL CHARACTERS. \n";
           print STDERR "\tTHEY ARE REMOVED TO RUN THE TEXT SMOOTHLY.\n";
           print STDERR "\t$in\n";
	   $in =~ s/[#\^\~\`\&\*€-ÿ_]//g;
        }
# Remove non printable characters outside the range 32 to 127
	$in =~ s/[^ -\n\t]/ /g;
# Replace forward slash in science/maths by 'per'. 
# It is a misnomer and temp fix. Once the info that it is a math formula is available, that line will not be processed.
	$in =~ s/([^<])\//$1 per /g;
## Remove all the spaces in the beginning of a line.
	$in =~ s/^[\n \t]+//;
# Remove all the trailing spaces
	$in =~ s/[ \t]+\n/\n/g;
	$in =~ s/\n[ \t]+/\n/g;
# Replace --- by DOTDOTDOT
	$in =~ s/\-\-+/ DOTDOTDOT/g;
# Replace ... by one word DOTDOTDOT
	$in =~ s/\.\.\.+/ DOTDOTDOT /g;
## Replace more than two consecutive spaces by two spaces.
	$in =~ s/[ ][ ][ ]+/  /g;
# Replace starting single quote by normal quote reason:shell gives error
$in =~ s/`/'/g;
# After '?' there should be two spaces, not a single.
	$in =~ s/\? ([^ ])/\?  $1/g;
## Preserve ' before executing next line
        $in =~ s/'s$/QQUUOOTTEEs/;
        $in =~ s/'s([^a-zA-Z0-9])/QQUUOOTTEEs$1/g;
        $in =~ s/o'clock/oQQUUOOTTEEclock/g;
        $in =~ s/o'([^ \t\n])/of$1/g;
        $in =~ s/s'([^a-zA-Z0-9])/sQQUUOOTTEE$1/g;
# Insert space after the punctuation marks.
	$in =~ s/([a-zA-Z])([^a-zA-Z \t\n\-]+)([a-zA-Z])/$1$2 $3/g;
# Insert space after the punctuation marks followed by -.
	$in =~ s/([a-zA-Z])(\-[^a-zA-Z \t\n\-]+)([a-zA-Z])/$1$2 $3/g;
# Join DANGLING punctuation marks to the right of the word, if it is at the beginning of a sentence.
	$in =~ s/^([^a-zA-Z0-9]+)[ \t]+([a-zA-Z0-9])/$1$2/;
# Join DANGLING punctuation marks to the left of the word in all other cases
	$in =~ s/[ \t]+([^a-zA-Z0-9]+)([ \t]+)([a-zA-Z0-9])/$1$2$3/g;
	$in =~ s/[ \t]+([^a-zA-Z0-9]+)$/$1/g;
	$in =~ s/([a-zA-Z0-9]+)-([ \t])/$1 - $2/g;
# change & to and
	$in =~ s/\&/ and /g;
# add . in case of ABBR followed by two spaces.
	$in =~ s/ABBR  /ABBR.  /g;
print $in;
}

