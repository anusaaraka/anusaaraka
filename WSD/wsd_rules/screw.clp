;#############################################################################
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
;######################################################################
;@@@ Added by jagriti(7.1.2014)
;This student screw with everyone in her dorm .
;यह विद्यार्थी उसके छात्रावास में सब के साथ संभोग करता है . 
(defrule screw0
(declare (salience 5000))
(id-root ?id screw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMBoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screw.clp 	screw0   "  ?id "  saMBoga_kara)" crlf))
)

;@@@ Added by jagriti(7.1.2014)
;A bracket was screwed in the wall. 
;दीवारगीर दीवार में  कस दिया गया था.
(defrule screw1
(declare (salience 4900))
(id-root ?id screw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-in_saMbanXI ?id ?)(kriyA-to_saMbanXI ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screw.clp 	screw1   "  ?id "  kasa)" crlf))
)
;....Default rule....

;@@@ Added by jagriti(7.1.2014)
(defrule screw2
(declare (salience 1))
(id-root ?id screw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screw.clp 	screw2  "  ?id " peMca)" crlf))
)
;@@@ Added by jagriti(7.1.2014)
(defrule screw3
(declare (salience 1))
(id-root ?id screw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XoKA_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screw.clp 	screw3  "  ?id " XokA_xe)" crlf))
)


