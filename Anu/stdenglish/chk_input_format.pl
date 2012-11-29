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
	if($in =~ /[#\^\~\`\*-ÿ]/){
	   print STDERR "\tTEXT CONTAINS SOME SPECIAL CHARACTERS. \n";
           print STDERR "\tTHEY ARE REMOVED TO RUN THE TEXT SMOOTHLY.\n";
           print STDERR "\t$in\n";
	   $in =~ s/[#\^\~\`\*-ÿ]//g;
        }
# Remove non printable characters outside the range 32 to 127
	$in =~ s/[^ -\n\t]/ /g;
#Handled '/' in mapping-symbols.lex file. Commented by Roja(14-11-12)
# Replace forward slash in science/maths by 'per'. 
# It is a misnomer and temp fix. Once the info that it is a math formula is available, that line will not be processed.
#	$in =~ s/([^<])\//$1 per /g;
## Remove all the spaces in the beginning of a line.
	$in =~ s/^[\n \t]+//;
# Remove all the trailing spaces
	$in =~ s/[ \t]+\n/\n/g;
	$in =~ s/\n[ \t]+/\n/g;
# Replace --- by DOTDOTDOT
	$in =~ s/\-\-+/ PUNCT-DotDotDot/g;
# Replace ... by one word DOTDOTDOT
	$in =~ s/\.\.\.+/ PUNCT-DotDotDot /g;
	$in =~ s/\. \. \.+/ PUNCT-DotDotDot /g;
## Replace more than two consecutive spaces by two spaces.
	$in =~ s/[ ][ ][ ]+/  /g;
# Replace starting single quote by normal quote reason:shell gives error
#$in =~ s/`/'/g;(commented for senseval purpose)
# After '?' there should be two spaces, not a single.
	$in =~ s/\? ([^ ])/\?  $1/g;
#Replacing 's as is when it is followed by an article. Suggested by Chaitanya Sir. Added by Roja(19-10-12)
#Ex: Ireland's a haven of top-class accommodation with something to suit everyone from the most decadent castles and hotels to B and Bs that ooze charm. 
	$in =~ s/([a-zA-Z]+)'[sS][ ](a|an|the) /$1 is $2 /g;
 
## Preserve ' before executing next line   Modified by Shirisha Manju renamed QQUUOOTTEE as ABBR-SingleQuote
        $in =~ s/'s$/ABBR-SingleQuotes/;
        $in =~ s/'s([^a-zA-Z0-9])/ABBR-SingleQuotes$1/g;
        $in =~ s/o'clock/oABBR-SingleQuoteclock/g;
        $in =~ s/o'([^ \t\n\.])/of$1/g; #Added dot(.) in the pattern Ex: The southern state of Johor offers its famed 'nasi biryani , ' 'laksa Johor , ' 'mee bandung' and 'soto'.
        $in =~ s/s'([^a-zA-Z0-9])/sABBR-SingleQuote$1/g;

# Insert space after the punctuation marks.
	$in =~ s/([a-zA-Z])([^a-zA-Z0-9 \t\n\-]+)([a-zA-Z])/$1$2 $3/g; #The colonial area laid out in grid pattern during the [mid19th] century holds remnants of the raj era.(Added by Mahalaxmi, 0-9 in the second expression)

#Commenting below rule, as it creates problem at (X, Y, Z) pattern in this sentence. by Roja(15-08-12)
#Ex. The center of mass of such a system is at (X, Y, Z), where (7.4 a) (7.4 b) and (7.4 c) Here M = is the total mass of the system.
#	 $in =~ s/([A-Z])([^a-zA-Z \t\n\-]+)[ ]([A-Z])/$1$2$3/g; #Added for senseval
#Above rule is written to handle in case of Surnames in a name Ex. C . A Paul  should be C.A Paul
#This type should be handled in abbrevations as it creates problem in generating table format.

# Insert space after the punctuation marks followed by -.
	$in =~ s/([a-zA-Z])(\-[^a-zA-Z0-9 \t\n\-]+)([a-zA-Z])/$1$2 $3/g;#A crafts museum is at pragati maidan grounds open from 10am-5pm daily.
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

