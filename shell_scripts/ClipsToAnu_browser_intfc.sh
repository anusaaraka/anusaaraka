#!/bin/sh


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


cd $2/tmp/$1_tmp/
myclips -f $HOME_anu_test/Anu_clp_files/run_create_xml_file.bat > $2/tmp/$1_tmp/xml.err

$HOME_anu_test/Browser/consecutive_same_color.pl $HOME_anu_test <  $2/tmp/$1_tmp/$1.xml > $2/tmp/$1_tmp/$1.color_fix_xml
xsltproc $HOME_anu_test/Browser/src/xhtml_unicode_local.xsl - < $2/tmp/$1_tmp/$1.color_fix_xml > $2/tmp/$1_tmp/jnk
$HOME_anu_test/Browser/src/add_translation_path.pl $1 < $2/tmp/$1_tmp/jnk > $2/tmp/$1_tmp/$1.html_tmp

sed -e '1,$s/float_clear"><\/div>/float_clear"\/>/
        1,$s/DOTDOTDOT/.../g
        1,$s/ABBRThatis/i.e./g
 				1,$s/aABBRDOTABBRkABBRDOTABBRaABBRDOTABBR/a.k.a./g
 				1,$s/eABBRDOTABBRgABBRDOTABBR/e.g/g
        1,$s/{number:/{/g
        1,$s/{vib:/{/g
        1,$s/{tam:है/{/g
        1,$s/{tam:/{/g
        1,$s/TWTWTWTW/_/g
        1,$s/TWTW/ /g
        1,$s/left_paren/(/g
	1,$s/right_paren/)/g
        1,$s/equal_to/=/g
        1,$s/{}//g' < $1.html_tmp > $1.html

cd $HOME_anu_test/Anu_src/
perl hnd_translation.pl $1 $2

sed -e '1,$s/left_paren/(/g
	1,$s/right_paren/)/g
        1,$s/equal_to/=/g
        1,$s/{}//g' < $2/tmp/$1_tmp/$1_trnsltn.html > $2/tmp/$1_tmp/$1_trnsltn1.html

cp $2/tmp/$1_tmp/$1_trnsltn1.html $2/tmp/$1_tmp/$1_trnsltn.html


