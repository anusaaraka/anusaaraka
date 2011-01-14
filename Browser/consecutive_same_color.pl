#!/usr/bin/perl

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


# Input:
# $1.xml

#require "$ARGV[0]\/Anu/browser/order.pl";
require "$ARGV[0]\/Browser/order.pl";
for ($i=0;$i<=$#order;$i++) {
 if($order[$i] eq "chunk") { $chunk_pos = $i;}
} 

$prev_cat = "";
$not_first = 1;
while($in = <STDIN>){
  if($in =~ /number='[0-9]+\.[0-9]+'/){ $not_first = 1;$prev_cat = "";}
  elsif($in =~ /<h$chunk_pos>/){
      if($in =~ /B\-([A-Z]+)/){
         $rep = 0;
         $cat = $1;
	 if(($prev_cat eq $cat) && ($not_first)){
            if($not_first) { 
               $not_first = 0;
               $in =~ s/B\-[A-Z]+/B\-REP/;
	       $rep = 1;
            } else { $not_first = 1;}
         } else { $not_first = 1;}
         $prev_cat = $cat;
      } elsif(($in =~ /I\-([A-Z]+)/) && ($rep)){
             $in =~ s/I\-[A-Z]+/I\-REP/;
      } elsif($in =~ /O/) {
               $not_first = 0;
      }
  }
  print $in;
}
