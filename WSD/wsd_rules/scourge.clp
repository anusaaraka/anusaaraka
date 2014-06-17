;########################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;########################################################################`
;@@@ added by jagriti(14.3.2014)
;Inflation was the scourge of the 1970s.[oald]
;मुद्रा स्फीति 1970s की आफत थी . 
(defrule scourge0
(declare (salience 5000))
(id-root ?id scourge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id APawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scourge.clp 	scourge0   "  ?id "  APawa  )" crlf))
)
;@@@ added by jagriti(14.3.2014)
;The entire area was scourged by the epidemic.[rajpal]
;सम्पूर्ण क्षेत्र महामारी से बरबाद हो गया था . . 						
(defrule scourge3
(declare (salience 4900))
(id-root ?id scourge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?id1)
(id-root ?id1 epidemic|disease|conscience)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barabAxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scourge.clp 	scourge3   "  ?id "  barabAxa_ho  )" crlf))
)
;...Default Rule....
;@@@ added by jagriti(14.3.2014)
;He was punished to get ten scourges.[rajpal]
;उसको दस कोडे मारने दण्ड दिया गया था .  
(defrule scourge1
(declare (salience 100))
(id-root ?id scourge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kodZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scourge.clp 	scourge1   "  ?id "  kodZA  )" crlf))
)
;@@@ added by jagriti(14.3.2014)
;He was ordered to scourge the thief.[rajpal]
;उसको चोर को कोडा लगाने की आज्ञा दी गयी थी . 
(defrule scourge2
(declare (salience 100))
(id-root ?id scourge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kodZA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scourge.clp 	scourge2   "  ?id "  kodZA_lagA  )" crlf))
)
